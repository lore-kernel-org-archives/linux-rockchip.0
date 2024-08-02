Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32C68C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 17:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx5QA2C9G6ZnJLib+imd3mhAIPCmAzjtTrp2nbZTX0U=; b=AzCLvgHyEAQTfe
	OKAYdQF4xTEVlh50xJhmk/m7Sfn+iPOtdF2TQq3t8j1GphG6huN5hoQnvnI03hKDNymlrHXiIFVPt
	SJwz+7Oc16vqot6BVhD8uN+77K1evNKv/q2USy0S/l4/ci1/kE9mlvaNAwiugtKmi9apCi9hFw+TC
	1cm2hfagu9EUI1p++O/HRGQ2QTJj5iNOfMn4IUqJWXCjyhj7XKV9RpgdkJzDpKiM0l68u3SBGpe4U
	r9yV51KPMksrmc2PjBB31+fYxFPkhe6gAVnVMOQgcxhpdR+GxDAhdYb+MOYuutIA3+FetWLj8cmXC
	TNeGilmC+LPsHs18XZqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZwFL-00000009da9-28yD;
	Fri, 02 Aug 2024 17:39:19 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZwEN-00000009dIl-1TYY;
	Fri, 02 Aug 2024 17:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722620298;
	bh=zZeN9Ol19HOHosRc4lcMNNIP49ERoUO0hY/cOllfT2g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=0RiTfDwK6/QpovXhRG89yqzAtrnZZppDQ6PAjzB5pFMxEwx+O981qO/NIJbDXqYUP
	 SykU1piuqLkHfspGap0FGMYQFy4uaDMITc8a6ByKf4GMcDpD4HkS43jwxNrb0SVIt+
	 YTbv1/xyNK0kMLXaEtHQMQ+O3m/I2jxhJVIBc7da/DE6+cx/wBDI6DaIiR7JwWkuXN
	 xaiBFIQFzhHqrsgDC1lY1EVlFWpiEykek3uvXJX2ZeMURUNMejGOe2udNw9Qd5E9dC
	 27J5W4qyD0+RG8AwsGjitSOVLfhMJY12CzilWXqJjo9xD1iTxgIJ04AyqWAT0Do2zM
	 z/JGqtXf4TESw==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 89219378221A;
	Fri,  2 Aug 2024 17:38:15 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	"David S . Miller" <davem@davemloft.net>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 1/2] ethernet: stmmac: dwmac-rk: Add GMAC support for RK3576
Date: Fri,  2 Aug 2024 13:38:02 -0400
Message-ID: <20240802173918.301668-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802173918.301668-1-detlev.casanova@collabora.com>
References: <20240802173918.301668-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_103819_552558_47A5EAD0 
X-CRM114-Status: GOOD (  16.12  )
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

Add constants and callback functions for the dwmac on RK3576 soc.

Signed-off-by: David Wu <david.wu@rock-chips.com>
[rebase, extracted bindings]
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 156 ++++++++++++++++++
 1 file changed, 156 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 7ae04d8d291c8..e1fa8fc9f4012 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1116,6 +1116,161 @@ static const struct rk_gmac_ops rk3568_ops = {
 	},
 };
 
+/* VCCIO0_1_3_IOC */
+#define RK3576_VCCIO0_1_3_IOC_CON2		0X6408
+#define RK3576_VCCIO0_1_3_IOC_CON3		0X640c
+#define RK3576_VCCIO0_1_3_IOC_CON4		0X6410
+#define RK3576_VCCIO0_1_3_IOC_CON5		0X6414
+
+#define RK3576_GMAC_RXCLK_DLY_ENABLE		GRF_BIT(15)
+#define RK3576_GMAC_RXCLK_DLY_DISABLE		GRF_CLR_BIT(15)
+#define RK3576_GMAC_TXCLK_DLY_ENABLE		GRF_BIT(7)
+#define RK3576_GMAC_TXCLK_DLY_DISABLE		GRF_CLR_BIT(7)
+
+#define RK3576_GMAC_CLK_RX_DL_CFG(val)		HIWORD_UPDATE(val, 0x7F, 8)
+#define RK3576_GMAC_CLK_TX_DL_CFG(val)		HIWORD_UPDATE(val, 0x7F, 0)
+
+/* SDGMAC_GRF */
+#define RK3576_GRF_GMAC_CON0			0X0020
+#define RK3576_GRF_GMAC_CON1			0X0024
+
+#define RK3576_GMAC_RMII_MODE			GRF_BIT(3)
+#define RK3576_GMAC_RGMII_MODE			GRF_CLR_BIT(3)
+
+#define RK3576_GMAC_CLK_SELET_IO		GRF_BIT(7)
+#define RK3576_GMAC_CLK_SELET_CRU		GRF_CLR_BIT(7)
+
+#define RK3576_GMAC_CLK_RMII_DIV2		GRF_BIT(5)
+#define RK3576_GMAC_CLK_RMII_DIV20		GRF_CLR_BIT(5)
+
+#define RK3576_GMAC_CLK_RGMII_DIV1		\
+			(GRF_CLR_BIT(6) | GRF_CLR_BIT(5))
+#define RK3576_GMAC_CLK_RGMII_DIV5		\
+			(GRF_BIT(6) | GRF_BIT(5))
+#define RK3576_GMAC_CLK_RGMII_DIV50		\
+			(GRF_BIT(6) | GRF_CLR_BIT(5))
+
+#define RK3576_GMAC_CLK_RMII_GATE		GRF_BIT(4)
+#define RK3576_GMAC_CLK_RMII_NOGATE		GRF_CLR_BIT(4)
+
+static void rk3576_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	unsigned int offset_con;
+
+	if (IS_ERR(bsp_priv->grf) || IS_ERR(bsp_priv->php_grf)) {
+		dev_err(dev, "Missing rockchip,grf or rockchip,php_grf property\n");
+		return;
+	}
+
+	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
+					 RK3576_GRF_GMAC_CON0;
+
+	regmap_write(bsp_priv->grf, offset_con, RK3576_GMAC_RGMII_MODE);
+
+	offset_con = bsp_priv->id == 1 ? RK3576_VCCIO0_1_3_IOC_CON4 :
+					 RK3576_VCCIO0_1_3_IOC_CON2;
+
+	/* m0 && m1 delay enabled */
+	regmap_write(bsp_priv->php_grf, offset_con,
+		     DELAY_ENABLE(RK3576, tx_delay, rx_delay));
+	regmap_write(bsp_priv->php_grf, offset_con + 0x4,
+		     DELAY_ENABLE(RK3576, tx_delay, rx_delay));
+
+	/* m0 && m1 delay value */
+	regmap_write(bsp_priv->php_grf, offset_con,
+		     RK3576_GMAC_CLK_TX_DL_CFG(tx_delay) |
+		     RK3576_GMAC_CLK_RX_DL_CFG(rx_delay));
+	regmap_write(bsp_priv->php_grf, offset_con + 0x4,
+		     RK3576_GMAC_CLK_TX_DL_CFG(tx_delay) |
+		     RK3576_GMAC_CLK_RX_DL_CFG(rx_delay));
+}
+
+static void rk3576_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	unsigned int offset_con;
+
+	if (IS_ERR(bsp_priv->php_grf)) {
+		dev_err(dev, "%s: Missing rockchip,php_grf property\n", __func__);
+		return;
+	}
+
+	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
+					 RK3576_GRF_GMAC_CON0;
+
+	regmap_write(bsp_priv->grf, offset_con, RK3576_GMAC_RMII_MODE);
+}
+
+static void rk3576_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	unsigned int val = 0, offset_con;
+
+	switch (speed) {
+	case 10:
+		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
+			val = RK3576_GMAC_CLK_RMII_DIV20;
+		else
+			val = RK3576_GMAC_CLK_RGMII_DIV50;
+		break;
+	case 100:
+		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
+			val = RK3576_GMAC_CLK_RMII_DIV2;
+		else
+			val = RK3576_GMAC_CLK_RGMII_DIV5;
+		break;
+	case 1000:
+		if (bsp_priv->phy_iface != PHY_INTERFACE_MODE_RMII)
+			val = RK3576_GMAC_CLK_RGMII_DIV1;
+		else
+			goto err;
+		break;
+	default:
+		goto err;
+	}
+
+	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
+					 RK3576_GRF_GMAC_CON0;
+
+	regmap_write(bsp_priv->grf, offset_con, val);
+
+	return;
+err:
+	dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
+}
+
+static void rk3576_set_clock_selection(struct rk_priv_data *bsp_priv, bool input,
+				       bool enable)
+{
+	unsigned int val = input ? RK3576_GMAC_CLK_SELET_IO :
+				   RK3576_GMAC_CLK_SELET_CRU;
+	unsigned int offset_con;
+
+	val |= enable ? RK3576_GMAC_CLK_RMII_NOGATE :
+			RK3576_GMAC_CLK_RMII_GATE;
+
+	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
+					 RK3576_GRF_GMAC_CON0;
+
+	regmap_write(bsp_priv->grf, offset_con, val);
+}
+
+static const struct rk_gmac_ops rk3576_ops = {
+	.set_to_rgmii = rk3576_set_to_rgmii,
+	.set_to_rmii = rk3576_set_to_rmii,
+	.set_rgmii_speed = rk3576_set_gmac_speed,
+	.set_rmii_speed = rk3576_set_gmac_speed,
+	.set_clock_selection = rk3576_set_clock_selection,
+	.regs_valid = true,
+	.regs = {
+		0x2a220000, /* gmac0 */
+		0x2a230000, /* gmac1 */
+		0x0, /* sentinel */
+	},
+};
+
 /* sys_grf */
 #define RK3588_GRF_GMAC_CON7			0X031c
 #define RK3588_GRF_GMAC_CON8			0X0320
@@ -1908,6 +2063,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
 	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
+	{ .compatible = "rockchip,rk3576-gmac", .data = &rk3576_ops },
 	{ .compatible = "rockchip,rk3588-gmac", .data = &rk3588_ops },
 	{ .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
 	{ .compatible = "rockchip,rv1126-gmac", .data = &rv1126_ops },
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
