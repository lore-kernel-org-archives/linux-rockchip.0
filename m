Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 553E0C624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sepDjhnl9IyiLBqFlpKgsjwx4sermqcx+XomZb5hk3c=; b=FqrAeZiNY6aaDd
	xQJMWcS3AS358XWRBGf7/rGQuACrx4ZZ2wpTfwTO2ie6xtQ16Ll5ED0O+j6IbMA0TZPdrRf+0kJzH
	YTyVN7sVE1WABUHGkXM8Q0j7pQiok4GgA0L4lK/RUjQKE+gWUMBfbhmqgq0UD9ZE3LvcHeA2X+u1/
	heNb97OCb/IJLVvGHp0buBAoPmKXIs79cAbmsNm73eYBBmuCs3FuTT3jU94T2FI2LBzrOUXTBCI/U
	yTWxv1NxQqHOk5cJTD/g78lmE5uGnrhpHVy/giiqP40l+nnhR5t/o/vLzYHZrUy9RCLaKH0jqxa0V
	zcbR0NSLgYu3dPq/m6hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Tan-0000000D31d-09D0;
	Tue, 01 Sep 2026 18:52:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZT-0000000D0nc-2Lq6;
	Tue, 01 Sep 2026 18:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288654;
	bh=wyKOuAOPQO1q8CYDFWwK5liCrFdF8CmhlMWWkqaZIiI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=M97PwPXrzMSZIraV9pTetj7y78niKhtleIgunCLADkLrmr8UJmIDQimdAmHhIXMWk
	 8ttQYhM0dK9Xy9mKDn+TuLY1sIWi4/viPDikobkxdY3BT/Igaj5kk3nvgvK6di6Jcu
	 DNDVeLZoeTdWFIxq3UALPHdOAyA83jMuZH/I17Sb8N7rcYQAaTdkNE8RV5ft0NEHi5
	 N0NOxc9J/FVjDl5BTN4nRDkgQentzpVQ5YuTKeVrk8ekZQZsjbw9io3W/ZbQV5Iym0
	 nwqdcjUU6AymfZlEppuxcU2La45pS9JuQU52jSy0eZ2cVBXNoX44I7fabEjxhZVgZ2
	 OwobbgBAx0O4Q==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7E52617E37A8;
	Tue, 01 Sep 2026 20:50:54 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:50:42 +0300
Subject: [PATCH v11 18/74] drm/display: bridge_connector: Switch to
 .detect_ctx() connector helper
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-18-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
 Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>, 
 Phong LE <ple@baylibre.com>, Helge Deller <deller@gmx.de>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-fbdev@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maud Spierings <maud_spierings@hotmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_115100_672318_BEE36CD9 
X-CRM114-Status: GOOD (  13.33  )
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

Replace the .detect() connector_funcs callback with the atomic-aware
.detect_ctx() connector_helper_funcs hook.

This is preparatory work to allow propagating the modeset acquire
context through drm_atomic_helper_connector_hdmi_hotplug() to the HDMI
connector framework, enabling SCDC state recovery via CRTC reset when
the sink reconnects during an active display pipeline.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Maud Spierings <maud_spierings@hotmail.com>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, Rock 5B
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 69 +++++++++++++-------------
 1 file changed, 35 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index a73c177a3c10..4ad3cd107ecd 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -208,39 +208,6 @@ static void drm_bridge_connector_disable_hpd(struct drm_connector *connector)
  * Bridge Connector Functions
  */
 
-static enum drm_connector_status
-drm_bridge_connector_detect(struct drm_connector *connector, bool force)
-{
-	struct drm_bridge_connector *bridge_connector =
-		to_drm_bridge_connector(connector);
-	struct drm_bridge *detect = bridge_connector->bridge_detect;
-	struct drm_bridge *hdmi = bridge_connector->bridge_hdmi;
-	enum drm_connector_status status;
-
-	if (detect) {
-		status = detect->funcs->detect(detect, connector);
-
-		if (hdmi)
-			drm_atomic_helper_connector_hdmi_hotplug(connector, status);
-
-		drm_bridge_connector_hpd_notify(connector, status);
-	} else {
-		switch (connector->connector_type) {
-		case DRM_MODE_CONNECTOR_DPI:
-		case DRM_MODE_CONNECTOR_LVDS:
-		case DRM_MODE_CONNECTOR_DSI:
-		case DRM_MODE_CONNECTOR_eDP:
-			status = connector_status_connected;
-			break;
-		default:
-			status = connector_status_unknown;
-			break;
-		}
-	}
-
-	return status;
-}
-
 static void drm_bridge_connector_force(struct drm_connector *connector)
 {
 	struct drm_bridge_connector *bridge_connector =
@@ -310,7 +277,6 @@ drm_bridge_connector_color_format(const struct drm_connector_state *conn_state)
 }
 
 static const struct drm_connector_funcs drm_bridge_connector_funcs = {
-	.detect = drm_bridge_connector_detect,
 	.force = drm_bridge_connector_force,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_create_state = drm_bridge_connector_create_state,
@@ -325,6 +291,40 @@ static const struct drm_connector_funcs drm_bridge_connector_funcs = {
  * Bridge Connector Helper Functions
  */
 
+static int drm_bridge_connector_detect_ctx(struct drm_connector *connector,
+					   struct drm_modeset_acquire_ctx *ctx,
+					   bool force)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *detect = bridge_connector->bridge_detect;
+	struct drm_bridge *hdmi = bridge_connector->bridge_hdmi;
+	enum drm_connector_status status;
+
+	if (detect) {
+		status = detect->funcs->detect(detect, connector);
+
+		if (hdmi)
+			drm_atomic_helper_connector_hdmi_hotplug(connector, status);
+
+		drm_bridge_connector_hpd_notify(connector, status);
+	} else {
+		switch (connector->connector_type) {
+		case DRM_MODE_CONNECTOR_DPI:
+		case DRM_MODE_CONNECTOR_LVDS:
+		case DRM_MODE_CONNECTOR_DSI:
+		case DRM_MODE_CONNECTOR_eDP:
+			status = connector_status_connected;
+			break;
+		default:
+			status = connector_status_unknown;
+			break;
+		}
+	}
+
+	return status;
+}
+
 static int drm_bridge_connector_get_modes_edid(struct drm_connector *connector,
 					       struct drm_bridge *bridge)
 {
@@ -416,6 +416,7 @@ static int drm_bridge_connector_atomic_check(struct drm_connector *connector,
 
 static const struct drm_connector_helper_funcs drm_bridge_connector_helper_funcs = {
 	.get_modes = drm_bridge_connector_get_modes,
+	.detect_ctx = drm_bridge_connector_detect_ctx,
 	.mode_valid = drm_bridge_connector_mode_valid,
 	.enable_hpd = drm_bridge_connector_enable_hpd,
 	.disable_hpd = drm_bridge_connector_disable_hpd,

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
