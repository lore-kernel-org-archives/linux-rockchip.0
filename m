Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB41BC88E5C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 13:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8nzkwJiQRQi19zobJDuxkJKyLkEmrY9exn8sSx1QHU=; b=jIq7S6XMSmpXEk
	+nJV1alHnYPaOwni+YaiMCl+3jclewxoAsEq+VUAGi/pzLDeAfbEzs8/5E3IpnY3ea70wBSlLzTRX
	R0VrHT1Vjk18ikpZhNQBCRf6F5jwLgtxG7Gnw3pElAjU/pd08ukhyjDw8ImueHAjr9yKz5xZuluyB
	iNZyV4Li/0kQ7tXe0lrLdyF15XyFgMl0+NAnPJU6oNsqJXNLjItCtmauQcvQp/x4n6/dSEaE+Pfc0
	wFfMh2cQpKDzXh4m4jfGe7jw7ncM7BOCOn70JnsnTvvF/5x6ea0wLoamcAs2/1dJuim8M2PzYTdWu
	R6pLzZYsaC6foiok0Kfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pzx-00000009KFm-1f5W;
	Wed, 16 Sep 2026 13:48:29 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pzJ-00000009JgZ-15H8
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 13:47:55 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id ADCED4E40747;
	Wed, 16 Sep 2026 13:47:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7988B60337;
	Wed, 16 Sep 2026 13:47:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 28BE011C7B010;
	Wed, 16 Sep 2026 15:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789566464; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=EWRTsEHuRPkhkItzwYv+I9LHRR2SBwOu9YrwdxAKFPU=;
	b=GaLXVyvlnZ11WFk3pSwWsFPtpLVHBau1pJicQ7XfphujamQascdo7WaeiZeosNYAn0TjtD
	tuIuipnC8LUTc0y91LT92dF0N5/w6b4jhR7zKOifZUdBI/0j+E1WuzQULiqS2mmgpDjN8a
	J1OWzRWDDt2soWH4ivaWECOyMYgy5SAuUviWVJvzuV9P3WhWQJPh0rMltE2QxjtwIJ+HE1
	spZCl3T9x4LMaW1Fq41yIDoI1VCj1T7TjoON+rqt6QHz0Ce0AScAZSGMFREXhawBSzZwku
	k76+c5B7LPAwBQXflZogBi/avMX6EANwWNvlUN5Edm1y9KfU952vzhCPeJntCQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 16 Sep 2026 15:45:39 +0200
Subject: [PATCH v3 15/19] drm/bridge: tc358768: don't create a panel_bridge
MIME-Version: 1.0
Message-Id: <20260916-drm-bridge-every-panel-v3-15-83afb4f1a707@bootlin.com>
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
X-CRM114-CacheID: sfid-20260916_064749_707362_0567F419 
X-CRM114-Status: GOOD (  13.58  )
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
of putting the bridge reference when not used anymore.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/gpu/drm/bridge/Kconfig    |  2 --
 drivers/gpu/drm/bridge/tc358768.c | 25 ++++++-------------------
 2 files changed, 6 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 4be220f7335c..847a6397eb10 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -408,8 +408,6 @@ config DRM_TOSHIBA_TC358768
 	depends on OF
 	select DRM_KMS_HELPER
 	select REGMAP_I2C
-	select DRM_PANEL
-	select DRM_PANEL_BRIDGE
 	select DRM_MIPI_DSI
 	select VIDEOMODE_HELPERS
 	help
diff --git a/drivers/gpu/drm/bridge/tc358768.c b/drivers/gpu/drm/bridge/tc358768.c
index d1fc6af37cc5..cc989ab5cf25 100644
--- a/drivers/gpu/drm/bridge/tc358768.c
+++ b/drivers/gpu/drm/bridge/tc358768.c
@@ -22,7 +22,6 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
-#include <drm/drm_panel.h>
 #include <video/mipi_display.h>
 #include <video/videomode.h>
 
@@ -137,7 +136,6 @@ static const char * const tc358768_supplies[] = {
 
 struct tc358768_dsi_output {
 	struct mipi_dsi_device *dev;
-	struct drm_panel *panel;
 	struct drm_bridge *bridge;
 };
 
@@ -443,7 +441,6 @@ static int tc358768_dsi_host_attach(struct mipi_dsi_host *host,
 {
 	struct tc358768_priv *priv = dsi_host_to_tc358768(host);
 	struct drm_bridge *bridge;
-	struct drm_panel *panel;
 	struct device_node *ep;
 	int ret;
 
@@ -471,24 +468,15 @@ static int tc358768_dsi_host_attach(struct mipi_dsi_host *host,
 		return -ENOTSUPP;
 	}
 
-	ret = drm_of_find_panel_or_bridge(host->dev->of_node, 1, 0, &panel,
-					  &bridge);
-	if (ret)
-		return ret;
+	bridge = of_drm_get_bridge_by_endpoint(host->dev->of_node, 1, 0);
+	if (IS_ERR(bridge))
+		return PTR_ERR(bridge);
 
-	if (panel) {
-		bridge = drm_panel_bridge_add_typed(panel,
-						    DRM_MODE_CONNECTOR_DSI);
-		drm_panel_put(panel);
-		if (IS_ERR(bridge))
-			return PTR_ERR(bridge);
-
-		bridge->pre_enable_prev_first = true;
-	}
+	bridge->type = DRM_MODE_CONNECTOR_DSI;
+	bridge->pre_enable_prev_first = true;
 
 	priv->output.dev = dev;
 	priv->output.bridge = bridge;
-	priv->output.panel = panel;
 
 	priv->dsi_lanes = dev->lanes;
 	priv->dsi_bpp = mipi_dsi_pixel_format_to_bpp(dev->format);
@@ -518,8 +506,7 @@ static int tc358768_dsi_host_detach(struct mipi_dsi_host *host,
 	struct tc358768_priv *priv = dsi_host_to_tc358768(host);
 
 	drm_bridge_remove(&priv->bridge);
-	if (priv->output.panel)
-		drm_panel_bridge_remove(priv->output.bridge);
+	drm_bridge_put(priv->output.bridge);
 
 	return 0;
 }

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
