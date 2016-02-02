From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v6 20/22] usb: dwc2: host: Properly set even/odd frame
Date: Tue, 02 Feb 2016 15:46:07 +0800
Message-ID: <56B05EBF.9090804@rock-chips.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org> <1454034013-24657-21-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1454034013-24657-21-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: huangtao@rock-chips.com, stefan.wahren@i2se.com, heiko@sntech.de, johnyoun@synopsys.com, gregkh@linuxfoundation.org, ming.lei@canonical.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yousaf.kaukab@intel.com, stern@rowland.harvard.edu, linux-rpi-kernel@lists.infradead.org, gregory.herrero@intel.com, william.wu@rock-chips.com, Julius Werner <jwerner@chromium.org>, dinguyen@opensource.altera.com
List-Id: linux-rockchip.vger.kernel.org

Doug,

On 01/29/2016 10:20 AM, Douglas Anderson wrote:
> When setting up ISO and INT transfers dwc2 needs to specify whether the
> transfer is for an even or an odd frame (or microframe if the controller
> is running in high speed mode).
>
> The controller appears to use this as a simple way to figure out if a
> transfer should happen right away (in the current microframe) or should
> happen at the start of the next microframe.  Said another way:
>
> - If you set "odd" and the current frame number is odd it appears that
>    the controller will try to transfer right away.  Same thing if you set
>    "even" and the current frame number is even.
> - If the oddness you set and the oddness of the frame number are
>    _different_, the transfer will be delayed until the frame number
>    changes.
>
> As I understand it, the above technique allows you to plan ahead of time
> where possible by always working on the next frame.  ...but it still
> allows you to properly respond immediately to things that happened in
> the previous frame.
>
> The old dwc2_hc_set_even_odd_frame() didn't really handle this concept.
> It always looked at the frame number and setup the transfer to happen in
> the next frame.  In some cases that meant that certain transactions
> would be transferred in the wrong frame.
>
> We'll try our best to set the even / odd to do the transfer in the
> scheduled frame.  If that fails then we'll do an ugly "schedule ASAP".
> We'll also modify the scheduler code to handle this and not try to
> schedule a second transfer for the same frame.
>
> Note that this change relies on the work to redo the microframe
> scheduler.  It can work atop ("usb: dwc2: host: Manage frame nums better
> in scheduler") but it works even better after ("usb: dwc2: host: Totally
> redo the microframe scheduler").
>
> With this change my stressful USB test (USB webcam + USB audio +
> keyboards) has less audio crackling than before.
Seems this really help for your case?

Do you check if the transfer can happen right in the current frame? I 
know it's
quite difficult to check it, but this changes what I know for the dwc core
schedule the transaction.

In dwc_otgbook, Interrupt OUT Transactions(also similar for Int IN, Iso 
IN/OUT)
in DMA Mode, the normal Interrupt OUT operation says:
The DWC_otg host attempts to send out the OUT token in the beginning of next
odd frame/microframe.

So I'm confuse about if the dwc core can do the transaction at the same 
frame
of host channel initialized or not.

Thanks,
- Kever

> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
> Changes in v6:
> - Add Heiko's Tested-by.
> - Add Stefan's Tested-by.
>
> Changes in v5: None
> Changes in v4:
> - Properly set even/odd frame new for v4.
>
> Changes in v3: None
> Changes in v2: None
>
>   drivers/usb/dwc2/core.c      | 92 +++++++++++++++++++++++++++++++++++++++++++-
>   drivers/usb/dwc2/hcd_queue.c | 11 +++++-
>   2 files changed, 100 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index a5db20f12ee4..c143f26bd9d9 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -1703,9 +1703,97 @@ static void dwc2_hc_set_even_odd_frame(struct dwc2_hsotg *hsotg,
>   {
>   	if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
>   	    chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
> -		/* 1 if _next_ frame is odd, 0 if it's even */
> -		if (!(dwc2_hcd_get_frame_number(hsotg) & 0x1))
> +		int host_speed;
> +		int xfer_ns;
> +		int xfer_us;
> +		int bytes_in_fifo;
> +		u16 fifo_space;
> +		u16 frame_number;
> +		u16 wire_frame;
> +
> +		/*
> +		 * Try to figure out if we're an even or odd frame. If we set
> +		 * even and the current frame number is even the the transfer
> +		 * will happen immediately.  Similar if both are odd. If one is
> +		 * even and the other is odd then the transfer will happen when
> +		 * the frame number ticks.
> +		 *
> +		 * There's a bit of a balancing act to get this right.
> +		 * Sometimes we may want to send data in the current frame (AK
> +		 * right away).  We might want to do this if the frame number
> +		 * _just_ ticked, but we might also want to do this in order
> +		 * to continue a split transaction that happened late in a
> +		 * microframe (so we didn't know to queue the next transfer
> +		 * until the frame number had ticked).  The problem is that we
> +		 * need a lot of knowledge to know if there's actually still
> +		 * time to send things or if it would be better to wait until
> +		 * the next frame.
> +		 *
> +		 * We can look at how much time is left in the current frame
> +		 * and make a guess about whether we'll have time to transfer.
> +		 * We'll do that.
> +		 */
> +
> +		/* Get speed host is running at */
> +		host_speed = (chan->speed != USB_SPEED_HIGH &&
> +			      !chan->do_split) ? chan->speed : USB_SPEED_HIGH;
> +
> +		/* See how many bytes are in the periodic FIFO right now */
> +		fifo_space = (dwc2_readl(hsotg->regs + HPTXSTS) &
> +			      TXSTS_FSPCAVAIL_MASK) >> TXSTS_FSPCAVAIL_SHIFT;
> +		bytes_in_fifo = sizeof(u32) *
> +				(hsotg->core_params->host_perio_tx_fifo_size -
> +				 fifo_space);
> +
> +		/*
> +		 * Roughly estimate bus time for everything in the periodic
> +		 * queue + our new transfer.  This is "rough" because we're
> +		 * using a function that makes takes into account IN/OUT
> +		 * and INT/ISO and we're just slamming in one value for all
> +		 * transfers.  This should be an over-estimate and that should
> +		 * be OK, but we can probably tighten it.
> +		 */
> +		xfer_ns = usb_calc_bus_time(host_speed, false, false,
> +					    chan->xfer_len + bytes_in_fifo);
> +		xfer_us = NS_TO_US(xfer_ns);
> +
> +		/* See what frame number we'll be at by the time we finish */
> +		frame_number = dwc2_hcd_get_future_frame_number(hsotg, xfer_us);
> +
> +		/* This is when we were scheduled to be on the wire */
> +		wire_frame = dwc2_frame_num_inc(chan->qh->next_active_frame, 1);
> +
> +		/*
> +		 * If we'd finish _after_ the frame we're scheduled in then
> +		 * it's hopeless.  Just schedule right away and hope for the
> +		 * best.  Note that it _might_ be wise to call back into the
> +		 * scheduler to pick a better frame, but this is better than
> +		 * nothing.
> +		 */
> +		if (dwc2_frame_num_gt(frame_number, wire_frame)) {
> +			dwc2_sch_vdbg(hsotg,
> +				      "QH=%p EO MISS fr=%04x=>%04x (%+d)\n",
> +				      chan->qh, wire_frame, frame_number,
> +				      dwc2_frame_num_dec(frame_number,
> +							 wire_frame));
> +			wire_frame = frame_number;
> +
> +			/*
> +			 * We picked a different frame number; communicate this
> +			 * back to the scheduler so it doesn't try to schedule
> +			 * another in the same frame.
> +			 *
> +			 * Remember that next_active_frame is 1 before the wire
> +			 * frame.
> +			 */
> +			chan->qh->next_active_frame =
> +				dwc2_frame_num_dec(frame_number, 1);
> +		}
> +
> +		if (wire_frame & 1)
>   			*hcchar |= HCCHAR_ODDFRM;
> +		else
> +			*hcchar &= ~HCCHAR_ODDFRM;
>   	}
>   }
>   
> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
> index 3abb34a5fc5b..5f909747b5a4 100644
> --- a/drivers/usb/dwc2/hcd_queue.c
> +++ b/drivers/usb/dwc2/hcd_queue.c
> @@ -985,6 +985,14 @@ static int dwc2_next_periodic_start(struct dwc2_hsotg *hsotg,
>   	 *   and next_active_frame are always 1 frame before we want things
>   	 *   to be active and we assume we can still get scheduled in the
>   	 *   current frame number.
> +	 * - It's possible for start_active_frame (now incremented) to be
> +	 *   next_active_frame if we got an EO MISS (even_odd miss) which
> +	 *   basically means that we detected there wasn't enough time for
> +	 *   the last packet and dwc2_hc_set_even_odd_frame() rescheduled us
> +	 *   at the last second.  We want to make sure we don't schedule
> +	 *   another transfer for the same frame.  My test webcam doesn't seem
> +	 *   terribly upset by missing a transfer but really doesn't like when
> +	 *   we do two transfers in the same frame.
>   	 * - Some misses are expected.  Specifically, in order to work
>   	 *   perfectly dwc2 really needs quite spectacular interrupt latency
>   	 *   requirements.  It needs to be able to handle its interrupts
> @@ -995,7 +1003,8 @@ static int dwc2_next_periodic_start(struct dwc2_hsotg *hsotg,
>   	 *   guarantee that a system will have interrupt latency < 125 us, so
>   	 *   we have to be robust to some misses.
>   	 */
> -	if (dwc2_frame_num_gt(prev_frame_number, qh->start_active_frame)) {
> +	if (qh->start_active_frame == qh->next_active_frame ||
> +	    dwc2_frame_num_gt(prev_frame_number, qh->start_active_frame)) {
>   		u16 ideal_start = qh->start_active_frame;
>   
>   		/* Adjust interval as per gcd with plan length. */
