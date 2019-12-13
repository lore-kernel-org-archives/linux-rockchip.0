From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 07/12] drm/rockchip: lvds: Helpers should return decent values
Date: Fri, 13 Dec 2019 19:10:46 +0100
Message-ID: <20191213181051.25983-8-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Return errors instead of returning void from internal helpers. When
these helpers are called, check the returned value and print an error
message in this case.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 31 ++++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 0d2902b0d990..6365a2c883c3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -215,8 +215,8 @@ struct drm_connector_helper_funcs rockchip_lvds_connector_helper_funcs = {
 	.get_modes = rockchip_lvds_connector_get_modes,
 };
 
-static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
-				   struct drm_display_mode *mode)
+static int rk3288_lvds_grf_config(struct drm_encoder *encoder,
+				  struct drm_display_mode *mode)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 	u8 pin_hsync = (mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
@@ -241,10 +241,10 @@ static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
 	val |= (pin_dclk << 8) | (pin_hsync << 9);
 	val |= (0xffff << 16);
 	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON7, val);
-	if (ret != 0) {
+	if (ret)
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
-		return;
-	}
+
+	return ret;
 }
 
 static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
@@ -288,13 +288,28 @@ static void rk3288_lvds_encoder_enable(struct drm_encoder *encoder)
 	int ret;
 
 	drm_panel_prepare(lvds->panel);
+
 	ret = rk3288_lvds_poweron(lvds);
 	if (ret < 0) {
-		DRM_DEV_ERROR(lvds->dev, "failed to power on lvds: %d\n", ret);
+		DRM_DEV_ERROR(lvds->dev, "failed to power on LVDS: %d\n", ret);
 		drm_panel_unprepare(lvds->panel);
+		return;
 	}
-	rk3288_lvds_grf_config(encoder, mode);
-	rk3288_lvds_set_vop_source(lvds, encoder);
+
+	ret = rk3288_lvds_grf_config(encoder, mode);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to configure LVDS: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	ret = rk3288_lvds_set_vop_source(lvds, encoder);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to set VOP source: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
 	drm_panel_enable(lvds->panel);
 }
 
-- 
2.20.1
