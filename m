From: John Keeping <john@metanate.com>
Subject: [PATCH v2 13/26] drm/rockchip: dw-mipi-dsi: allow commands in panel_disable
Date: Sat, 21 Jan 2017 16:31:15 +0000
Message-ID: <20170121163128.22240-14-john@metanate.com>
References: <20170121163128.22240-1-john@metanate.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170121163128.22240-1-john@metanate.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: Chris Zhong <zyw@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, John Keeping <john@metanate.com>
List-Id: linux-rockchip.vger.kernel.org

Panel drivers may want to sent commands during the disable function, for
example MIPI_DCS_SET_DISPLAY_OFF before the video signal ends.  In order
to send commands we need to write to registers, so pclk must be enabled.

While changing this, remove the unnecessary code after the panel
unprepare call which seems to be a workaround for a specific panel and
thus belongs in the panel driver.

Signed-off-by: John Keeping <john@metanate.com>
---
Unchanged in v2
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 7ada6d8ed143..290282e86d16 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -846,24 +846,16 @@ static void dw_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
 {
 	struct dw_mipi_dsi *dsi = encoder_to_dsi(encoder);
 
-	drm_panel_disable(dsi->panel);
-
 	if (clk_prepare_enable(dsi->pclk)) {
 		dev_err(dsi->dev, "%s: Failed to enable pclk\n", __func__);
 		return;
 	}
 
+	drm_panel_disable(dsi->panel);
+
 	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_CMD_MODE);
 	drm_panel_unprepare(dsi->panel);
-	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_VID_MODE);
 
-	/*
-	 * This is necessary to make sure the peripheral will be driven
-	 * normally when the display is enabled again later.
-	 */
-	msleep(120);
-
-	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_CMD_MODE);
 	dw_mipi_dsi_disable(dsi);
 	clk_disable_unprepare(dsi->pclk);
 }
-- 
2.11.0.197.gb556de5.dirty
