From: Romain Perier <romain.perier@collabora.com>
Subject: [PATCH] drm: dw-hdmi: Implement the mode_fixup drm helper
Date: Fri,  7 Apr 2017 14:17:43 +0200
Message-ID: <20170407121743.4142-1-romain.perier@collabora.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Romain Perier <romain.perier@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

This helper is supposed to validate or reject the modeline before it
applied by the mode setting. Currently this function has been dropped,
it was previously set to a dummy function that always returned true. For
both cases, this means that userspace can ask for a bad modeline that
will be always accepted.

On some platforms, like Rockchip, the drm dw_hdmi-rockchip variant driver
already implements the atomic_check drm helper, so mode_fixup cannot be
handled and implemented there (as drm_atomic_helper relies on either
atomic_check or mode_fixup).

This commit implements this helper. It only checks that this mode is
correct from the connector point of view

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 drivers/gpu/drm/bridge/dw-hdmi.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
index 22211ff..3bd0807 100644
--- a/drivers/gpu/drm/bridge/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/dw-hdmi.c
@@ -1740,6 +1740,21 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge)
 	return 0;
 }
 
+
+static bool dw_hdmi_bridge_mode_fixup(struct drm_bridge *bridge,
+				      const struct drm_display_mode *orig_mode,
+				      struct drm_display_mode *mode)
+{
+	struct dw_hdmi *hdmi = bridge->driver_private;
+	struct drm_connector *connector = &hdmi->connector;
+	enum drm_mode_status status;
+
+	status = dw_hdmi_connector_mode_valid(connector, mode);
+	if (status != MODE_OK)
+		return false;
+	return true;
+}
+
 static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
 				    struct drm_display_mode *orig_mode,
 				    struct drm_display_mode *mode)
@@ -1781,6 +1796,7 @@ static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
 	.enable = dw_hdmi_bridge_enable,
 	.disable = dw_hdmi_bridge_disable,
 	.mode_set = dw_hdmi_bridge_mode_set,
+	.mode_fixup = dw_hdmi_bridge_mode_fixup,
 };
 
 static irqreturn_t dw_hdmi_i2c_irq(struct dw_hdmi *hdmi)
-- 
2.9.3
