From: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: [PATCH v8 04/10] drm: bridge: dw_mipi_dsi: allow bridge daisy chaining
Date: Mon, 27 Apr 2020 11:19:46 +0300
Message-ID: <20200427081952.3536741-5-adrian.ratiu@collabora.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-imx@nxp.com, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org

Up until now the assumption was that the synopsis dsi bridge will
directly connect to an encoder provided by the platform driver, but
the current practice for drivers is to leave the encoder empty via
the simple encoder API and add their logic to their own drm_bridge.

Thus we need an ablility to connect the DSI bridge to another bridge
provided by the platform driver, so we extend the dw_mipi_dsi bind()
API with a new "previous bridge" arg instead of just hardcoding NULL.

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v8.
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c   | 6 ++++--
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
 include/drm/bridge/dw_mipi_dsi.h                | 5 ++++-
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 16fd87055e7b7..140ff40fa1b62 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -1456,11 +1456,13 @@ EXPORT_SYMBOL_GPL(dw_mipi_dsi_remove);
 /*
  * Bind/unbind API, used from platforms based on the component framework.
  */
-int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder)
+int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi,
+		     struct drm_encoder *encoder,
+		     struct drm_bridge *prev_bridge)
 {
 	int ret;
 
-	ret = drm_bridge_attach(encoder, &dsi->bridge, NULL, 0);
+	ret = drm_bridge_attach(encoder, &dsi->bridge, prev_bridge, 0);
 	if (ret) {
 		DRM_ERROR("Failed to initialize bridge with drm\n");
 		return ret;
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 3feff0c45b3f7..83ef43be78135 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -929,7 +929,7 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		return ret;
 	}
 
-	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder);
+	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder, NULL);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
 		return ret;
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index b0e390b3288e8..699b3531f5b36 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -14,6 +14,7 @@
 #include <drm/drm_modes.h>
 
 struct drm_display_mode;
+struct drm_bridge;
 struct drm_encoder;
 struct dw_mipi_dsi;
 struct mipi_dsi_device;
@@ -62,7 +63,9 @@ struct dw_mipi_dsi *dw_mipi_dsi_probe(struct platform_device *pdev,
 				      const struct dw_mipi_dsi_plat_data
 				      *plat_data);
 void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
-int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder);
+int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi,
+		     struct drm_encoder *encoder,
+		     struct drm_bridge *prev_bridge);
 void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
 void dw_mipi_dsi_set_slave(struct dw_mipi_dsi *dsi, struct dw_mipi_dsi *slave);
 
-- 
2.26.0
