From: Kees Cook <keescook-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v3 2/2] usb: dwc2: host: Convert hcd_queue to timer_setup
Date: Mon, 30 Oct 2017 14:25:06 -0700
Message-ID: <CAGXu5jK08M=LXuMo2rRzxHwYOokC0ua2pXCHnxR4DOW5Wb73BA@mail.gmail.com>
References: <20171030170802.14489-1-dianders@chromium.org> <20171030170802.14489-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20171030170802.14489-2-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Johan Hovold <johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Greg KH <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Oct 30, 2017 at 10:08 AM, Douglas Anderson
<dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> Convert the timers in hcd_queue to use the new timer_setup() call
> introduced in commit 686fef928bba ("timer: Prepare to change timer
> callback argument type").
>
> Suggested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Cc: Kees Cook <keescook-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

Acked-by: Kees Cook <keescook-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

This matches my automated Coccinelle output for this code. (Actually,
it's better because it fixes the documentation too.) Please feel free
to take the patch into -next in advance of the global replacement.

Thanks!

-Kees

> ---
>
> Changes in v3:
> - Convert hcd_queue to timer_setup new for v3
>
>  drivers/usb/dwc2/hcd_queue.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
> index bea0aadd756e..6f5b5c8b0467 100644
> --- a/drivers/usb/dwc2/hcd_queue.c
> +++ b/drivers/usb/dwc2/hcd_queue.c
> @@ -1275,11 +1275,11 @@ static void dwc2_do_unreserve(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
>   * release the reservation.  This worker is called after the appropriate
>   * delay.
>   *
> - * @work: Pointer to a qh unreserve_work.
> + * @t: Pointer to unreserve_timer in a qh.
>   */
> -static void dwc2_unreserve_timer_fn(unsigned long data)
> +static void dwc2_unreserve_timer_fn(struct timer_list *t)
>  {
> -       struct dwc2_qh *qh = (struct dwc2_qh *)data;
> +       struct dwc2_qh *qh = from_timer(qh, t, unreserve_timer);
>         struct dwc2_hsotg *hsotg = qh->hsotg;
>         unsigned long flags;
>
> @@ -1461,11 +1461,11 @@ static void dwc2_deschedule_periodic(struct dwc2_hsotg *hsotg,
>   * to retry some time later.  This function handles that timer and moves the
>   * qh back to the "inactive" list, then queues transactions.
>   *
> - * @data: Pointer to a qh to re-schedule.
> + * @t: Pointer to wait_timer in a qh.
>   */
> -static void dwc2_wait_timer_fn(unsigned long data)
> +static void dwc2_wait_timer_fn(struct timer_list *t)
>  {
> -       struct dwc2_qh *qh = (struct dwc2_qh *)data;
> +       struct dwc2_qh *qh = from_timer(qh, t, wait_timer);
>         struct dwc2_hsotg *hsotg = qh->hsotg;
>         unsigned long flags;
>
> @@ -1518,9 +1518,8 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
>
>         /* Initialize QH */
>         qh->hsotg = hsotg;
> -       setup_timer(&qh->unreserve_timer, dwc2_unreserve_timer_fn,
> -                   (unsigned long)qh);
> -       setup_timer(&qh->wait_timer, dwc2_wait_timer_fn, (unsigned long)qh);
> +       timer_setup(&qh->unreserve_timer, dwc2_unreserve_timer_fn, 0);
> +       timer_setup(&qh->wait_timer, dwc2_wait_timer_fn, 0);
>         qh->ep_type = ep_type;
>         qh->ep_is_in = ep_is_in;
>
> --
> 2.15.0.rc2.357.g7e34df9404-goog
>



-- 
Kees Cook
Pixel Security
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
