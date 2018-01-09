From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH v7 6/8] drm/bridge/synopsys: dw-hdmi: Add missing bridge detach
Date: Tue,  9 Jan 2018 15:48:51 +0100
Message-ID: <20180109144853.32536-7-thierry.escande@collabora.com>
References: <20180109144853.32536-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180109144853.32536-1-thierry.escande@collabora.com>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Archit Taneja <architt@codeaurora.org>, Daniel Vetter <daniel.vetter@intel.com>, Neil Armstrong <narmstrong@baylibre.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

We inited connector in attach(), so need a detach() to cleanup.

Also fix wrong use of dw_hdmi_remove() in bind().

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index a38db40ce990..1cc63a18b7d5 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -1967,6 +1967,13 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge)
 	return 0;
 }
 
+static void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
+{
+	struct dw_hdmi *hdmi = bridge->driver_private;
+
+	drm_connector_cleanup(&hdmi->connector);
+}
+
 static enum drm_mode_status
 dw_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
 			  const struct drm_display_mode *mode)
@@ -2023,6 +2030,7 @@ static void dw_hdmi_bridge_enable(struct drm_bridge *bridge)
 
 static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
 	.attach = dw_hdmi_bridge_attach,
+	.detach = dw_hdmi_bridge_detach,
 	.enable = dw_hdmi_bridge_enable,
 	.disable = dw_hdmi_bridge_disable,
 	.mode_set = dw_hdmi_bridge_mode_set,
@@ -2616,7 +2624,7 @@ int dw_hdmi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
 
 	ret = drm_bridge_attach(encoder, &hdmi->bridge, NULL);
 	if (ret) {
-		dw_hdmi_remove(pdev);
+		__dw_hdmi_remove(hdmi);
 		DRM_ERROR("Failed to initialize bridge with drm\n");
 		return ret;
 	}
-- 
2.14.1
