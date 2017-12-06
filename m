From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v5 1/3] drm/bridge/synopsys: dsi: stop clobbering drvdata
Date: Wed,  6 Dec 2017 16:33:24 +0800
Message-ID: <1512549206-25638-2-git-send-email-nickey.yang@rock-chips.com>
References: <1512549206-25638-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1512549206-25638-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com, seanpaul@chromium.org, briannorris@chromium.org, mka@chromium.org, hoegsberg@gmail.com, architt@codeaurora.org, philippe.cornu@st.com, yannick.fertre@st.com, hl@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Brian Norris <briannorris@chromium.org>

Bridge drivers/helpers shouldn't be clobbering the drvdata, since a
parent driver might need to own this. Instead, let's return our
'dw_mipi_dsi' object and have callers pass that back to us for removal.

Signed-off-by: Brian Norris <briannorris@chromium.org>
Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Link:https://patchwork.kernel.org/patch/10078493/

---
Changes

v4:
- Add From tag,update subject line
- keep patch "drm/stm: dsi: Adjust dw_mipi_dsi_probe and remove"
  in this piece together.

v5:
- remove Review & Ack tag(just bridge part v1)
- fix stm part remove() directly referencing the static
  dw_mipi_dsi_stm_plat_data struct.

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 36 ++++++++++-----------------
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 10 +++++---
 include/drm/bridge/dw_mipi_dsi.h              | 17 ++++++++-----
 3 files changed, 30 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index d9cca4f..c39c7dc 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -922,8 +922,6 @@ static int dw_mipi_dsi_bridge_attach(struct drm_bridge *bridge)
 	dsi->bridge.of_node = pdev->dev.of_node;
 #endif
 
-	dev_set_drvdata(dev, dsi);
-
 	return dsi;
 }
 
@@ -935,23 +933,16 @@ static void __dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
 /*
  * Probe/remove API, used from platforms based on the DRM bridge API.
  */
-int dw_mipi_dsi_probe(struct platform_device *pdev,
-		      const struct dw_mipi_dsi_plat_data *plat_data)
+struct dw_mipi_dsi *
+dw_mipi_dsi_probe(struct platform_device *pdev,
+		  const struct dw_mipi_dsi_plat_data *plat_data)
 {
-	struct dw_mipi_dsi *dsi;
-
-	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
-	if (IS_ERR(dsi))
-		return PTR_ERR(dsi);
-
-	return 0;
+	return __dw_mipi_dsi_probe(pdev, plat_data);
 }
 EXPORT_SYMBOL_GPL(dw_mipi_dsi_probe);
 
-void dw_mipi_dsi_remove(struct platform_device *pdev)
+void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
 {
-	struct dw_mipi_dsi *dsi = platform_get_drvdata(pdev);
-
 	mipi_dsi_host_unregister(&dsi->dsi_host);
 
 	__dw_mipi_dsi_remove(dsi);
@@ -961,31 +952,30 @@ void dw_mipi_dsi_remove(struct platform_device *pdev)
 /*
  * Bind/unbind API, used from platforms based on the component framework.
  */
-int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
-		     const struct dw_mipi_dsi_plat_data *plat_data)
+struct dw_mipi_dsi *
+dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
+		 const struct dw_mipi_dsi_plat_data *plat_data)
 {
 	struct dw_mipi_dsi *dsi;
 	int ret;
 
 	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
 	if (IS_ERR(dsi))
-		return PTR_ERR(dsi);
+		return dsi;
 
 	ret = drm_bridge_attach(encoder, &dsi->bridge, NULL);
 	if (ret) {
-		dw_mipi_dsi_remove(pdev);
+		dw_mipi_dsi_remove(dsi);
 		DRM_ERROR("Failed to initialize bridge with drm\n");
-		return ret;
+		return ERR_PTR(ret);
 	}
 
-	return 0;
+	return dsi;
 }
 EXPORT_SYMBOL_GPL(dw_mipi_dsi_bind);
 
-void dw_mipi_dsi_unbind(struct device *dev)
+void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi)
 {
-	struct dw_mipi_dsi *dsi = dev_get_drvdata(dev);
-
 	__dw_mipi_dsi_remove(dsi);
 }
 EXPORT_SYMBOL_GPL(dw_mipi_dsi_unbind);
diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index e5b6310..05787fa 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -66,6 +66,7 @@ enum dsi_color {
 struct dw_mipi_dsi_stm {
 	void __iomem *base;
 	struct clk *pllref_clk;
+	struct dw_mipi_dsi *dmd;
 };
 
 static inline void dsi_write(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 val)
@@ -318,10 +319,11 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 	dw_mipi_dsi_stm_plat_data.base = dsi->base;
 	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
 
-	ret = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
-	if (ret) {
+	dsi->dmd = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
+	if (IS_ERR(dsi->dmd)) {
 		DRM_ERROR("Failed to initialize mipi dsi host\n");
 		clk_disable_unprepare(dsi->pllref_clk);
+		return PTR_ERR(dsi->dmd);
 	}
 
 	return ret;
@@ -329,10 +331,10 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 
 static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
 {
-	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
+	struct dw_mipi_dsi_stm *dsi = platform_get_drvdata(pdev);
 
 	clk_disable_unprepare(dsi->pllref_clk);
-	dw_mipi_dsi_remove(pdev);
+	dw_mipi_dsi_remove(dsi->dmd);
 
 	return 0;
 }
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index 9b30fec..d9c6d54 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -10,6 +10,8 @@
 #ifndef __DW_MIPI_DSI__
 #define __DW_MIPI_DSI__
 
+struct dw_mipi_dsi;
+
 struct dw_mipi_dsi_phy_ops {
 	int (*init)(void *priv_data);
 	int (*get_lane_mbps)(void *priv_data, struct drm_display_mode *mode,
@@ -29,11 +31,14 @@ struct dw_mipi_dsi_plat_data {
 	void *priv_data;
 };
 
-int dw_mipi_dsi_probe(struct platform_device *pdev,
-		      const struct dw_mipi_dsi_plat_data *plat_data);
-void dw_mipi_dsi_remove(struct platform_device *pdev);
-int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
-		     const struct dw_mipi_dsi_plat_data *plat_data);
-void dw_mipi_dsi_unbind(struct device *dev);
+struct dw_mipi_dsi *dw_mipi_dsi_probe(struct platform_device *pdev,
+				      const struct dw_mipi_dsi_plat_data
+				      *plat_data);
+void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
+struct dw_mipi_dsi *dw_mipi_dsi_bind(struct platform_device *pdev,
+				     struct drm_encoder *encoder,
+				     const struct dw_mipi_dsi_plat_data
+				     *plat_data);
+void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
 
 #endif /* __DW_MIPI_DSI__ */
-- 
1.9.1
