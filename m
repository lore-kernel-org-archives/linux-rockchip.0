Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83FDBC531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 18:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaJK5+i72jrLedjsQ7UL4F9To9hynllhkYo9rYj+n9E=; b=UWWikNr7h9ejlj
	9/sY0P6BxmL5lO5qggzNpzn8i26Fr03GHo3xmfwU37EeAEfpofJJkgqSmK9rx4rrVwhK/ga/DBDlN
	ca4mbkj46hnE5v1Sdvfry7cqMJuVcWkmgoap1d+WLthEgMP9vMU/2abLEmMvVj6eQ9TAzD+PJkN5E
	jY6J1EEb1w/pYMKjfR4c5p0FmGU6T1o+x239ZiX86leIf2anh4yCttM53fyJuWF8/aeiVmUTe6Z3o
	fzK6vTdZTvT26BuYtMjTFq9C16r//OAwxaKSkqZo+NQ2oAscq4xaLSlL8DXVT+rPJLWMOQ0CNQeVr
	rpF9uOhTG5Hl/Jcsdrsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQLP-00000003h4l-0FU7;
	Mon, 27 Jul 2026 18:46:31 +0000
Received: from out-171.mta0.migadu.com ([2001:41d0:1004:224b::ab])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQLM-00000003h3m-2Bd2
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 18:46:30 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1785177974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s0wH+ySFfCBVmnBojBZaXIoCALe+k/ClNs6fjt/QIh0=;
	b=Pstfw6IK644jlNnRGZZRzPiUJEWtkwg3bh22GraX3/i7mt3gP1kE9IC1GsrEiZtN9HwtV0
	MbmNO1kYDW2KbxEiOr9P49jzr3JFdam9Nv4GjjD4EnyoxMaeGntAA6aDHk6vcsi6R0udzB
	+qL9WEAdvH37Xa/JrZBO5IRJVCi2wuT6cT0F3vO1i/01J0QVy6duT66k2KWM33tHsZvYjQ
	IdWTyvdQr7nYV4CBGvN1dS+L/UTx/sY/MqpIXlJweYMZ4jPVhCOdsVHOTVktRuhWKjSlzx
	xk9gIo5Z9YB9UXA4kdjs/bbuTUWyR74sGlTMCREYyq4Bzestgaw3iD+MdtjkZw==
Date: Mon, 27 Jul 2026 20:45:58 +0200
Message-Id: <DK9KRSOWRHY0.H7SC0R3BIIUZ@cknow-tech.com>
To: "Neil Armstrong" <neil.armstrong@linaro.org>, "Jessica Zhang"
 <jesszhan0024@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>, "Inki Dae" <inki.dae@samsung.com>,
 "Jagan Teki" <jagan@amarulasolutions.com>, "Marek Szyprowski"
 <m.szyprowski@samsung.com>, "Laurentiu Palcu"
 <laurentiu.palcu@oss.nxp.com>, "Lucas Stach" <l.stach@pengutronix.de>,
 "Frank Li" <Frank.Li@nxp.com>, "Sascha Hauer" <s.hauer@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam"
 <festevam@gmail.com>, "Paul Cercueil" <paul@crapouillou.net>, "Linus
 Walleij" <linusw@kernel.org>, "Marek Vasut" <marex@denx.de>, "Stefan Agner"
 <stefan@agner.ch>, "Tomi Valkeinen" <tomi.valkeinen@ideasonboard.com>,
 "Laurent Pinchart" <laurent.pinchart+renesas@ideasonboard.com>, "Kieran
 Bingham" <kieran.bingham+renesas@ideasonboard.com>, "Geert Uytterhoeven"
 <geert+renesas@glider.be>, "Magnus Damm" <magnus.damm@gmail.com>, "Biju
 Das" <biju.das.jz@bp.renesas.com>, "Sandy Huang" <hjc@rock-chips.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Andy Yan"
 <andy.yan@rock-chips.com>, "Yannick Fertre" <yannick.fertre@foss.st.com>,
 "Raphael Gallais-Pou" <raphael.gallais-pou@foss.st.com>, "Philippe Cornu"
 <philippe.cornu@foss.st.com>, "Maxime Coquelin"
 <mcoquelin.stm32@gmail.com>, "Alexandre Torgue"
 <alexandre.torgue@foss.st.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Samuel
 Holland" <samuel@sholland.org>, "Jyri Sarha" <jyri.sarha@iki.fi>, "Jingoo
 Han" <jingoohan1@gmail.com>, "Seung-Woo Kim" <sw0312.kim@samsung.com>,
 "Kyungmin Park" <kyungmin.park@samsung.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Peter Griffin" <peter.griffin@linaro.org>, "Alim
 Akhtar" <alim.akhtar@samsung.com>, "Alison Wang" <alison.wang@nxp.com>,
 "Paul Kocialkowski" <paulk@sys-base.io>, "Alain Volmat"
 <alain.volmat@foss.st.com>, "Raphael Gallais-Pou" <rgallaispou@gmail.com>,
 "Thierry Reding" <thierry.reding@kernel.org>, "Mikko Perttunen"
 <mperttunen@nvidia.com>, "Jonathan Hunter" <jonathanh@nvidia.com>, "Albert
 Esteve" <aesteve@redhat.com>
Cc: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mips@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <linux-sunxi@lists.linux.dev>,
 <linux-samsung-soc@vger.kernel.org>, <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH v3 0/4] drm/panel: refcounting panel lookups and
 references
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
 <178472247762.1745070.2847290153778032256.b4-ty@b4>
In-Reply-To: <178472247762.1745070.2847290153778032256.b4-ty@b4>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_114628_919977_E23CB9FF 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed Jul 22, 2026 at 2:15 PM CEST, Neil Armstrong wrote:
> On Fri, 17 Jul 2026 16:02:03 +0200, Albert Esteve wrote:
>> The drm_panel subsystem provides kref-based reference counting [1]
>> (drm_panel_get/put) but almost nothing in the tree actually uses it.
>> This results in a systemic use-after-free pattern throughout the codebase.
>> 
>> This series aims to close all those issues.
>> 
>> Patches 1-2: fix the infrastructure. drm_panel_add/remove now keep
>> a counted reference for the list entry. drm_panel_bridge_add_typed()
>> now holds a counted reference for the lifetime of the panel_bridge.
>> 
>> [...]
>
> Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)
>
> [1/4] drm/panel: have drm_panel_add/remove manage a list reference
>       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/61aebeadff40cded27168e53406e0120ad66e114
> [2/4] drm/bridge/panel: hold a reference to the wrapped panel
>       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/8f79d34ea8950fd825e0d6ecd713705a42f06417
> [3/4] drm/panel: of_drm_find_panel() return a counted reference
>       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b71a623598d319cae2acd9df1b297cc948c58bc7
> [4/4] drm/panel: find_panel_by_fwnode() return a counted reference
>       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ac3baea883dab989178dd4186090d6bcf52b8d55

That last commit resulted in an extra ``drm_panel.c.orig`` file which 
wasn't part of the patch and seems incorrect?

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
