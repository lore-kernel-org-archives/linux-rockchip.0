Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E9EBCCD1AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 22:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYiwxQZmhBsxppAhJBTNCgyy5OGPg8yswSVtq46S0rM=; b=3DEq+ilzg+jPY5
	jaTJTvirO5V6+CMZG0F98aDyjvE8NAB+bKBqJH98FoFo72J8hyw5JeJBZWWnQFn8qHqpAbAblHkSw
	Fyjm8+MKMq0JfInFLM7H/n9cApXnLVUjRu7sREeT3E3ltnjRDtnKSyn3rhXkTdAZtJEDL1XfxuzuH
	NMT/WYnaLWOy4T8qxEtOuJIsJYGD/kUGEDQmlkHDoAfjSP3nBg1zsAKwjSpGQl7J8Gdy35TewXXyz
	ngZQBg8DgzlqWjLtM90ZtSis0Vh0IjyoxaOWLkqzJsfSfRnyB4XGMAbu09UoC85/7g25z0Y+8eQ0b
	36orprS5p5i9+ErKzy7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBL63-00000000q5M-1Hzl;
	Tue, 21 Oct 2025 22:44:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBL5l-00000000pjh-2jNL;
	Tue, 21 Oct 2025 22:44:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=k337ivC7NrcTNieDT0Q2eCyvA/Xn4/BzwHpob3IicHE=; b=EEWtocEYifRPL35M5DCVbhER71
	srkwVoDTTN1rShvLxlZPgXDd+EDeu3IKVfHdF/KCQNwpEXi85il3xhUFF03wq7Kyvj2+HhbbwyNYs
	s9CI6ljwDopEZw4/6xul6a/r5YfLVIMuwhhOlVisR9QHW8Magow4D5i57wZj/QKib4p//Wm4Ev79l
	0D+ID/rOm4R3g8/SsRIrbUcl4QD7QF8rPZxyTw+aKrFbiQiTKjgzP2f8Ve2Snb/2npiCAQlXbVkle
	Oyp511ZNscRpQ0oVf8eVxnFW91yvE7J2QamQV7S6t77Rt+DQ1hvYY4GZZMVV1TccxgkNW2mbdSyAy
	WtItemvQ==;
Received: from i53875b19.versanet.de ([83.135.91.25] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBL5e-0006q7-2z; Wed, 22 Oct 2025 00:44:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	David Wu <david.wu@rock-chips.com>
Subject: [PATCH 4/4] ethernet: stmmac: dwmac-rk: Add RK3506 GMAC support
Date: Wed, 22 Oct 2025 00:43:57 +0200
Message-ID: <20251021224357.195015-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021224357.195015-1-heiko@sntech.de>
References: <20251021224357.195015-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_154433_689598_A2477C7B 
X-CRM114-Status: GOOD (  15.31  )
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

Add the needed glue blocks for the RK3506-specific setup.

The RK3506 dwmac only supports up to 100MBit with a RMII PHY,
but no RGMII.

Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 51ea0caf16c1..e1e036e7163c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -827,6 +827,84 @@ static const struct rk_gmac_ops rk3399_ops = {
 	.set_speed = rk3399_set_speed,
 };
 
+#define RK3506_GRF_SOC_CON8		0X0020
+#define RK3506_GRF_SOC_CON11		0X002c
+
+#define RK3506_GMAC_RMII_MODE		GRF_BIT(1)
+
+#define RK3506_GMAC_CLK_RMII_DIV2	GRF_BIT(3)
+#define RK3506_GMAC_CLK_RMII_DIV20	GRF_CLR_BIT(3)
+
+#define RK3506_GMAC_CLK_SELET_CRU	GRF_CLR_BIT(5)
+#define RK3506_GMAC_CLK_SELET_IO	GRF_BIT(5)
+
+#define RK3506_GMAC_CLK_RMII_GATE	GRF_BIT(2)
+#define RK3506_GMAC_CLK_RMII_NOGATE	GRF_CLR_BIT(2)
+
+static void rk3506_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = bsp_priv->dev;
+	unsigned int id = bsp_priv->id, offset;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
+		return;
+	}
+
+	offset = (id == 1) ? RK3506_GRF_SOC_CON11 : RK3506_GRF_SOC_CON8;
+	regmap_write(bsp_priv->grf, offset, RK3506_GMAC_RMII_MODE);
+}
+
+static int rk3506_set_speed(struct rk_priv_data *bsp_priv,
+			    phy_interface_t interface, int speed)
+{
+	struct device *dev = bsp_priv->dev;
+	unsigned int val, offset, id = bsp_priv->id;
+
+	switch (speed) {
+	case 10:
+		val = RK3506_GMAC_CLK_RMII_DIV20;
+		break;
+	case 100:
+		val = RK3506_GMAC_CLK_RMII_DIV2;
+		break;
+	default:
+		dev_err(dev, "unknown speed value for RMII! speed=%d", speed);
+		return -EINVAL;
+	}
+
+	offset = (id == 1) ? RK3506_GRF_SOC_CON11 : RK3506_GRF_SOC_CON8;
+	regmap_write(bsp_priv->grf, offset, val);
+
+	return 0;
+}
+
+static void rk3506_set_clock_selection(struct rk_priv_data *bsp_priv,
+				       bool input, bool enable)
+{
+	unsigned int value, offset, id = bsp_priv->id;
+
+	offset = (id == 1) ? RK3506_GRF_SOC_CON11 : RK3506_GRF_SOC_CON8;
+
+	value = input ? RK3506_GMAC_CLK_SELET_IO :
+			RK3506_GMAC_CLK_SELET_CRU;
+	value |= enable ? RK3506_GMAC_CLK_RMII_NOGATE :
+			  RK3506_GMAC_CLK_RMII_GATE;
+	regmap_write(bsp_priv->grf, offset, value);
+}
+
+static const struct rk_gmac_ops rk3506_ops = {
+	.set_to_rmii = rk3506_set_to_rmii,
+	.set_speed = rk3506_set_speed,
+	.set_clock_selection = rk3506_set_clock_selection,
+	.regs_valid = true,
+	.regs = {
+		0xff4c8000, /* gmac0 */
+		0xff4d0000, /* gmac1 */
+		0x0, /* sentinel */
+	},
+};
+
 #define RK3528_VO_GRF_GMAC_CON		0x0018
 #define RK3528_VO_GRF_MACPHY_CON0	0x001c
 #define RK3528_VO_GRF_MACPHY_CON1	0x0020
@@ -1808,6 +1886,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
+	{ .compatible = "rockchip,rk3506-gmac", .data = &rk3506_ops },
 	{ .compatible = "rockchip,rk3528-gmac", .data = &rk3528_ops },
 	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
 	{ .compatible = "rockchip,rk3576-gmac", .data = &rk3576_ops },
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
