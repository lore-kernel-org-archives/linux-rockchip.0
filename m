Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C13DDC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jun 2022 17:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uAjWrglHz23AwAUs7qYjianReQDeKtbTA5swNj5G5o=; b=o/HO1qqlV0FsM4
	t51FRt2Oo2kZJhhHfy0cMBSgfqAuL3ffubJEEjxQZvFDLmJ88lOMofgEUASI3XZYvUhZ5VLNgCQvO
	xvFl6J7uHHIUkl7vwa4XcsVbaglmqy7mjPDW1IZhYsHwjNJKdNZQAKYRfBBUFq0Wln0Ls/cU9U6nH
	CwSw+yZeSpwdxLXvFmhFPu3qWW6ul0vQwkDzar85OjTfJewjU+WpL7P+9AU0vMghmUO8wbuII6jOA
	pOCnW8xyWoFSFVpHl/H4r7SiOxNHH3t6ZK0jMW4ZuaMETc5xDTDj3WRKFsE/S9O4CH443q4kK30K9
	AOLL4s2U7O9SIY+hrZug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5sH9-0025F4-NL; Mon, 27 Jun 2022 17:11:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5sDN-0023Ie-Ud; Mon, 27 Jun 2022 17:08:00 +0000
Received: from jupiter.universe (dyndsl-095-033-171-114.ewe-ip-backbone.de [95.33.171.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4D739660184E;
	Mon, 27 Jun 2022 18:07:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656349672;
	bh=WQlChTyt8/v8fmYA6i6cayvwWbqBscSJ5WUTKVierBk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J/P9MJlik/lYNnQVI5Ma+qxWfYqzKgQijgkeRaGYdLz00PrVF8+79QOpxU8zNpvUh
	 V3TcwVsRcltPVe2Fz4pXYP65R6p9KIrXKJF+Vspx9NE3c0tQRPqYubo+yViHpqRfBr
	 8jXLktOJj8P5cJkqyK4ttobihAkyxmOniHZi3Ot6G2+zL5wvbguXzNoTMi7/M/osig
	 XEa1RH8d/SwTg8po+LnSOHG80rBagB2dj+AiQrb35WBCci+xeTglKj6D5d5ZIC++yL
	 A2E2uiPSkVGd4y/VyaQo0rv6eWTzU0udEjBtMC6aUGFot8JBvHAD+8QnvAMpLRcHiL
	 SeqcXk/GLvHQg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id EEBB04800EB; Mon, 27 Jun 2022 19:07:49 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	David Wu <david.wu@rock-chips.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv2 1/2] net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588
Date: Mon, 27 Jun 2022 19:07:46 +0200
Message-Id: <20220627170747.137386-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220627170747.137386-1-sebastian.reichel@collabora.com>
References: <20220627170747.137386-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_100758_294786_9CD426C6 
X-CRM114-Status: GOOD (  19.81  )
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

Add constants and callback functions for the dwmac on RK3588 soc.
As can be seen, the base structure is the same, only registers
and the bits in them moved slightly.

Signed-off-by: David Wu <david.wu@rock-chips.com>
[rebase, squash fixes]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Krzysztof asked what "php" means. The answer is: The datasheet
calls the referenced syscon area "PHP_GRF" with GRF meaning
"general register file". PHP is never written out in the datasheet,
but is the name of a subsystem in the SoC which contains the ethernet
controllers, USB and SATA with it's own MMU and power domain.
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 155 ++++++++++++++++++
 1 file changed, 155 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index c469abc91fa1..15dea1f2a90a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -32,6 +32,8 @@ struct rk_gmac_ops {
 	void (*set_to_rmii)(struct rk_priv_data *bsp_priv);
 	void (*set_rgmii_speed)(struct rk_priv_data *bsp_priv, int speed);
 	void (*set_rmii_speed)(struct rk_priv_data *bsp_priv, int speed);
+	void (*set_clock_selection)(struct rk_priv_data *bsp_priv, bool input,
+				    bool enable);
 	void (*integrated_phy_powerup)(struct rk_priv_data *bsp_priv);
 	bool regs_valid;
 	u32 regs[];
@@ -66,6 +68,7 @@ struct rk_priv_data {
 	int rx_delay;
 
 	struct regmap *grf;
+	struct regmap *php_grf;
 };
 
 #define HIWORD_UPDATE(val, mask, shift) \
@@ -1101,6 +1104,147 @@ static const struct rk_gmac_ops rk3568_ops = {
 	},
 };
 
+/* sys_grf */
+#define RK3588_GRF_GMAC_CON7			0X031c
+#define RK3588_GRF_GMAC_CON8			0X0320
+#define RK3588_GRF_GMAC_CON9			0X0324
+
+#define RK3588_GMAC_RXCLK_DLY_ENABLE(id)	GRF_BIT(2 * (id) + 3)
+#define RK3588_GMAC_RXCLK_DLY_DISABLE(id)	GRF_CLR_BIT(2 * (id) + 3)
+#define RK3588_GMAC_TXCLK_DLY_ENABLE(id)	GRF_BIT(2 * (id) + 2)
+#define RK3588_GMAC_TXCLK_DLY_DISABLE(id)	GRF_CLR_BIT(2 * (id) + 2)
+
+#define RK3588_GMAC_CLK_RX_DL_CFG(val)		HIWORD_UPDATE(val, 0xFF, 8)
+#define RK3588_GMAC_CLK_TX_DL_CFG(val)		HIWORD_UPDATE(val, 0xFF, 0)
+
+/* php_grf */
+#define RK3588_GRF_GMAC_CON0			0X0008
+#define RK3588_GRF_CLK_CON1			0X0070
+
+#define RK3588_GMAC_PHY_INTF_SEL_RGMII(id)	\
+	(GRF_BIT(3 + (id) * 6) | GRF_CLR_BIT(4 + (id) * 6) | GRF_CLR_BIT(5 + (id) * 6))
+#define RK3588_GMAC_PHY_INTF_SEL_RMII(id)	\
+	(GRF_CLR_BIT(3 + (id) * 6) | GRF_CLR_BIT(4 + (id) * 6) | GRF_BIT(5 + (id) * 6))
+
+#define RK3588_GMAC_CLK_RMII_MODE(id)		GRF_BIT(5 * (id))
+#define RK3588_GMAC_CLK_RGMII_MODE(id)		GRF_CLR_BIT(5 * (id))
+
+#define RK3588_GMAC_CLK_SELET_CRU(id)		GRF_BIT(5 * (id) + 4)
+#define RK3588_GMAC_CLK_SELET_IO(id)		GRF_CLR_BIT(5 * (id) + 4)
+
+#define RK3588_GMA_CLK_RMII_DIV2(id)		GRF_BIT(5 * (id) + 2)
+#define RK3588_GMA_CLK_RMII_DIV20(id)		GRF_CLR_BIT(5 * (id) + 2)
+
+#define RK3588_GMAC_CLK_RGMII_DIV1(id)		\
+			(GRF_CLR_BIT(5 * (id) + 2) | GRF_CLR_BIT(5 * (id) + 3))
+#define RK3588_GMAC_CLK_RGMII_DIV5(id)		\
+			(GRF_BIT(5 * (id) + 2) | GRF_BIT(5 * (id) + 3))
+#define RK3588_GMAC_CLK_RGMII_DIV50(id)		\
+			(GRF_CLR_BIT(5 * (id) + 2) | GRF_BIT(5 * (id) + 3))
+
+#define RK3588_GMAC_CLK_RMII_GATE(id)		GRF_BIT(5 * (id) + 1)
+#define RK3588_GMAC_CLK_RMII_NOGATE(id)		GRF_CLR_BIT(5 * (id) + 1)
+
+static void rk3588_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	u32 offset_con, id = bsp_priv->id;
+
+	if (IS_ERR(bsp_priv->grf) || IS_ERR(bsp_priv->php_grf)) {
+		dev_err(dev, "Missing rockchip,grf or rockchip,php_grf property\n");
+		return;
+	}
+
+	offset_con = bsp_priv->id == 1 ? RK3588_GRF_GMAC_CON9 :
+					 RK3588_GRF_GMAC_CON8;
+
+	regmap_write(bsp_priv->php_grf, RK3588_GRF_GMAC_CON0,
+		     RK3588_GMAC_PHY_INTF_SEL_RGMII(id));
+
+	regmap_write(bsp_priv->php_grf, RK3588_GRF_CLK_CON1,
+		     RK3588_GMAC_CLK_RGMII_MODE(id));
+
+	regmap_write(bsp_priv->grf, RK3588_GRF_GMAC_CON7,
+		     RK3588_GMAC_RXCLK_DLY_ENABLE(id) |
+		     RK3588_GMAC_TXCLK_DLY_ENABLE(id));
+
+	regmap_write(bsp_priv->grf, offset_con,
+		     RK3588_GMAC_CLK_RX_DL_CFG(rx_delay) |
+		     RK3588_GMAC_CLK_TX_DL_CFG(tx_delay));
+}
+
+static void rk3588_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->php_grf)) {
+		dev_err(dev, "%s: Missing rockchip,php_grf property\n", __func__);
+		return;
+	}
+
+	regmap_write(bsp_priv->php_grf, RK3588_GRF_GMAC_CON0,
+		     RK3588_GMAC_PHY_INTF_SEL_RMII(bsp_priv->id));
+
+	regmap_write(bsp_priv->php_grf, RK3588_GRF_CLK_CON1,
+		     RK3588_GMAC_CLK_RMII_MODE(bsp_priv->id));
+}
+
+static void rk3588_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	unsigned int val = 0, id = bsp_priv->id;
+
+	switch (speed) {
+	case 10:
+		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
+			val = RK3588_GMA_CLK_RMII_DIV20(id);
+		else
+			val = RK3588_GMAC_CLK_RGMII_DIV50(id);
+		break;
+	case 100:
+		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
+			val = RK3588_GMA_CLK_RMII_DIV2(id);
+		else
+			val = RK3588_GMAC_CLK_RGMII_DIV5(id);
+		break;
+	case 1000:
+		if (bsp_priv->phy_iface != PHY_INTERFACE_MODE_RMII)
+			val = RK3588_GMAC_CLK_RGMII_DIV1(id);
+		else
+			goto err;
+		break;
+	default:
+		goto err;
+	}
+
+	regmap_write(bsp_priv->php_grf, RK3588_GRF_CLK_CON1, val);
+
+	return;
+err:
+	dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
+}
+
+static void rk3588_set_clock_selection(struct rk_priv_data *bsp_priv, bool input,
+				       bool enable)
+{
+	unsigned int val = input ? RK3588_GMAC_CLK_SELET_IO(bsp_priv->id) :
+				   RK3588_GMAC_CLK_SELET_CRU(bsp_priv->id);
+
+	val |= enable ? RK3588_GMAC_CLK_RMII_NOGATE(bsp_priv->id) :
+			RK3588_GMAC_CLK_RMII_GATE(bsp_priv->id);
+
+	regmap_write(bsp_priv->php_grf, RK3588_GRF_CLK_CON1, val);
+}
+
+static const struct rk_gmac_ops rk3588_ops = {
+	.set_to_rgmii = rk3588_set_to_rgmii,
+	.set_to_rmii = rk3588_set_to_rmii,
+	.set_rgmii_speed = rk3588_set_gmac_speed,
+	.set_rmii_speed = rk3588_set_gmac_speed,
+	.set_clock_selection = rk3588_set_clock_selection,
+};
+
 #define RV1108_GRF_GMAC_CON0		0X0900
 
 /* RV1108_GRF_GMAC_CON0 */
@@ -1304,6 +1448,10 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 			if (!IS_ERR(bsp_priv->clk_mac_speed))
 				clk_prepare_enable(bsp_priv->clk_mac_speed);
 
+			if (bsp_priv->ops && bsp_priv->ops->set_clock_selection)
+				bsp_priv->ops->set_clock_selection(bsp_priv,
+					       bsp_priv->clock_input, true);
+
 			/**
 			 * if (!IS_ERR(bsp_priv->clk_mac))
 			 *	clk_prepare_enable(bsp_priv->clk_mac);
@@ -1330,6 +1478,10 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 			clk_disable_unprepare(bsp_priv->mac_clk_tx);
 
 			clk_disable_unprepare(bsp_priv->clk_mac_speed);
+
+			if (bsp_priv->ops && bsp_priv->ops->set_clock_selection)
+				bsp_priv->ops->set_clock_selection(bsp_priv,
+					      bsp_priv->clock_input, false);
 			/**
 			 * if (!IS_ERR(bsp_priv->clk_mac))
 			 *	clk_disable_unprepare(bsp_priv->clk_mac);
@@ -1444,6 +1596,8 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 
 	bsp_priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
 							"rockchip,grf");
+	bsp_priv->php_grf = syscon_regmap_lookup_by_phandle(dev->of_node,
+							    "rockchip,php-grf");
 
 	if (plat->phy_node) {
 		bsp_priv->integrated_phy = of_property_read_bool(plat->phy_node,
@@ -1680,6 +1834,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
 	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
+	{ .compatible = "rockchip,rk3588-gmac", .data = &rk3588_ops },
 	{ .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
 	{ }
 };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
