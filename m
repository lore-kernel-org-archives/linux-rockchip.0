Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A9CC88E5C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 13:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjYUiDKpUDGpyxGIBkfT8v2zC72wnKw9fHjBAxY12WM=; b=eRE3HyybfnFF1n
	+BPSSt+cfdjqhy3bfROszPv7cMz8yl2P+RQNWL+o5IjMnDT2yT0488DwIyWTR0I7v5L+3xH5KhKXn
	YYPgwIo6Q5lkwpRy6kcH0L3QMdByfXT8fqonp3FIT3rpeT89FS+jnixYaqs0zBy/D+jtn7vsgNxUb
	d/c1XLGEWV4y0Qb69/AWS1qwuN4JlqmL5Kt8RbAeV0YzVuWohDrTtpJ8MndDTDkDqKVLGBxUA1mht
	U+xFfxXM5UJg3+uuEHisDqsq/F9jBTDFoS8xq9xP6IsqoaxtoNXvGsel8aC2uyRMrOmz+JSkOmuLH
	IjlX20dTRIDhGZwidVPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pzB-00000009JbD-1Vpz;
	Wed, 16 Sep 2026 13:47:41 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pyh-00000009JEp-08NA
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 13:47:14 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 635344E40727;
	Wed, 16 Sep 2026 13:47:09 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3525E60337;
	Wed, 16 Sep 2026 13:47:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 380E211C7B041;
	Wed, 16 Sep 2026 15:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789566426; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=jSm15aEu8LMTkgjEDcY83AKYO/FAhIifYcjSr+uceZs=;
	b=K0GCnw3iJUIIJEBk5d04XwNWx4yCPreArhb6pcIbW1Eow4P6spCGVFWsiku75QKgQrx9Oh
	NWU+WPKhHDIWxMmdy0H7m8SKMS1dFLT/y1+vBcbzk9fusVyuaZ7sc5L7DAiOIg5iAm6Xi2
	qz3qwJ4hHu9jGcatl1pSETQ7ZQVTuXyvSlB9h8QbhKLjaDNRQ98cXptgCTkZdxbFsJyuVB
	H4wFymq2C4ZEXJN6i36nC7YmXkm7Y9UuUq6yWzaJmHZt6gGXxg0zNBaNuj9wqS/gvs7n46
	PPHklhmhdxpd4FfudS0Hrj4KEenttlxJuUAnPdCuOKVyTvalRFk5aU9pF0eWew==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 16 Sep 2026 15:45:34 +0200
Subject: [PATCH v3 10/19] drm/bridge: waveshare-dsi: don't create a
 panel_bridge
MIME-Version: 1.0
Message-Id: <20260916-drm-bridge-every-panel-v3-10-83afb4f1a707@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
In-Reply-To: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
 Paul Kocialkowski <paulk@sys-base.io>, Linus Walleij <linusw@kernel.org>, 
 Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, Sean Paul <sean@poorly.run>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Randy Dunlap <rdunlap@infradead.org>
Cc: Albert Esteve <aesteve@redhat.com>, 
 Anusha Srivatsa <asrivats@redhat.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.16.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_064711_536326_7824FD75 
X-CRM114-Status: GOOD (  12.34  )
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

Now a panel_bridge is automatically created for every drm_panel and the
panel-bridge API is just a deprecated wrapper to access it.

Update and simplify the code by just getting a reference to the
already-existing bridge using of_drm_get_bridge_by_endpoint().

As of_drm_get_bridge_by_endpoint() returns a refcounted bridge, take care
of putting the bridge reference by using bridge->next_bridge.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/gpu/drm/bridge/waveshare-dsi.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/waveshare-dsi.c b/drivers/gpu/drm/bridge/waveshare-dsi.c
index 420f3b870a74..2c40bfef2b45 100644
--- a/drivers/gpu/drm/bridge/waveshare-dsi.c
+++ b/drivers/gpu/drm/bridge/waveshare-dsi.c
@@ -16,11 +16,9 @@
 #include <drm/drm_bridge.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
-#include <drm/drm_panel.h>
 
 struct ws_bridge {
 	struct drm_bridge bridge;
-	struct drm_bridge *next_bridge;
 	struct backlight_device *backlight;
 	struct device *dev;
 	struct regmap *reg_map;
@@ -89,7 +87,7 @@ static int ws_bridge_bridge_attach(struct drm_bridge *bridge,
 {
 	struct ws_bridge *ws = bridge_to_ws_bridge(bridge);
 
-	return drm_bridge_attach(encoder, ws->next_bridge,
+	return drm_bridge_attach(encoder, ws->bridge.next_bridge,
 				 &ws->bridge, flags);
 }
 
@@ -150,7 +148,6 @@ static struct backlight_device *ws_bridge_create_backlight(struct ws_bridge *ws)
 static int ws_bridge_probe(struct i2c_client *i2c)
 {
 	struct device *dev = &i2c->dev;
-	struct drm_panel *panel;
 	struct ws_bridge *ws;
 	int ret;
 
@@ -164,14 +161,10 @@ static int ws_bridge_probe(struct i2c_client *i2c)
 	if (IS_ERR(ws->reg_map))
 		return dev_err_probe(dev, PTR_ERR(ws->reg_map), "Failed to allocate regmap\n");
 
-	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, -1, &panel, NULL);
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to find remote panel\n");
-
-	ws->next_bridge = devm_drm_panel_bridge_add(dev, panel);
-	drm_panel_put(panel);
-	if (IS_ERR(ws->next_bridge))
-		return PTR_ERR(ws->next_bridge);
+	ws->bridge.next_bridge = of_drm_get_bridge_by_endpoint(dev->of_node, 1, -1);
+	if (IS_ERR(ws->bridge.next_bridge))
+		return dev_err_probe(dev, PTR_ERR(ws->bridge.next_bridge),
+				     "Failed to find remote bridge\n");
 
 	ws->backlight = ws_bridge_create_backlight(ws);
 	if (IS_ERR(ws->backlight)) {

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
