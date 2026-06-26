Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0F99CDE00E
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbvP8+rJem1xYGLpA/FrRIkMgYvpM1G/F077mCwBzF8=; b=4MZzDjQMvTSEfD
	QFTIAx+h3M2hxY0ME7I6wiAl1c30oIDa0Dcuqfoh/Q1fEf+P1vw3CSeJZ894VA565wiq58jxzxxOs
	IjsoMO3EmuCJl8S1h5UJrhbFmnVbm0CMjOl8UJyyKBDQiuAOvIrvJpZiXN7LzmtXBXVUWCnpYbv4F
	VaO/soveSJtNUZjLZMp42ze4PSPzOXAulmKkC917yf4jrH01P+Azh/O6LOyFs5mTOZ52ybgmQos6w
	TevtQ3LzwT/E+UXi4OQ3OvFX9+shnpOPLRJtmce9sj3LegRS5JBY+75S26LO+Dzn0ixPq9MFh36qC
	yJqGSkAatUOXpiBp1LyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5y1-0000000BKVI-263D;
	Fri, 26 Jun 2026 12:47:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5y0-0000000BKUm-1eNM;
	Fri, 26 Jun 2026 12:47:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 62A5460098;
	Fri, 26 Jun 2026 12:47:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71D421F000E9;
	Fri, 26 Jun 2026 12:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782478051;
	bh=gcyGrresjTTPmNzfpyIyHzXr15imrzLhXIY91GPffew=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=cfxGAN/jcCri326WXf34xWET6jX2QyOm4MN8pOKcqeKKkNBjEv6dqSXeKvaCEjiqQ
	 xMUnaQaNuIQ/CQpLmGf1YlXqiGM0E0hqnbxoXWt1LrQHDTq2J3OIjNE3S2u9Xn/5ix
	 oK+DP1AL9NHLm/+ebKyBGxhWgla2EUstpziga4oibOgZCkFVMReghKfhD46XkJseIF
	 4XVC8j4IST/6OWvdETIEQ6EjrbCmQnuVJeZuoqmH1cmfRtKD2cnh8CooWMpcUWm9DM
	 tqoCryTCxfyH5x8StBEipzh+MB2ezInl6ba2yu/4cYIqDp4Gf/3f7LbllTeUaSycd1
	 37NkVCXO7+daQ==
Message-ID: <f183d0ba167f71e0555814f7447f46e0@kernel.org>
Date: Fri, 26 Jun 2026 12:47:28 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Albert Esteve" <aesteve@redhat.com>
Subject: Re: [PATCH 1/5] drm/panel: have drm_panel_add/remove manage a list
 reference
In-Reply-To: <20260626-drm_refcount_wiring-v1-1-cca1a7b3bdef@redhat.com>
References: <20260626-drm_refcount_wiring-v1-1-cca1a7b3bdef@redhat.com>
Cc: dri-devel@lists.freedesktop.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, "Alain
 Volmat" <alain.volmat@foss.st.com>, "Alexandre Torgue" <alexandre.torgue@foss.st.com>, "Alim
 Akhtar" <alim.akhtar@samsung.com>, "Alison Wang" <alison.wang@nxp.com>, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Andy Yan" <andy.yan@rock-chips.com>, "Biju
 Das" <biju.das.jz@bp.renesas.com>, "Chen-Yu Tsai" <wens@kernel.org>, "David
 Airlie" <airlied@gmail.com>, "Fabio Estevam" <festevam@gmail.com>, "Frank
 Li" <Frank.Li@nxp.com>, "Geert Uytterhoeven" <geert+renesas@glider.be>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Inki Dae" <inki.dae@samsung.com>, "Jagan
 Teki" <jagan@amarulasolutions.com>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jessica
 Zhang" <jesszhan0024@gmail.com>, "Jingoo Han" <jingoohan1@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Jonathan Hunter" <jonathanh@nvidia.com>, "Jyri
 Sarha" <jyri.sarha@iki.fi>, "Kieran Bingham" <kieran.bingham+renesas@ideasonboard.com>, "Krzysztof
 Kozlowski" <krzk@kernel.org>, "Kyungmin Park" <kyungmin.park@samsung.com>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Laurent Pinchart" <laurent.pinchart+renesas@ideasonboard.com>, "Laurentiu
 Palcu" <laurentiu.palcu@oss.nxp.com>, "Linus Walleij" <linusw@kernel.org>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>, "Lucas Stach" <l.stach@pengutronix.de>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Magnus Damm" <magnus.damm@gmail.com>, "Marek
 Szyprowski" <m.szyprowski@samsung.com>, "Marek Vasut" <marex@denx.de>, "Maxime
 Coquelin" <mcoquelin.stm32@gmail.com>, "Maxime Ripard" <mripard@kernel.org>, "Mikko
 Perttunen" <mperttunen@nvidia.com>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Paul
 Cercueil" <paul@crapouillou.net>, "Paul Kocialkowski" <paulk@sys-base.io>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, "Peter Griffin" <peter.griffin@linaro.org>, "Philippe
 Cornu" <philippe.cornu@foss.st.com>, "Raphael Gallais-Pou" <raphael.gallais-pou@foss.st.com>, "Raphael
 Gallais-Pou" <rgallaispou@gmail.com>, "Robert Foss" <rfoss@kernel.org>, "Samuel
 Holland" <samuel@sholland.org>, "Sandy Huang" <hjc@rock-chips.com>, "Sascha
 Hauer" <s.hauer@pengutronix.de>, "Seung-Woo Kim" <sw0312.kim@samsung.com>, "Simona
 Vetter" <simona@ffwll.ch>, "Stefan Agner" <stefan@agner.ch>, "Thierry
 Reding" <thierry.reding@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "Tomi
 Valkeinen" <tomi.valkeinen@ideasonboard.com>, "Yannick Fertre" <yannick.fertre@foss.st.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 26 Jun 2026 14:03:23 +0200, Albert Esteve wrote:
> The global panel_list holds raw pointers to drm_panel objects.
> Nothing prevents a panel from being freed while it is still linked
> in the list: if a driver's probe calls drm_panel_add() and then
> fails at a later step, panel->list remains in panel_list. Any
> subsequent call to of_drm_find_panel() that iterates the list will
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
