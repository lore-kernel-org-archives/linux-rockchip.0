Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A93DEB7EB8
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 10:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VQdxSTQcs1LmM29ZQ0VoqdADfdHmt3J9riZiAFsILFg=; b=fjkESVwGYjgbXD
	kYsYlokRUjd/ysdokJPkvadZf2AUEleL/s5qCRyfp5I0iiPfpYJ3nbpooaJ/tD0JWk5Z7PGW2Z+Ng
	DTNA2L0F9gciDRJxiaaEQnTZ5OBpdlT5uGGmLR9MCw0KP1DsF3lJ1VIk97D51s/ypVPiP8VAjqWwy
	lAcawnPT1UNqLENwtB73hzxkSqq8bJg88wVP9kc476JdksMUZBPstGw8FBNztB89Ptxt7IIaq1Sil
	h1uUuSPgrzF8HNdJXeYVV12tCB3I2dZgt9lORiG6sPFYfMUUHvYM8HGaMbPgZsvIIqx60+wCSLrKB
	JXaPc72vEw1rEAqInFoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjEo-0000000GxXF-3azy;
	Wed, 04 Mar 2026 10:13:54 +0000
Received: from mail-m3284.qiye.163.com ([220.197.32.84])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjEk-0000000GxWc-39e5;
	Wed, 04 Mar 2026 10:13:52 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35ba2940f;
	Wed, 4 Mar 2026 18:13:38 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] phy: rockchip: naneng-combphy: configure SSC for PCIe on rk3588 and rk3576
Date: Wed,  4 Mar 2026 18:13:31 +0800
Message-Id: <1772619211-99875-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cb856bc0109cckunm4782c6fd1211b72
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkIeSFZLTxodGR0fHh5LQkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kwKv2jYSfjbf+NU2SoNUU2ne4Nx44AmIPW0MdGdAPBvjOJYqNIKZZOyrLbsCtRMS0OgHdntdJ493eEPULPEnEc1s54oYvkiG24j0vkcmlRiki/b9IgYtl+20d/Iv2yGLFUdc1V8Gc4dFebNyQsX9+2NOlnIrUwzLFKuzx3c2ctI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=tUOMhFui9GpdBqGsKp6MZutaSK0/qQb/Gl9iLt1soAo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_021351_341510_3A492CA0 
X-CRM114-Status: GOOD (  16.35  )
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

Add a dedicated function rk_combphy_cfg_ssc_for_pcie() to configure
Spread Spectrum Clocking (SSC) for the PCIe PHY on compatible platforms.

The function first checks the device tree node's compatible string.
Currently, SSC tuning is specifically implemented and applied only for
"rockchip,rk3588-naneng-combphy" and "rockchip,rk3576-naneng-combphy".

The correct SSC configuration for these platforms involves:
1.  Enabling SSC via the RK3568_PHYREG8_SSC_EN bit.
2.  Setting the PLL SSC module control via the newly defined
    RK3568_PHYREG33_PLL_SSC_CTRL bit.
3.  For PCIe phys with a 24MHz reference clock, additional PLL loop
    divider and signal adjustment values are programmed to optimiz
    performance.

This SSC configuration is intended to improve EMI characteristics or
meet specific clock tolerance requirements for PCIe interfaces on
these SoCs.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 93 +++++++++++++---------
 1 file changed, 55 insertions(+), 38 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index b60d6bf..aa09d71 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -121,6 +121,7 @@
 #define RK3568_PHYREG32_SSC_OFFSET_500PPM	1
 
 #define RK3568_PHYREG33				0x80
+#define RK3568_PHYREG33_PLL_SSC_CTRL		BIT(5)
 #define RK3568_PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
 #define RK3568_PHYREG33_PLL_KVCO_SHIFT		2
 #define RK3568_PHYREG33_PLL_KVCO_VALUE		2
@@ -964,6 +965,56 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
 	.combphy_cfg	= rk3568_combphy_cfg,
 };
 
+static void rk_combphy_cfg_ssc_for_pcie(struct rockchip_combphy_priv *priv, unsigned long rate)
+{
+	struct device_node *np = priv->dev->of_node;
+	u32 val;
+
+	/* Some SoCs' combphys share the same PCIe SSC tuning result */
+	if (!of_device_is_compatible(np, "rockchip,rk3588-naneng-combphy") ||
+	    !of_device_is_compatible(np, "rockchip,rk3576-naneng-combphy")) {
+		dev_warn(priv->dev, "Incompatible platform\n");
+		return;
+	}
+
+	val = readl(priv->mmio + RK3568_PHYREG8);
+	val |= RK3568_PHYREG8_SSC_EN;
+	writel(val, priv->mmio + RK3568_PHYREG8);
+
+	/* PLL control SSC module period should be set */
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
 static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
 {
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
@@ -1156,39 +1207,8 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
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
+	if (priv->enable_ssc)
+		rk_combphy_cfg_ssc_for_pcie(priv, rate);
 
 	return 0;
 }
@@ -1371,11 +1391,8 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
 		}
 	}
 
-	if (priv->enable_ssc) {
-		val = readl(priv->mmio + RK3568_PHYREG8);
-		val |= RK3568_PHYREG8_SSC_EN;
-		writel(val, priv->mmio + RK3568_PHYREG8);
-	}
+	if (priv->enable_ssc)
+		rk_combphy_cfg_ssc_for_pcie(priv, rate);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
