Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD96C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 09:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u8MMK5f76nEedyCOnz3nJVG4NRIzPMDkv0p8JTr4DzM=; b=NirafAg7fJ5Mr/HiPeEIvFQO9T
	RaDNSJCgfwpWehDS8D94v5T1+mfzEg1SZf9BSiPGeO502VE8uV/XQ53FecOr0zWXG53byNgJreVV+
	laa7trazeHYfLI9IzatxOaGS/RJAw3w/e28wItUc3h66RdRmmV0p4BJko9vYOoI0K8iVHFbs0VmOR
	hfvUvM24Wd79nwEVL8B/+nkNOc/QU2JNvupC5YSFSDM5btQTgatOwDVwsnwZCOfdxEbvtOj6VqSyx
	pPk9W4G/ozGn6Z7DBKdYt2+ja/i1caoNUVvTadzcagCCRCGBPzczfciy2vx2TuuVsCpIbsW69toUW
	4nPU3KZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oObnf-001bXr-LK; Thu, 18 Aug 2022 09:26:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oObnI-001bFW-5n
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 09:26:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oObnC-00069T-EB; Thu, 18 Aug 2022 11:26:22 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oObn9-000U8E-ER; Thu, 18 Aug 2022 11:26:19 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oObn8-00CV21-Oe; Thu, 18 Aug 2022 11:26:18 +0200
Date: Thu, 18 Aug 2022 11:26:18 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: zhaoxiao <zhaoxiao@uniontech.com>
Cc: thierry.reding@gmail.com, heiko@sntech.de, linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] pwm: rockchip: Convert to use dev_err_probe()
Message-ID: <20220818092618.ek6sg64jgamfl4lm@pengutronix.de>
References: <20220818075503.18442-1-zhaoxiao@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <20220818075503.18442-1-zhaoxiao@uniontech.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_022628_260641_DDD555C6 
X-CRM114-Status: GOOD (  24.38  )
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
Content-Type: multipart/mixed; boundary="===============3741983349675887369=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3741983349675887369==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ylelyo52mqncwfjb"
Content-Disposition: inline


--ylelyo52mqncwfjb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, Aug 18, 2022 at 03:55:03PM +0800, zhaoxiao wrote:
> It's fine to call dev_err_probe() in ->probe() when error code is known.
> Convert the driver to use dev_err_probe().
>=20
> Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>

Is zhaoxiao your real name, or is that a nickname/pseudonym? If the
latter please use your real name here. See
Documentation/process/submitting-patches.rst for the justification.

> ---
>  v2: remove the %d in the message.
>=20
>  drivers/pwm/pwm-rockchip.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index f3647b317152..c6e088c1a6bf 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -330,16 +330,12 @@ static int rockchip_pwm_probe(struct platform_devic=
e *pdev)
> =20
>  	if (IS_ERR(pc->pclk)) {
>  		ret =3D PTR_ERR(pc->pclk);
> -		if (ret !=3D -EPROBE_DEFER)
> -			dev_err(&pdev->dev, "Can't get APB clk: %d\n", ret);
> -		return ret;
> +		return dev_err_probe(&pdev->dev, ret, "Can't get APB clk\n");
>  	}

This could be further simplified (as pointed out in the (implicit) v1)
to:

	if (IS_ERR(pc->pclk))
		return dev_err_probe(&pdev->dev, PTR_ERR(pc->pclk), "Can't get APB clk\n"=
);

but I wouldn't insist on that one as it's somewhat subjective if you
like it better on two lines.

> =20
>  	ret =3D clk_prepare_enable(pc->clk);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
> -		return ret;
> -	}
> +	if (ret)
> +		dev_err_probe(&pdev->dev, ret, "Can't prepare enable PWM clk\n");
> =20
>  	ret =3D clk_prepare_enable(pc->pclk);
>  	if (ret) {

The context here continues with:

 		dev_err(&pdev->dev, "Can't prepare enable APB clk: %d\n", ret);

this could benefit from dev_err_probe(), too.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ylelyo52mqncwfjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmL+BbgACgkQwfwUeK3K
7AnXdwf/SCKYwxVa9X/EZUJNYZ4JoZxEd2KIaLTp4u56HOd8yRi93jqzyfpW/D8p
AwpxXtYWaOpjqkD91McFcMU38v+TrauCMk3Jwh6kVrdNJgYUizgficNC7dvdIGib
T/xiQk8jT4183khhOnDYCuExvpkCsjpET4UVIKGH/5RyaCnIVz78hETzjO+JdRd+
+qTJZ0FCLkNSqdiER2bTJzBQggZYHmgaeXMXfXwrEOHXLvgC3UZFoT3/uLGtbYfg
zQYmoZvs4viRjs03i6TQo6xHLNJ/4En8CJeqd6g7jgv21TcUna47xb4+WjCbAmZz
vuocyj4JmgbRB+SRhIMClmvZP8x1kg==
=gOtP
-----END PGP SIGNATURE-----

--ylelyo52mqncwfjb--


--===============3741983349675887369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3741983349675887369==--

