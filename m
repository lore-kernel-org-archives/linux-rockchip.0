Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B29ECD1297
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 21:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ljSusbWl0rMA1lSFm+jn5XJb/M/vIdHh6QK3Xl/nUoE=; b=vKggied1FuYiDsVzVH/jAWrB8L
	DCLBoja2qODtiYOV74ke/IcFw3atCCKEzufyi9DApVVpCL8Rhiuexo3rvMYsl5emzMUnp9Nwyjtwe
	xWW8/NBFnvSvtQKgbOVa6E9n3+c6xh9yN5AilbIi2b2nB9nfT53vcHXslCoClckYN+K3XK77mJTkY
	EZLxEOntjN9qwcoFaDI2KDmXlGu4EzD1oUXzrOvqHy6ML2eD9AtbhNeNQJg22hlVc8BHJOUe7N6Fy
	odrF38VrzK1EnUK5OX7h4jFq+uniVrenmrBXFXltX9q0vboPZAkwgqb54MFHDLwtn+doXxv/FiaMt
	v7mkyijA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs7oZ-00000000Brl-2A0E;
	Wed, 03 Apr 2024 21:06:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs7oW-00000000Bqk-2AFZ
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 21:06:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rs7nv-0001NX-2i; Wed, 03 Apr 2024 23:05:55 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rs7nr-00AFDj-LI; Wed, 03 Apr 2024 23:05:51 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rs7nr-00EqVT-1m;
	Wed, 03 Apr 2024 23:05:51 +0200
Date: Wed, 3 Apr 2024 23:05:51 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Li Zetao <lizetao1@huawei.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Rob Herring <robh@kernel.org>, 
	Yang Yingliang <yangyingliang@huawei.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Luis de Arquer <luis.dearquer@inertim.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Jaewon Kim <jaewon02.kim@samsung.com>, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 31/34] spi: remove incorrect of_match_ptr annotations
Message-ID: <5f3qvhasho4mfnf6f7i6djak3ankje375mt4fzvv3gqrlj242o@zdk2ajvha6hx>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-32-arnd@kernel.org>
 <b4418ac1-10ba-4932-be6e-93282707024f@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <b4418ac1-10ba-4932-be6e-93282707024f@sirena.org.uk>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_140632_630438_62294342 
X-CRM114-Status: GOOD (  19.36  )
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
Content-Type: multipart/mixed; boundary="===============9193644394037124872=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9193644394037124872==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j3dyffzs5mph63yw"
Content-Disposition: inline


--j3dyffzs5mph63yw
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 03, 2024 at 10:56:58AM +0100, Mark Brown wrote:
> On Wed, Apr 03, 2024 at 10:06:49AM +0200, Arnd Bergmann wrote:
>=20
> > These appear to all be copied from the same original driver, so fix the=
m at the
> > same time by removing the unnecessary of_match_ptr() annotation. As far=
 as I
> > can tell, all these drivers are only actually used on configurations th=
at
> > have CONFIG_OF enabled.
>=20
> Why are we not fixing of_match_ptr() here, or at least adding the ifdefs
> in case someone does end up wanting to run without OF?

Fixing of_match_ptr =3D

diff --git a/include/linux/of.h b/include/linux/of.h
index a0bedd038a05..d980bccffda0 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -890,7 +890,7 @@ static inline const void *of_device_get_match_data(cons=
t struct device *dev)
 	return NULL;
 }
=20
-#define of_match_ptr(_ptr)	NULL
+#define of_match_ptr(_ptr)	(0 ? (_ptr) : NULL)
 #define of_match_node(_matches, _node)	NULL
 #endif /* CONFIG_OF */
=20
?

Assuming this helps, I agree this would be the better fix.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--j3dyffzs5mph63yw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmYNxK4ACgkQj4D7WH0S
/k4RIQf+N9Iy5vdLQiMUAN6AC+cOYMVtNTWEXHv3Iu8OMI4BbFULD/p4hJYx4A/Y
+4trHVq0G7vFcqwJIyZ8XD7U0NnRLweSBCiBdm6lh/R7j8pyI32zbpvrJb8ge/Wm
LTfO5dGPLQMf1kIpjRlpYniRKxzxOTWIsnKpr801JczfdZDvZ236nLgQNNFTtYNP
4X9v+IjyFHuXxEjYvIZ52EsIgHnfGsNT7RNmncSBQSxLRwliB6gAO/Bzo1ulw1xS
iSIatTBxMMTV5D3fDRS1Ve4g7VIjI0LAO+I784HK+wg9jWI4tEwQz2eO5GZXxDXp
WbiT8oxPt4xi8tsgDAu681Ac2zeUOg==
=qPPD
-----END PGP SIGNATURE-----

--j3dyffzs5mph63yw--


--===============9193644394037124872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9193644394037124872==--

