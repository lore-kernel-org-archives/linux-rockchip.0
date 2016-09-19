From: John Keeping <john@metanate.com>
Subject: [PATCH 04/26] drm/rockchip: dw-mipi-dsi: rename commit hook to enable
Date: Mon, 19 Sep 2016 18:17:14 +0100
Message-ID: <20160919171747.28512-5-john@metanate.com>
References: <20160919171747.28512-1-john@metanate.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160919171747.28512-1-john@metanate.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, John Keeping <john@metanate.com>
List-Id: linux-rockchip.vger.kernel.org

Rockchip DRM is fully atomic and commit is deprecated for atomic
drivers.  No changed are needed beyond renaming the function.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 5925a185ed76..fac2429b9d6d 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -852,7 +852,7 @@ static void dw_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
 	clk_disable_unprepare(dsi->pclk);
 }
 
-static void dw_mipi_dsi_encoder_commit(struct drm_encoder *encoder)
+static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 {
 	struct dw_mipi_dsi *dsi = encoder_to_dsi(encoder);
 	int mux = drm_of_encoder_active_endpoint_id(dsi->dev->of_node, encoder);
@@ -924,7 +924,7 @@ dw_mipi_dsi_encoder_atomic_check(struct drm_encoder *encoder,
 
 static struct drm_encoder_helper_funcs
 dw_mipi_dsi_encoder_helper_funcs = {
-	.commit = dw_mipi_dsi_encoder_commit,
+	.enable = dw_mipi_dsi_encoder_enable,
 	.mode_set = dw_mipi_dsi_encoder_mode_set,
 	.disable = dw_mipi_dsi_encoder_disable,
 	.atomic_check = dw_mipi_dsi_encoder_atomic_check,
-- 
2.10.0.278.g4f427b1.dirty
