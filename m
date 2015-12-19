From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: add shutdown callback to platform variant
Date: Sat, 19 Dec 2015 01:00:51 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC408BF3@US01WEMBX2.internal.synopsys.com>
References: <2135194.vFtAtbOFPb@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "balbi-l0cyMroinI0@public.gmane.org" <balbi-l0cyMroinI0@public.gmane.org>
Cc: "john.youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <john.youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 12/18/2015 10:31 AM, Heiko St=FCbner wrote:
> In specific conditions (involving usb hubs) dwc2 devices can create a
> lot of interrupts, even to the point of overwhelming devices running
> at low frequencies. Some devices need to do special clock handling
> at shutdown-time which may bring the system clock below the threshold
> of being able to handle the dwc2 interrupts. Disabling dwc2-irqs
> in a shutdown callbacks prevents reboots/poweroffs from getting stuck
> in such cases.
>=20
> The hsotg struct already contains an unused irq element, so we can
> just use it to store the irq number for the shutdown callback.
>=20
> Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> I'm also adapting the code on the clock-side to lessen the effects of
> the slow clock (see clk: rockchip: only enter pll slow-mode directly
> before reboots on rk3288), but this patch also fixes the issue of the
> overwhelming irq-number in itself and may be interesting for other/fu=
ture
> platforms using the dwc2.
>=20
>=20
>  drivers/usb/dwc2/platform.c | 35 +++++++++++++++++++++++++++--------
>  1 file changed, 27 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.=
c
> index 39c1cbf..5510d07 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -306,6 +306,25 @@ static int dwc2_driver_remove(struct platform_de=
vice *dev)
>  	return 0;
>  }
> =20
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
> +	struct dwc2_hsotg *hsotg =3D platform_get_drvdata(dev);
> +
> +	disable_irq(hsotg->irq);
> +}
> +
>  static const struct of_device_id dwc2_of_match_table[] =3D {
>  	{ .compatible =3D "brcm,bcm2835-usb", .data =3D &params_bcm2835 },
>  	{ .compatible =3D "rockchip,rk3066-usb", .data =3D &params_rk3066 }=
,
> @@ -335,7 +354,6 @@ static int dwc2_driver_probe(struct platform_devi=
ce *dev)
>  	struct dwc2_hsotg *hsotg;
>  	struct resource *res;
>  	int retval;
> -	int irq;
> =20
>  	match =3D of_match_device(dwc2_of_match_table, &dev->dev);
>  	if (match && match->data) {
> @@ -401,15 +419,15 @@ static int dwc2_driver_probe(struct platform_de=
vice *dev)
> =20
>  	dwc2_set_all_params(hsotg->core_params, -1);
> =20
> -	irq =3D platform_get_irq(dev, 0);
> -	if (irq < 0) {
> +	hsotg->irq =3D platform_get_irq(dev, 0);
> +	if (hsotg->irq < 0) {
>  		dev_err(&dev->dev, "missing IRQ resource\n");
> -		return irq;
> +		return hsotg->irq;
>  	}
> =20
>  	dev_dbg(hsotg->dev, "registering common handler for irq%d\n",
> -		irq);
> -	retval =3D devm_request_irq(hsotg->dev, irq,
> +		hsotg->irq);
> +	retval =3D devm_request_irq(hsotg->dev, hsotg->irq,
>  				  dwc2_handle_common_intr, IRQF_SHARED,
>  				  dev_name(hsotg->dev), hsotg);
>  	if (retval)
> @@ -428,14 +446,14 @@ static int dwc2_driver_probe(struct platform_de=
vice *dev)
>  	dwc2_set_parameters(hsotg, params);
> =20
>  	if (hsotg->dr_mode !=3D USB_DR_MODE_HOST) {
> -		retval =3D dwc2_gadget_init(hsotg, irq);
> +		retval =3D dwc2_gadget_init(hsotg, hsotg->irq);
>  		if (retval)
>  			goto error;
>  		hsotg->gadget_enabled =3D 1;
>  	}
> =20
>  	if (hsotg->dr_mode !=3D USB_DR_MODE_PERIPHERAL) {
> -		retval =3D dwc2_hcd_init(hsotg, irq);
> +		retval =3D dwc2_hcd_init(hsotg, hsotg->irq);
>  		if (retval) {
>  			if (hsotg->gadget_enabled)
>  				dwc2_hsotg_remove(hsotg);
> @@ -502,6 +520,7 @@ static struct platform_driver dwc2_platform_drive=
r =3D {
>  	},
>  	.probe =3D dwc2_driver_probe,
>  	.remove =3D dwc2_driver_remove,
> +	.shutdown =3D dwc2_driver_shutdown,
>  };
> =20
>  module_platform_driver(dwc2_platform_driver);
>=20


Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>

John


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
