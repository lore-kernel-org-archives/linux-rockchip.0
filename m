Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E551C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 09:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nuzMgRO3LKJnRk4FHnr+yIJRA4LpW6ZnaRHxwhhVCj8=; b=MxWNSfFCXl2kvaz+EqWhk9TFxq
	VosKT/Xe4rtf2957n+O16j7L9dLrt1RZcSWqzRgzFtzfK0aBm5TDCgE4jFWOUel3HfEkl0ydsh2Ox
	1jNwo77XTdqAdIG7zzIfL4cwEa4OuLCOs9UYG+Y5attRxJiRUneuBDjrwxyGeIiaQmdbDwjxTytN4
	2hsUIwoqIqsGj2S0s5OiJC087wtpVKXJBHRJX+saMk8huUBEAXFMq5MOIbR9WSMgLEbzbfejEvvHq
	0bz9JOK7qOI635SJbdqtCwvJqxYkVsKxt3QrpwP5EvvbIdpMefHCY/BMyhF3Bg+UzphVHktDbNAtW
	gPtgvHBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1xk-004xrQ-MQ; Tue, 13 Sep 2022 09:12:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1xh-004xpT-QD
	for linux-rockchip@lists.infradead.org; Tue, 13 Sep 2022 09:12:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oY1xf-0000rp-TU; Tue, 13 Sep 2022 11:12:07 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oY1xg-000SoJ-6q; Tue, 13 Sep 2022 11:12:06 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oY1xd-000YrN-Qf; Tue, 13 Sep 2022 11:12:05 +0200
Date: Tue, 13 Sep 2022 11:12:02 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, linux-pwm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Message-ID: <20220913091202.2oawzrq2u5iiz6hq@pengutronix.de>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
 <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
In-Reply-To: <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_021209_870328_52948FAB 
X-CRM114-Status: GOOD (  24.26  )
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
Content-Type: multipart/mixed; boundary="===============6936841176757837556=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6936841176757837556==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ayq25s2e3amakfxs"
Content-Disposition: inline


--ayq25s2e3amakfxs
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Thu, Sep 01, 2022 at 02:14:55PM -0500, Rob Herring wrote:
> On Thu, 01 Sep 2022 15:55:23 +0200, Sebastian Reichel wrote:
> > Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> > on a rk3588 platform.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> > No driver changes required.
> > ---
> >  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
>=20
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
>=20
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.

Is this a list of *new* warnings, or is the report (somewhat) orthogonal
to the actual change and you just used the opportunity that someone
touched the pwm-rockchip binding to point out that there is some cleanup
to do?

> Full log is available here: https://patchwork.ozlabs.org/patch/

Hm, that gives me a 404.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ayq25s2e3amakfxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmMgSV8ACgkQwfwUeK3K
7Alq5QgAmOfz+nd/dPgkG496zmEYMnmf/JKWgKSLv7Za3H3D3b2lcrSIMq9ELHjz
n3K3IxrpSMlUnbBYfIczZujgnQtmgJIfwdQ58E77dqaF5U3xXNQwrDm8AVns2LlA
zt5YY+PuTFINuk/fM7BXHoKZlqw5vJwMb52avAkndKddXEFuS+KCR4e9eRHpd1J0
Ma7Gwoz9EHvLg7uag9pbkyeEUG3Pnd3U+d90q3rd+byShxyNECLltESxW6+HySXf
Je3LGm4VOnBmrobESRXIx50LS6LD3N5+kmnIKVBWb7b7lkVCmmPgT4CyzMasv4BA
nMSmE4ylP9K3ZONkIS2/0i/hkuRIhA==
=2uq6
-----END PGP SIGNATURE-----

--ayq25s2e3amakfxs--


--===============6936841176757837556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6936841176757837556==--

