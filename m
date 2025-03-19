Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8490C36000
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jiz97Lz2aWeFSAN5grQVVrZJvKv2+8HGI5Jr0QkdkA=; b=XemS8efW2MPry2
	oC+n3pNGynPtRo2MAybNJZo7m4ra1w245fTOdfWO6AMGsUis8E+UZGVvFfPxv4BvKlCfdxB2EuZlV
	Kod/yBVKhzV8oLdzUdR/x4WMEifEjiHuGuHyMr9Eo+uwg+bq2LMryQzwwpEcMDPaLcvZgGmXZ5paJ
	7a1nKT9vwPbIH/Tlp6xBafFb/XPR1lFIEuuOW+T1fF/kqAXwFurtXxZzOmr5cf8jcw0BxmlNF9BRT
	yBXNAyWLJEBj7pWHGsGUA9Rql/A/QB/Pl9oQ5zYqPV1H+Y9MlC3loh3z5csG6WHI7JaWTFQkovY0F
	5I3xIwvHZ7FGW101IiOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1II-0000000AC6I-2DxK;
	Wed, 19 Mar 2025 21:49:46 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1DI-0000000ABJ6-3VD1
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Mar 2025 21:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1742420675; bh=e4NFTOlsV5jxXvuEThm27uRM0DY7QOxKSuqXbD4r5/4=;
 b=VcuNJrRLKjIKhYebjeJ019v3Ynai3BH1wc/3pSWoAI0BDEuU4ZsbotHIc4Uxejd0Rf6moQEag
 pRmFu7YiWG18TPlBxazz6BxTULyxSnCQMKlECO6eW0I30qfR3VKOZST8OIqm7xijcF7Nfk5OMaK
 SS0MfMGYBeDBoXTfWWS8A4mBOGsPCDlN1+xv8unl+GBiScnaM3qIW3LSlRoEAtP5Y3/mu+klBn+
 lhkx/KYH3zp8TXocZkIIV+PjgqUX0Q+G+FNViLSs6qhlmpnlwfgWv5cYElPMyCy+9YxZRro6VFo
 Y/WP9oOfzUD3pT5c5OayJx/dZ4r1NyOQurnwTXiEzVOQ==
X-Forward-Email-ID: 67db3abfcf4d592372b99403
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>,
	Yao Zi <ziyao@disroot.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next v3 2/5] net: stmmac: dwmac-rk: Add GMAC support for RK3528
Date: Wed, 19 Mar 2025 21:44:06 +0000
Message-ID: <20250319214415.3086027-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250319214415.3086027-1-jonas@kwiboo.se>
References: <20250319214415.3086027-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_144436_982431_BC32BE57 
X-CRM114-Status: GOOD (  14.05  )
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

From: David Wu <david.wu@rock-chips.com>

Rockchip RK3528 has two Ethernet controllers based on Synopsys DWC
Ethernet QoS IP.

Add initial support for the RK3528 GMAC variant.

Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v3:
- No change
Changes in v2:
- No change

Power up/down of the integrated PHY is added in a separate patch.
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 132 ++++++++++++++++++
 1 file changed, 132 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index c404017bc1da..dfb4668db4ee 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -828,6 +828,137 @@ static const struct rk_gmac_ops rk3399_ops = {
 	.set_rmii_speed = rk3399_set_rmii_speed,
 };
 
+#define RK3528_VO_GRF_GMAC_CON		0x0018
+#define RK3528_VO_GRF_MACPHY_CON0	0x001c
+#define RK3528_VO_GRF_MACPHY_CON1	0x0020
+#define RK3528_VPU_GRF_GMAC_CON5	0x0018
+#define RK3528_VPU_GRF_GMAC_CON6	0x001c
+
+#define RK3528_GMAC_RXCLK_DLY_ENABLE	GRF_BIT(15)
+#define RK3528_GMAC_RXCLK_DLY_DISABLE	GRF_CLR_BIT(15)
+#define RK3528_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(14)
+#define RK3528_GMAC_TXCLK_DLY_DISABLE	GRF_CLR_BIT(14)
+
+#define RK3528_GMAC_CLK_RX_DL_CFG(val)	HIWORD_UPDATE(val, 0xFF, 8)
+#define RK3528_GMAC_CLK_TX_DL_CFG(val)	HIWORD_UPDATE(val, 0xFF, 0)
+
+#define RK3528_GMAC0_PHY_INTF_SEL_RMII	GRF_BIT(1)
+#define RK3528_GMAC1_PHY_INTF_SEL_RGMII	GRF_CLR_BIT(8)
+#define RK3528_GMAC1_PHY_INTF_SEL_RMII	GRF_BIT(8)
+
+#define RK3528_GMAC1_CLK_SELECT_CRU	GRF_CLR_BIT(12)
+#define RK3528_GMAC1_CLK_SELECT_IO	GRF_BIT(12)
+
+#define RK3528_GMAC0_CLK_RMII_DIV2	GRF_BIT(3)
+#define RK3528_GMAC0_CLK_RMII_DIV20	GRF_CLR_BIT(3)
+#define RK3528_GMAC1_CLK_RMII_DIV2	GRF_BIT(10)
+#define RK3528_GMAC1_CLK_RMII_DIV20	GRF_CLR_BIT(10)
+
+#define RK3528_GMAC1_CLK_RGMII_DIV1	(GRF_CLR_BIT(11) | GRF_CLR_BIT(10))
+#define RK3528_GMAC1_CLK_RGMII_DIV5	(GRF_BIT(11) | GRF_BIT(10))
+#define RK3528_GMAC1_CLK_RGMII_DIV50	(GRF_BIT(11) | GRF_CLR_BIT(10))
+
+#define RK3528_GMAC0_CLK_RMII_GATE	GRF_BIT(2)
+#define RK3528_GMAC0_CLK_RMII_NOGATE	GRF_CLR_BIT(2)
+#define RK3528_GMAC1_CLK_RMII_GATE	GRF_BIT(9)
+#define RK3528_GMAC1_CLK_RMII_NOGATE	GRF_CLR_BIT(9)
+
+static void rk3528_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+		     RK3528_GMAC1_PHY_INTF_SEL_RGMII);
+
+	regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+		     DELAY_ENABLE(RK3528, tx_delay, rx_delay));
+
+	regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON6,
+		     RK3528_GMAC_CLK_RX_DL_CFG(rx_delay) |
+		     RK3528_GMAC_CLK_TX_DL_CFG(tx_delay));
+}
+
+static void rk3528_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	if (bsp_priv->id == 1)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_PHY_INTF_SEL_RMII);
+	else
+		regmap_write(bsp_priv->grf, RK3528_VO_GRF_GMAC_CON,
+			     RK3528_GMAC0_PHY_INTF_SEL_RMII |
+			     RK3528_GMAC0_CLK_RMII_DIV2);
+}
+
+static void rk3528_set_rgmii_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (speed == 10)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_CLK_RGMII_DIV50);
+	else if (speed == 100)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_CLK_RGMII_DIV5);
+	else if (speed == 1000)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_CLK_RGMII_DIV1);
+	else
+		dev_err(dev, "unknown speed value for RGMII! speed=%d", speed);
+}
+
+static void rk3528_set_rmii_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	unsigned int reg, val;
+
+	if (speed == 10)
+		val = bsp_priv->id == 1 ? RK3528_GMAC1_CLK_RMII_DIV20 :
+					  RK3528_GMAC0_CLK_RMII_DIV20;
+	else if (speed == 100)
+		val = bsp_priv->id == 1 ? RK3528_GMAC1_CLK_RMII_DIV2 :
+					  RK3528_GMAC0_CLK_RMII_DIV2;
+	else {
+		dev_err(dev, "unknown speed value for RMII! speed=%d", speed);
+		return;
+	}
+
+	reg = bsp_priv->id == 1 ? RK3528_VPU_GRF_GMAC_CON5 :
+				  RK3528_VO_GRF_GMAC_CON;
+
+	regmap_write(bsp_priv->grf, reg, val);
+}
+
+static void rk3528_set_clock_selection(struct rk_priv_data *bsp_priv,
+				       bool input, bool enable)
+{
+	unsigned int val;
+
+	if (bsp_priv->id == 1) {
+		val = input ? RK3528_GMAC1_CLK_SELECT_IO :
+			      RK3528_GMAC1_CLK_SELECT_CRU;
+		val |= enable ? RK3528_GMAC1_CLK_RMII_NOGATE :
+				RK3528_GMAC1_CLK_RMII_GATE;
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5, val);
+	} else {
+		val = enable ? RK3528_GMAC0_CLK_RMII_NOGATE :
+			       RK3528_GMAC0_CLK_RMII_GATE;
+		regmap_write(bsp_priv->grf, RK3528_VO_GRF_GMAC_CON, val);
+	}
+}
+
+static const struct rk_gmac_ops rk3528_ops = {
+	.set_to_rgmii = rk3528_set_to_rgmii,
+	.set_to_rmii = rk3528_set_to_rmii,
+	.set_rgmii_speed = rk3528_set_rgmii_speed,
+	.set_rmii_speed = rk3528_set_rmii_speed,
+	.set_clock_selection = rk3528_set_clock_selection,
+	.regs_valid = true,
+	.regs = {
+		0xffbd0000, /* gmac0 */
+		0xffbe0000, /* gmac1 */
+		0x0, /* sentinel */
+	},
+};
+
 #define RK3568_GRF_GMAC0_CON0		0x0380
 #define RK3568_GRF_GMAC0_CON1		0x0384
 #define RK3568_GRF_GMAC1_CON0		0x0388
@@ -1819,6 +1950,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
+	{ .compatible = "rockchip,rk3528-gmac", .data = &rk3528_ops },
 	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
 	{ .compatible = "rockchip,rk3576-gmac", .data = &rk3576_ops },
 	{ .compatible = "rockchip,rk3588-gmac", .data = &rk3588_ops },
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
