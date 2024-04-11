Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6301CD128A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 13:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMRCo5BdL9fjTsqHfyB4PFcAllI1+lt5T91Jx9d/6iQ=; b=DHvAU+K85fDP2c
	/nR3Gxpqp6CSDfz2tCs4SOdEnx8g7dNViWYodCmPoFuEl8GX8EYnEqkMerNfBBzsyKHTO+o206ink
	43B/IKe70lSkv1sNnrVmhoMQPMikIpZAumsnabNVMFWaTt0+r96tC0v11H3wyi91hatCYyvKDZPm3
	zlIDuxJNH2Q4YSiJsfwlOmn1OVOMcBlwTWao1FWpqIMxH4qimOjUmGeStM92F4TH7O/8Ot5lePEUS
	0dUiQB/Qt5qi2S+sGe9M3+Ekz8lGNFd2aheTkoPNT4RzuArS8B0ERbfpF1N+z5utxUcXCJgGBFWZZ
	TshWOqF+ciluvD8j9ZBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruu4K-0000000C3yJ-373B;
	Thu, 11 Apr 2024 13:02:20 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruu47-0000000C3qI-1X0f;
	Thu, 11 Apr 2024 13:02:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AA2FECE3081;
	Thu, 11 Apr 2024 13:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44BD0C43394;
	Thu, 11 Apr 2024 13:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712840524;
	bh=PERXIyqtvzuRMlWj3fA9x52yulWXjRx921xLECr3yao=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Eh8Z/ER9BGdDdw14S9OLpYeeahIBpS42U+lZY++GBUTtjgDIXxzKh933pR4CHfMqH
	 ysrnp3PGkhy+nrpZIu8ytkzblQdkYrMZmDQ1sqQC6d8O236yu8oY1PDArxuxnY/+NC
	 7sqrFWmrUfy5CyCMGmZQOlWdvkJ/EjIyXDnAmT0699Mcf1Vw/WEkb9+kjHYHreUGyh
	 8/Z6D4ds/4ZUIfCYolAstOoHr+AXMaxrKn3CysM65tOAx8WtRUScUPpw2XH+uXfiDJ
	 3NiSUJzoii29YAOjytx2zdipXTVwRzNEfHD6PSBkNMszd+BajqKdRUZFHLfgZgg8C8
	 gA9v11PEZQCOg==
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] phy: rockchip-snps-pcie3: add support for rockchip,rx-common-refclk-mode
Date: Thu, 11 Apr 2024 15:01:48 +0200
Message-ID: <20240411130150.128107-3-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240411130150.128107-1-cassel@kernel.org>
References: <20240411130150.128107-1-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_060207_931581_9ACEE579 
X-CRM114-Status: GOOD (  18.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From the RK3588 Technical Reference Manual, Part1,
section 6.19 PCIe3PHY_GRF Register Description:
"rxX_cmn_refclk_mode"
RX common reference clock mode for lane X. This mode should be enabled
only when the far-end and near-end devices are running with a common
reference clock.

The hardware reset value for this field is 0x1 (enabled).
Note that this register field is only available on RK3588, not on RK3568.

The link training either fails or is highly unstable (link state will jump
continuously between L0 and recovery) when this mode is enabled while
using an endpoint running in Separate Reference Clock with No SSC (SRNS)
mode or Separate Reference Clock with SSC (SRIS) mode.
(Which is usually the case when using a real SoC as endpoint, e.g. the
RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)

Add support for the device tree property rockchip,rx-common-refclk-mode,
such that the PCIe PHY can be used in configurations where the Root
Complex and Endpoint are not using a common reference clock.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 9857ee45b89e..3c532658da4c 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -35,11 +35,17 @@
 #define RK3588_PCIE3PHY_GRF_CMN_CON0		0x0
 #define RK3588_PCIE3PHY_GRF_PHY0_STATUS1	0x904
 #define RK3588_PCIE3PHY_GRF_PHY1_STATUS1	0xa04
+#define RK3588_PCIE3PHY_GRF_PHY0_LN0_CON1	0x1004
+#define RK3588_PCIE3PHY_GRF_PHY0_LN1_CON1	0x1104
+#define RK3588_PCIE3PHY_GRF_PHY1_LN0_CON1	0x2004
+#define RK3588_PCIE3PHY_GRF_PHY1_LN1_CON1	0x2104
 #define RK3588_SRAM_INIT_DONE(reg)		(reg & BIT(0))
 
 #define RK3588_BIFURCATION_LANE_0_1		BIT(0)
 #define RK3588_BIFURCATION_LANE_2_3		BIT(1)
 #define RK3588_LANE_AGGREGATION		BIT(2)
+#define RK3588_RX_CMN_REFCLK_MODE_EN		((BIT(7) << 16) |  BIT(7))
+#define RK3588_RX_CMN_REFCLK_MODE_DIS		(BIT(7) << 16)
 #define RK3588_PCIE1LN_SEL_EN			(GENMASK(1, 0) << 16)
 #define RK3588_PCIE30_PHY_MODE_EN		(GENMASK(2, 0) << 16)
 
@@ -60,6 +66,7 @@ struct rockchip_p3phy_priv {
 	int num_clks;
 	int num_lanes;
 	u32 lanes[4];
+	u32 rx_cmn_refclk_mode[4];
 };
 
 struct rockchip_p3phy_ops {
@@ -137,6 +144,19 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	u8 mode = RK3588_LANE_AGGREGATION; /* default */
 	int ret;
 
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY0_LN0_CON1,
+		     priv->rx_cmn_refclk_mode[0] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY0_LN1_CON1,
+		     priv->rx_cmn_refclk_mode[1] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY1_LN0_CON1,
+		     priv->rx_cmn_refclk_mode[2] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY1_LN1_CON1,
+		     priv->rx_cmn_refclk_mode[3] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+
 	/* Deassert PCIe PMA output clamp mode */
 	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, BIT(8) | BIT(24));
 
@@ -275,6 +295,23 @@ static int rockchip_p3phy_probe(struct platform_device *pdev)
 		return priv->num_lanes;
 	}
 
+	ret = of_property_read_variable_u32_array(dev->of_node,
+						  "rockchip,rx-common-refclk-mode",
+						  priv->rx_cmn_refclk_mode, 1,
+						  ARRAY_SIZE(priv->rx_cmn_refclk_mode));
+	/*
+	 * if no rockchip,rx-common-refclk-mode, assume enabled for all lanes in
+	 * order to be DT backwards compatible. (Since HW reset val is enabled.)
+	 */
+	if (ret == -EINVAL) {
+		for (int i = 0; i < ARRAY_SIZE(priv->rx_cmn_refclk_mode); i++)
+			priv->rx_cmn_refclk_mode[i] = 1;
+	} else if (ret < 0) {
+		dev_err(dev, "failed to read rockchip,rx-common-refclk-mode property %d\n",
+			ret);
+		return ret;
+	}
+
 	priv->phy = devm_phy_create(dev, NULL, &rochchip_p3phy_ops);
 	if (IS_ERR(priv->phy)) {
 		dev_err(dev, "failed to create combphy\n");
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
