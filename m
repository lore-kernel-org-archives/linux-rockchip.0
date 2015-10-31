From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v2 11/13] drm/panel: simple: Add support for BOE TV080WUM-NL0
Date: Sat, 31 Oct 2015 20:56:07 +0800
Message-ID: <1446296170-3702-12-git-send-email-zyw@rock-chips.com>
References: <1446296170-3702-1-git-send-email-zyw@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446296170-3702-1-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: Chris Zhong <zyw@rock-chips.com>, Thierry Reding <thierry.reding@gmail.com>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This adds support for the BOE TV080WUM-NL0 1200x1920 mipi panel to the
DRM simple panel driver.

Signed-off-by: Chris Zhong <zyw@rock-chips.com>
---

Changes in v2: None

 drivers/gpu/drm/panel/panel-simple.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index f97b73e..3610e1c 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1348,6 +1348,36 @@ static const struct panel_desc_dsi panasonic_vvx10f004b00 = {
 	.lanes = 4,
 };
 
+static const struct drm_display_mode boe_tv080wum_nl0_mode = {
+	.clock = 160000,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 120,
+	.hsync_end = 1200 + 120 + 20,
+	.htotal = 1200 + 120 + 20 + 21,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 21,
+	.vsync_end = 1920 + 21 + 3,
+	.vtotal = 1920 + 21 + 3 + 18,
+	.vrefresh = 60,
+	.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+};
+
+static const struct panel_desc_dsi boe_tv080wum_nl0 = {
+	.desc = {
+		.modes = &boe_tv080wum_nl0_mode,
+		.num_modes = 1,
+		.size = {
+			.width = 107,
+			.height = 172,
+		},
+	},
+	.flags = MIPI_DSI_MODE_VIDEO |
+		 MIPI_DSI_MODE_VIDEO_BURST |
+		 MIPI_DSI_MODE_VIDEO_SYNC_PULSE,
+	.format = MIPI_DSI_FMT_RGB888,
+	.lanes = 4,
+};
+
 static const struct of_device_id dsi_of_match[] = {
 	{
 		.compatible = "auo,b080uan01",
@@ -1362,6 +1392,9 @@ static const struct of_device_id dsi_of_match[] = {
 		.compatible = "panasonic,vvx10f004b00",
 		.data = &panasonic_vvx10f004b00
 	}, {
+		.compatible = "boe,tv080wum-nl0",
+		.data = &boe_tv080wum_nl0
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.6.2
