Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B66ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 07:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vy95swq2XfHIlfhzQ3jAw8LHWjAK2+0kTc176Xi4rhI=; b=HTdFyfCy8Ll5ObWvxFfeFqUlOP
	nyMBPel4JSy5ldqoJUQUpacpxosGv4jeOAj3salA4dUcP7TgyScwy+lBR+LUfBm2G1ZVwhaAKAo2a
	HxA7UTpiIc5x8cU6KsDM+YwJ2mCKwhMBRSkoKMHQSJ0SzW1nzp0RXmHb50uhLRt9R+PBGaLps/v4K
	XQch3/YB6BFlnPagaYt3hVK3Rt7+Uyf7+ZcQ6TTLD+K6xYJKtvkKB93QX9+32JEQI9tH4Wg+/52Ha
	BL1IfoIZlUudDghH5O4KCKFcf03FI4sEcR1ppHkZyqZ7XFdW5D7Vf+KKEJsr01Rt9doYyojBu7krK
	0qn3UhWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYMtW-009oMZ-9e; Wed, 14 Sep 2022 07:33:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYMtU-009nvX-9h
	for linux-rockchip@lists.infradead.org; Wed, 14 Sep 2022 07:33:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oYMtS-00076d-Ep; Wed, 14 Sep 2022 09:33:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oYMtS-000eOy-63; Wed, 14 Sep 2022 09:33:08 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oYMtQ-000lNc-69; Wed, 14 Sep 2022 09:33:08 +0200
Date: Wed, 14 Sep 2022 09:33:05 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, linux-pwm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Message-ID: <20220914073305.4zorbsve75raiygd@pengutronix.de>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
 <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
 <20220913091202.2oawzrq2u5iiz6hq@pengutronix.de>
 <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
MIME-Version: 1.0
In-Reply-To: <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_003312_360598_E726D85C 
X-CRM114-Status: GOOD (  31.83  )
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
Content-Type: multipart/mixed; boundary="===============8217800301653458281=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8217800301653458281==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d4hlshwof6wtcph6"
Content-Disposition: inline


--d4hlshwof6wtcph6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 13, 2022 at 04:16:01PM +0200, Sebastian Reichel wrote:
> Hi,
>=20
> On Tue, Sep 13, 2022 at 11:12:02AM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello Rob,
> >=20
> > On Thu, Sep 01, 2022 at 02:14:55PM -0500, Rob Herring wrote:
> > > On Thu, 01 Sep 2022 15:55:23 +0200, Sebastian Reichel wrote:
> > > > Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> > > > on a rk3588 platform.
> > > >=20
> > > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > > ---
> > > > No driver changes required.
> > > > ---
> > > >  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >=20
> > >=20
> > > Running 'make dtbs_check' with the schema in this patch gives the
> > > following warnings. Consider if they are expected or the schema is
> > > incorrect. These may not be new warnings.
> > >=20
> > > Note that it is not yet a requirement to have 0 warnings for dtbs_che=
ck.
> > > This will change in the future.
> >=20
> > Is this a list of *new* warnings, or is the report (somewhat) orthogonal
> > to the actual change and you just used the opportunity that someone
> > touched the pwm-rockchip binding to point out that there is some cleanup
> > to do?
> >=20
> > > Full log is available here: https://patchwork.ozlabs.org/patch/
> >=20
> > Hm, that gives me a 404.
>=20
> This is an existing problem with the rv1108 binding.
> The rk3588 does not have pwm interrupts.

I thought so, so:

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--d4hlshwof6wtcph6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmMhg64ACgkQwfwUeK3K
7AkzOQf/UlE4uRbME2zQ6MnFx1BbofJkGfho9rOJJtyCBopDKAYsf+bqwxmNKeL/
JJn+OhgKkFgnnqDuhcxp/ObXO8s6hgc7bswXYjYLZ0suDQOnA6DaScHnuJdecNyY
p9dmbYoGxtwI1LjGifz1J8DyC3Y9v2jZi6sd6hV10RGf4W9KYzWNUzwbm9U9LZQG
G2aCxu5ilXJYhkPoUItBEzlGIyuhh9mcZ9viwPlPsC2Bf220DKVUE+wqfajFSeQ1
rkteqmsJYIGQJuCleX/gEgnCy5XoCG3J3XkiVOwoYE5S0eSlMB/WAD4PH72ViTwi
blpiE1JnAMoGaXeTLz7p8Ngd48dfJA==
=I5Ps
-----END PGP SIGNATURE-----

--d4hlshwof6wtcph6--


--===============8217800301653458281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8217800301653458281==--

