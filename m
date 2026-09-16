Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E08F2C88E5C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 13:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZrNXLpkp1nrTxxhRwuplIzBlE7KEA3tFvVfxt3zjTk=; b=jRRoMVSuw5W4sw
	gL+mpNgQyht3orRMpEOdcmoBfH90Hfm2fzgtpIX+bMtUAknxjwzvlgn8tDf0mMGMWSdvXyq9WBBwk
	8RmirLVQHSgPbfIx+YxN31JB9gj5+tT2Q7n1t8NLebhY4lwN5Nl7ceGZ1cmd77HNdNs9fzqbR6nRb
	Od2V8s1c1dZ+WQf3SlRgrUGePkzQOq06/t8ISVUK8VEEgdy1zWYFE7J1dTWRrB5DeU6t/9QqCr5+T
	VrmobzgnwIzCXZJbLMWGkmMSMNHBXf3bcvt+q/AQHXhobV0iEqi/on62x30HivgXMHMPMjbRBvQx2
	0PILAmT55nSEbVcGXrIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pyz-00000009JRg-0fWb;
	Wed, 16 Sep 2026 13:47:30 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pya-00000009J6Z-1LnP
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 13:47:09 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id CC02B1A08D9;
	Wed, 16 Sep 2026 13:47:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 95CE160337;
	Wed, 16 Sep 2026 13:47:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B423011C7B03B;
	Wed, 16 Sep 2026 15:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789566418; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cPET2NhrdD6HSvBQlq/W5IT0tYfRgFI87leV1mZtICo=;
	b=b9FMJI3689bW6Mbp3QP/ZTgl/CWUhb8O+HyJBznbODXELvvhwULKj8sn/RhTSRHvKohWrN
	IoclnNC1/3J4nwYlZTnTFwM3INfHr04fEmprfB1H0qwZmdsyVA0Xio+nEQY9AYX7dByIrV
	yzp6KnOX2F2QDWAMoOIy/ks3dPpzEZwNHvH7R9SJ6YlOL8aHTe5UmcZoEttoiXNE7o05Mh
	D6qvEGQ5zVOsTsPfXMt71MkYGQXtedfNhSpWJ+vENj5Abz1dgOKbBANkTXr1jdPKYO0NRn
	c9FWdb1D3hEnCMkxW9QebJz8Fh9o+t/4iSO/3myOXSqD+CBMjHhWPvghwb+94w==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 16 Sep 2026 15:45:33 +0200
Subject: [PATCH v3 09/19] drm/bridge: tc358767: don't create a panel_bridge
MIME-Version: 1.0
Message-Id: <20260916-drm-bridge-every-panel-v3-9-83afb4f1a707@bootlin.com>
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
X-CRM114-CacheID: sfid-20260916_064705_205601_9256211C 
X-CRM114-Status: GOOD (  18.43  )
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
 drivers/gpu/drm/bridge/Kconfig    |  2 --
 drivers/gpu/drm/bridge/tc358767.c | 64 ++++++++++++---------------------------
 2 files changed, 20 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 89e87460aefc..4766ae85da17 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -402,8 +402,6 @@ config DRM_TOSHIBA_TC358767
 	select DRM_KMS_HELPER
 	select REGMAP_I2C
 	select DRM_MIPI_DSI
-	select DRM_PANEL
-	select DRM_PANEL_BRIDGE
 	help
 	  Toshiba TC358767 eDP bridge chip driver.
 
diff --git a/drivers/gpu/drm/bridge/tc358767.c b/drivers/gpu/drm/bridge/tc358767.c
index ac83af7902cd..51f4baa62a53 100644
--- a/drivers/gpu/drm/bridge/tc358767.c
+++ b/drivers/gpu/drm/bridge/tc358767.c
@@ -35,7 +35,6 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
-#include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -370,7 +369,6 @@ struct tc_data {
 	struct drm_dp_aux	aux;
 
 	struct drm_bridge	bridge;
-	struct drm_bridge	*panel_bridge;
 	struct drm_connector	connector;
 
 	struct mipi_dsi_device	*dsi;
@@ -1742,8 +1740,8 @@ static int tc_connector_get_modes(struct drm_connector *connector)
 		return 0;
 	}
 
-	if (tc->panel_bridge) {
-		num_modes = drm_bridge_get_modes(tc->panel_bridge, connector);
+	if (tc->bridge.next_bridge) {
+		num_modes = drm_bridge_get_modes(tc->bridge.next_bridge, connector);
 		if (num_modes > 0)
 			return num_modes;
 	}
@@ -1788,7 +1786,7 @@ tc_connector_detect(struct drm_connector *connector, bool force)
 	if (tc->hpd_pin >= 0)
 		return tc_bridge_detect(&tc->bridge, connector);
 
-	if (tc->panel_bridge)
+	if (tc->bridge.next_bridge)
 		return connector_status_connected;
 	else
 		return connector_status_unknown;
@@ -1809,10 +1807,10 @@ static int tc_dpi_bridge_attach(struct drm_bridge *bridge,
 {
 	struct tc_data *tc = bridge_to_tc(bridge);
 
-	if (!tc->panel_bridge)
+	if (!tc->bridge.next_bridge)
 		return 0;
 
-	return drm_bridge_attach(tc->bridge.encoder, tc->panel_bridge,
+	return drm_bridge_attach(tc->bridge.encoder, tc->bridge.next_bridge,
 				 &tc->bridge, flags);
 }
 
@@ -1825,9 +1823,9 @@ static int tc_edp_bridge_attach(struct drm_bridge *bridge,
 	struct drm_device *drm = bridge->dev;
 	int ret;
 
-	if (tc->panel_bridge) {
+	if (tc->bridge.next_bridge) {
 		/* If a connector is required then this driver shall create it */
-		ret = drm_bridge_attach(tc->bridge.encoder, tc->panel_bridge,
+		ret = drm_bridge_attach(tc->bridge.encoder, tc->bridge.next_bridge,
 					&tc->bridge, flags | DRM_BRIDGE_ATTACH_NO_CONNECTOR);
 		if (ret)
 			return ret;
@@ -2318,53 +2316,31 @@ static int tc_probe_dpi_bridge_endpoint(struct tc_data *tc)
 {
 	struct device *dev = tc->dev;
 	struct drm_bridge *bridge;
-	struct drm_panel *panel;
-	int ret;
 
 	/* port@1 is the DPI input/output port */
-	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, &bridge);
-	if (ret && ret != -ENODEV)
-		return dev_err_probe(dev, ret,
-				     "Could not find DPI panel or bridge\n");
-
-	if (panel) {
-		bridge = devm_drm_panel_bridge_add(dev, panel);
-		drm_panel_put(panel);
-		if (IS_ERR(bridge))
-			return PTR_ERR(bridge);
-	}
-
-	if (bridge) {
-		tc->panel_bridge = bridge;
-		tc->bridge.type = DRM_MODE_CONNECTOR_DPI;
+	bridge = of_drm_get_bridge_by_endpoint(dev->of_node, 1, 0);
+	if (IS_ERR(bridge))
+		return dev_err_probe(dev, PTR_ERR(bridge),
+				     "Could not find DPI bridge\n");
 
-		return 0;
-	}
+	tc->bridge.next_bridge = bridge;
+	tc->bridge.type = DRM_MODE_CONNECTOR_DPI;
 
-	return ret;
+	return 0;
 }
 
 static int tc_probe_edp_bridge_endpoint(struct tc_data *tc)
 {
 	struct device *dev = tc->dev;
-	struct drm_panel *panel;
-	int ret;
+	struct drm_bridge *bridge;
 
 	/* port@2 is the output port */
-	ret = drm_of_find_panel_or_bridge(dev->of_node, 2, 0, &panel, NULL);
-	if (ret && ret != -ENODEV)
-		return dev_err_probe(dev, ret,
-				     "Could not find DSI panel or bridge\n");
-
-	if (panel) {
-		struct drm_bridge *panel_bridge;
-
-		panel_bridge = devm_drm_panel_bridge_add(dev, panel);
-		drm_panel_put(panel);
-		if (IS_ERR(panel_bridge))
-			return PTR_ERR(panel_bridge);
+	bridge = of_drm_get_bridge_by_endpoint(dev->of_node, 2, 0);
+	if (IS_ERR(bridge) && PTR_ERR(bridge) != -ENODEV)
+		return dev_err_probe(dev, PTR_ERR(bridge), "Could not find DSI bridge\n");
 
-		tc->panel_bridge = panel_bridge;
+	if (!IS_ERR(bridge)) {
+		tc->bridge.next_bridge = bridge;
 		tc->bridge.type = DRM_MODE_CONNECTOR_eDP;
 	} else {
 		tc->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
