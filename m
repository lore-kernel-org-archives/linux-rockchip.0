Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEA47C282EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 22:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAvgZb6rH/ciwDMc2VPaXguzmx467tKHxecZ/KZl6zc=; b=rBPWxzC2bjp3cL
	TpTgYHMOW5IY8ztZLPa5kI7Obd0DiIe4sU1cXWK4mPPJcdOP9hwJLZq9jRCJ5JaZlbeStVj+cFXtd
	jtFk2JneHWVj/qUg1xcKuN9KYlaBhi15WECGpaoalBTt0BLIYcbCSnbHddD7U95xLPYUkclmnbAp2
	bN5voMd/FN3WTpWLkZrDIf84wpbSNpV6jMsoQn/uBt+K00nVd6MRaCV7QMQYY2ncJG02BPV4YHBWY
	i9j50JHOlRAAjClWwlrflYFwysH1ETnlY6Ohc9RDL7APmBmv2G463pssKzykkWybnqQ/Ua3cBSMGE
	ZHkNJIX6oynfu/i2eZhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJX9-0000000CLcx-1kHK;
	Thu, 06 Mar 2025 22:17:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJU0-0000000CL67-0V91
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 22:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741299263; bh=bOC8WbiFRMmQ2t5uzX1HETVDEhXpaqLAKBxWpaNaFx0=;
 b=G/LVSh8LNoYMRGgkPR7uznH9m5PVZhK+/BCqSdb5JiFC3M9XU/GLScFdvDiu10UJNGGbDsjZR
 KB8mnwZs7oFIJM+DDl8Aml27ugtmbn42gxGSmRgMEmLKH6VO/8NiDdWcSCikKI2R3OB5mwoV5AF
 OAsH3HX6MBh+8MktHQ+/F5qyeLx46rQU56mTAgp9jlH7X0Sb4juvhwCzRAJT8FXngvoOhBv/sJK
 iZI903asgoofvPohcTNBcpUs380r+XcLAsvnpNwwbCQSzI2BgK7vDQzb6grRNc+ZWfmD+HPHA/R
 H7ZIPBgOqG8UIG8eK7xB9WHUfRERW6z57+QiXwIY1ciQ==
X-Forward-Email-ID: 67ca1e39c1763851c065c013
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
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
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	David Wu <david.wu@rock-chips.com>,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/4] ethernet: stmmac: dwmac-rk: Add GMAC support for RK3528
Date: Thu,  6 Mar 2025 22:13:55 +0000
Message-ID: <20250306221402.1704196-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306221402.1704196-1-jonas@kwiboo.se>
References: <20250306221402.1704196-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_141424_203370_72784CAE 
X-CRM114-Status: GOOD (  13.43  )
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

Add initial support for the RK3528 variants.

Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
This does not include power on/off support for the integrated PHY.
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 132 ++++++++++++++++++
 1 file changed, 132 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index ba1cd079adf2..0ae3ffacb794 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -830,6 +830,137 @@ static const struct rk_gmac_ops rk3399_ops = {
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
@@ -1816,6 +1947,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
+	{ .compatible = "rockchip,rk3528-gmac", .data = &rk3528_ops },
 	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
 	{ .compatible = "rockchip,rk3576-gmac", .data = &rk3576_ops },
 	{ .compatible = "rockchip,rk3588-gmac", .data = &rk3588_ops },
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
