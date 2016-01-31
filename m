From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v6 18/22] usb: dwc2: host: Schedule periodic right away
 if it's time
Date: Sun, 31 Jan 2016 17:36:00 +0800
Message-ID: <56ADD580.1070505@rock-chips.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
 <1454034013-24657-19-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1454034013-24657-19-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, stefan.wahren-eS4NqCHxEME@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Doug,

On 01/29/2016 10:20 AM, Douglas Anderson wrote:
> In dwc2_hcd_qh_deactivate() we will put some things on the
> periodic_sched_ready list.  These things won't be taken off the ready
> list until the next SOF, which might be a little late.  Let's put them
> on right away.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
> ---
> Changes in v6:
> - Add Heiko's Tested-by.
> - Add Stefan's Tested-by.
>
> Changes in v5: None
> Changes in v4:
> - Schedule periodic right away if it's time new for v4.
>
> Changes in v3: None
> Changes in v2: None
>
>   drivers/usb/dwc2/hcd_queue.c | 18 ++++++++++++++++--
>   1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
> index 9b3c435339ee..3abb34a5fc5b 100644
> --- a/drivers/usb/dwc2/hcd_queue.c
> +++ b/drivers/usb/dwc2/hcd_queue.c
> @@ -1080,12 +1080,26 @@ void dwc2_hcd_qh_deactivate(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
>   	 * Note: we purposely use the frame_number from the "hsotg" structure
>   	 * since we know SOF interrupt will handle future frames.
>   	 */
> -	if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number))
> +	if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number)) {
> +		enum dwc2_transaction_type tr_type;
> +
> +		/*
> +		 * We're bypassing the SOF handler which is normally what puts
> +		 * us on the ready list because we're in a hurry and need to
> +		 * try to catch up.
> +		 */
> +		dwc2_sch_vdbg(hsotg, "QH=%p IMM ready fn=%04x, nxt=%04x\n",
> +			      qh, frame_number, qh->next_active_frame);
>   		list_move_tail(&qh->qh_list_entry,
>   			       &hsotg->periodic_sched_ready);
> -	else
> +
> +		tr_type = dwc2_hcd_select_transactions(hsotg);
Do we need to add select_transactions call here? If we get into this 
function in interrupt
and once we put the qh in ready queue, the qh can be handled in this 
frame again by the
later function call of dwc_hcd_select_transactions, so what we need to 
to here is put
it in ready list instead of inactive queue, and wait for the schedule.

Thanks,
- Kever

> +		if (tr_type != DWC2_TRANSACTION_NONE)
> +			dwc2_hcd_queue_transactions(hsotg, tr_type);
> +	} else {
>   		list_move_tail(&qh->qh_list_entry,
>   			       &hsotg->periodic_sched_inactive);
> +	}
>   }
>   
>   /**
