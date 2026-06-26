Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94369C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 12:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kXLfCVeTdhf979gkeA4/1UI5biFlM9tUZMZdeYD+sC0=; b=AT00quiEFg3GzzZd+5DHacmQ8e
	aQFRnGXAK4BMre/Fn7HjV/w3dNKmWKhe5uYIS5mmn+o3l3TOV5pnJouym5vw1gkt5vwAWmoIkEgF1
	m+atod9hCNSJwiqDmvWC7sW/zCRKzxTh5rAu3n47hFCck+nwcMB4tqNTNJeOAriJuVnehUchmuHlP
	KzO86I+NwRYTzX94YSV+NFMLBxWVOsQpKqL6F5Ors5dmeh98bYSZRNrn2SW5+xhz60TedHESyj8XO
	dU3F5qgTeq7P8hDuCqh3q48fChBm/zd0Vv/c3Gfu2C7Ub90BAOidMH4+zMg92UvOUkGaq34ZqlWmn
	w+iAdA+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd69y-0000000BLNN-2Lsh;
	Fri, 26 Jun 2026 12:59:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd69w-0000000BLNB-2UZ6;
	Fri, 26 Jun 2026 12:59:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6BF23600C7;
	Fri, 26 Jun 2026 12:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8032F1F000E9;
	Fri, 26 Jun 2026 12:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782478791;
	bh=iuAhpilzZ82xLPk+JSQEUu87jLlBPaxS3Zm76C7j3bE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SUXMgmgWimGLbzlNMZ7wcG+1j38gd4fRHDIlDqaegwcqfVuQgLYX8VuUJtvM15vYp
	 jX12ep+d309u8bLQbPbyAdBvJmd8GAsRPjPQZkY4YwXDX5gr9XzTy4IoAL7jcTI2rV
	 8MTxA1z++Ku+mxv+86TWL/aJ6xmEhLbsBHRnhMPe0NgKiyIhsLVeyivZGTUIIikGnb
	 y3xB6TtxeLHebb/RguAspWG9yWJwnaIq7UkWwS/TVbfgzD/kJBZNxTlsLf/tTqaRX3
	 91ZGmQgom/jibidOew2L8xqAHAtkawCvVu8yAOpBH0ClZXAOWEuwCJJPHM/LEHesNi
	 Azxjd24IvLvoA==
Date: Fri, 26 Jun 2026 14:59:48 +0200
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
Subject: Re: [PATCH 5/5] drm: release panel reference after panel bridge
 creation
Message-ID: <20260626-ivory-tarantula-of-valor-af0e2a@houat>
References: <20260626-drm_refcount_wiring-v1-0-cca1a7b3bdef@redhat.com>
 <20260626-drm_refcount_wiring-v1-5-cca1a7b3bdef@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260626-drm_refcount_wiring-v1-5-cca1a7b3bdef@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============5625312784919508971=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5625312784919508971==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="hx5apeednlr6fj2q"
Content-Disposition: inline


--hx5apeednlr6fj2q
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 5/5] drm: release panel reference after panel bridge
 creation
MIME-Version: 1.0

On Fri, Jun 26, 2026 at 02:03:27PM +0200, Albert Esteve wrote:
> of_drm_find_panel() and drm_of_find_panel_or_bridge() now return a
> counted reference. In drivers that immediately wrap the panel in a
> bridge via devm_drm_panel_bridge_add() or equivalent, the bridge
> acquires its own reference, so the caller's lookup reference must be
> released right afterwards.
>=20
> Also handle the cases where a panel is found but cannot be used,
> dropping the reference immediately in those paths.
>=20
> Assisted-by: Claude:claude-opus-4-6
> Signed-off-by: Albert Esteve <aesteve@redhat.com>

drm_of_find_panel_or_bridge() does indeed return a refcounted pointer
now, but afaik the doc wasn't updated to reflect that.

More importantly, I feel like with both of_drm_find_panel and
drm_of_find_panel_or_bridge we update a path that is considered legacy
anyway now, and we should rather focus on providing a safe alternative.

But none of the functions you updated are unsafe, so it won't be more
unsafe, or provide any illusion of safety to the caller. Idk.

Either way, this should all be on its way out if Luca creates a bridge
for every panel, and we'll consolidate on bridges only, so maybe it's
not such a big deal to merge this patch.

Maxime

--hx5apeednlr6fj2q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaj53xAAKCRAnX84Zoj2+
dsH4AX98DVuJ2nWYEJlnvBoa7TLPQIxJp+N3SqD7GpI68AgQPx9+XXIRd6eD3iVF
E+I0SeQBgPnPf10X5ME+9qUOY4BE8jXvhoS7IaHARK1hueut9qHTwNXhFYoQyHlo
Wk/+lJPV9A==
=+ukr
-----END PGP SIGNATURE-----

--hx5apeednlr6fj2q--


--===============5625312784919508971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5625312784919508971==--

