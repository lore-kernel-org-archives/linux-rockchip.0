Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A1FC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 12:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KXrKhZWYoIIJx14eRShaYrtRQZYUikbjt05vhzBkmnk=; b=DzRLkCq8HEVLTK+cf+f03pkmps
	87seD3hTn1HyfwCuB2OZMZ2YrYOQtkTe/OQ2X4lfzd5yo4zhfk2qKPNlntDUNiWp8XXtDh6QIYGr8
	Ih3GQ4mhi+xn1qtpZSvp1bopRWqiV4Vxzvq6yLquHqc0HSKp+eSiOB76fPjXzk7sLq0LpZ5SdNsPA
	4RXQmMRXgQTfa+0WAu+T31hm116F7HSNvqnR7buC0gFe6PfeQ0ihB7WcJlSdmYZN0WiUmxBF8NfqF
	1bVvuMDlButdn5kDmKemmVCXtO7MxrqRyWA5lebO+BVyw2TXOEwiDjMCLHTq2vsUQZ9KPmu5FU0qr
	AZKQj3eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd63h-0000000BKxr-2bPS;
	Fri, 26 Jun 2026 12:53:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd63g-0000000BKxi-1eAl;
	Fri, 26 Jun 2026 12:53:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C6D2644187;
	Fri, 26 Jun 2026 12:53:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12BC71F000E9;
	Fri, 26 Jun 2026 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782478402;
	bh=4vW/ykol/caEyEWxjwNOEBg0s6JIz+ZkHwDVW8nFj8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jA+1blRY/22zkn1IuV2vFG0t4ZR472agS+Rcx+5z16VdxoF71huJ1Hl8bsMp3pwie
	 s3HtkJ3Tl3y1I0/1g6RacpyGU35B53xSHrcaW2t/QElscs05clIdKsmtyr19KKKovm
	 j2vyJcgBgpzWNrcDG19JsgBHlP34lXUQWsnc+h2WSFpQYvkLvk59Qjivmjj2UMHGU9
	 2DAUYqmMHyTPI+NuAt0myou2eD4nJXGhda3uP6TH4lDTBl4kKy1F3g2geT40+z506u
	 Vnogil5g4ai7oWWmwQeBbyrByU0zgFU0TRYPzYi5U+cc1hPuhhDyMuLKxFHdF8pOoa
	 rE4v4BY+yF7Ng==
Date: Fri, 26 Jun 2026 14:53:20 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Albert Esteve <aesteve@redhat.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, Lucas Stach <l.stach@pengutronix.de>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Paul Cercueil <paul@crapouillou.net>, Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>, 
	Stefan Agner <stefan@agner.ch>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Yannick Fertre <yannick.fertre@foss.st.com>, Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Philippe Cornu <philippe.cornu@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Jyri Sarha <jyri.sarha@iki.fi>, 
	Jingoo Han <jingoohan1@gmail.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Alison Wang <alison.wang@nxp.com>, Paul Kocialkowski <paulk@sys-base.io>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-samsung-soc@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 4/5] drm/bridge: release panel reference on all lookup
 exit paths
Message-ID: <20260626-manipulative-rainbow-rhino-d73b65@houat>
References: <20260626-drm_refcount_wiring-v1-0-cca1a7b3bdef@redhat.com>
 <20260626-drm_refcount_wiring-v1-4-cca1a7b3bdef@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260626-drm_refcount_wiring-v1-4-cca1a7b3bdef@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============3993319312929731961=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3993319312929731961==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="dvioag5mayzeljeh"
Content-Disposition: inline


--dvioag5mayzeljeh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/5] drm/bridge: release panel reference on all lookup
 exit paths
MIME-Version: 1.0

On Fri, Jun 26, 2026 at 02:03:26PM +0200, Albert Esteve wrote:
> of_drm_find_panel() and drm_of_find_panel_or_bridge() now return a
> counted reference that the caller must release with drm_panel_put().
>=20
> For bridge drivers that immediately wrap the panel in a panel_bridge
> (which acquires its own reference), release the lookup reference right
> after the bridge creation call.
>=20
> For analogix-anx6345, which stores the panel for direct use, release
> the reference in the i2c remove path.
>=20
> For platform drivers using analogix_dp_core with a component lifecycle
> (exynos_dp, rockchip analogix_dp), release the lookup reference in the
> platform remove() function. The panel_bridge created during bind() holds
> a separate reference that devm cleanup releases after remove() returns.
>=20
> Also fix devm_drm_of_get_bridge() and drmm_of_get_bridge() in
> bridge/panel.c itself: both call drm_of_find_panel_or_bridge() and
> then pass the panel to devm/drmm_panel_bridge_add(), which acquires
> its own reference via drm_panel_bridge_add_typed(). The lookup
> reference was never released; add drm_panel_put() after each bridge
> creation call.
>=20
> Assisted-by: Claude:claude-opus-4-6
> Signed-off-by: Albert Esteve <aesteve@redhat.com>

I think this one should be either split into one patch per driver, or
merged with the of_drm_find_panel patch. I'm still not quite sure which
would be the best, maybe the latter?

Maxime

--dvioag5mayzeljeh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaj52PwAKCRAnX84Zoj2+
dqkkAX416HMzwlmhKIK9kObtiXs7aRAKA/jKzZZr7wPHQO6/uyzY73TP2QyyShFE
RjZRFDwBgJ2jRvQKam/G1wYDKDB/X9IryTeMbNEHvQrSIgH4XGYNKJ2sIqCmRRJm
MAR2IQBH8A==
=+EN8
-----END PGP SIGNATURE-----

--dvioag5mayzeljeh--


--===============3993319312929731961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3993319312929731961==--

