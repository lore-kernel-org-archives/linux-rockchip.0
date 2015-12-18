From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: add shutdown callback to platform variant
Date: Sat, 19 Dec 2015 00:17:20 +0100
Message-ID: <3448686.3c6yRgzmgR@diego>
References: <2135194.vFtAtbOFPb@diego> <CAD=FV=U4sFFauhVdHWBf5oK92fKWB=S6sSk5ZjTSTvHCdG+GPw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAD=FV=U4sFFauhVdHWBf5oK92fKWB=S6sSk5ZjTSTvHCdG+GPw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, John Youn <john.youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

Am Freitag, 18. Dezember 2015, 14:50:14 schrieb Doug Anderson:
> On Fri, Dec 18, 2015 at 10:30 AM, Heiko St=FCbner
> <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> > In specific conditions (involving usb hubs) dwc2 devices can create=
 a
> > lot of interrupts, even to the point of overwhelming devices runnin=
g
> > at low frequencies. Some devices need to do special clock handling
> > at shutdown-time which may bring the system clock below the thresho=
ld
> > of being able to handle the dwc2 interrupts. Disabling dwc2-irqs
> > in a shutdown callbacks prevents reboots/poweroffs from getting stu=
ck
> > in such cases.
> >=20
> > The hsotg struct already contains an unused irq element, so we can
> > just use it to store the irq number for the shutdown callback.
> >=20
> > Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > ---
> > I'm also adapting the code on the clock-side to lessen the effects =
of
> > the slow clock (see clk: rockchip: only enter pll slow-mode directl=
y
> > before reboots on rk3288), but this patch also fixes the issue of t=
he
> > overwhelming irq-number in itself and may be interesting for other/=
future
> > platforms using the dwc2.
> >=20
> >  drivers/usb/dwc2/platform.c | 35 +++++++++++++++++++++++++++------=
--
> >  1 file changed, 27 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platfor=
m.c
> > index 39c1cbf..5510d07 100644
> > --- a/drivers/usb/dwc2/platform.c
> > +++ b/drivers/usb/dwc2/platform.c
> > @@ -306,6 +306,25 @@ static int dwc2_driver_remove(struct platform_=
device
> > *dev)>=20
> >         return 0;
> > =20
> >  }
> >=20
> > +/**
> > + * dwc2_driver_shutdown() - Called on device shutdown
> > + *
> > + * @dev: Platform device
> > + *
> > + * In specific conditions (involving usb hubs) dwc2 devices can cr=
eate a
> > + * lot of interrupts, even to the point of overwhelming devices ru=
nning
> > + * at low frequencies. Some devices need to do special clock handl=
ing
> > + * at shutdown-time which may bring the system clock below the thr=
eshold
> > + * of being able to handle the dwc2 interrupts. Disabling dwc2-irq=
s
> > + * prevents reboots/poweroffs from getting stuck in such cases.
> > + */
> > +static void dwc2_driver_shutdown(struct platform_device *dev)
> > +{
> > +       struct dwc2_hsotg *hsotg =3D platform_get_drvdata(dev);
> > +
> > +       disable_irq(hsotg->irq);
>=20
> In one other place I see dwc2 getting the IRQ from the USB HCD
> structure.  That is:
>=20
>   dwc2_hsotg_to_hcd(hsotg)->irq
>=20
> I wonder if that would be a good idea to do?  Then a future patch
> could just remove the unused (and redundant) irq from the hsotg
> structure?

The hcd-part as well as the gadget equivalent only gets enabled when th=
e right=20
dr-mode is set:
	if (hsotg->dr_mode !=3D USB_DR_MODE_PERIPHERAL) {
		retval =3D dwc2_hcd_init(hsotg, hsotg->irq);
	...

Additionally the hcd/gadget part can also be compiled out, making that =
init=20
function a stub. Also I think dwc2_hsotg_to_hcd is only defined in the =
hcd-
scope and in the platform code you cannot really be sure if that is act=
ually=20
available - or would need to check for hcd-existence + gadget-existence=
 as=20
fallback.

So I'd think accessing a generic irq-value might be preferrable :-) .


Heiko
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
