Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E625DECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 14:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayaLRnNbJVoxDTToqcv5iBU+Vh7lVxygYSdL1mnjLqQ=; b=Q+Mx06TyMzgNq3
	dix+keWXlSgOTLkcN3FDiSSiLkzHX36buCVV/59nRlYytBHppDPrJMxvtxOjnPfGCCJvdxYJz9MUo
	IipBBgtjySTYbTUqMnbyLkRDQw6Z67Ur/WxeRxmU8O/WOU9JR+i8zSDMyoa/57xL9V+VehxhxAJr2
	FSxOXAfaVBSFtuDLXVk/gm9c3w5uW80mYB5CuHP7eZsmcWwFZFQHcpKvlz+4bpwYVsDOjCL6+O7yK
	VdUb6IjQpKf/gSQ13/E32n8D8V6pN+hHCQ8s1ILpQDM4INUomkAvdfjCKj9VZNnKLtPxC0jf75BEn
	bidAYQlNjg5u5AvFLLLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadxV-004Mh7-RX; Tue, 20 Sep 2022 14:10:45 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadx0-004MVU-45
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 14:10:16 +0000
Received: by mail-pj1-x1034.google.com with SMTP id s14-20020a17090a6e4e00b0020057c70943so10939262pjm.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Sep 2022 07:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=DSNp/uharmpReYy+YC5O0owair4IDAzJu/dQoMj9EuE=;
        b=JGndOtlikbTpSUbPqg2ojZV/PXcChJ3VizuBebT9Sawr5R1L0a/3IKUD+C46gPVshH
         /wQ1wlvkXfiT5X2OdpVJMDYv9ZealAuYXOQXYt9B18G/vmiE+aTapx769Uuj8yEV7TAO
         XasE/nQj5UZaPTG40sHhoZo3tA2mTvzMWuXVnZ3JfKfxZv03I8yIurRHtFuXVep0J9QS
         OVmj9HHW3QQcXqDmfW8cgGyFFtOosKlnaJCDXFE/eX04ih7Ob/DY58jASG4w15FEjukz
         C/XkGWhfQ1RgwyLRpk46pcOtLGZVA8bY4Z1IFmLSLs+KxPCieueXyhi+XQbrWXvA1U/M
         TXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=DSNp/uharmpReYy+YC5O0owair4IDAzJu/dQoMj9EuE=;
        b=zCZWjqs/ns8pzzz/9smyANrxKZBSZuecG+CLSyeWp42ahnj39Hc7ETupzSBCOOppbZ
         BdEm8gCEXaexaIUwZB5gCRO0JAP8+WSPtjzlMiBerdK+6TtMhpUBb7Myv5DXN4qwM0W8
         SF6Bc0DbEMl6feftoOOJUBRnsy4lyFmbpgFAN9QNpOOp4Xlp5aJa8QYe/gStGKPaGv0H
         WBClisTwClM7YU1H4cGC2ud0sJsRYjkUwsk+bmlI7qrDs5xhIJpKl+4+Y3GUXbsJ33BK
         92t/1nwgrRXDyAWPZwEXVGw9LCwoc3MR6A9qMA1HphntzXPP6wrN9UpRvYcEWbOpkB+n
         iGcw==
X-Gm-Message-State: ACrzQf3Xvfe+4STRfD+d4zIk4uWa44TwRo5tvGoBT5V4w9A6Qxw9J7sh
	WB9TOHEESnjdi5KQwJxTHlaOyg==
X-Google-Smtp-Source: AMsMyM7OQv10cWPYv1yYSPX4pu91pIFT6zRmq1k7wLZMkluTirdpzLCp+HN/D/iOxhB09n7MRWX0Ig==
X-Received: by 2002:a17:902:6542:b0:172:95d8:a777 with SMTP id d2-20020a170902654200b0017295d8a777mr4917335pln.61.1663683012286;
        Tue, 20 Sep 2022 07:10:12 -0700 (PDT)
Received: from archl-hc1b.. ([103.51.75.120])
        by smtp.gmail.com with ESMTPSA id t9-20020a170902e84900b001782a0d3eeasm1499858plg.115.2022.09.20.07.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 07:10:11 -0700 (PDT)
From: Anand Moon <anand@edgeble.ai>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Anand Moon <anand@edgeble.ai>,
	linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	David Wu <david.wu@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v3 2/2] net: ethernet: stmicro: stmmac: dwmac-rk: Add rv1126 support
Date: Tue, 20 Sep 2022 14:09:41 +0000
Message-Id: <20220920140944.2535-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920140944.2535-1-anand@edgeble.ai>
References: <20220920140944.2535-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_071014_236866_35FC7F6E 
X-CRM114-Status: GOOD (  14.80  )
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

Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
via RGMII and RMII interfaces are configured via M0 and M1 pinmux.

This patch adds rv1126 support by adding delay lines of M0 and M1
simultaneously.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
v3: changes none
    rebased on linux-net-next
v2: changes none
---
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 125 ++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 15dea1f2a90a..f7269d79a385 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1297,6 +1297,130 @@ static const struct rk_gmac_ops rv1108_ops = {
 	.set_rmii_speed = rv1108_set_rmii_speed,
 };
 
+#define RV1126_GRF_GMAC_CON0		0X0070
+#define RV1126_GRF_GMAC_CON1		0X0074
+#define RV1126_GRF_GMAC_CON2		0X0078
+
+/* RV1126_GRF_GMAC_CON0 */
+#define RV1126_GMAC_PHY_INTF_SEL_RGMII	\
+		(GRF_BIT(4) | GRF_CLR_BIT(5) | GRF_CLR_BIT(6))
+#define RV1126_GMAC_PHY_INTF_SEL_RMII	\
+		(GRF_CLR_BIT(4) | GRF_CLR_BIT(5) | GRF_BIT(6))
+#define RV1126_GMAC_FLOW_CTRL			GRF_BIT(7)
+#define RV1126_GMAC_FLOW_CTRL_CLR		GRF_CLR_BIT(7)
+#define RV1126_GMAC_M0_RXCLK_DLY_ENABLE		GRF_BIT(1)
+#define RV1126_GMAC_M0_RXCLK_DLY_DISABLE	GRF_CLR_BIT(1)
+#define RV1126_GMAC_M0_TXCLK_DLY_ENABLE		GRF_BIT(0)
+#define RV1126_GMAC_M0_TXCLK_DLY_DISABLE	GRF_CLR_BIT(0)
+#define RV1126_GMAC_M1_RXCLK_DLY_ENABLE		GRF_BIT(3)
+#define RV1126_GMAC_M1_RXCLK_DLY_DISABLE	GRF_CLR_BIT(3)
+#define RV1126_GMAC_M1_TXCLK_DLY_ENABLE		GRF_BIT(2)
+#define RV1126_GMAC_M1_TXCLK_DLY_DISABLE	GRF_CLR_BIT(2)
+
+/* RV1126_GRF_GMAC_CON1 */
+#define RV1126_GMAC_M0_CLK_RX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 8)
+#define RV1126_GMAC_M0_CLK_TX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 0)
+/* RV1126_GRF_GMAC_CON2 */
+#define RV1126_GMAC_M1_CLK_RX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 8)
+#define RV1126_GMAC_M1_CLK_TX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 0)
+
+static void rv1126_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "Missing rockchip,grf property\n");
+		return;
+	}
+
+	regmap_write(bsp_priv->grf, RV1126_GRF_GMAC_CON0,
+		     RV1126_GMAC_PHY_INTF_SEL_RGMII |
+		     RV1126_GMAC_M0_RXCLK_DLY_ENABLE |
+		     RV1126_GMAC_M0_TXCLK_DLY_ENABLE |
+		     RV1126_GMAC_M1_RXCLK_DLY_ENABLE |
+		     RV1126_GMAC_M1_TXCLK_DLY_ENABLE);
+
+	regmap_write(bsp_priv->grf, RV1126_GRF_GMAC_CON1,
+		     RV1126_GMAC_M0_CLK_RX_DL_CFG(rx_delay) |
+		     RV1126_GMAC_M0_CLK_TX_DL_CFG(tx_delay));
+
+	regmap_write(bsp_priv->grf, RV1126_GRF_GMAC_CON2,
+		     RV1126_GMAC_M1_CLK_RX_DL_CFG(rx_delay) |
+		     RV1126_GMAC_M1_CLK_TX_DL_CFG(tx_delay));
+}
+
+static void rv1126_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
+		return;
+	}
+
+	regmap_write(bsp_priv->grf, RV1126_GRF_GMAC_CON0,
+		     RV1126_GMAC_PHY_INTF_SEL_RMII);
+}
+
+static void rv1126_set_rgmii_speed(struct rk_priv_data *bsp_priv, int speed)
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
+		dev_err(dev, "unknown speed value for RGMII speed=%d", speed);
+		return;
+	}
+
+	ret = clk_set_rate(bsp_priv->clk_mac_speed, rate);
+	if (ret)
+		dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
+			__func__, rate, ret);
+}
+
+static void rv1126_set_rmii_speed(struct rk_priv_data *bsp_priv, int speed)
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
+	default:
+		dev_err(dev, "unknown speed value for RGMII speed=%d", speed);
+		return;
+	}
+
+	ret = clk_set_rate(bsp_priv->clk_mac_speed, rate);
+	if (ret)
+		dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
+			__func__, rate, ret);
+}
+
+static const struct rk_gmac_ops rv1126_ops = {
+	.set_to_rgmii = rv1126_set_to_rgmii,
+	.set_to_rmii = rv1126_set_to_rmii,
+	.set_rgmii_speed = rv1126_set_rgmii_speed,
+	.set_rmii_speed = rv1126_set_rmii_speed,
+};
+
 #define RK_GRF_MACPHY_CON0		0xb00
 #define RK_GRF_MACPHY_CON1		0xb04
 #define RK_GRF_MACPHY_CON2		0xb08
@@ -1836,6 +1960,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
 	{ .compatible = "rockchip,rk3588-gmac", .data = &rk3588_ops },
 	{ .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
+	{ .compatible = "rockchip,rv1126-gmac", .data = &rv1126_ops },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, rk_gmac_dwmac_match);
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
