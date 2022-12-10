Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0777C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Dec 2022 09:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Qjt0cdPadNRHXBm7bdDWM116QqIs6FgYqWrVhdtBC8=; b=Kp/ZzmJmfEdNClV1vgxoIxsGp1
	2lAHKW01G66Icw+3cYTxKTmYRLf7oa99yA0TdIuttAC561/ZXh25FHMKmt1zEYW2hLnjLZ3Okb9Pt
	KKsx8revuoqILqmYYWtNsBSLe3WNyRM97PDjZEX6iW7eCRjGEGrAm9CIyndvPGVWO00SWGhMd06UR
	OIybhKBo9dYhSqHFTuoijokPAhMUBvLOvOsEJcLMKKJ7dTTD23drQv/kZ/7Wb+0Ph4j28PY66htJI
	RDdX6cjBv0UVMfC3+BWLjpJ6wEynKs0WFxeefjISOrXP/QOoKZomirbVdHGz1O8JvoeYbPJUbj9jX
	CQshkZTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3w14-00Fj6G-PY; Sat, 10 Dec 2022 09:19:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3w0f-00Fj18-HW
	for linux-rockchip@lists.infradead.org; Sat, 10 Dec 2022 09:19:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1p3w0K-0003KC-Jh; Sat, 10 Dec 2022 10:18:44 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1p3w0G-003YBp-5Q; Sat, 10 Dec 2022 10:18:40 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1p3w0G-003yU4-Bx; Sat, 10 Dec 2022 10:18:40 +0100
Date: Sat, 10 Dec 2022 10:18:33 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, linux-pwm@vger.kernel.org,
	linux-gpio@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	chrome-platform@lists.linux.dev, linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 00/11] pwm: Allow .get_state to fail
Message-ID: <20221210091833.vdfir63nq4kpj5cm@pengutronix.de>
References: <20221130152148.2769768-1-u.kleine-koenig@pengutronix.de>
 <Y5OtCjQOQjjltGPa@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <Y5OtCjQOQjjltGPa@smile.fi.intel.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221210_011906_282650_5CC0FA76 
X-CRM114-Status: GOOD (  22.39  )
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
Content-Type: multipart/mixed; boundary="===============2821935457331404654=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2821935457331404654==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nuqt3gnghpavk6fz"
Content-Disposition: inline


--nuqt3gnghpavk6fz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Andy,

On Fri, Dec 09, 2022 at 11:47:54PM +0200, Andy Shevchenko wrote:
> On Wed, Nov 30, 2022 at 04:21:37PM +0100, Uwe Kleine-K=F6nig wrote:
> > In v1 Thierry had the concern:
> >=20
> > | That raises the question about what to do in these cases. If we return
> > | an error, that could potentially throw off consumers. So perhaps the
> > | closest would be to return a disabled PWM? Or perhaps it'd be up to t=
he
> > | consumer to provide some fallback configuration for invalidly configu=
red
> > | or unconfigured PWMs.
> >=20
> > .get_state() is only called in pwm_device_request on a pwm_state that a
> > consumer might see. Before my series a consumer might have seen a
> > partial modified pwm_state (because .get_state() might have modified
> > .period, then stumbled and returned silently). The last patch ensures
> > that this partial modification isn't given out to the consumer. Instead
> > they now see the same as if .get_state wasn't implemented at all.
>=20
> I'm wondering why we didn't see a compiler warning about mistyped function
> prototypes in some drivers.

I don't understand where you expected a warning. Care to elaborate?

> P.S. The series is good thing to do, thank you.

It's already too late for an ack, the series is already in Thierry's
tree.

Best regards
Uwe
=20
--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--nuqt3gnghpavk6fz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmOUTt4ACgkQwfwUeK3K
7Amt4gf/VCswPgVD5w7pUM72SEpdjhw28hm2YCuu5RxYMTBVbGTdK9rYJjqmB2FI
ZOQHPgl36sDWhZEM55FY6oZxaGM3XttrjoTnFSk0MuNQmO70aWJtkS+OVmR4UgiR
vIXRy8KMRWEliVRK4dWubiXzQ3OZl1iEDzgc9c7bccEtcdABRG+Z0zLWDCiT8WMw
OzDx+FLvT792TNn4oEHONO3lJVeZ64MdM0VPguFtzbArXlpaJlQhlfhxYnvVxR1o
LkxC6uB5mWT1o1f3+yzw9GD0RJwspghVALqO+g7LoH0oinRso2oaExRDKS5Yt69Z
bmJURLsdOOyquJFcb6f1NqrKVb8fUw==
=nBk6
-----END PGP SIGNATURE-----

--nuqt3gnghpavk6fz--


--===============2821935457331404654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2821935457331404654==--

