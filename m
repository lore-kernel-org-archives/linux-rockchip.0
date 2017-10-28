From: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
Subject: Re: [PATCH v2] usb: dwc2: host: Don't retry NAKed transactions
 right away
Date: Sat, 28 Oct 2017 17:51:47 +0200 (CEST)
Message-ID: <60370001.40630.1509205907119@email.1und1.de>
References: <20171026202200.6417-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20171026202200.6417-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

[add Felipe since this should go through his tree]

i'm back from vacation and happy to see this patch.

> Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> hat am 26. Oktober 2017 um 22:22 geschrieben:
> 
> 
> On rk3288-veyron devices on Chrome OS it was found that plugging in an
> Arduino-based USB device could cause the system to lockup, especially
> if the CPU Frequency was at one of the slower operating points (like
> 100 MHz / 200 MHz).
> 
> Upon tracing, I found that the following was happening:
> * The USB device (full speed) was connected to a high speed hub and
>   then to the rk3288.  Thus, we were dealing with split transactions,
>   which is all handled in software on dwc2.
> * Userspace was initiating a BULK IN transfer
> * When we sent the SSPLIT (to start the split transaction), we got an
>   ACK.  Good.  Then we issued the CSPLIT.
> * When we sent the CSPLIT, we got back a NAK.  We immediately (from
>   the interrupt handler) started to retry and sent another SSPLIT.
> * The device kept NAKing our CSPLIT, so we kept ping-ponging between
>   sending a SSPLIT and a CSPLIT, each time sending from the interrupt
>   handler.
> * The handling of the interrupts was (because of the low CPU speed and
>   the inefficiency of the dwc2 interrupt handler) was actually taking
>   _longer_ than it took the other side to send the ACK/NAK.  Thus we
>   were _always_ in the USB interrupt routine.
> * The fact that USB interrupts were always going off was preventing
>   other things from happening in the system.  This included preventing
>   the system from being able to transition to a higher CPU frequency.
> 
> As I understand it, there is no requirement to retry super quickly
> after a NAK, we just have to retry sometime in the future.  Thus one
> solution to the above is to just add a delay between getting a NAK and
> retrying the transmission.  If this delay is sufficiently long to get
> out of the interrupt routine then the rest of the system will be able
> to make forward progress.  Even a 25 us delay would probably be
> enough, but we'll be extra conservative and try to delay 1 ms (the
> exact amount depends on HZ and the accuracy of the jiffy and how close
> the current jiffy is to ticking, but could be as much as 20 ms or as
> little as 1 ms).
> 
> Presumably adding a delay like this could impact the USB throughput,
> so we only add the delay with repeated NAKs.
> 
> NOTE: Upon further testing of a pl2303 serial adapter, I found that
> this fix may help with problems there.  Specifically I found that the
> pl2303 serial adapters tend to respond with a NAK when they have
> nothing to say and thus we end with this same sequence.

This patch fixes "dwc2: NMI watchdog: BUG: soft lockup - CPU#0 stuck for 146s" on bcm2835. After applying your patch on linux-next plus "mm: drop migrate type checks from has_unmovable_pages" i'm able to open 3 PL2303 serial adapters parallel on a Raspberry Pi 1 B without any issues.

Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>

Please see my comment below

> 
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> 
> Changes in v2:
> - Address http://crosreview.com/737520 feedback
> 
>  drivers/usb/dwc2/core.h      |  1 +
>  drivers/usb/dwc2/hcd.c       |  7 ++++
>  drivers/usb/dwc2/hcd.h       |  9 +++++
>  drivers/usb/dwc2/hcd_intr.c  | 20 +++++++++++
>  drivers/usb/dwc2/hcd_queue.c | 81 +++++++++++++++++++++++++++++++++++++++++---
>  5 files changed, 114 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index 8367d4f985c1..c0807e558726 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -962,6 +962,7 @@ struct dwc2_hsotg {
>  	} flags;
>  
>  	struct list_head non_periodic_sched_inactive;
> +	struct list_head non_periodic_sched_waiting;
>  	struct list_head non_periodic_sched_active;
>  	struct list_head *non_periodic_qh_ptr;
>  	struct list_head periodic_sched_inactive;
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index c2631145f404..ed92ae78dcf9 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -653,6 +653,10 @@ static void dwc2_dump_channel_info(struct dwc2_hsotg *hsotg,
>  	list_for_each_entry(qh, &hsotg->non_periodic_sched_inactive,
>  			    qh_list_entry)
>  		dev_dbg(hsotg->dev, "    %p\n", qh);
> +	dev_dbg(hsotg->dev, "  NP waiting sched:\n");
> +	list_for_each_entry(qh, &hsotg->non_periodic_sched_waiting,
> +			    qh_list_entry)
> +		dev_dbg(hsotg->dev, "    %p\n", qh);
>  	dev_dbg(hsotg->dev, "  NP active sched:\n");
>  	list_for_each_entry(qh, &hsotg->non_periodic_sched_active,
>  			    qh_list_entry)
> @@ -1812,6 +1816,7 @@ static void dwc2_qh_list_free(struct dwc2_hsotg *hsotg,
>  static void dwc2_kill_all_urbs(struct dwc2_hsotg *hsotg)
>  {
>  	dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->non_periodic_sched_inactive);
> +	dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->non_periodic_sched_waiting);
>  	dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->non_periodic_sched_active);
>  	dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->periodic_sched_inactive);
>  	dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->periodic_sched_ready);
> @@ -4989,6 +4994,7 @@ static void dwc2_hcd_free(struct dwc2_hsotg *hsotg)
>  
>  	/* Free memory for QH/QTD lists */
>  	dwc2_qh_list_free(hsotg, &hsotg->non_periodic_sched_inactive);
> +	dwc2_qh_list_free(hsotg, &hsotg->non_periodic_sched_waiting);
>  	dwc2_qh_list_free(hsotg, &hsotg->non_periodic_sched_active);
>  	dwc2_qh_list_free(hsotg, &hsotg->periodic_sched_inactive);
>  	dwc2_qh_list_free(hsotg, &hsotg->periodic_sched_ready);
> @@ -5151,6 +5157,7 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg)
>  
>  	/* Initialize the non-periodic schedule */
>  	INIT_LIST_HEAD(&hsotg->non_periodic_sched_inactive);
> +	INIT_LIST_HEAD(&hsotg->non_periodic_sched_waiting);
>  	INIT_LIST_HEAD(&hsotg->non_periodic_sched_active);
>  
>  	/* Initialize the periodic schedule */
> diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
> index 11c3c145b793..af4f4360e8b7 100644
> --- a/drivers/usb/dwc2/hcd.h
> +++ b/drivers/usb/dwc2/hcd.h
> @@ -313,12 +313,16 @@ struct dwc2_hs_transfer_time {
>   *                      descriptor and indicates original XferSize value for the
>   *                      descriptor
>   * @unreserve_timer:    Timer for releasing periodic reservation.
> + * @wait_timer:         Timer used to wait before re-queuing.
>   * @dwc2_tt:            Pointer to our tt info (or NULL if no tt).
>   * @ttport:             Port number within our tt.
>   * @tt_buffer_dirty     True if clear_tt_buffer_complete is pending
>   * @unreserve_pending:  True if we planned to unreserve but haven't yet.
>   * @schedule_low_speed: True if we have a low/full speed component (either the
>   *			host is in low/full speed mode or do_split).
> + * @want_wait:          We should wait before re-queuing; only matters for non-
> + *                      periodic transfers and is ignored for periodic ones.
> + * @wait_timer_cancel:  Set to true to cancel the wait_timer.
>   *
>   * A Queue Head (QH) holds the static characteristics of an endpoint and
>   * maintains a list of transfers (QTDs) for that endpoint. A QH structure may
> @@ -353,11 +357,14 @@ struct dwc2_qh {
>  	u32 desc_list_sz;
>  	u32 *n_bytes;
>  	struct timer_list unreserve_timer;
> +	struct timer_list wait_timer;
>  	struct dwc2_tt *dwc_tt;
>  	int ttport;
>  	unsigned tt_buffer_dirty:1;
>  	unsigned unreserve_pending:1;
>  	unsigned schedule_low_speed:1;
> +	unsigned want_wait:1;
> +	unsigned wait_timer_cancel:1;
>  };
>  
>  /**
> @@ -388,6 +395,7 @@ struct dwc2_qh {
>   * @n_desc:             Number of DMA descriptors for this QTD
>   * @isoc_frame_index_last: Last activated frame (packet) index, used in
>   *                      descriptor DMA mode only
> + * @num_naks:           Number of NAKs received on this QTD.
>   * @urb:                URB for this transfer
>   * @qh:                 Queue head for this QTD
>   * @qtd_list_entry:     For linking to the QH's list of QTDs
> @@ -418,6 +426,7 @@ struct dwc2_qtd {
>  	u8 error_count;
>  	u8 n_desc;
>  	u16 isoc_frame_index_last;
> +	u16 num_naks;
>  	struct dwc2_hcd_urb *urb;
>  	struct dwc2_qh *qh;
>  	struct list_head qtd_list_entry;
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index 28a8210710b1..aad3abd2ddf2 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -52,6 +52,12 @@
>  #include "core.h"
>  #include "hcd.h"
>  
> +/*
> + * If we get this many NAKs on a split transaction we'll slow down
> + * retransmission.  A 1 here means delay after the first NAK.
> + */
> +#define DWC2_NAKS_BEFORE_DELAY		3
> +
>  /* This function is for debug only */
>  static void dwc2_track_missed_sofs(struct dwc2_hsotg *hsotg)
>  {
> @@ -1200,11 +1206,25 @@ static void dwc2_hc_nak_intr(struct dwc2_hsotg *hsotg,
>  	/*
>  	 * Handle NAK for IN/OUT SSPLIT/CSPLIT transfers, bulk, control, and
>  	 * interrupt. Re-start the SSPLIT transfer.
> +	 *
> +	 * Normally for non-periodic transfers we'll retry right away, but to
> +	 * avoid interrupt storms we'll wait before retrying if we've got
> +	 * several NAKs. If we didn't do this we'd retry directly from the
> +	 * interrupt handler and could end up quickly getting another
> +	 * interrupt (another NAK), which we'd retry.
> +	 *
> +	 * Note that in DMA mode software only gets involved to re-send NAKed
> +	 * transfers for split transactions, so we only need to apply this
> +	 * delaying logic when handling splits. In non-DMA mode presumably we
> +	 * might want a similar delay if someone can demonstrate this problem
> +	 * affects that code path too.
>  	 */
>  	if (chan->do_split) {
>  		if (chan->complete_split)
>  			qtd->error_count = 0;
>  		qtd->complete_split = 0;
> +		qtd->num_naks++;
> +		qtd->qh->want_wait = qtd->num_naks >= DWC2_NAKS_BEFORE_DELAY;
>  		dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_NAK);
>  		goto handle_nak_done;
>  	}
> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
> index 3ae8b1bbaa55..bea0aadd756e 100644
> --- a/drivers/usb/dwc2/hcd_queue.c
> +++ b/drivers/usb/dwc2/hcd_queue.c
> @@ -57,6 +57,9 @@
>  /* Wait this long before releasing periodic reservation */
>  #define DWC2_UNRESERVE_DELAY (msecs_to_jiffies(5))
>  
> +/* If we get a NAK, wait this long before retrying */
> +#define DWC2_RETRY_WAIT_DELAY (msecs_to_jiffies(1))
> +
>  /**
>   * dwc2_periodic_channel_available() - Checks that a channel is available for a
>   * periodic transfer
> @@ -1439,6 +1442,55 @@ static void dwc2_deschedule_periodic(struct dwc2_hsotg *hsotg,
>  	list_del_init(&qh->qh_list_entry);
>  }
>  
> +/**
> + * dwc2_wait_timer_fn() - Timer function to re-queue after waiting
> + *
> + * As per the spec, a NAK indicates that "a function is temporarily unable to
> + * transmit or receive data, but will eventually be able to do so without need
> + * of host intervention".
> + *
> + * That means that when we encounter a NAK we're supposed to retry.
> + *
> + * ...but if we retry right away (from the interrupt handler that saw the NAK)
> + * then we can end up with an interrupt storm (if the other side keeps NAKing
> + * us) because on slow enough CPUs it could take us longer to get out of the
> + * interrupt routine than it takes for the device to send another NAK.  That
> + * leads to a constant stream of NAK interrupts and the CPU locks.
> + *
> + * ...so instead of retrying right away in the case of a NAK we'll set a timer
> + * to retry some time later.  This function handles that timer and moves the
> + * qh back to the "inactive" list, then queues transactions.
> + *
> + * @data: Pointer to a qh to re-schedule.
> + */
> +static void dwc2_wait_timer_fn(unsigned long data)
> +{
> +	struct dwc2_qh *qh = (struct dwc2_qh *)data;
> +	struct dwc2_hsotg *hsotg = qh->hsotg;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&hsotg->lock, flags);
> +
> +	/*
> +	 * We'll set wait_timer_cancel to true if we want to cancel this
> +	 * operation in dwc2_hcd_qh_unlink().
> +	 */
> +	if (!qh->wait_timer_cancel) {
> +		enum dwc2_transaction_type tr_type;
> +
> +		qh->want_wait = false;
> +
> +		list_move(&qh->qh_list_entry,
> +			  &hsotg->non_periodic_sched_inactive);
> +
> +		tr_type = dwc2_hcd_select_transactions(hsotg);
> +		if (tr_type != DWC2_TRANSACTION_NONE)
> +			dwc2_hcd_queue_transactions(hsotg, tr_type);
> +	}
> +
> +	spin_unlock_irqrestore(&hsotg->lock, flags);
> +}
> +
>  /**
>   * dwc2_qh_init() - Initializes a QH structure
>   *
> @@ -1468,6 +1520,7 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
>  	qh->hsotg = hsotg;
>  	setup_timer(&qh->unreserve_timer, dwc2_unreserve_timer_fn,
>  		    (unsigned long)qh);
> +	setup_timer(&qh->wait_timer, dwc2_wait_timer_fn, (unsigned long)qh);

Kees Cook started to replace setup_timer() with the new timer_setup(). I'm not sure if it's okay to use the deprecated function and replace all of them later.

Best regards
