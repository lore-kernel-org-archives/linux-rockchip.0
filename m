Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B106C43460
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 21:03:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E867061158
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 21:03:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E867061158
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6bGSjNF3GTb+tQFblhYJuslvl6pILxkrSgFvZOVJy2k=; b=PRY0qet+7fbLkK7kq10N5ac9v
	9xWgQAmQiKYyyZOU0XyKBCIl+npH/TWP6h5ge/rwQKVBsR2A4AIlinEyb2Pmgw78Qs140sFbMjsfT
	2H2tJXea4dW2XI7wuRtyqgoct9Ai1e4uyOOKG7naH6IlRFW4W/1s21hg5ekIhMSFz3DcBQwKaSihg
	6TT+a8waRhGMKm6+2rA8XTkRpYlvg0uoCP0f1ci0omOHYvu7sMlRBhR+j0fyHP8vAOrDJ9OInWfDG
	Rt7XrdclY31G18Bw2NZNaaxzjqulgm9oOnEefbnFamVa+v+XqqbiiMBgXEYr9P+cB6uhUOPJhl8ul
	wGyeaVSOg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWQBq-00AT4S-GA; Tue, 13 Apr 2021 21:03:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWQBb-00AT1K-4s
 for linux-rockchip@desiato.infradead.org; Tue, 13 Apr 2021 21:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=L9KUPpEEmOnv1lPNzzAHfLf98C9CkUt2d0Wyugaj0l0=; b=FV0ZROiR5Os6bCt57yPSTkM726
 KVpRTliiL8yBrrsx7jQKQie1kF7xJ0a1nz554sDe+JzXxUW32rlLqiwxBWs0gIDE04aD9gxjAuWlI
 dlUBkpdoC3jAdMC0FLYjwHSHAUaDzpipmbiJ1MWKnZP+LuBc4W7ysr2HZQWs4i3V9hVMi0rWZMcks
 M6m7eB9YT9ZM7x1hH6+fEYvQ7Y46C6Jw5zhN7Ub/noKh+JHU8sNq6fj79kciyacDQ3uqOYwL2N7Yk
 x3bZYa4BF8qS3uXuk3BVfkIi5hXkknlQ3xZGhl0j6GKDYhzrhM5LpBnAmitiGAawkMwiSaqp+gjPz
 KxK6xWFg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWQBY-007K4W-6c
 for linux-rockchip@lists.infradead.org; Tue, 13 Apr 2021 21:03:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 531631F42508
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, David Wu <david.wu@rock-chips.com>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
Date: Tue, 13 Apr 2021 18:02:35 -0300
Message-Id: <20210413210235.489467-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210413210235.489467-1-ezequiel@collabora.com>
References: <20210413210235.489467-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_140300_533402_7F15E576 
X-CRM114-Status: GOOD (  13.45  )
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
on RK3566 and RK3568 SoCs. As can be seen, the base structure
is the same, only registers and the bits in them moved slightly.

RK3568 supports two MACs, and RK3566 support just one.

Signed-off-by: David Wu <david.wu@rock-chips.com>
[Ezequiel: Add rockchip,rk3566-gmac compatible string]
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../bindings/net/rockchip-dwmac.txt           |   2 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 142 ++++++++++++++++++
 2 files changed, 144 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
index 3b71da7e8742..80203b16b652 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
@@ -12,6 +12,8 @@ Required properties:
    "rockchip,rk3366-gmac": found on RK3366 SoCs
    "rockchip,rk3368-gmac": found on RK3368 SoCs
    "rockchip,rk3399-gmac": found on RK3399 SoCs
+   "rockchip,rk3566-gmac": found on RK3566 SoCs
+   "rockchip,rk3568-gmac": found on RK3568 SoCs
    "rockchip,rv1108-gmac": found on RV1108 SoCs
  - reg: addresses and length of the register sets for the device.
  - interrupts: Should contain the GMAC interrupts.
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index d2637d83899e..096965b0fec9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -948,6 +948,146 @@ static const struct rk_gmac_ops rk3399_ops = {
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
+static void rk3566_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "Missing rockchip,grf property\n");
+		return;
+	}
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
+		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
+		     RK3568_GMAC_RXCLK_DLY_ENABLE |
+		     RK3568_GMAC_TXCLK_DLY_ENABLE);
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
+		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
+		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
+}
+
+static void rk3566_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
+		return;
+	}
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
+		     RK3568_GMAC_PHY_INTF_SEL_RMII);
+}
+
+static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "Missing rockchip,grf property\n");
+		return;
+	}
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
+		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
+		     RK3568_GMAC_RXCLK_DLY_ENABLE |
+		     RK3568_GMAC_TXCLK_DLY_ENABLE);
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON0,
+		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
+		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
+		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
+		     RK3568_GMAC_RXCLK_DLY_ENABLE |
+		     RK3568_GMAC_TXCLK_DLY_ENABLE);
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
+		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
+		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
+}
+
+static void rk3568_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
+		return;
+	}
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
+		     RK3568_GMAC_PHY_INTF_SEL_RMII);
+
+	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
+		     RK3568_GMAC_PHY_INTF_SEL_RMII);
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
+};
+
+static const struct rk_gmac_ops rk3566_ops = {
+	.set_to_rgmii = rk3566_set_to_rgmii,
+	.set_to_rmii = rk3566_set_to_rmii,
+	.set_rgmii_speed = rk3568_set_gmac_speed,
+	.set_rmii_speed = rk3568_set_gmac_speed,
+};
+
 #define RV1108_GRF_GMAC_CON0		0X0900
 
 /* RV1108_GRF_GMAC_CON0 */
@@ -1512,6 +1652,8 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
+	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
+	{ .compatible = "rockchip,rk3566-gmac", .data = &rk3566_ops },
 	{ .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
 	{ }
 };
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
