Return-Path: <SRS0=Rf1F=C6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E486FC43465
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 08:01:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 313EE20874
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 08:01:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="eTuRId5+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 313EE20874
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3wf/dIVnKmivk3Y4YJrdKBzjJgeJlaNK6fMEXYKYiJc=; b=eTuRId5+EuMCQjnxGk6jnoKbU
	PdjE4DasjCo6pVyGApxuprkPPGBEd5kd+Rk2NsF+IqHZCB4QSOix13v6l9jwvaE6bxQcOiLL3rLjz
	q9pzLCbChIa6NaolM+wUXEY3oMj7iXQgGLkDS0EQ4QlEeSiIQQDrt1YisRYkTkYi9oGhKas1whaj7
	fLzyW3vzPu5Iuv4kWGUJavXH7Qb7JVCwTSlJV+D/XbzX5wyyLjO1v6EenflHX1KdPRlp1SdjiXCqg
	uT3fX6YGe6ZnP0oQJvRNTPAYodDl9wxai/VruM11fxzB+tW9JUn8nW5nxKTLvJHWl36XYpdpBdS6t
	/ZC31H1/g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKGlR-0002eD-O9; Mon, 21 Sep 2020 08:01:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKGlP-0002dL-8m
 for linux-rockchip@lists.infradead.org; Mon, 21 Sep 2020 08:01:32 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kKGlJ-0006CM-6Y; Mon, 21 Sep 2020 10:01:25 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1kKGlH-0004UL-EX; Mon, 21 Sep 2020 10:01:23 +0200
Date: Mon, 21 Sep 2020 10:01:23 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v2] pwm: rockchip: Keep enabled PWMs running while probing
Message-ID: <20200921080123.fvwbd4rdjrgzifr3@pengutronix.de>
References: <20200919193306.1023-1-simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <20200919193306.1023-1-simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200921_040131_322936_B0B4F8CF 
X-CRM114-Status: GOOD (  25.23  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3975901280631796571=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3975901280631796571==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="25hnzogx6ln72w4r"
Content-Disposition: inline


--25hnzogx6ln72w4r
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sat, Sep 19, 2020 at 03:33:06PM -0400, Simon South wrote:
> Following commit cfc4c189bc70 ("pwm: Read initial hardware state at
> request time") the Rockchip PWM driver can no longer assume a device's
> pwm_state structure has been populated after a call to pwmchip_add().
> Consequently, the test in rockchip_pwm_probe() intended to prevent the
> driver from stopping PWM devices already enabled by the bootloader no
> longer functions reliably and this can lead to the kernel hanging
> during startup, particularly on devices like the Pinebook Pro that use
> a PWM-controlled backlight for their display.
>=20
> Avoid this by querying the device directly at probe time to determine
> whether or not it is enabled.
>=20
> Fixes: cfc4c189bc70 ("pwm: Read initial hardware state at request time")
> Signed-off-by: Simon South <simon@simonsouth.net>
> ---
>  drivers/pwm/pwm-rockchip.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index eb8c9cb645a6..098e94335cb5 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -288,6 +288,7 @@ static int rockchip_pwm_probe(struct platform_device =
*pdev)
>  	const struct of_device_id *id;
>  	struct rockchip_pwm_chip *pc;
>  	struct resource *r;
> +	u32 enable_conf, ctrl;
>  	int ret, count;
> =20
>  	id =3D of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
> @@ -362,7 +363,9 @@ static int rockchip_pwm_probe(struct platform_device =
*pdev)
>  	}
> =20
>  	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
> -	if (!pwm_is_enabled(pc->chip.pwms))
> +	enable_conf =3D pc->data->enable_conf;
> +	ctrl =3D readl_relaxed(pc->base + pc->data->regs.ctrl);
> +	if ((ctrl & enable_conf) !=3D enable_conf)
>  		clk_disable(pc->clk);

In my book a pwm driver should never call pwm_get_state() (or its
wrappers).

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

I looked at the other drivers for similar problems. I found a few
issues, but they are all independently of cfc4c189bc70:

 - pwm-lpc18xx-sct.c does some allocation that the .request
   callback depends on. pwm-sti.c does allocation that the irq handler
   depends on quite late.
 - some drivers modify the hardware after pwmchip_add()
   [pwm-fsl-ftm.c, pwm-hibvt.c, pwm-lpc18xx-sct.c, pwm-lpc32xx.c,
   pwm-mtk-disp.c, pwm-mxs.c]
 - pwm-lpss.c, pwm-pca9685.c, pwm-tiehrpwm.c and cpwm-tiecap.c do some
   pm_runtime stuff which should better be done before pwmchip_add()?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--25hnzogx6ln72w4r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl9oXdAACgkQwfwUeK3K
7AlUoQf/ZJ5MPEOdaNm0UZ0bmGHnJdtHpmVCLh3Y5maRysokpMJv6TzrmMwMqAgc
1ufkN7Yjimh/RqleY6fZRXMocoU7WE08tzqnOFfRvryd+MV+NUkGFh7FfsI6rVnC
ZK6+9PvPLQAdBgNT8HX5eyzOT8fwLqxwDffenXX9ZtTAJ4Lan28q9V+f0b7oRwBV
y53n3B6Unf6MVjFo7d9dgdzj0ObH1QzzV8oMe+Ux+zYkYyfPai9sprXf8rGknbpm
AIm6IrSfshNTLyexusDQBlFuhGjf0UBnlR0DqEcwaE4ZBOPsC1k//cSaMr6kS4Os
ZaXpGdLu0L4/v5oXB2ILttvjG5L7RA==
=+jZM
-----END PGP SIGNATURE-----

--25hnzogx6ln72w4r--


--===============3975901280631796571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3975901280631796571==--

