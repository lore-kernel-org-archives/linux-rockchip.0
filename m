Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5EA0C44520
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 14:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxeU1n09PJbrvyA9LtUqZFUbAFYtosn/xw+ZPwaFusE=; b=DCArHYVE45Daz2
	hC1P6+c/pO65MOqiRXXA91VbSroN5JsUXyJvlPjGt/dapNjtdea//g34bspafRD6wNLb9wuUznt0Z
	Bn+8D+9wY08AIhvY6kbTniLbLNinpQolXWStm8sPQBaIq34PY2VEsbSIJ39UsPsO84lw4+zQSxPJO
	AHZOgNxIk+sat9QsmuoOWVLhXcONkrfOJbBu+xGUrQ7RuJFVQhOSdLny+x750Z3kpdn6ucZ91Apdw
	6YKF81B6P519UMLVxcxUS8RpU51xvOCNVsqgSkJdIcPxbl3liBDYiUxZedFKwP1qxFd+xusgQ/stv
	SyTaFXJZRG9GsChj0dSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkjA4-00000002SEu-17xa;
	Fri, 17 Jul 2026 14:03:32 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkjA2-00000002SDp-0vw6
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 14:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784297009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u9v3NFXDrTwWLaV8FxMoZ8NfYxT3wpKqp81fO1pkfuE=;
	b=FDEYsholmg83m8+eo5vMqYh9TyzlFcDFb0aEvcup+m2Ph13W1kkEyg8ADvmXFHRuliyr80
	PdvbVLvfWRlQDL/Z4pPd7qLlh0ga7+a+Frxqiph0NMAX67JHnLVBMYFmjszcvik1eMxYPp
	SMU/yREfMjyeV+9JMxQZHH8X0q9PM0U=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-176-qXr0ILGUPN6VOE7krdxl2Q-1; Fri,
 17 Jul 2026 10:03:21 -0400
X-MC-Unique: qXr0ILGUPN6VOE7krdxl2Q-1
X-Mimecast-MFC-AGG-ID: qXr0ILGUPN6VOE7krdxl2Q_1784296990
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8141D1955DC4;
	Fri, 17 Jul 2026 14:03:09 +0000 (UTC)
Received: from [192.168.1.153] (headnet05.pony-001.prod.iad2.dc.redhat.com [10.2.32.117])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8FF14180025C;
	Fri, 17 Jul 2026 14:02:55 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Date: Fri, 17 Jul 2026 16:02:05 +0200
Subject: [PATCH v3 2/4] drm/bridge/panel: hold a reference to the wrapped
 panel
MIME-Version: 1.0
Message-Id: <20260717-drm_refcount_wiring-v3-2-023900c32e01@redhat.com>
References: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
In-Reply-To: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784296938; l=2287;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=KlwxMCqKbNdub6iKSU63/eaha0hKFaagaI1tIZ6B5Uc=;
 b=Fxd71ptDdnXg3JoJpPixwQzGTDiV+Biy0L12abT4HYwaF3RLxMz6DNuSuFzbtOgYKy66jdXMp
 1QthBb+oBgvCqjzGxHXJ317YOokVT2FzgPwxGFDjWKFRUq39l4egfSn
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6TviAdO2Iyy-UV-fa4l-ANoo-EjpJitnkgdb0FSE7xI_1784296990
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_070330_328819_905A68EB 
X-CRM114-Status: GOOD (  13.60  )
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

drm_panel_bridge_add_typed() stores a pointer to the drm_panel it
wraps, but never acquires a reference to it. If the panel device
goes away while a panel_bridge still exists, the dangling pointer can
be dereferenced through panel_bridge->panel.

Acquire a reference in drm_panel_bridge_add_typed() with drm_panel_get()
and release it in each teardown path.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Albert Esteve <aesteve@redhat.com>
---
 drivers/gpu/drm/bridge/panel.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
index 4978ec98a0828..3bfa18167dd26 100644
--- a/drivers/gpu/drm/bridge/panel.c
+++ b/drivers/gpu/drm/bridge/panel.c
@@ -294,7 +294,7 @@ struct drm_bridge *drm_panel_bridge_add_typed(struct drm_panel *panel,
 		return (void *)panel_bridge;
 
 	panel_bridge->connector_type = connector_type;
-	panel_bridge->panel = panel;
+	panel_bridge->panel = drm_panel_get(panel);
 
 	panel_bridge->bridge.of_node = panel->dev->of_node;
 	panel_bridge->bridge.ops = DRM_BRIDGE_OP_MODES;
@@ -316,6 +316,7 @@ EXPORT_SYMBOL(drm_panel_bridge_add_typed);
 void drm_panel_bridge_remove(struct drm_bridge *bridge)
 {
 	struct panel_bridge *panel_bridge;
+	struct drm_panel *panel;
 
 	if (!bridge)
 		return;
@@ -326,10 +327,12 @@ void drm_panel_bridge_remove(struct drm_bridge *bridge)
 	}
 
 	panel_bridge = drm_bridge_to_panel_bridge(bridge);
+	panel = panel_bridge->panel;
 
 	drm_bridge_remove(bridge);
 	/* TODO remove this after reworking panel_bridge lifetime */
-	devm_drm_put_bridge(panel_bridge->panel->dev, bridge);
+	devm_drm_put_bridge(panel->dev, bridge);
+	drm_panel_put(panel);
 }
 EXPORT_SYMBOL(drm_panel_bridge_remove);
 
@@ -357,11 +360,16 @@ EXPORT_SYMBOL(drm_panel_bridge_set_orientation);
 static void devm_drm_panel_bridge_release(struct device *dev, void *res)
 {
 	struct drm_bridge *bridge = *(struct drm_bridge **)res;
+	struct panel_bridge *panel_bridge;
+	struct drm_panel *panel;
 
 	if (!bridge)
 		return;
 
+	panel_bridge = drm_bridge_to_panel_bridge(bridge);
+	panel = panel_bridge->panel;
 	drm_bridge_remove(bridge);
+	drm_panel_put(panel);
 }
 
 /**

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
