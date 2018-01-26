From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 23/43] drm/bridge: analogix_dp: Fix AUX_PD bit for Rockchip
Date: Fri, 26 Jan 2018 14:16:50 +0100
Message-ID: <20180126131710.7622-24-thierry.escande@collabora.com>
References: <20180126131710.7622-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180126131710.7622-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Transfert-Encoding: 8bit
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Inki Dae <inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide-5wv7dgnIgG8@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Haixia Shi <hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

There are some different bits between Rockchip and Exynos in register
"AUX_PD". This patch fixes the incorrect operations about it.

Cc: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
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
