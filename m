Return-Path: <SRS0=74Sm=FZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C67C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 09:06:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C63122C7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 09:06:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C63122C7B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=av1wvVF0nCzfF3d/PBeu7e+Wmc0xZDZfDvXD7RPbLds=; b=NYpNY3eTSXMiQZ/CoJHRXONl2
	DqzplfFO+qrQQLMj8cqaxBXpFsaizIGuWOtt28b3hkA57UJfIpmD1CFXYbRzOe7U/qkoP0D7Xy44y
	1lpuEOBDGGJjUFFQP5T9Xz7/iHyshXcc7mIlYPuEVjEjmcGP1cD6Txo3Zoe6C4kViRaLmoIxxeed5
	xdSK/ymTCKVbvh7C01N1PcOwNuV347/AFfOV7NVxiDAVAaLV+ZczKKa8GN/c5O5T4nzh8JKxW0uyL
	Mt4zfDVyS2T21I7PLa0MwXD3D+qKC9CARdUXvNLVyRDE+QEUMuVXAEtYeMlrDQtxACdtcJtMk5mOa
	JZXL+Mp9A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krH8p-0003XB-UO; Mon, 21 Dec 2020 09:06:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krH8k-0003WQ-5L
 for linux-rockchip@lists.infradead.org; Mon, 21 Dec 2020 09:06:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krH8e-0006ZX-Bt; Mon, 21 Dec 2020 10:05:56 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krH8b-0005kS-Tr; Mon, 21 Dec 2020 10:05:53 +0100
Date: Mon, 21 Dec 2020 10:05:53 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v2 3/3] pwm: rockchip: Do not start PWMs not already
 running
Message-ID: <20201221090553.bopd2aaoheapww3r@pengutronix.de>
References: <cover.1608407584.git.simon@simonsouth.net>
 <0acdf3a78f670a2678e03b0bbbb01aa58a11ce9a.1608407584.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <0acdf3a78f670a2678e03b0bbbb01aa58a11ce9a.1608407584.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201221_040602_221285_770D0EAB 
X-CRM114-Status: GOOD (  27.08  )
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
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8456160933338100646=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8456160933338100646==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d6ewec6fjisqcohp"
Content-Disposition: inline


--d6ewec6fjisqcohp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 19, 2020 at 03:44:10PM -0500, Simon South wrote:
> Currently the Rockchip PWM driver enables the signal ("bus") clock for
> every PWM device it finds during probing, then disables it for any device
> that was not already enabled (such as by a bootloader) when the kernel
> started.
>=20
> Instead of starting PWMs unnecessarily, check first to see whether a devi=
ce

"starting PWM" here means enabling their clocks, right? I wouldn't
expect that this has any effect on the output, am I right?

> has already been enabled and if not, do not enable its signal clock.
>=20
> Signed-off-by: Simon South <simon@simonsouth.net>
> ---
>  drivers/pwm/pwm-rockchip.c | 28 +++++++++++++---------------
>  1 file changed, 13 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index f286a498b82c..b9faef3e9954 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -327,19 +327,6 @@ static int rockchip_pwm_probe(struct platform_device=
 *pdev)
>  		return ret;
>  	}
> =20
> -	ret =3D clk_prepare_enable(pc->clk);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
> -		return ret;
> -	}
> -
> -	ret =3D clk_prepare_enable(pc->pclk);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
> -		clk_disable_unprepare(pc->clk);
> -		return ret;
> -	}

Just for my understanding: That you moved clk_prepare_enable(pc->pclk)
further down is not strictly necessary for your change, right?

> -
>  	platform_set_drvdata(pdev, pc);
> =20
>  	pc->data =3D id->data;
> @@ -353,12 +340,23 @@ static int rockchip_pwm_probe(struct platform_devic=
e *pdev)
>  		pc->chip.of_pwm_n_cells =3D 3;
>  	}
> =20
> +	ret =3D clk_prepare_enable(pc->pclk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
> +		return ret;
> +	}
> +
>  	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
>  	enable_conf =3D pc->data->enable_conf;
>  	ctrl =3D readl_relaxed(pc->base + pc->data->regs.ctrl);
>  	enabled =3D ((ctrl & enable_conf) =3D=3D enable_conf);
> -	if (!enabled)
> -		clk_disable(pc->clk);
> +
> +	ret =3D enabled ? clk_prepare_enable(pc->clk) : clk_prepare(pc->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Can't prepare bus clk: %d\n", ret);
> +		clk_disable_unprepare(pc->pclk);
> +		return ret;
> +	}

I'm not a big fan of this ?: construct. I'd prefer

	ret =3D clk_prepare(pc->clk);
	if (ret)
		...

	/* Keep the PWM clk enabled ... */
	enabled =3D ...
	if (enabled) {
		ret =3D clk_enable(pc->clk);
		if (ret)
			...
	}

even though it is less compact. A small benefit is that the error
message can be more accurate. (You wrote "Can't prepare bus clk" while
the problem might well be in the enable part, but mentioning "enable"
might also be misleading for the enabled =3D false case.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--d6ewec6fjisqcohp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/gZW4ACgkQwfwUeK3K
7An41Af7BicETX9BFl6PnW9W+h+GTgxqQfwljOJkzhrJEzqYIAa8Q0/zvxeRTkCW
ktFMO+PLyStVNFVx6K4BixhmCYwpuJ69xswxt9gwB8NT/U3rnOAYp5bYpqDFfud3
SPCJ1iZCO7l8ywc/1wAK3Wlk2Z2RIaqLasRu1Kp7hn+Ue1txP2TjZ7Qf38QVfSZ7
0zTW8ThDs8px7LwzGrntklwoAnvyfJ0aSfbL8pHMmc0SOS05Jq5MwTSjPwjJESPf
22iEvPAb/+qPR+haY1YhKsmJe6mqvW8TH0MsZjlbKQViuzyuoquoSDFQN0YgwwuK
WHsEOF+BtQHocat/YtbS73E2+GG4kQ==
=fIeu
-----END PGP SIGNATURE-----

--d6ewec6fjisqcohp--


--===============8456160933338100646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8456160933338100646==--

