Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F841C4451B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 14:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lQv2JPCrqp+HFPMFYjUvBLnJsGTXKs439KjwuyXI33k=; b=SgdN9GyTx8/aaU
	emDZ2+ALzeraG1w5DP1S77+jH+fZGjne4uWvNIbYyHrG8mlgeC2Gcq32mo5wAr7cK77Ul8WFPff7e
	4Wrg8xocr3Hv28dqlkXrB+SpFkGMLx2K9az+akDeavrxbAK/zCn1b+LaSzHTr+91EXQ9tho3Owt6R
	eQwNJkP5WsLFcsPDtcE0PL4I/uTUXCKyfrNHoBkLSDqTx+o96PixyNwXfs9VQ/lbuHyk4zvXDvHOV
	oi9y9FUMNtIr/lpd/6rH2rAIa4ZDgMQC/QqyVlha8IcdEBupKcV1e+ssVsRMuNRIK4Iw+Vy5dAL7b
	vtp36t4PppokXGfnMbdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkjAX-00000002SUB-1qZg;
	Fri, 17 Jul 2026 14:04:01 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkjAU-00000002ST7-3I6Z
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 14:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784297038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KXAKRwDTnzEg9ZBBk/oAwaIuZZpboPYGh9kDsncZq0U=;
	b=aiiUpD1TbqKGEXV19NfhNJQ6YfriDMVfWTrHJ6De4i1f55uSsMFimAt1o1N728Hoicblfg
	UeECYDZlDjaOdEayKvpZp8SFlpWxOP6qGGQaW1yCdU2m4nFG3er8uqBcA9VE1eBmYDK1eM
	JgxiUr1KJPDtO+t1t5bKt1haec4M1Bc=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-270-B9LWD_NdMFydwywJpNzkwg-1; Fri,
 17 Jul 2026 10:02:47 -0400
X-MC-Unique: B9LWD_NdMFydwywJpNzkwg-1
X-Mimecast-MFC-AGG-ID: B9LWD_NdMFydwywJpNzkwg_1784296961
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B1AF018007F5;
	Fri, 17 Jul 2026 14:02:38 +0000 (UTC)
Received: from [192.168.1.153] (headnet05.pony-001.prod.iad2.dc.redhat.com [10.2.32.117])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 342F318005B3;
	Fri, 17 Jul 2026 14:02:18 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Subject: [PATCH v3 0/4] drm/panel: refcounting panel lookups and references
Date: Fri, 17 Jul 2026 16:02:03 +0200
Message-Id: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XOyw6CMBAF0F8hXVvTF2105X8YQ/oYoAuKabFqC
 P9uwYUx0eWdzD0zM0oQPSR0rGYUIfvkx1AC31XI9jp0gL0rGTHCJKkpxy4OTYTWjrcwNXcffei
 wgBpUreBAhEKleS0L/rGp50vJvU/TGJ/bkUzX6duTTP70MsUEW6upVoYbB+0pguv1tLfjgFYws
 w+i/jyVWUEcN0bSVhgn3BeyLMsLlq5UcPwAAAA=
X-Change-ID: 20260513-drm_refcount_wiring-4e5e757e9047
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Inki Dae <inki.dae@samsung.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
 Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>, 
 Stefan Agner <stefan@agner.ch>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Yannick Fertre <yannick.fertre@foss.st.com>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
 Philippe Cornu <philippe.cornu@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>, 
 Jyri Sarha <jyri.sarha@iki.fi>, Jingoo Han <jingoohan1@gmail.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Alison Wang <alison.wang@nxp.com>, 
 Paul Kocialkowski <paulk@sys-base.io>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Mikko Perttunen <mperttunen@nvidia.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org, 
 Albert Esteve <aesteve@redhat.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784296938; l=6089;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=CBR1Ph2kUJjjkYaGrdkvqaa4iWlYMfiXDLEZXyTQZ1o=;
 b=wkA63uP1ZKoAa4h64tde85ydj2YqROznD17VIE6GUQVqeRP94Romw2NP7XiRctsK48Czd8IKA
 egJVcLgipY8AlirQeQbG5HkLYCJmhqolZb8CsYQG+KwOXgQPNcCRePK
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uacYIlu5PLBuSnCmQJgqXyzw6gPSHdgZBRDe6GR-SYg_1784296961
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_070358_895118_68AE649E 
X-CRM114-Status: GOOD (  16.71  )
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

The drm_panel subsystem provides kref-based reference counting [1]
(drm_panel_get/put) but almost nothing in the tree actually uses it.
This results in a systemic use-after-free pattern throughout the codebase.

This series aims to close all those issues.

Patches 1-2: fix the infrastructure. drm_panel_add/remove now keep
a counted reference for the list entry. drm_panel_bridge_add_typed()
now holds a counted reference for the lifetime of the panel_bridge.

Patch 3: change the semantics of of_drm_find_panel(). It now acquires
a reference before returning, under panel_lock. All in-tree callers
of of_drm_find_panel() and drm_of_find_panel_or_bridge() are updated.
Two patterns are common in these fixes:

- Bridge-wrapping: the panel is passed to devm_drm_panel_bridge_add()
  or equivalent, which acquires its own reference. The caller (including
  devm_drm_of_get_bridge() and drmm_of_get_bridge()) releases its lookup
  reference immediately after.
- Store-and-use: the panel pointer is kept in a driver struct and
  used directly for the device lifetime. The reference is released in the
  remove/unbind path, or via devm_add_action_or_reset() where no explicit
  teardown function exists.

Patch 4: extend the same fix to find_panel_by_fwnode(), a static helper
used internally by drm_panel_add_follower(). Since it has no external
callers, the fix is self-contained: drm_panel_remove_follower() is
updated to call drm_panel_put() to balance the reference.

In order to catch all places in the tree that required releasing the
reference, the search was assisted by an AI model. Specifically, a
Coccinelle script was designed by the agent to address the trivial changes
(not included in the series). Although a few required manual fixes, with goto
labels or bracket additions. Additionally, the model helped to discern implicit
teardown paths that were addressed with devm_add_action_or_reset() calls.
Thus, these commits have the Assisted-by label following the project guidelines.

No functional change is intended for any driver. The reference
counting only affects object lifetime; panel operations are unaffected.

[1] https://lore.kernel.org/all/20250331-b4-panel-refcounting-v4-0-dad50c60c6c9@redhat.com/

Signed-off-by: Albert Esteve <aesteve@redhat.com>
---
Changes in v3:
- Squashed patches 3 and 5
- Fix probe failure paths that leaked reference
- Fix UAF and other smaller issues found by Sashiko
- Add comment in tegra-dsi explaining why panel is always
  NULL in that path and so no early drm_panel_put() is required
- Link to v2: https://lore.kernel.org/r/20260713-drm_refcount_wiring-v2-0-d3bb61f4bd4d@redhat.com

Changes in v2:
- Squash of_drm_find_panel() API change with its caller fixes
- Split find_panel_by_fwnode() into its own commit
- Update kernel-doc for drm_of_find_panel_or_bridge()
- Link to v1: https://lore.kernel.org/r/20260626-drm_refcount_wiring-v1-0-cca1a7b3bdef@redhat.com

---
Albert Esteve (4):
      drm/panel: have drm_panel_add/remove manage a list reference
      drm/bridge/panel: hold a reference to the wrapped panel
      drm/panel: of_drm_find_panel() return a counted reference
      drm/panel: find_panel_by_fwnode() return a counted reference

 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 12 +++++++++++
 drivers/gpu/drm/bridge/fsl-ldb.c                   |  1 +
 drivers/gpu/drm/bridge/lontium-lt9211.c            |  1 +
 drivers/gpu/drm/bridge/lvds-codec.c                |  1 +
 drivers/gpu/drm/bridge/panel.c                     | 20 ++++++++++++++----
 drivers/gpu/drm/bridge/samsung-dsim.c              |  1 +
 drivers/gpu/drm/bridge/ssd2825.c                   |  1 +
 drivers/gpu/drm/bridge/tc358767.c                  |  2 ++
 drivers/gpu/drm/bridge/tc358768.c                  |  1 +
 drivers/gpu/drm/bridge/waveshare-dsi.c             |  1 +
 drivers/gpu/drm/drm_of.c                           |  3 ++-
 drivers/gpu/drm/drm_panel.c                        | 24 +++++++++++++++++-----
 drivers/gpu/drm/exynos/exynos_dp.c                 | 19 ++++++++++++++++-
 drivers/gpu/drm/exynos/exynos_drm_dpi.c            |  3 +++
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c          | 18 ++++++++++++++++
 drivers/gpu/drm/imx/dcss/dcss-kms.c                |  3 +++
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c          |  4 +++-
 drivers/gpu/drm/logicvc/logicvc_interface.c        | 12 +++++++++++
 drivers/gpu/drm/mcde/mcde_drv.c                    |  1 +
 drivers/gpu/drm/mcde/mcde_dsi.c                    |  1 +
 drivers/gpu/drm/mxsfb/mxsfb_drv.c                  |  1 +
 drivers/gpu/drm/omapdrm/dss/output.c               |  1 +
 drivers/gpu/drm/pl111/pl111_drv.c                  |  1 +
 drivers/gpu/drm/renesas/rcar-du/rcar_du_encoder.c  |  1 +
 drivers/gpu/drm/renesas/rcar-du/rcar_lvds.c        |  1 +
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_encoder.c   |  1 +
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    | 11 ++++++++++
 drivers/gpu/drm/rockchip/rockchip_lvds.c           |  4 ++++
 drivers/gpu/drm/rockchip/rockchip_rgb.c            |  3 +++
 drivers/gpu/drm/sti/sti_dvo.c                      |  3 +++
 drivers/gpu/drm/stm/ltdc.c                         |  1 +
 drivers/gpu/drm/stm/lvds.c                         | 12 ++++++++---
 drivers/gpu/drm/sun4i/sun4i_lvds.c                 | 13 ++++++++++++
 drivers/gpu/drm/sun4i/sun4i_rgb.c                  | 13 ++++++++++++
 drivers/gpu/drm/sun4i/sun4i_tcon.c                 |  2 ++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c             |  6 +++++-
 drivers/gpu/drm/tegra/dsi.c                        |  5 +++++
 drivers/gpu/drm/tegra/output.c                     | 24 +++++++++++++++++++---
 drivers/gpu/drm/tidss/tidss_kms.c                  | 16 ++++++++++-----
 drivers/gpu/drm/tve200/tve200_drv.c                |  1 +
 40 files changed, 225 insertions(+), 24 deletions(-)
---
base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
change-id: 20260513-drm_refcount_wiring-4e5e757e9047

Best regards,
-- 
Albert Esteve <aesteve@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
