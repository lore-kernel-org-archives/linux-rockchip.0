From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 2/3] usb: dwc2: host: Giveback URB in tasklet context
Date: Wed, 4 Nov 2015 16:30:14 -0800
Message-ID: <CAD=FV=WhD-CcHHZN0_h57xPmvwiOiroOQKoDpy8f2HfDJY-PCg@mail.gmail.com>
References: <1446677585-28582-1-git-send-email-dianders@chromium.org>
 <1446677585-28582-3-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1446677585-28582-3-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab,
 Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Nov 4, 2015 at 2:53 PM, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> In commit 94dfd7edfd5c ("USB: HCD: support giveback of URB in tasklet
> context") support was added to give back the URB in tasklet context.
> Let's take advantage of this in dwc2.
>
> This speeds up the dwc2 interrupt handler considerably.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
>  drivers/usb/dwc2/hcd.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index e79baf73c234..9e7988950c7a 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -2273,9 +2273,7 @@ void dwc2_host_complete(struct dwc2_hsotg *hsotg, struct dwc2_qtd *qtd,
>         kfree(qtd->urb);
>         qtd->urb = NULL;
>
> -       spin_unlock(&hsotg->lock);
>         usb_hcd_giveback_urb(dwc2_hsotg_to_hcd(hsotg), urb, status);
> -       spin_lock(&hsotg->lock);
>  }
>
>  /*
> @@ -2888,7 +2886,7 @@ static struct hc_driver dwc2_hc_driver = {
>         .hcd_priv_size = sizeof(struct wrapper_priv_data),
>
>         .irq = _dwc2_hcd_irq,
> -       .flags = HCD_MEMORY | HCD_USB2,
> +       .flags = HCD_MEMORY | HCD_USB2 | HCD_BH,
>
>         .start = _dwc2_hcd_start,
>         .stop = _dwc2_hcd_stop,

In the ChromeOS gerrit
<https://chromium-review.googlesource.com/#/c/310583/> Julius Werner
points out that for EHCI it was good to take the optimization from
commit 9118f9eb4f1e ("USB: EHCI: improve interrupt qh unlink") before
this one.  I'm still trying to learn USB / dwc2 so it's unclear to me
whether we also need a similar change before landing.

I'll see if I can do some investigation about this and also some
benchmarking before and after.  Certainly profiling the interrupt
handler itself showed a huge improvement, but I'd hate to see a
regression elsewhere.

If anyone else knows better than I, please speak up!  :)

-Doug
