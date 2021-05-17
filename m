Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F8ACC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7777761006
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7777761006
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rdqPbSM70X6EvEE8pG1IL5KqgMmM1NU9rNSyWISWKVM=; b=kYWMIZSwdlQdLHr6aQAG/G09D
	kHgbTulHZXTC8EuM5y8jrTbOmh16Jte4x7Lr03W1NfW6DPaVZqbWtDLzcShSzIo+1rBEg7AVQiGPK
	l552GWKP0EwoDbvLupLxYPL0FJ8bn4o/DF7rgCV0EchlIF1/uSvASLMsCUXI7JAR/4wL450Cpd1jy
	r4TzQhABi9wvnrMW/FLVYVv/iLmjp4vXdi9jVmoiGPpgG3KLdRbuuBatdYb6HEQdei8IYiFiSJvYj
	YeCkEEUFE65jL9Mylb1CyfcyrmdEZqjQbZF9BxlJE7Oa+fcFjIrIPZcgSVWPe+zOIGs0+v5wbUB+y
	xtXTwh+0A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lifMo-00FRQR-T8; Mon, 17 May 2021 15:41:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMm-00FRPn-Pc
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 15:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=yHrQCScKRPAUV4Ww3ydXaHjQxax4H6xbfMTd08rzNZI=; b=pvLBWTZsS+yz4b7Kdctcx2fyhl
 vPoPvK5DvPacfMHECQ6xcXDFqRt+nhd9go41G/sRbJOdiGSgpUBUI7M0luR/HIsj00uKJB1E3j32A
 3/TSwjl7zb7S98QIa5ZXo6cCLiMD8XnXC7nOOz4V6rzAO2QgNvnje9Xb69J9nSiFpGS80sJKv9nfv
 gRJs6pOfupB02CXlZaWPackyjc8PZhOUcMiNQrA8L8ezznCEFFyz/CH23V91oW0orGKNE7Hw4tdbl
 bUM4UkB2E8n6L2YMpia+05YqAv2C0CpXnH1S32gUzir2o2cpe+AMeZu074pZqQodQgmxkBL/cwjrm
 HsmSUxlA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMj-00Dw3j-Qk
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 15:41:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 60F471F423BD
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens213@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 net-next 4/4] net: stmmac: Add RK3566/RK3568 SoC support
Date: Mon, 17 May 2021 12:40:37 -0300
Message-Id: <20210517154037.37946-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210517154037.37946-1-ezequiel@collabora.com>
References: <20210517154037.37946-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_084110_154178_C235AC43 
X-CRM114-Status: GOOD (  15.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add constants and callback functions for the dwmac present
on RK3566/RK3568 SoCs.

RK3568 has two MACs, and RK3566 just one, but it's otherwise
the same IP core.

Signed-off-by: David Wu <david.wu@rock-chips.com>
[Ezequiel: Separate rk3566-gmac support]
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 121 ++++++++++++++++++
 1 file changed, 121 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 791c13d47a35..280ac0129572 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -33,11 +33,13 @@ struct rk_gmac_ops {
 	void (*set_rgmii_speed)(struct rk_priv_data *bsp_priv, int speed);
 	void (*set_rmii_speed)(struct rk_priv_data *bsp_priv, int speed);
 	void (*integrated_phy_powerup)(struct rk_priv_data *bsp_priv);
+	u32 regs[];
 };
 
 struct rk_priv_data {
 	struct platform_device *pdev;
 	phy_interface_t phy_iface;
+	int id;
 	struct regulator *regulator;
 	bool suspended;
 	const struct rk_gmac_ops *ops;
@@ -996,6 +998,107 @@ static const struct rk_gmac_ops rk3399_ops = {
 	.set_rmii_speed = rk3399_set_rmii_speed,
 };
 
+#define RK3568_GRF_GMAC0_CON0		0x0380
+#define RK3568_GRF_GMAC0_CON1		0x0384
+#define RK3568_GRF_GMAC1_CON0		0x0388
+#define RK3568_GRF_GMAC1_CON1		0x038c
+
+/* RK3568_GRF_GMAC0_CON1 && RK3568_GRF_GMAC1_CON1 */
+#define RK3568_GMAC_PHY_INTF_SEL_RGMII	\
+		(GRF_BIT(4) | GRF_CLR_BIT(5) | GRF_CLR_BIT(6))
+#define RK3568_GMAC_PHY_INTF_SEL_RMII	\
+		(GRF_CLR_BIT(4) | GRF_CLR_BIT(5) | GRF_BIT(6))
+#define RK3568_GMAC_FLOW_CTRL			GRF_BIT(3)
+#define RK3568_GMAC_FLOW_CTRL_CLR		GRF_CLR_BIT(3)
+#define RK3568_GMAC_RXCLK_DLY_ENABLE		GRF_BIT(1)
+#define RK3568_GMAC_RXCLK_DLY_DISABLE		GRF_CLR_BIT(1)
+#define RK3568_GMAC_TXCLK_DLY_ENABLE		GRF_BIT(0)
+#define RK3568_GMAC_TXCLK_DLY_DISABLE		GRF_CLR_BIT(0)
+
+/* RK3568_GRF_GMAC0_CON0 && RK3568_GRF_GMAC1_CON0 */
+#define RK3568_GMAC_CLK_RX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 8)
+#define RK3568_GMAC_CLK_TX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 0)
+
+static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	u32 con0, con1;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "Missing rockchip,grf property\n");
+		return;
+	}
+
+	con0 = (bsp_priv->id == 1) ? RK3568_GRF_GMAC1_CON0 :
+				     RK3568_GRF_GMAC0_CON0;
+	con1 = (bsp_priv->id == 1) ? RK3568_GRF_GMAC1_CON1 :
+				     RK3568_GRF_GMAC0_CON1;
+
+	regmap_write(bsp_priv->grf, con0,
+		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
+		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
+
+	regmap_write(bsp_priv->grf, con1,
+		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
+		     RK3568_GMAC_RXCLK_DLY_ENABLE |
+		     RK3568_GMAC_TXCLK_DLY_ENABLE);
+}
+
+static void rk3568_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	u32 con1;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
+		return;
+	}
+
+	con1 = (bsp_priv->id == 1) ? RK3568_GRF_GMAC1_CON1 :
+				     RK3568_GRF_GMAC0_CON1;
+	regmap_write(bsp_priv->grf, con1, RK3568_GMAC_PHY_INTF_SEL_RMII);
+}
+
+static void rk3568_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	unsigned long rate;
+	int ret;
+
+	switch (speed) {
+	case 10:
+		rate = 2500000;
+		break;
+	case 100:
+		rate = 25000000;
+		break;
+	case 1000:
+		rate = 125000000;
+		break;
+	default:
+		dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
+		return;
+	}
+
+	ret = clk_set_rate(bsp_priv->clk_mac_speed, rate);
+	if (ret)
+		dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
+			__func__, rate, ret);
+}
+
+static const struct rk_gmac_ops rk3568_ops = {
+	.set_to_rgmii = rk3568_set_to_rgmii,
+	.set_to_rmii = rk3568_set_to_rmii,
+	.set_rgmii_speed = rk3568_set_gmac_speed,
+	.set_rmii_speed = rk3568_set_gmac_speed,
+	.regs = {
+		0xfe2a0000, /* gmac0 */
+		0xfe010000, /* gmac1 */
+		0x0, /* sentinel */
+	},
+};
+
 #define RV1108_GRF_GMAC_CON0		0X0900
 
 /* RV1108_GRF_GMAC_CON0 */
@@ -1264,6 +1367,7 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 {
 	struct rk_priv_data *bsp_priv;
 	struct device *dev = &pdev->dev;
+	struct resource *res;
 	int ret;
 	const char *strings = NULL;
 	int value;
@@ -1275,6 +1379,22 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 	of_get_phy_mode(dev->of_node, &bsp_priv->phy_iface);
 	bsp_priv->ops = ops;
 
+	/* Some SoCs have multiple MAC controllers, which need
+	 * to be distinguished.
+	 */
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (res) {
+		int i = 0;
+
+		while (ops->regs[i]) {
+			if (ops->regs[i] == res->start) {
+				bsp_priv->id = i;
+				break;
+			}
+			i++;
+		}
+	}
+
 	bsp_priv->regulator = devm_regulator_get_optional(dev, "phy");
 	if (IS_ERR(bsp_priv->regulator)) {
 		if (PTR_ERR(bsp_priv->regulator) == -EPROBE_DEFER) {
@@ -1561,6 +1681,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
+	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
 	{ .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
 	{ }
 };
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
