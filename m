Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ACF9C433E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:37:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02C6D22C7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:37:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 02C6D22C7B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+sA8eruQ0x/KVTkM+DnToIgybXSA8E7zdiiK7cBDnpU=; b=Cx5JR7+4leXdg2gVJElVFhHWZ
	sgvk39gyOrbN8mce/Gg7wj2j9Wlszam/pVLs3/QelnbY3ci0gMYcM2xHFYE/GrGbca5HDDchXdZTv
	ukhLLtn/OV9IR0gr1EHAbSuCTVIjFqS2O3en4pG0LxZ9xfWmX/t8D4zQwT/9CUIMHaMGU33DiS4+8
	7QGwCasA6T/8fRPpgofsk6/3/HZF2fWJkM2LtsWLX4TtYGsmH/ATAKjYonUqdjdIaVrwzPilmiqf+
	O3r636qGJXKF2EA3ZjzGVPXx/8DR+IlFc9bhRxBRhf8FXdLx16YIm2hIvHzjyNi2nVhQ8XjGzTsJv
	Lyyh/y15Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzais-0008HY-VN; Wed, 13 Jan 2021 07:37:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzaio-0008Fp-Ac
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 07:37:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaii-0007zQ-8C; Wed, 13 Jan 2021 08:37:32 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaig-0003aq-KN; Wed, 13 Jan 2021 08:37:30 +0100
Date: Wed, 13 Jan 2021 08:37:30 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v3 4/7] pwm: rockchip: Eliminate potential race condition
 when probing
Message-ID: <20210113073730.q2dwcsqqlfg7b7et@pengutronix.de>
References: <cover.1608735481.git.simon@simonsouth.net>
 <88a446b3e7f6a9bd1d2c079926fcaa408622e480.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <88a446b3e7f6a9bd1d2c079926fcaa408622e480.1608735481.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_023738_463947_10939288 
X-CRM114-Status: GOOD (  24.93  )
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
Content-Type: multipart/mixed; boundary="===============6061201285334019270=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6061201285334019270==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n43h467o55di3jtv"
Content-Disposition: inline


--n43h467o55di3jtv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Dec 23, 2020 at 11:01:06AM -0500, Simon South wrote:
> Commit 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running
> PWMs") introduced a potential race condition in rockchip_pwm_probe(): A
> consumer could enable an inactive PWM, or disable a running one, between
> rockchip_pwm_probe() registering the device via pwmchip_add() and checking
> whether it is enabled (to determine whether it was started by a
> bootloader). This could result in a device's PWM clock being either enabl=
ed
> once more than necessary, potentially causing it to continue running when
> no longer needed, or disabled once more than necessary, producing a warni=
ng
> from the kernel.
>=20
> Eliminate these possibilities by modifying rockchip_pwm_probe() so it
> checks whether a device is enabled before registering it rather than afte=
r.
>=20
> Also update the code that handles errors from pwmchip_add() to account for
> the fact a device's PWM clock may now be disabled and that its APB clock
> certainly is, and eliminate the "err_pclk" goto target as it is no longer
> of use.
>=20
> Fixes: 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running PW=
Ms")
> Reported-by: Trent Piepho <tpiepho@gmail.com>
> Signed-off-by: Simon South <simon@simonsouth.net>
> ---
>  drivers/pwm/pwm-rockchip.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index 3b1aa5daafff..d904a5d24885 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -289,6 +289,7 @@ static int rockchip_pwm_probe(struct platform_device =
*pdev)
>  	struct rockchip_pwm_chip *pc;
>  	struct resource *r;
>  	u32 enable_conf, ctrl;
> +	bool enabled;
>  	int ret, count;
> =20
>  	id =3D of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
> @@ -351,24 +352,27 @@ static int rockchip_pwm_probe(struct platform_devic=
e *pdev)
>  		pc->chip.of_pwm_n_cells =3D 3;
>  	}
> =20
> -	ret =3D pwmchip_add(&pc->chip);
> -	if (ret < 0) {
> -		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
> -		goto err_pclk;
> -	}
> -
>  	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
>  	enable_conf =3D pc->data->enable_conf;
>  	ctrl =3D readl_relaxed(pc->base + pc->data->regs.ctrl);
> -	if ((ctrl & enable_conf) !=3D enable_conf)
> +	enabled =3D ((ctrl & enable_conf) =3D=3D enable_conf);

The outer parenthesis pair isn't necessary, please drop it.

> +	if (!enabled)
>  		clk_disable(pc->clk);
> =20
>  	clk_disable(pc->pclk);
> =20
> +	ret =3D pwmchip_add(&pc->chip);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
> +		if (enabled)
> +			clk_disable(pc->clk);
> +		clk_unprepare(pc->clk);
> +		clk_unprepare(pc->pclk);
> +		return ret;
> +	}
> +

If you do the pwmchip_add before the clock disable, you can continue to
only have a single and simpler error path. The critical part is to check
for the enabled hardware before.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--n43h467o55di3jtv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+ozgACgkQwfwUeK3K
7AkY7Af/cM6A/HXBxbuQW0Ha6evjCiL3JB5qptqhE31NJAIifFpkThIWfyKIsJrV
W5+seUZgqYTNocx5BajUnClq7r1Q0YVCJEcRmlqUg4dObg9yqzNyix281Es0FftC
3cmlGvLg6XbskeE1cnI1UO6HFGau+83e97LzArxBsr+i7PtwxrlaswU4uOMQTN61
m0ioGp+3Mf5HFUew7AgpZF2rCJRsqhMpPy4/GwDmhN98gKv5zTD4BWZHsFREX6rM
O27JcBmyd2/KbXFPfQhfiRzJGaylyw+MxGDL4lZY96FUpoGY9V3giU1dZuIlw4/x
ug7lq3FM1AOmSUabazWPfmslWt+d2A==
=jqso
-----END PGP SIGNATURE-----

--n43h467o55di3jtv--


--===============6061201285334019270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6061201285334019270==--

