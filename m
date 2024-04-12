Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC9AC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 12:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTqF0xN2a3k3XF7dJlkkM4RZZXVcHLNVIQf/PZcGWME=; b=X9KQ0oV5wQmx57
	oE6beU2WjBC8tpCPiSxTC/4EA0GoBBldLzS4aEE8DbgwFMT/eHO/WePRCyckcG+gQOgElWPORzC6L
	M2jj+4L8yjTzurAzXiwEQ6raaBw/bbpSCVQed3Hu5LxNrF487gQRW1QWuL2D139B2+cB6AekIVROj
	XXWjsGlf8E93nZA4OtqdCToGQ6dUm7YnaEKvxdKjw/Etuqli8lAvWwbVERsqZiOOS8YYhW28pmH5Q
	imrKUKy1+HMM7wB0R3whRohaTpXqryh7DggVSH7SO0/cfkeyLNdZ7/uDqb02LsENqqKR9m06XrMNV
	ze1DBppAZ0EE8H4GyCtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGUZ-0000000HCSu-22je;
	Fri, 12 Apr 2024 12:58:55 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGUN-0000000HCKL-3Ymr;
	Fri, 12 Apr 2024 12:58:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C1849CE3879;
	Fri, 12 Apr 2024 12:58:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBD81C2BD11;
	Fri, 12 Apr 2024 12:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712926719;
	bh=VYXNcStunbG4ClvUwhXqmVUrRjlPXdZ08q+1os22bgg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q3bjNkO3ZO5LfDfV90vGyYoElWXRsDm/DuY5FXbOEXcdK5lu9Nynxa9OAXMG8zrxz
	 gMl187XTnL+spWw6fvG3EQm9Dm2QWWQ4xSNX46Ujf54CQGaA7iETyrZvbwR3gwvpKm
	 fpNI7gr0Wo1Al5pqXI/5LF+j/W20yjRw4Q4zivdr7bNNoLqOnHnLoOQmzRUKBzCIsx
	 DPy/lZFe1pW9VQgJdfP70Tv+s1+0Jo9zyM8bRTd+f9r4Nx2rnvGrodLo5y6SFwKaqt
	 KEFtC9y0ng4nijS716AImgO0ja/cLpUUkgsiy+SmdzTcViSHAC4h7p0elGv74DYdeH
	 TVmeNqJl0ac4w==
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
Subject: [PATCH v2 2/2] phy: rockchip-snps-pcie3: add support for rockchip,rx-common-refclk-mode
Date: Fri, 12 Apr 2024 14:58:16 +0200
Message-ID: <20240412125818.17052-3-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412125818.17052-1-cassel@kernel.org>
References: <20240412125818.17052-1-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_055844_302955_7B77C239 
X-CRM114-Status: GOOD (  18.66  )
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
index dcccee3c211c..4e8ffd173096 100644
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
 	priv->phy = devm_phy_create(dev, NULL, &rockchip_p3phy_ops);
 	if (IS_ERR(priv->phy)) {
 		dev_err(dev, "failed to create combphy\n");
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
