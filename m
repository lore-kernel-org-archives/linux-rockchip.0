From: John Keeping <john@metanate.com>
Subject: [PATCH 22/27] drm/rockchip: dw-mipi-dsi: defer probe if panel is not loaded
Date: Mon, 19 Sep 2016 18:17:40 +0100
Message-ID: <20160919171747.28512-31-john@metanate.com>
References: <20160919171747.28512-1-john@metanate.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160919171747.28512-1-john@metanate.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, John Keeping <john@metanate.com>
List-Id: linux-rockchip.vger.kernel.org

This ensures that the output resolution is known before fbcon loads.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 2b26a54972da..5ecb03c24c2f 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -1186,10 +1186,17 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 
 	dsi->dsi_host.ops = &dw_mipi_dsi_host_ops;
 	dsi->dsi_host.dev = dev;
-	return mipi_dsi_host_register(&dsi->dsi_host);
+	ret = mipi_dsi_host_register(&dsi->dsi_host);
+	if (!ret && !dsi->panel) {
+		mipi_dsi_host_unregister(&dsi->dsi_host);
+		drm_encoder_cleanup(&dsi->encoder);
+		drm_connector_cleanup(&dsi->connector);
+		ret = -EPROBE_DEFER;
+	}
 
 err_pllref:
-	clk_disable_unprepare(dsi->pllref_clk);
+	if (ret)
+		clk_disable_unprepare(dsi->pllref_clk);
 	return ret;
 }
 
-- 
2.10.0.278.g4f427b1.dirty
