From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 13/15] drm/rockchip: dw-hdmi: limit tmds to 340mhz on
 rk3228/rk3328
Date: Mon, 6 Jan 2020 20:50:00 +0000
Message-ID: <HE1PR06MB4011783219A9A6FCE76DA16FAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kishon Vijay Abraham I <kishon@ti.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Zheng Yang <zhengyang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

RK3228/RK3328 does not provide a stable hdmi signal at TMDS rates
above 371.25MHz (340MHz pixel clock).

Limit the pixel clock rate to 340MHz to provide a stable signal.
Also limit the pixel clock to the display reported max tmds clock.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 22 +++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 45fcdce3f27f..66c14df4a680 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -237,6 +237,24 @@ dw_hdmi_rockchip_mode_valid(struct drm_connector *connector,
 	return (valid) ? MODE_OK : MODE_BAD;
 }
 
+static enum drm_mode_status
+dw_hdmi_rk3228_mode_valid(struct drm_connector *connector,
+			  const struct drm_display_mode *mode)
+{
+	struct drm_display_info *info = &connector->display_info;
+	int max_tmds_clock = max(info->max_tmds_clock, 165000);
+	int clock = mode->clock;
+
+	if (connector->ycbcr_420_allowed && drm_mode_is_420(info, mode) &&
+	    (info->color_formats & DRM_COLOR_FORMAT_YCRCB420))
+		clock /= 2;
+
+	if (clock > max_tmds_clock || clock > 340000)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
 static const struct drm_encoder_funcs dw_hdmi_rockchip_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
@@ -424,7 +442,7 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
+	.mode_valid = dw_hdmi_rk3228_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -461,7 +479,7 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
+	.mode_valid = dw_hdmi_rk3228_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
-- 
2.17.1
