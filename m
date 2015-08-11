From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v1] usb: dwc2: reset AHB hclk domain before init
Date: Tue, 11 Aug 2015 09:12:29 -0500
Message-ID: <20150811141229.GB13920@saruman.tx.rr.com>
References: <1439260062-12049-1-git-send-email-lyz@rock-chips.com>
Reply-To: balbi-l0cyMroinI0@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4860803159059059819=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1439260062-12049-1-git-send-email-lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

--===============4860803159059059819==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline

--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 11, 2015 at 10:27:42AM +0800, Yunzhi Li wrote:
> We initiate dwc2 usb controller in BIOS, when kernel driver
> start-up we should reset AHB hclk domain to reset all AHB
> interface registers to default. Without this the FIFO value
> setting might be incorrect because calculating FIFO size need the
> power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
>=20
> This patch could avoid warnning massage like in rk3288 platform:
> [    2.074764] dwc2 ff580000.usb: 256 invalid for
> host_perio_tx_fifo_size. Check HW configuration.
>=20
> Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>=20
> ---
>=20
>  drivers/usb/dwc2/platform.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
> index 9093530..3da21ab 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -42,6 +42,7 @@
>  #include <linux/of_device.h>
>  #include <linux/mutex.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset.h>
> =20
>  #include <linux/usb/of.h>
> =20
> @@ -165,6 +166,7 @@ static int dwc2_driver_probe(struct platform_device *=
dev)
>  	struct resource *res;
>  	struct phy *phy;
>  	struct usb_phy *uphy;
> +	struct reset_control *rst;
>  	int retval;
>  	int irq;
> =20
> @@ -189,6 +191,16 @@ static int dwc2_driver_probe(struct platform_device =
*dev)
> =20
>  	hsotg->dev =3D &dev->dev;
> =20
> +	/* AHB hclk domain reset, set all AHB interface registers to default */
> +	rst =3D devm_reset_control_get_optional(&dev->dev, "ahb_reset");

why isn't this done in core so PCI systems can also make use of it ?

--=20
balbi

--TRYliJ5NKNqkz5bu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVygLNAAoJEIaOsuA1yqRE0M4P+wRZ+lM48e0DWEfQA1R0br7C
MqYT/C8pn/EfIoOHfFlbsN6wNqlkJ/iWITeFxJ16thChXk4VVf2qo4aqbE04CVXi
CJlGwUTVJSde3mMzZKrS4Fc8DB87VowNNZDpReKVQ8wCcXs0o25zH2sP9M8TRNiN
6AUM7AutkFaQUFoWij+5tXWHOF+rDpZ+euYOU6Z3zHp9aYvFOnCvVxTc67rfvWmV
zE8nd5OC8aE+M5qp8kIN93iA6b5ImgAEu+yWw4VODBn78AHkvUEncucDSBx1EHcH
HOP9xCazKBFia35uZ9wWo3J4kKGv9Yw6IwfB5813Fzp4+XZcp0P9WwgGw7KqeW++
sD+FD85COiVF1TRnYq1PxBRQbQAQqAdc5dANLltsADLFceU7U/FRD+I39C6rPJxt
tmVi4kABx053XNkyUhtRq0oksEWgJdA0gy6c5m2CXdoLbDE6vmiLKJzW79VPA5cL
RGCy9en6GVBy38o5J7n5yBeh/6+drPiB3qeADnB0h/ECBpxXHyN3hsoCxIfmynaQ
Gu0avWPaTSzgWuXRonckluIFQ5Q9ORU3D6SUP0EVixuEY82yEUofT8f+m+DAkPIO
t7vglTupLVApvpRyv0aMUy6xFuy/wWytUMbPs5hWzK1sXtRzE3Xc5u061xTp0QqW
QxBnRO56sAyhd6H8B6ke
=ulP2
-----END PGP SIGNATURE-----

--TRYliJ5NKNqkz5bu--


--===============4860803159059059819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4860803159059059819==--
