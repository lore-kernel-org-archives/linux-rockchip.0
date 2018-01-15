From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH 23/40] drm/bridge: analogix_dp: Fix AUX_PD bit for Rockchip
Date: Mon, 15 Jan 2018 18:15:57 +0100
Message-ID: <20180115171614.14474-24-thierry.escande@collabora.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-1-thierry.escande@collabora.com>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>
Cc: Tomasz Figa <tfiga@chromium.org>, Haixia Shi <hshi@chromium.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>, zain wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

From: zain wang <wzz@rock-chips.com>

There are some different bits between Rockchip and Exynos in register
"AUX_PD". This patch fixes the incorrect operations about it.

Cc: Douglas Anderson <dianders@chromium.org>
Signed-off-by: zain wang <wzz@rock-chips.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 117 ++++++++++++----------
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h |   2 +
 2 files changed, 65 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index bb72f8b0e603..dee1ba109b5f 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -248,76 +248,85 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 {
 	u32 reg;
 	u32 phy_pd_addr = ANALOGIX_DP_PHY_PD;
+	u32 mask;
 
 	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
 		phy_pd_addr = ANALOGIX_DP_PD;
 
 	switch (block) {
 	case AUX_BLOCK:
-		if (enable) {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg |= AUX_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		} else {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg &= ~AUX_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		}
+		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+			mask = RK_AUX_PD;
+		else
+			mask = AUX_PD;
+
+		reg = readl(dp->reg_base + phy_pd_addr);
+		if (enable)
+			reg |= mask;
+		else
+			reg &= ~mask;
+		writel(reg, dp->reg_base + phy_pd_addr);
 		break;
 	case CH0_BLOCK:
-		if (enable) {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg |= CH0_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		} else {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg &= ~CH0_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		}
+		mask = CH0_PD;
+		reg = readl(dp->reg_base + phy_pd_addr);
+
+		if (enable)
+			reg |= mask;
+		else
+			reg &= ~mask;
+		writel(reg, dp->reg_base + phy_pd_addr);
 		break;
 	case CH1_BLOCK:
-		if (enable) {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg |= CH1_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		} else {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg &= ~CH1_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		}
+		mask = CH1_PD;
+		reg = readl(dp->reg_base + phy_pd_addr);
+
+		if (enable)
+			reg |= mask;
+		else
+			reg &= ~mask;
+		writel(reg, dp->reg_base + phy_pd_addr);
 		break;
 	case CH2_BLOCK:
-		if (enable) {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg |= CH2_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		} else {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg &= ~CH2_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		}
+		mask = CH2_PD;
+		reg = readl(dp->reg_base + phy_pd_addr);
+
+		if (enable)
+			reg |= mask;
+		else
+			reg &= ~mask;
+		writel(reg, dp->reg_base + phy_pd_addr);
 		break;
 	case CH3_BLOCK:
-		if (enable) {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg |= CH3_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		} else {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg &= ~CH3_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		}
+		mask = CH3_PD;
+		reg = readl(dp->reg_base + phy_pd_addr);
+
+		if (enable)
+			reg |= mask;
+		else
+			reg &= ~mask;
+		writel(reg, dp->reg_base + phy_pd_addr);
 		break;
 	case ANALOG_TOTAL:
-		if (enable) {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg |= DP_PHY_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		} else {
-			reg = readl(dp->reg_base + phy_pd_addr);
-			reg &= ~DP_PHY_PD;
-			writel(reg, dp->reg_base + phy_pd_addr);
-		}
+		/*
+		 * There is no bit named DP_PHY_PD, so We used DP_INC_BG
+		 * to power off everything instead of DP_PHY_PD in
+		 * Rockchip
+		 */
+		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+			mask = DP_INC_BG;
+		else
+			mask = DP_PHY_PD;
+
+		reg = readl(dp->reg_base + phy_pd_addr);
+		if (enable)
+			reg |= mask;
+		else
+			reg &= ~mask;
+
+		writel(reg, dp->reg_base + phy_pd_addr);
+		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+			usleep_range(10, 15);
 		break;
 	case POWER_ALL:
 		if (enable) {
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
index 9602668669f4..b633a4a5082a 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
@@ -345,7 +345,9 @@
 #define DP_INC_BG				(0x1 << 7)
 #define DP_EXP_BG				(0x1 << 6)
 #define DP_PHY_PD				(0x1 << 5)
+#define RK_AUX_PD				(0x1 << 5)
 #define AUX_PD					(0x1 << 4)
+#define RK_PLL_PD				(0x1 << 4)
 #define CH3_PD					(0x1 << 3)
 #define CH2_PD					(0x1 << 2)
 #define CH1_PD					(0x1 << 1)
-- 
2.14.1
