From: Nicolas Saenz Julienne <nsaenzjulienne-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [PATCH 25/32] pwm: brcmstb: convert to
 devm_platform_ioremap_resource
Date: Tue, 07 Jan 2020 11:54:53 +0100
Message-ID: <9fde9b416b281648e99b3ce430229e89c5b1a653.camel__19088.1160598778$1578394550$gmane$org@suse.de>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-25-tiny.windzz@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6095150421281763122=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191229080610.7597-25-tiny.windzz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Yangtao Li <tiny.windzz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, claudiu.beznea-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, u.kleine-koenig-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org, nicolas.ferre-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org, alexandre.belloni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, ludovic.desroches-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org, rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, sbranden-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, bcm-kernel-feedback-list-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, shc_work-JGs/UdohzUI@public.gmane.org, shawnguo-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, s.hauer-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org, kernel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org, festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-imx-3arQi8VN3Tc@public.gmane.org, vz-ChpfBGZJDbMAvxtiuMwx3w@public.gmane.org, slemieux.tyco-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, matthias.bgg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, palmer-96lFi9zoCfxBDgjK7y7TUQ@public.gmane.org, paul.walmsley-SpMDHPYPyPbQT0dZR+AlfA@public.gmane.org, mripard-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, wens-jdAy2FN1RRM@public.gmane.org, jonathanh-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org, linux-ci5G2KO2hbZ+pU9mqzGVBQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-pwm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amlogic-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-mediatek-IAPFreCvJWM1dQTEkxZZdg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============6095150421281763122==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-PicWM6Keq9fqFpxdhA9f"


--=-PicWM6Keq9fqFpxdhA9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-12-29 at 08:06 +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne-l3A5Bk7waGM@public.gmane.org>

Thanks!

>  drivers/pwm/pwm-brcmstb.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-brcmstb.c b/drivers/pwm/pwm-brcmstb.c
> index fea612c45f20..8b66f9d2f589 100644
> --- a/drivers/pwm/pwm-brcmstb.c
> +++ b/drivers/pwm/pwm-brcmstb.c
> @@ -234,7 +234,6 @@ MODULE_DEVICE_TABLE(of, brcmstb_pwm_of_match);
>  static int brcmstb_pwm_probe(struct platform_device *pdev)
>  {
>  	struct brcmstb_pwm *p;
> -	struct resource *res;
>  	int ret;
> =20
>  	p =3D devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
> @@ -262,8 +261,7 @@ static int brcmstb_pwm_probe(struct platform_device *=
pdev)
>  	p->chip.base =3D -1;
>  	p->chip.npwm =3D 2;
> =20
> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	p->base =3D devm_ioremap_resource(&pdev->dev, res);
> +	p->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(p->base)) {
>  		ret =3D PTR_ERR(p->base);
>  		goto out_clk;


--=-PicWM6Keq9fqFpxdhA9f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4UY30ACgkQlfZmHno8
x/7/aAf7BW2itFl3TLtG03hnquQwqo+DGR4GEFXlXS0y7tCwQNw/r7LWRi5SHWqI
Fq6j3OYwhEhv1zZNfDN+lUmZdX10MHKOrnk6wdu89kgT1ebWaQ2Pwf6TCqZtwWia
y/2eh5++1G9168GQTuyG3BjaSaVFwwVKe4+gbtIMc6RPU9xWbQSC6LsIq+a66EvW
3sXdIQJUp0WcQuFcnQhD9OUgVRZedCRpu7rj7Tezr5Ks+lL91fItKsOwdSKyTfWh
ZLbQ3yaz45FUSkZVP9388WNvi2lUIEn2VaX9QX3PrmhyKlwlyhfioTTj47wDotkU
KLQMm16Gyns5z+15tvGm5+m8oZ61FA==
=Sn4O
-----END PGP SIGNATURE-----

--=-PicWM6Keq9fqFpxdhA9f--



--===============6095150421281763122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6095150421281763122==--
