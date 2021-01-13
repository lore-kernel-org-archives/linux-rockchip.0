Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5D9C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:50:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C28752311F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:50:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C28752311F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oNvPZHYiI57Uzpo/UgzyIj7mT3pBCsbHNBRIPA5bSdY=; b=du7e9AbJ3iAByH/bDxrBYx1hI
	uo+5qGBkbB62h1SDnJVzZZORd7yExenFLzXs5oYxGbBmmQ21pjU6T+q376QgzR2vwaWsb7pzKqUfx
	a60kkyiUFRDXw6vf++jll555EqdKrGGRZMir6lDfywASGZ7kGeoid2yF2FPD1GYOQ3GJJxSt1TI0m
	ffThKQOym4cnylyBpL6KXt4SmN2jiX/6M/o2cRi8e07pFwy+1ALEKbfcDYQF4Y5ZuDd0T50K5RwAv
	74snfvPxloC8WhATMqwojZpbDApCOB2Iu5FnU8WV6uQv2c2afWMWaUfIhTRlxBpfOZFzHboZOhOm0
	/PsRiY6BQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzav4-00022z-LP; Wed, 13 Jan 2021 07:50:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzauz-00021X-IF
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 07:50:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaus-0000ll-V6; Wed, 13 Jan 2021 08:50:06 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaur-0003vV-S1; Wed, 13 Jan 2021 08:50:05 +0100
Date: Wed, 13 Jan 2021 08:50:05 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v3 6/7] pwm: rockchip: Enable PWM clock of probed device
 only if running
Message-ID: <20210113075005.jftwu4ohrfyqwxyq@pengutronix.de>
References: <cover.1608735481.git.simon@simonsouth.net>
 <cb5a28d5fde04c09e9aace6ce619e445f895e0a8.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <cb5a28d5fde04c09e9aace6ce619e445f895e0a8.1608735481.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_025013_656662_8E91BB2E 
X-CRM114-Status: GOOD (  24.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 lee.jones@linaro.org, linux-rockchip@lists.infradead.org,
 thierry.reding@gmail.com, tpiepho@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7242277579230730729=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7242277579230730729==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w5gplgzhp6ryu6ma"
Content-Disposition: inline


--w5gplgzhp6ryu6ma
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 23, 2020 at 11:01:08AM -0500, Simon South wrote:
> Currently rockchip_pwm_probe() enables the PWM clock of every device it
> matches, then disables the clock unless the device itself appears to have
> been enabled (by a bootloader, presumably) before the kernel started.
>=20
> Simplify this by enabling (rather, keeping enabled) the PWM clock of only
> devices that are already running, as enabling the clock for any other
> device during probing is unnecessary.
>=20
> Signed-off-by: Simon South <simon@simonsouth.net>
> ---
>  drivers/pwm/pwm-rockchip.c | 21 +++++++++++++--------
>  1 file changed, 13 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index 80f5e69d9b8a..02da7370db70 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -327,12 +327,6 @@ static int rockchip_pwm_probe(struct platform_device=
 *pdev)
>  		return ret;
>  	}
> =20
> -	ret =3D clk_prepare_enable(pc->clk);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
> -		return ret;
> -	}
> -

This undoes stuff that you introduced in patch 1. Don't you reintroduce
the problem that was fixed by this patch?

>  	ret =3D clk_prepare_enable(pc->pclk);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
> @@ -357,8 +351,19 @@ static int rockchip_pwm_probe(struct platform_device=
 *pdev)
>  	enable_conf =3D pc->data->enable_conf;
>  	ctrl =3D readl_relaxed(pc->base + pc->data->regs.ctrl);
>  	enabled =3D ((ctrl & enable_conf) =3D=3D enable_conf);
> -	if (!enabled)
> -		clk_disable(pc->clk);
> +	if (enabled) {
> +		ret =3D clk_prepare_enable(pc->clk);
> +		if (ret) {
> +			dev_err(&pdev->dev, "Can't enable PWM clk: %d\n", ret);
> +			return ret;
> +		}
> +	} else {
> +		ret =3D clk_prepare(pc->clk);
> +		if (ret) {
> +			dev_err(&pdev->dev, "Can't prepare PWM clk: %d\n", ret);
> +			return ret;
> +		}
> +	}

I don't see the advantage of this patch. In my eyes the code
complication doesn't justify the gain (i.e. prevent the PWM clock being
enabled for a few instructions).

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--w5gplgzhp6ryu6ma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+pisACgkQwfwUeK3K
7AlQaAf7BtwX2NHD5FfKxX+JWawz7fTZwrA29/G5ApFQoACZgw8cfKOx8ih2H1Nv
QldLTTalWLZkQYGjfxV4ssOy5rPVRqoq6olKZ42Mx+xJm6Mk9jWa9uMsxNR+p6k3
j2iFIoqcEgxoO9k4JVm7IiV0ZnjghSg9QfnnKC1sUNEXK7HUi6fFjBFBF/to33Mv
/G1ED4FyL8EK4cTTcB9ed/Wk3LRpmUbogeuGA0eCEdEH0cALI+eE3j4HOKwMWoZp
C7xhqyw+fO8irxJ6lMDjOLgqBsr7nI0jOAjEjyYf90tyCVtObkhUCwkHB4Vrtqv+
6UwDQax3DjpJl1jRuFw0OYc6tvyvMg==
=VKrV
-----END PGP SIGNATURE-----

--w5gplgzhp6ryu6ma--


--===============7242277579230730729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7242277579230730729==--

