From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH 4/7] drm/rockchip/dsi: correct phy parameter setting
Date: Mon, 18 Sep 2017 17:05:36 +0800
Message-ID: <1505725539-6309-4-git-send-email-nickey.yang@rock-chips.com>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

As MIPI PHY document show, icpctrl<3..0> and lpfctrl<5..0>
should depend on frequency,so fix it.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 70 +++++++++++++++++++---------------
 1 file changed, 40 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 9265b7f..d5250e8 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -228,10 +228,10 @@
 #define VCO_IN_CAP_CON_HIGH	(0x2 << 1)
 #define REF_BIAS_CUR_SEL	BIT(0)
 
-#define CP_CURRENT_3MA		BIT(3)
+#define CP_CURRENT_SEL(val)	((val) & 0xf)
 #define CP_PROGRAM_EN		BIT(7)
 #define LPF_PROGRAM_EN		BIT(6)
-#define LPF_RESISTORS_20_KOHM	0
+#define LPF_RESISTORS_SEL(val)	((val) & 0x3f)
 
 #define HSFREQRANGE_SEL(val)	(((val) & 0x3f) << 1)
 
@@ -340,32 +340,44 @@ enum dw_mipi_dsi_mode {
 	DW_MIPI_DSI_VID_MODE,
 };
 
-struct dphy_pll_testdin_map {
+struct dphy_pll_parameter_map {
 	unsigned int max_mbps;
-	u8 testdin;
+	u8 hsfreqrange;
+	u8 icpctrl;
+	u8 lpfctrl;
 };
 
 /* The table is based on 27MHz DPHY pll reference clock. */
-static const struct dphy_pll_testdin_map dptdin_map[] = {
-	{  90, 0x00}, { 100, 0x10}, { 110, 0x20}, { 130, 0x01},
-	{ 140, 0x11}, { 150, 0x21}, { 170, 0x02}, { 180, 0x12},
-	{ 200, 0x22}, { 220, 0x03}, { 240, 0x13}, { 250, 0x23},
-	{ 270, 0x04}, { 300, 0x14}, { 330, 0x05}, { 360, 0x15},
-	{ 400, 0x25}, { 450, 0x06}, { 500, 0x16}, { 550, 0x07},
-	{ 600, 0x17}, { 650, 0x08}, { 700, 0x18}, { 750, 0x09},
-	{ 800, 0x19}, { 850, 0x29}, { 900, 0x39}, { 950, 0x0a},
-	{1000, 0x1a}, {1050, 0x2a}, {1100, 0x3a}, {1150, 0x0b},
-	{1200, 0x1b}, {1250, 0x2b}, {1300, 0x3b}, {1350, 0x0c},
-	{1400, 0x1c}, {1450, 0x2c}, {1500, 0x3c}
+static const struct dphy_pll_parameter_map dppa_map[] = {
+	{  90, 0x00, 0x1 ,0x02}, { 100, 0x10 ,0x1, 0x02},
+	{ 110, 0x20, 0x1, 0x02}, { 130, 0x01, 0x1, 0x01},
+	{ 140, 0x11, 0x1, 0x01}, { 150, 0x21, 0x1, 0x01},
+	{ 170, 0x02, 0x9, 0x02}, { 180, 0x12, 0x9, 0x02},
+	{ 200, 0x22, 0x9, 0x02}, { 220, 0x03, 0x2, 0x02},
+	{ 240, 0x13, 0x2, 0x02}, { 250, 0x23, 0x2, 0x02},
+	{ 270, 0x04, 0x9, 0x04}, { 300, 0x14, 0x9, 0x04},
+	{ 330, 0x05, 0x1, 0x01}, { 360, 0x15, 0x1, 0x01},
+	{ 400, 0x25, 0x1, 0x01}, { 450, 0x06, 0x6, 0x04},
+	{ 500, 0x16, 0x6, 0x04}, { 550, 0x07, 0x6, 0x08},
+	{ 600, 0x17, 0x6, 0x08}, { 650, 0x08, 0x6, 0x04},
+	{ 700, 0x18, 0x6, 0x04}, { 750, 0x09, 0x6, 0x04},
+	{ 800, 0x19, 0x6, 0x04}, { 850, 0x29, 0x6, 0x04},
+	{ 900, 0x39, 0x6, 0x04}, { 950, 0x0a, 0xb, 0x10},
+	{1000, 0x1a, 0xb, 0x10}, {1050, 0x2a, 0xb, 0x10},
+	{1100, 0x3a, 0xb, 0x10}, {1150, 0x0b, 0xb, 0x08},
+	{1200, 0x1b, 0xb, 0x08}, {1250, 0x2b, 0xb, 0x08},
+	{1300, 0x3b, 0xb, 0x08}, {1350, 0x0c, 0xb, 0x08},
+	{1400, 0x1c, 0xb, 0x08}, {1450, 0x2c, 0xb, 0x08},
+	{1500, 0x3c, 0xb, 0x08}
 };
 
-static int max_mbps_to_testdin(unsigned int max_mbps)
+static int max_mbps_to_parameter(unsigned int max_mbps)
 {
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++)
-		if (dptdin_map[i].max_mbps > max_mbps)
-			return dptdin_map[i].testdin;
+	for (i = 0; i < ARRAY_SIZE(dppa_map); i++)
+		if (dppa_map[i].max_mbps > max_mbps)
+			return i;
 
 	return -EINVAL;
 }
@@ -447,16 +459,16 @@ static inline unsigned int ns2ui(struct dw_mipi_dsi *dsi, int ns)
 
 static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 {
-	int ret, testdin, vco, val;
+	int ret, i, vco, val;
 
 	vco = (dsi->lane_mbps < 200) ? 0 : (dsi->lane_mbps + 100) / 200;
 
-	testdin = max_mbps_to_testdin(dsi->lane_mbps);
-	if (testdin < 0) {
+	i = max_mbps_to_parameter(dsi->lane_mbps);
+	if (i < 0) {
 		dev_err(dsi->dev,
-			"failed to get testdin for %dmbps lane clock\n",
+			"failed to get parameter for %dmbps lane clock\n",
 			dsi->lane_mbps);
-		return testdin;
+		return i;
 	}
 
 	/* Start by clearing PHY state */
@@ -475,12 +487,10 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 					 VCO_IN_CAP_CON_LOW |
 					 REF_BIAS_CUR_SEL);
 
-	dw_mipi_dsi_phy_write(dsi, 0x11, CP_CURRENT_3MA);
+	dw_mipi_dsi_phy_write(dsi, 0x11, CP_CURRENT_SEL(dppa_map[i].icpctrl));
 	dw_mipi_dsi_phy_write(dsi, 0x12, CP_PROGRAM_EN | LPF_PROGRAM_EN |
-					 LPF_RESISTORS_20_KOHM);
-
-	dw_mipi_dsi_phy_write(dsi, 0x44, HSFREQRANGE_SEL(testdin));
-
+					 LPF_RESISTORS_SEL(dppa_map[i].lpfctrl));
+	dw_mipi_dsi_phy_write(dsi, 0x44, HSFREQRANGE_SEL(dppa_map[i].hsfreqrange));
 	dw_mipi_dsi_phy_write(dsi, 0x17, INPUT_DIVIDER(dsi->input_div));
 	dw_mipi_dsi_phy_write(dsi, 0x18, LOOP_DIV_LOW_SEL(dsi->feedback_div) |
 					 LOW_PROGRAM_EN);
@@ -547,7 +557,7 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
 {
 	unsigned long mpclk, tmp;
 	unsigned int target_mbps = 1000;
-	unsigned int max_mbps = dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mbps;
+	unsigned int max_mbps = dppa_map[ARRAY_SIZE(dppa_map) - 1].max_mbps;
 	int bpp;
 	int lanes = dsi->lanes;
 	unsigned long best_freq = 0;
-- 
1.9.1
