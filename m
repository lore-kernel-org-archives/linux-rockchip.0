From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v1] usb: dwc2: reset AHB hclk domain before init
Date: Thu, 13 Aug 2015 09:28:53 -0500
Message-ID: <20150813142853.GE27560@saruman.tx.rr.com>
References: <1439260062-12049-1-git-send-email-lyz@rock-chips.com>
 <20150811141229.GB13920@saruman.tx.rr.com>
 <55CB28A1.6090208@rock-chips.com>
 <20150812193244.GA20972@saruman.tx.rr.com>
 <2B3535C5ECE8B5419E3ECBE300772909017528D354@US01WEMBX2.internal.synopsys.com>
Reply-To: balbi-l0cyMroinI0@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7044760178495047646=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE300772909017528D354-Yu2iAY70zvrYN67daEjeMPufCSb+aD3WLzEdoUbNIic@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: "huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "balbi-l0cyMroinI0@public.gmane.org" <balbi-l0cyMroinI0@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============7044760178495047646==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8vCeF2GUdMpe9ZbK"
Content-Disposition: inline

--8vCeF2GUdMpe9ZbK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 13, 2015 at 08:37:36AM +0000, John Youn wrote:
> On 8/12/2015 12:33 PM, Felipe Balbi wrote:
> > On Wed, Aug 12, 2015 at 07:06:09PM +0800, Yunzhi Li wrote:
> >> Hi ,
> >> =E5=9C=A8 2015/8/11 22:12, Felipe Balbi =E5=86=99=E9=81=93:
> >>> Hi,
> >>>
> >>> On Tue, Aug 11, 2015 at 10:27:42AM +0800, Yunzhi Li wrote:
> >>>> We initiate dwc2 usb controller in BIOS, when kernel driver
> >>>> start-up we should reset AHB hclk domain to reset all AHB
> >>>> interface registers to default. Without this the FIFO value
> >>>> setting might be incorrect because calculating FIFO size need the
> >>>> power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
> >>>>
> >>>> This patch could avoid warnning massage like in rk3288 platform:
> >>>> [    2.074764] dwc2 ff580000.usb: 256 invalid for
> >>>> host_perio_tx_fifo_size. Check HW configuration.
> >>>>
> >>>> Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >>>>
> >>>> ---
> >>>>
> >>>>  drivers/usb/dwc2/platform.c | 12 ++++++++++++
> >>>>  1 file changed, 12 insertions(+)
> >>>>
> >>>> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform=
=2Ec
> >>>> index 9093530..3da21ab 100644
> >>>> --- a/drivers/usb/dwc2/platform.c
> >>>> +++ b/drivers/usb/dwc2/platform.c
> >>>> @@ -42,6 +42,7 @@
> >>>>  #include <linux/of_device.h>
> >>>>  #include <linux/mutex.h>
> >>>>  #include <linux/platform_device.h>
> >>>> +#include <linux/reset.h>
> >>>>  #include <linux/usb/of.h>
> >>>> @@ -165,6 +166,7 @@ static int dwc2_driver_probe(struct platform_dev=
ice *dev)
> >>>>  	struct resource *res;
> >>>>  	struct phy *phy;
> >>>>  	struct usb_phy *uphy;
> >>>> +	struct reset_control *rst;
> >>>>  	int retval;
> >>>>  	int irq;
> >>>> @@ -189,6 +191,16 @@ static int dwc2_driver_probe(struct platform_de=
vice *dev)
> >>>>  	hsotg->dev =3D &dev->dev;
> >>>> +	/* AHB hclk domain reset, set all AHB interface registers to defau=
lt */
> >>>> +	rst =3D devm_reset_control_get_optional(&dev->dev, "ahb_reset");
> >>> why isn't this done in core so PCI systems can also make use of it ?
> >>>
> >> I have no ides about how to reset a PCI interface dwc2 controller, John
> >> could you please give some infomation about it ?
> >> Is it also needed for PCI interface dwc2 IP ?
> >=20
> > even on platform only, how do you know all users provide a ahb_reset
> > reset controller ?
> >=20
>=20
> Also where do you provide the ahb_reset? I don't see it as a
> property for dwc2.
>=20
> With regards to PCI, I'm also not sure how you'd accomplish
> something like this. But the platform I use at least doesn't need
> this.

Is the reset controller optional ? That _optional should always return a
valid pointer, right ? Even if that valid pointer is NULL :-)

--=20
balbi

--8vCeF2GUdMpe9ZbK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVzKmlAAoJEIaOsuA1yqRElCkP/221KDJvHjrSsJChUFQkso3i
1V0NjpT5EdYJE+W3IWPbD0B+MLxeX4K3tJrRZc/weDHVQgB/v3ToyYppY4FWb13i
8KFxhwe96Zo5aifPVCtWsjL1qxsCadYGO5kLBwwqxrwMDLxgabkbYet8vbeCb0zu
qEblPPZqmUQjk9Qe+TNH6cVkFMcA9i035KWtEQNfEG6efXwDcZV9YSyGvOP6rtL6
FtAgAtEx9x8Oyyn2Z8Aqi3IIlmjDwCqKdJsQgYmjvK27sTQjR1Chz3aXA6Mo/zcT
1JLL+Zk2E7u0PAxmr7IuiMiA44Cjs5HrmmshpziI3A2o0l+Qgk2HZMOquOl4Gh8u
+7hkOFBuy6HIvIYx5QZTaUUmIbZIVxqiqZ1+j/ow6Pm+H8uBeazIJbWe9qNG08re
gLcuI4LVQZtaUDi0pM7Z6c9w3V7eteq5+5JGhYfR4HBhoXMXlUV4w4K0gE9x2Pl5
J2dKSkIIy/L3k2tja3QaEVIDQ9QcTDU/1AEXe+HEuLRgft/1TmsQSyB3yvVlqEYb
nVj3QrVr0kbSc3SPXaj0YaRaWwboTJ0mTL5BaTfB7a/+JwQzU5zIH8OpMnTr8Twv
JXLIjS8EA5e5LyYZTD91lliu8bvmPRBcUBTPD4MkAxpWAqYvomfmeDmwI0fr7YEN
G3x4RuyX3yDohOWBedQW
=OdE6
-----END PGP SIGNATURE-----

--8vCeF2GUdMpe9ZbK--


--===============7044760178495047646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7044760178495047646==--
