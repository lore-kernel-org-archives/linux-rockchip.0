From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH 1/7] drm/rockchip/dsi: correct Feedback divider setting
Date: Mon, 18 Sep 2017 17:05:33 +0800
Message-ID: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This patch correct Feedback divider setting:
1、Set Feedback divider [8:5] when HIGH_PROGRAM_EN
2、Due to the use of a "by 2 pre-scaler," the range of the
feedback multiplication Feedback divider is limited to even
division numbers, and Feedback divider must be greater than
12, less than 1000.
3、Make the previously configured Feedback divider(LSB)
factors effective

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 83 ++++++++++++++++++++++------------
 1 file changed, 54 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 9a20b9d..52698b7 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -228,7 +228,7 @@
 #define LOW_PROGRAM_EN		0
 #define HIGH_PROGRAM_EN		BIT(7)
 #define LOOP_DIV_LOW_SEL(val)	(((val) - 1) & 0x1f)
-#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0x1f)
+#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0xf)
 #define PLL_LOOP_DIV_EN		BIT(5)
 #define PLL_INPUT_DIV_EN	BIT(4)
 
@@ -461,6 +461,7 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 	dw_mipi_dsi_phy_write(dsi, 0x17, INPUT_DIVIDER(dsi->input_div));
 	dw_mipi_dsi_phy_write(dsi, 0x18, LOOP_DIV_LOW_SEL(dsi->feedback_div) |
 					 LOW_PROGRAM_EN);
+	dw_mipi_dsi_phy_write(dsi, 0x19, PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
 	dw_mipi_dsi_phy_write(dsi, 0x18, LOOP_DIV_HIGH_SEL(dsi->feedback_div) |
 					 HIGH_PROGRAM_EN);
 	dw_mipi_dsi_phy_write(dsi, 0x19, PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
@@ -521,11 +522,16 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
 				    struct drm_display_mode *mode)
 {
-	unsigned int i, pre;
-	unsigned long mpclk, pllref, tmp;
-	unsigned int m = 1, n = 1, target_mbps = 1000;
+	unsigned long mpclk, tmp;
+	unsigned int target_mbps = 1000;
 	unsigned int max_mbps = dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mbps;
 	int bpp;
+	unsigned long best_freq = 0;
+	unsigned long fvco_min, fvco_max, fin ,fout;
+	unsigned int min_prediv, max_prediv;
+	unsigned int _prediv, uninitialized_var(best_prediv);
+	unsigned long _fbdiv, uninitialized_var(best_fbdiv);
+	unsigned long min_delta = UINT_MAX;
 
 	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
 	if (bpp < 0) {
@@ -544,34 +550,53 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
 			dev_err(dsi->dev, "DPHY clock frequency is out of range\n");
 	}
 
-	pllref = DIV_ROUND_UP(clk_get_rate(dsi->pllref_clk), USEC_PER_SEC);
-	tmp = pllref;
-
-	/*
-	 * The limits on the PLL divisor are:
-	 *
-	 *	5MHz <= (pllref / n) <= 40MHz
-	 *
-	 * we walk over these values in descreasing order so that if we hit
-	 * an exact match for target_mbps it is more likely that "m" will be
-	 * even.
-	 *
-	 * TODO: ensure that "m" is even after this loop.
-	 */
-	for (i = pllref / 5; i > (pllref / 40); i--) {
-		pre = pllref / i;
-		if ((tmp > (target_mbps % pre)) && (target_mbps / pre < 512)) {
-			tmp = target_mbps % pre;
-			n = i;
-			m = target_mbps / pre;
+	fin = clk_get_rate(dsi->pllref_clk);
+	fout = target_mbps * USEC_PER_SEC;
+
+	/* constraint: 5Mhz < Fref / N < 40MHz */
+	min_prediv = DIV_ROUND_UP(fin, 40 * USEC_PER_SEC);
+	max_prediv = fin / (5 * USEC_PER_SEC);
+
+	/* constraint: 80MHz < Fvco < 1500Mhz */
+	fvco_min = 80 * USEC_PER_SEC;
+	fvco_max = 1500 * USEC_PER_SEC;
+
+	for (_prediv = min_prediv; _prediv <= max_prediv; _prediv++) {
+		u32 delta;
+		/* Fvco = Fref * M / N */
+		tmp = fout * _prediv;
+		do_div(tmp, fin);
+		_fbdiv = tmp;
+		/*
+		 * Due to the use of a "by 2 pre-scaler," the range of the
+		 * feedback multiplication value M is limited to even division
+		 * numbers, and m must be greater than 12, less than 1000.
+		 */
+		if (_fbdiv < 12 || _fbdiv > 1000)
+			continue;
+
+		if (_fbdiv % 2)
+			++_fbdiv;
+
+		tmp = (u64)_fbdiv * fin;
+		do_div(tmp, _prediv);
+		if (tmp < fvco_min || tmp > fvco_max)
+			continue;
+
+		delta = abs(fout - tmp);
+		if (delta < min_delta) {
+			best_prediv = _prediv;
+			best_fbdiv = _fbdiv;
+			min_delta = delta;
+			best_freq = tmp;
 		}
-		if (tmp == 0)
-			break;
 	}
 
-	dsi->lane_mbps = pllref / n * m;
-	dsi->input_div = n;
-	dsi->feedback_div = m;
+	if (best_freq) {
+		dsi->lane_mbps = DIV_ROUND_UP(best_freq, USEC_PER_SEC);
+		dsi->input_div = best_prediv;
+		dsi->feedback_div = best_fbdiv;
+	}
 
 	return 0;
 }
-- 
1.9.1
