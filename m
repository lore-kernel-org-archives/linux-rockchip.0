From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: add shutdown callback to platform variant
Date: Fri, 18 Dec 2015 14:50:14 -0800
Message-ID: <CAD=FV=U4sFFauhVdHWBf5oK92fKWB=S6sSk5ZjTSTvHCdG+GPw@mail.gmail.com>
References: <2135194.vFtAtbOFPb@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2135194.vFtAtbOFPb@diego>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, John Youn <john.youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Fri, Dec 18, 2015 at 10:30 AM, Heiko St=C3=BCbner
<heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> In specific conditions (involving usb hubs) dwc2 devices can create a
> lot of interrupts, even to the point of overwhelming devices running
> at low frequencies. Some devices need to do special clock handling
> at shutdown-time which may bring the system clock below the threshold
> of being able to handle the dwc2 interrupts. Disabling dwc2-irqs
> in a shutdown callbacks prevents reboots/poweroffs from getting stuck
> in such cases.
>
> The hsotg struct already contains an unused irq element, so we can
> just use it to store the irq number for the shutdown callback.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> I'm also adapting the code on the clock-side to lessen the effects of
> the slow clock (see clk: rockchip: only enter pll slow-mode directly
> before reboots on rk3288), but this patch also fixes the issue of the
> overwhelming irq-number in itself and may be interesting for other/fu=
ture
> platforms using the dwc2.
>
>
>  drivers/usb/dwc2/platform.c | 35 +++++++++++++++++++++++++++--------
>  1 file changed, 27 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.=
c
> index 39c1cbf..5510d07 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -306,6 +306,25 @@ static int dwc2_driver_remove(struct platform_de=
vice *dev)
>         return 0;
>  }
>
> +/**
> + * dwc2_driver_shutdown() - Called on device shutdown
> + *
> + * @dev: Platform device
> + *
> + * In specific conditions (involving usb hubs) dwc2 devices can crea=
te a
> + * lot of interrupts, even to the point of overwhelming devices runn=
ing
> + * at low frequencies. Some devices need to do special clock handlin=
g
> + * at shutdown-time which may bring the system clock below the thres=
hold
> + * of being able to handle the dwc2 interrupts. Disabling dwc2-irqs
> + * prevents reboots/poweroffs from getting stuck in such cases.
> + */
> +static void dwc2_driver_shutdown(struct platform_device *dev)
> +{
> +       struct dwc2_hsotg *hsotg =3D platform_get_drvdata(dev);
> +
> +       disable_irq(hsotg->irq);

In one other place I see dwc2 getting the IRQ from the USB HCD
structure.  That is:

  dwc2_hsotg_to_hcd(hsotg)->irq

I wonder if that would be a good idea to do?  Then a future patch
could just remove the unused (and redundant) irq from the hsotg
structure?


Other than that this seems sane to me.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
