Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66281C25B0E
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 08:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBoVll2FCxRN9WmTKc0+PqvavnwQic+QGDytINyuCLY=; b=SmziROF4fdFMQWLWtNJettHoKD
	Z5GRBj2ZYQFK3hmsvZy4rFjl8VttG8uOjPq1ESZ1bYPzEBpP4KhqrgONCxH1TrrMaMsrMJu32P6un
	zUuZhIbUcF0kDNSW2Xkdcg0FzbXl2W/NvA6IJByPzyqgo0Y2EhKO/l4PQyav3zD650qYkFYJL/VyB
	rJwpLlOaXUFaWYJ9imNlFRwkTkIVKJepY8SEUXocGqlhc6YWxQl0WA3R5oRkLATypxdOOoj9Vk0SD
	DXJ9PQSFp/NalYEmGTYW7GrwD0RUE7/8CfnYdispmminn/6ytr2EORGGcil+QH31kP7C2ndUSK57r
	aVf+2xRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOxHP-0040MG-MX; Fri, 19 Aug 2022 08:22:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOxHG-0040Dn-MO
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 08:22:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oOxH8-0004of-3W; Fri, 19 Aug 2022 10:22:42 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oOxH5-000g1u-IS; Fri, 19 Aug 2022 10:22:39 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oOxH4-00Chdh-N7; Fri, 19 Aug 2022 10:22:38 +0200
Date: Fri, 19 Aug 2022 10:22:35 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: zhaoxiao <zhaoxiao@uniontech.com>
Cc: thierry.reding@gmail.com, heiko@sntech.de, linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] pwm: rockchip: Convert to use dev_err_probe()
Message-ID: <20220819082235.ygyw3spkbpookzyy@pengutronix.de>
References: <20220819070756.14895-1-zhaoxiao@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <20220819070756.14895-1-zhaoxiao@uniontech.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_012250_757796_73A414D2 
X-CRM114-Status: GOOD (  20.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3518410927059821859=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3518410927059821859==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ashbpe5mzbtgjqm"
Content-Disposition: inline


--2ashbpe5mzbtgjqm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 19, 2022 at 03:07:56PM +0800, zhaoxiao wrote:
> It's fine to call dev_err_probe() in ->probe() when error code is known.
> Convert the driver to use dev_err_probe().
>=20
> Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
> ---
>  v3: 1.There is no need to assign it to 'ret', and use PTR_ERR(pc->pclk) =
directly.
>      2.add the return before dev_err_probe().
>  drivers/pwm/pwm-rockchip.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index f3647b317152..eda1bd49d260 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -328,18 +328,12 @@ static int rockchip_pwm_probe(struct platform_devic=
e *pdev)
>  	else
>  		pc->pclk =3D pc->clk;
> =20
> -	if (IS_ERR(pc->pclk)) {
> -		ret =3D PTR_ERR(pc->pclk);
> -		if (ret !=3D -EPROBE_DEFER)
> -			dev_err(&pdev->dev, "Can't get APB clk: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(pc->pclk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(pc->pclk), "Can't get APB clk=
\n");
> =20
>  	ret =3D clk_prepare_enable(pc->clk);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Can't prepare enable PWM clk\n"=
);
> =20
>  	ret =3D clk_prepare_enable(pc->pclk);
>  	if (ret) {

Still missing two dev_err() that are unconverted ...

Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2ashbpe5mzbtgjqm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmL/SEgACgkQwfwUeK3K
7AmYCAf+JNAnIXa6WEgqFlr9kJ6eRLkB5TuFo0vd5ix980QQR+G0ouBvA6+aiEyP
vagnbM2Ln+ld6ZJGCqgAKwbQcjXTB5x2QZ7r0m4lDetPJKXyHbp5wG0OxAgubbrt
tA1u1h6gV98fN5nQhJ21AmP27ysF8zAr50aK7oq0T+6T0AKTDzT0cjeZTdFbX2zb
td/aTKo9RZ9CotP9OXpXPuQV2z/wvsmnqzSwhAG1oyqPq6hDU2BcMGbZdx6fOzTm
Tlist939BIzup5wRGA1rFceLYb3A4esTq0/TrnGYiwWXxk3E33eWJw/GQYlQ/DgQ
eudXywcnEeJJ321bqFFVKwIPxImj8A==
=eUfy
-----END PGP SIGNATURE-----

--2ashbpe5mzbtgjqm--


--===============3518410927059821859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3518410927059821859==--

