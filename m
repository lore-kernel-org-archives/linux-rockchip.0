From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v1] usb: dwc2: reset AHB hclk domain before init
Date: Wed, 12 Aug 2015 14:32:44 -0500
Message-ID: <20150812193244.GA20972@saruman.tx.rr.com>
References: <1439260062-12049-1-git-send-email-lyz@rock-chips.com>
 <20150811141229.GB13920@saruman.tx.rr.com>
 <55CB28A1.6090208@rock-chips.com>
Reply-To: balbi-l0cyMroinI0@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============8104752644469846423=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <55CB28A1.6090208-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, balbi-l0cyMroinI0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

--===============8104752644469846423==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2015 at 07:06:09PM +0800, Yunzhi Li wrote:
> Hi ,
> =E5=9C=A8 2015/8/11 22:12, Felipe Balbi =E5=86=99=E9=81=93:
> >Hi,
> >
> >On Tue, Aug 11, 2015 at 10:27:42AM +0800, Yunzhi Li wrote:
> >>We initiate dwc2 usb controller in BIOS, when kernel driver
> >>start-up we should reset AHB hclk domain to reset all AHB
> >>interface registers to default. Without this the FIFO value
> >>setting might be incorrect because calculating FIFO size need the
> >>power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
> >>
> >>This patch could avoid warnning massage like in rk3288 platform:
> >>[    2.074764] dwc2 ff580000.usb: 256 invalid for
> >>host_perio_tx_fifo_size. Check HW configuration.
> >>
> >>Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >>
> >>---
> >>
> >>  drivers/usb/dwc2/platform.c | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> >>
> >>diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
> >>index 9093530..3da21ab 100644
> >>--- a/drivers/usb/dwc2/platform.c
> >>+++ b/drivers/usb/dwc2/platform.c
> >>@@ -42,6 +42,7 @@
> >>  #include <linux/of_device.h>
> >>  #include <linux/mutex.h>
> >>  #include <linux/platform_device.h>
> >>+#include <linux/reset.h>
> >>  #include <linux/usb/of.h>
> >>@@ -165,6 +166,7 @@ static int dwc2_driver_probe(struct platform_device=
 *dev)
> >>  	struct resource *res;
> >>  	struct phy *phy;
> >>  	struct usb_phy *uphy;
> >>+	struct reset_control *rst;
> >>  	int retval;
> >>  	int irq;
> >>@@ -189,6 +191,16 @@ static int dwc2_driver_probe(struct platform_devic=
e *dev)
> >>  	hsotg->dev =3D &dev->dev;
> >>+	/* AHB hclk domain reset, set all AHB interface registers to default =
*/
> >>+	rst =3D devm_reset_control_get_optional(&dev->dev, "ahb_reset");
> >why isn't this done in core so PCI systems can also make use of it ?
> >
> I have no ides about how to reset a PCI interface dwc2 controller, John
> could you please give some infomation about it ?
> Is it also needed for PCI interface dwc2 IP ?

even on platform only, how do you know all users provide a ahb_reset
reset controller ?

--=20
balbi

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVy59cAAoJEIaOsuA1yqRE8B4P/1+b0gR47OA7udYlRPBlIAFm
RuORuv4hTO4Sjn4ae6DX0tD8EDfrUpy9LZgdDfzSs6Sp097Un1sYTr37+1mDWrf2
c0pAWuekjsc2Z+41V97Ev/cUt4S9/Se9KcexFDMBSamqrCMJ+EiT8KutT5vqjQv+
b9/cLK6zZPURh+smTsN5h+RB0JRHRItj+BYZfqWIlYwkDMqzuM3TMSOr/0f/K9Mp
AdcPLY8j1/9ojkokiOKoQxeTHKmeWfADuw7i2gihjNnCwPolNjufQcDlbz0vHnHw
Vab051OLWl6Qm8qGy1lkfDdDrTcL/C+O3LKlJi9QYt8eMbeFOHOHpD/ppghAwvV2
kDQL2gDGkDwOnYEPuB7caULkDm2P+3fMw7dOLbyXh3YuS2xkhER9nM80ypQbg5Am
eMjM2TY9A+FDCJmrDjjTSxz0t2kq12oZg91uNUMnrkG9OUKDzdXqtoPfpQcyFwa5
GbjkRT82L0Z/67QLv/raRjEcTfFEA9GkCvSaszWrsHzsdmPJNaatWthN9dfbmx7z
yFwVjCjziiCTyItzxxcjXmEeJcjwwWa+zxtuvIB2mJotAn8uuBByBOrVhpVyVNAP
rOlsaC0WO/T/EANRRvRKaH2Y1dHf72Gpf8LOwmmeFnR3/GwNiJkhhabjByFVuyaf
NYIr6IQxLmnxZ6ReASvc
=8hE1
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--


--===============8104752644469846423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8104752644469846423==--
