Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5060FF8850
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cCO4Wr71OBKqc85blxfUTX7Q+gh5N/1Zscf4iITcrOc=; b=ygPIypB5tRJGXF
	x+Y1L8gn0y9oEybdgbodRJ8Vx+fhFal1SihNOcGsThQ8yf4xwUgZVEgcm7RRBYwGxGIuui5evi6X5
	q2kNW8A6hGKEHe5EgpE5oHMqV5ShRn/DlK9J5rvFcFD1V27DHmNHhzGAU5o84P+j++gftvbNejwk2
	xBiUyzEG7gF3fi2z01YbbgAtcLzUeCWJ3dBbPg/LAr6jjQjCkmM1DOEFWkCi60/JitzdDLuyIG+ko
	0v71ObH3dnp0sz+FcxYY9bafICspfd2D0Iy9A5uLupFf5zSOwtWaURDUmoGDHnjtsftm2bVTQSiGm
	4w+TE1ahDMQgHUCgtmAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHAHv-0000000FzLj-3hoa;
	Mon, 27 Apr 2026 00:57:27 +0000
Received: from mail-m1092.netease.com ([154.81.10.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHAHs-0000000FzKs-12qu;
	Mon, 27 Apr 2026 00:57:26 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3c337d92c;
	Mon, 27 Apr 2026 08:57:17 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3] phy: rockchip: naneng-combphy: Consolidate SSC configuration
Date: Mon, 27 Apr 2026 08:57:13 +0800
Message-Id: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9dcc70caff09cckunm2640b187175e0b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSB5MVh5KGB1PHh0YQhhCT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TY2w+5MRvym6LvgEm7VnCfP9Bk+776dBX3iEN24Y5K18HGcmaNIbfPCRQrlEpm+FZfdzrVHH7h32NuybNc+o7NeylQ5LAppBvklwhzp79p/zG5XpFOivQT6cpwZYpwNUJpQ9qlPzqCho7SVjnPF0MJZxLeGsWW8zgw8NGznh/xo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=velWxyTzlXxI3TLbfC3EvlWnaZvgpLe2Fdo+RRJ8qyk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_175724_863994_AE99A291 
X-CRM114-Status: GOOD (  14.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The PCIe SSC configuration for the RK3588 and RK3576 SoCs required
additional tuning which is missing. When adding these same SSC
configurations for both of these two SoCs, as well as upcoming
platforms, it's obvious the SSC setup code was largely duplicated
across the platform-specific configuration functions. This becomes
harder to maintain as more platforms are added.

So extract the common SSC logic into a shared helper function,
rk_combphy_common_cfg_ssc(). This cleans up the per-platform drivers
and centralizes the standard configuration as possible.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 .../rockchip/phy-rockchip-naneng-combphy.c    | 173 ++++++++----------
 1 file changed, 73 insertions(+), 100 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index b60d6bf3f33c..2b0f152f5470 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -121,6 +121,7 @@
 #define RK3568_PHYREG32_SSC_OFFSET_500PPM	1
 
 #define RK3568_PHYREG33				0x80
+#define RK3568_PHYREG33_PLL_SSC_CTRL		BIT(5)
 #define RK3568_PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
 #define RK3568_PHYREG33_PLL_KVCO_SHIFT		2
 #define RK3568_PHYREG33_PLL_KVCO_VALUE		2
@@ -446,6 +447,74 @@ static int rockchip_combphy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static void rk_combphy_common_cfg_ssc(struct rockchip_combphy_priv *priv, unsigned long rate)
+{
+	struct device_node *np = priv->dev->of_node;
+	u32 val;
+
+	if (!priv->enable_ssc)
+		return;
+
+	/* Set SSC downward spread spectrum for PCIe and USB3 */
+	if (priv->type == PHY_TYPE_PCIE || priv->type == PHY_TYPE_USB3) {
+		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
+		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
+	}
+
+	/* Set SSC downward spread spectrum +500ppm for SATA in 100MHz */
+	if (priv->type == PHY_TYPE_SATA && rate == REF_CLOCK_100MHz) {
+		val = FIELD_PREP(RK3568_PHYREG32_SSC_DIR_MASK,
+				 RK3568_PHYREG32_SSC_DOWNWARD);
+		val |= FIELD_PREP(RK3568_PHYREG32_SSC_OFFSET_MASK,
+				  RK3568_PHYREG32_SSC_OFFSET_500PPM);
+		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
+					 RK3568_PHYREG32);
+	}
+
+	/* Enable SSC */
+	val = readl(priv->mmio + RK3568_PHYREG8);
+	val |= RK3568_PHYREG8_SSC_EN;
+	writel(val, priv->mmio + RK3568_PHYREG8);
+
+	/* Some SoCs need tuning PCIe SSC instead of default configuration in 24MHz */
+	if (!of_device_is_compatible(np, "rockchip,rk3588-naneng-combphy") &&
+	    !of_device_is_compatible(np, "rockchip,rk3576-naneng-combphy"))
+		return;
+
+	/* PLL control SSC module period should be set if need tuning */
+	val = readl(priv->mmio + RK3568_PHYREG33);
+	val |= RK3568_PHYREG33_PLL_SSC_CTRL;
+	writel(val, priv->mmio + RK3568_PHYREG33);
+
+	if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
+		/* Set PLL loop divider */
+		writel(0x00, priv->mmio + RK3576_PHYREG17);
+		writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
+
+		/* Set up rx_pck invert and rx msb to disable */
+		writel(0x00, priv->mmio + RK3588_PHYREG27);
+
+		/*
+		 * Set up SU adjust signal:
+		 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+		 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
+		 * su_trim[23:16], CKRCV adjust
+		 * su_trim[31:24], CKDRV adjust
+		 */
+		writel(0x90, priv->mmio + RK3568_PHYREG11);
+		writel(0x02, priv->mmio + RK3568_PHYREG12);
+		writel(0x08, priv->mmio + RK3568_PHYREG13);
+		writel(0x57, priv->mmio + RK3568_PHYREG14);
+		writel(0x40, priv->mmio + RK3568_PHYREG15);
+
+		writel(RK3568_PHYREG16_SSC_CNT_VALUE, priv->mmio + RK3568_PHYREG16);
+
+		val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
+				 RK3576_PHYREG33_PLL_KVCO_VALUE);
+		writel(val, priv->mmio + RK3568_PHYREG33);
+	}
+}
+
 static int rk3528_combphy_cfg(struct rockchip_combphy_priv *priv)
 {
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
@@ -600,21 +669,12 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
 
 	switch (priv->type) {
 	case PHY_TYPE_PCIE:
-		/* Set SSC downward spread spectrum */
-		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
-		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
-
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
 		break;
 	case PHY_TYPE_USB3:
-		/* Set SSC downward spread spectrum */
-		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
-		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
-					 RK3568_PHYREG32);
-
 		/* Enable adaptive CTLE for USB3.0 Rx */
 		rockchip_combphy_updatel(priv, RK3568_PHYREG15_CTLE_EN,
 					 RK3568_PHYREG15_CTLE_EN, RK3568_PHYREG15);
@@ -706,11 +766,7 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
 		}
 	}
 
-	if (priv->enable_ssc) {
-		val = readl(priv->mmio + RK3568_PHYREG8);
-		val |= RK3568_PHYREG8_SSC_EN;
-		writel(val, priv->mmio + RK3568_PHYREG8);
-	}
+	rk_combphy_common_cfg_ssc(priv, rate);
 
 	return 0;
 }
@@ -755,11 +811,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 
 	switch (priv->type) {
 	case PHY_TYPE_PCIE:
-		/* Set SSC downward spread spectrum. */
-		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
-
-		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
-
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
@@ -767,10 +818,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 		break;
 
 	case PHY_TYPE_USB3:
-		/* Set SSC downward spread spectrum. */
-		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT,
-		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
-
 		/* Enable adaptive CTLE for USB3.0 Rx. */
 		val = readl(priv->mmio + RK3568_PHYREG15);
 		val |= RK3568_PHYREG15_CTLE_EN;
@@ -880,13 +927,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 
 			writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
 			writel(RK3568_PHYREG11_SU_TRIM_0_7, priv->mmio + RK3568_PHYREG11);
-		} else if (priv->type == PHY_TYPE_SATA) {
-			/* downward spread spectrum +500ppm */
-			val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
-			val |= RK3568_PHYREG32_SSC_OFFSET_500PPM <<
-			       RK3568_PHYREG32_SSC_OFFSET_SHIFT;
-			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
-						 RK3568_PHYREG32);
 		}
 		break;
 
@@ -909,11 +949,7 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 		}
 	}
 
-	if (priv->enable_ssc) {
-		val = readl(priv->mmio + RK3568_PHYREG8);
-		val |= RK3568_PHYREG8_SSC_EN;
-		writel(val, priv->mmio + RK3568_PHYREG8);
-	}
+	rk_combphy_common_cfg_ssc(priv, rate);
 
 	return 0;
 }
@@ -972,10 +1008,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
 
 	switch (priv->type) {
 	case PHY_TYPE_PCIE:
-		/* Set SSC downward spread spectrum */
-		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
-		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
-
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
@@ -983,10 +1015,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
 		break;
 
 	case PHY_TYPE_USB3:
-		/* Set SSC downward spread spectrum */
-		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
-		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
-
 		/* Enable adaptive CTLE for USB3.0 Rx */
 		val = readl(priv->mmio + RK3568_PHYREG15);
 		val |= RK3568_PHYREG15_CTLE_EN;
@@ -1110,14 +1138,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
 			writel(0x88, priv->mmio + RK3568_PHYREG13);
 			writel(0x56, priv->mmio + RK3568_PHYREG14);
 		} else if (priv->type == PHY_TYPE_SATA) {
-			/* downward spread spectrum +500ppm */
-			val = FIELD_PREP(RK3568_PHYREG32_SSC_DIR_MASK,
-					 RK3568_PHYREG32_SSC_DOWNWARD);
-			val |= FIELD_PREP(RK3568_PHYREG32_SSC_OFFSET_MASK,
-					  RK3568_PHYREG32_SSC_OFFSET_500PPM);
-			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
-						 RK3568_PHYREG32);
-
 			/* ssc ppm adjust to 3500ppm */
 			rockchip_combphy_updatel(priv, RK3576_PHYREG10_SSC_PCM_MASK,
 						 RK3576_PHYREG10_SSC_PCM_3500PPM,
@@ -1156,39 +1176,7 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
 		}
 	}
 
-	if (priv->enable_ssc) {
-		val = readl(priv->mmio + RK3568_PHYREG8);
-		val |= RK3568_PHYREG8_SSC_EN;
-		writel(val, priv->mmio + RK3568_PHYREG8);
-
-		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
-			/* Set PLL loop divider */
-			writel(0x00, priv->mmio + RK3576_PHYREG17);
-			writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
-
-			/* Set up rx_pck invert and rx msb to disable */
-			writel(0x00, priv->mmio + RK3588_PHYREG27);
-
-			/*
-			 * Set up SU adjust signal:
-			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
-			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
-			 * su_trim[23:16], CKRCV adjust
-			 * su_trim[31:24], CKDRV adjust
-			 */
-			writel(0x90, priv->mmio + RK3568_PHYREG11);
-			writel(0x02, priv->mmio + RK3568_PHYREG12);
-			writel(0x08, priv->mmio + RK3568_PHYREG13);
-			writel(0x57, priv->mmio + RK3568_PHYREG14);
-			writel(0x40, priv->mmio + RK3568_PHYREG15);
-
-			writel(RK3568_PHYREG16_SSC_CNT_VALUE, priv->mmio + RK3568_PHYREG16);
-
-			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
-					 RK3576_PHYREG33_PLL_KVCO_VALUE);
-			writel(val, priv->mmio + RK3568_PHYREG33);
-		}
-	}
+	rk_combphy_common_cfg_ssc(priv, rate);
 
 	return 0;
 }
@@ -1255,10 +1243,6 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
 		}
 		break;
 	case PHY_TYPE_USB3:
-		/* Set SSC downward spread spectrum */
-		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
-		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
-
 		/* Enable adaptive CTLE for USB3.0 Rx. */
 		val = readl(priv->mmio + RK3568_PHYREG15);
 		val |= RK3568_PHYREG15_CTLE_EN;
@@ -1343,13 +1327,6 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
 
 			/* Set up su_trim:  */
 			writel(RK3568_PHYREG11_SU_TRIM_0_7, priv->mmio + RK3568_PHYREG11);
-		} else if (priv->type == PHY_TYPE_SATA) {
-			/* downward spread spectrum +500ppm */
-			val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
-			val |= RK3568_PHYREG32_SSC_OFFSET_500PPM <<
-			       RK3568_PHYREG32_SSC_OFFSET_SHIFT;
-			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
-						 RK3568_PHYREG32);
 		}
 		break;
 	default:
@@ -1371,11 +1348,7 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
 		}
 	}
 
-	if (priv->enable_ssc) {
-		val = readl(priv->mmio + RK3568_PHYREG8);
-		val |= RK3568_PHYREG8_SSC_EN;
-		writel(val, priv->mmio + RK3568_PHYREG8);
-	}
+	rk_combphy_common_cfg_ssc(priv, rate);
 
 	return 0;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
