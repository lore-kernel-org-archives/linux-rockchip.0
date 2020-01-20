From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 4/5] drm/rockchip: lvds: Fix component unbind
Date: Mon, 20 Jan 2020 14:06:01 -0300
Message-ID: <20200120170602.3832-5-ezequiel@collabora.com>
References: <20200120170602.3832-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200120170602.3832-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Remove the explicit encoder disable: it's
already part of the CRTC shutdown, in both
atomic and legacy API cases.

Also, encoder and connector cleanup is performed
by the DRM .destroy hooks, for encoder and connector
respectively. It can be removed as well.

Finally, move the panel detach call to the connector
.destroy hook, where it belongs.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index f25a36743cbd..154f14a317d7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -100,9 +100,18 @@ static inline int rockchip_lvds_name_to_output(const char *s)
 	return -EINVAL;
 }
 
+static void
+rockchip_lvds_connector_destroy(struct drm_connector *connector)
+{
+	struct rockchip_lvds *lvds = connector_to_lvds(connector);
+
+	drm_panel_detach(lvds->panel);
+	drm_connector_cleanup(connector);
+}
+
 static const struct drm_connector_funcs rockchip_lvds_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
+	.destroy = rockchip_lvds_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
@@ -675,16 +684,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 static void rockchip_lvds_unbind(struct device *dev, struct device *master,
 				void *data)
 {
-	struct rockchip_lvds *lvds = dev_get_drvdata(dev);
-	const struct drm_encoder_helper_funcs *encoder_funcs;
-
-	encoder_funcs = lvds->soc_data->helper_funcs;
-	encoder_funcs->disable(&lvds->encoder);
-	if (lvds->panel)
-		drm_panel_detach(lvds->panel);
 	pm_runtime_disable(dev);
-	drm_connector_cleanup(&lvds->connector);
-	drm_encoder_cleanup(&lvds->encoder);
 }
 
 static const struct component_ops rockchip_lvds_component_ops = {
-- 
2.25.0
