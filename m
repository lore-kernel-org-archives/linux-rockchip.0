From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 1/7] drm/rockchip: dw_hdmi: update dw_hdmi_rockchip_dt_ids
Date: Sat, 30 Sep 2017 09:43:26 +0800
Message-ID: <1506735806-148281-1-git-send-email-algea.cao@rock-chips.com>
References: <1506735713-147081-0>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506735713-147081-0>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add rk3328-dw-hdmi to support rk3328.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 .../devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt       | 1 +
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c                         | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
index adc94fc..8b9649c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
@@ -14,6 +14,7 @@ Required properties:
 - compatible: should be one of the following:
 		"rockchip,rk3288-dw-hdmi"
 		"rockchip,rk3399-dw-hdmi"
+		"rockchip,rk3328-dw-hdmi"
 - reg: See dw_hdmi.txt.
 - reg-io-width: See dw_hdmi.txt. Shall be 4.
 - interrupts: HDMI interrupt number
diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index ccd5d59..719452d 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -313,6 +313,9 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 	.lcdsel_lit = HIWORD_UPDATE(RK3399_HDMI_LCDC_SEL, RK3399_HDMI_LCDC_SEL),
 };
 
+static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
+	.mode_valid = dw_hdmi_rockchip_mode_valid,
+};
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
@@ -328,6 +331,9 @@ static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
 	{ .compatible = "rockchip,rk3399-dw-hdmi",
 	  .data = &rk3399_hdmi_drv_data
 	},
+	{ .compatible = "rockchip,rk3328-dw-hdmi",
+	  .data = &rk3328_hdmi_drv_data
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, dw_hdmi_rockchip_dt_ids);
-- 
2.7.4
