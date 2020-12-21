Return-Path: <SRS0=74Sm=FZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670AEC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 09:16:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6CBE22CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 09:16:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6CBE22CA1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K5LLo2wNCIC0sfxpUdImKJQotx2Mpv8ie5OCRRs4dJ8=; b=ONLedtPbfsJpuW1es1f9ADKx/
	wq6gXtJeVpTyebuz5JRjs8YodoU9oV1hwWOKmaEpojI0y9xh+L/iJasLBZy93dY8EXTrUq3EXrpaq
	PPsQQOUOUBZ1N6GZjyuCIS87EynMaTT6Bh/+L7b1H7VbW1P/Xu0BtrXBdcy7O4ArJ/DcHVN+UIJUB
	7Xu8HVi+Dv6KjdnbNZuC1iMhLfbsBvAxJ6edSAp4E+uAiOy0IraQJq646vyq+bqsEKP4PG6G8X4vm
	FVODnfqD0YEALzk04ECv7Rz+J1tEoMDu8X/5QG5qV6AIUKPDtd3Yg+G0QnxFs8NDtlpXpHauzlBth
	bocLzUbUQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krHIs-0004B5-Oj; Mon, 21 Dec 2020 09:16:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krHIp-0004AW-OA
 for linux-rockchip@lists.infradead.org; Mon, 21 Dec 2020 09:16:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krHIi-0007qT-1O; Mon, 21 Dec 2020 10:16:20 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krHIh-0007fN-31; Mon, 21 Dec 2020 10:16:19 +0100
Date: Mon, 21 Dec 2020 10:16:18 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v2 0/3] pwm: rockchip: Eliminate potential race condition
 when probing
Message-ID: <20201221091618.oxjpmlnmo5iaobt7@pengutronix.de>
References: <cover.1608407584.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <cover.1608407584.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201221_041627_801197_F12D1A07 
X-CRM114-Status: GOOD (  18.71  )
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
Content-Type: multipart/mixed; boundary="===============1865336542082087490=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1865336542082087490==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eeksxyzczcgmi3o7"
Content-Disposition: inline


--eeksxyzczcgmi3o7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Simon,

On Sat, Dec 19, 2020 at 03:44:07PM -0500, Simon South wrote:
> This patch series aims to eliminate the race condition Trent Piepho
> identified[0] in the Rockchip PWM driver's rockchip_pwm_probe()
> function, by moving code that disables a PWM device's signal clock
> ahead of the code that registers the device via pwmchip_add().
>=20
> It additionally
>=20
> - Fixes a potential kernel hang introduced by my earlier commit
>   457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while
>   probing") by ensuring a device's APB clock is enabled before its
>   registers are accessed, and
>=20
> - Tries to improve the driver by (re-)enabling the signal clock of
>   only PWM devices that appear to have been started already by the
>   bootloader, rather than enabling every device's signal clock and
>   selectively disabling it later.
>=20
> I've tested these changes on my (RK3399-based) Pinebook Pro with its
> screen backlight enabled by U-Boot and they appear to work fine.
>=20
> I'd be grateful for help with testing on other devices, particularly
> those with SoCs like the RK3328 that use separate bus and signal
> clocks for their PWM devices. (My ROCK64 uses its PWM-output pins for
> other purposes and wasn't of help here.)

While looking through your I found another little problem that you might
want to address: rockchip_pwm_get_state() calls clk_get_rate(pc->clk).
According to the documentation (in include/linux/clk.h) this is only
valid for enabled clocks but there are no precautions that pc->clk is
enabled.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--eeksxyzczcgmi3o7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/gZ+AACgkQwfwUeK3K
7AlBSwgAi/BqGwU/XSxPIDslGkhzhyao4Lwb9+ApXPmCwjizBPznMsBo8AuBODp3
qPZWN4S8C1RgBOGthjLjEaELaEqYh/IajguDC1OKV82zb59ySexhWQmdRiLzv5cz
FYDsmYOOM7bzZJ227cjjsbJJzW3uKukIOl9E3NRlEgpcTUKCX+gc2GuuiewVOU4V
Cflcdh1Vwt3puLDz8Lb2XBSIrhoV6f1r+ZP4qFuNU0DgICGueFKIST2ijpMHxQHU
Px/Q34UUSW3qB/n02kphI8nZjvND9gVM2b8JQ0qVcXnQiBV0fv9EyIwFAOz3ulzb
DU7qQrJDGXndMbVRuQPF0NtWWr1wIQ==
=j9Pi
-----END PGP SIGNATURE-----

--eeksxyzczcgmi3o7--


--===============1865336542082087490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1865336542082087490==--

