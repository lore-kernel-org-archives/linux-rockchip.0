Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 854ADC36000
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Mar 2025 21:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5V54euHHNcvkGJkWsWznjWa9RXBxeciLK/OM9hqWrA=; b=kdpZDrXpqBk9ad
	qhsrEP41ZWsuh3q/xgPQY0RpI2k6YdkHR0+xCbyhQwq4s88tNYU7vFSqgvTgfJSYZMJ6ruPbf0Nz+
	uQPQESy+1MxqxKJPFapb28nADfCoxzo9OpRSD+e+AFeJJ6uWyvZdE71XFGAd0I6IngmvGkPuDa0wa
	pwImsYxA1OxGCvkvN6pOpTPKNk1lK7mFM6ej/itVKLbaZmNuG9u9Dj2a5PagJLmVGX4b9OQE10/8T
	wJ6fomP1PR08TfaAF0D91TTpeUF+PninZzIWj1vmkUgJ88EgUnzAnRmgAh5qGjVlO3NoXq3+EPTvd
	ce4xpFrvW1th4+i9JLAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1Jy-0000000ACQ7-2Gbz;
	Wed, 19 Mar 2025 21:51:30 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1Df-0000000ABOd-17VD
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Mar 2025 21:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1742420699; bh=L6J1WZQlQ4jkkHrsEJmiDwnkEgm0ftZ58Eh+fnNyjbU=;
 b=YqsgGlazcMsSJ9AXlF29vFLc7kdw089H3GrFgZx/fkWczqes+jL2E1oDpu42n4q99yCdD14JB
 UYPXGfBJ5dAJv6dk6dUqtU0fNy029vAbS8P1tkqwfhDvxseuSHJDgkaBAgCs4yjXyXldaCo5PNp
 EXzo4YQkYRWIXyaeaIvqA2JeSti2pOUBzBmV+pH8Nw5sWydB++oATiGsQ613WHFEENYHqENbc2i
 GlkoJhLoa65wWOQROK+ohzV1uTGBMBFys1K8nEsvFATp2rOCgDfiomy8Oxet67W5gGjZ6E5Kp+i
 2S4jbhiAfOw1s0y7ERwzMN37SPnL68PKM/mtjZOZMDjw==
X-Forward-Email-ID: 67db3acecf4d592372b99442
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
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
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
Subject: [PATCH net-next v3 5/5] net: stmmac: dwmac-rk: Add initial support for RK3528 integrated PHY
Date: Wed, 19 Mar 2025 21:44:09 +0000
Message-ID: <20250319214415.3086027-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250319214415.3086027-1-jonas@kwiboo.se>
References: <20250319214415.3086027-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_144459_343349_C5A9DFA8 
X-CRM114-Status: GOOD (  12.17  )
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

Rockchip RK3528 (and RV1106) has a different integrated PHY compared to
the integrated PHY on RK3228/RK3328. Current powerup/down operation is
not compatible with the integrated PHY found in these newer SoCs.

Add operations to powerup/down the integrated PHY found in RK3528.
Use helpers that can be used by other GMAC variants in the future.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v3:
- No change
Changes in v2:
- New patch

This is enough to power up the integrated PHY on RK3528 for MDIO/MII.
However, a PHY driver is still missing and I do not have any RK3528
board that make use of this MAC and PHY, so something that can be
improved upon in the future.
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 3673abd65302..700858ff6f7c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -134,6 +134,35 @@ static void rk_gmac_integrated_ephy_powerdown(struct rk_priv_data *priv)
 		reset_control_assert(priv->phy_reset);
 }
 
+#define RK_FEPHY_SHUTDOWN		GRF_BIT(1)
+#define RK_FEPHY_POWERUP		GRF_CLR_BIT(1)
+#define RK_FEPHY_INTERNAL_RMII_SEL	GRF_BIT(6)
+#define RK_FEPHY_24M_CLK_SEL		(GRF_BIT(8) | GRF_BIT(9))
+#define RK_FEPHY_PHY_ID			GRF_BIT(11)
+
+static void rk_gmac_integrated_fephy_powerup(struct rk_priv_data *priv,
+					     unsigned int reg)
+{
+	reset_control_assert(priv->phy_reset);
+	usleep_range(20, 30);
+
+	regmap_write(priv->grf, reg,
+		     RK_FEPHY_POWERUP |
+		     RK_FEPHY_INTERNAL_RMII_SEL |
+		     RK_FEPHY_24M_CLK_SEL |
+		     RK_FEPHY_PHY_ID);
+	usleep_range(10000, 12000);
+
+	reset_control_deassert(priv->phy_reset);
+	usleep_range(50000, 60000);
+}
+
+static void rk_gmac_integrated_fephy_powerdown(struct rk_priv_data *priv,
+					       unsigned int reg)
+{
+	regmap_write(priv->grf, reg, RK_FEPHY_SHUTDOWN);
+}
+
 #define PX30_GRF_GMAC_CON1		0x0904
 
 /* PX30_GRF_GMAC_CON1 */
@@ -993,12 +1022,24 @@ static void rk3528_set_clock_selection(struct rk_priv_data *bsp_priv,
 	}
 }
 
+static void rk3528_integrated_phy_powerup(struct rk_priv_data *bsp_priv)
+{
+	rk_gmac_integrated_fephy_powerup(bsp_priv, RK3528_VO_GRF_MACPHY_CON0);
+}
+
+static void rk3528_integrated_phy_powerdown(struct rk_priv_data *bsp_priv)
+{
+	rk_gmac_integrated_fephy_powerdown(bsp_priv, RK3528_VO_GRF_MACPHY_CON0);
+}
+
 static const struct rk_gmac_ops rk3528_ops = {
 	.set_to_rgmii = rk3528_set_to_rgmii,
 	.set_to_rmii = rk3528_set_to_rmii,
 	.set_rgmii_speed = rk3528_set_rgmii_speed,
 	.set_rmii_speed = rk3528_set_rmii_speed,
 	.set_clock_selection = rk3528_set_clock_selection,
+	.integrated_phy_powerup = rk3528_integrated_phy_powerup,
+	.integrated_phy_powerdown = rk3528_integrated_phy_powerdown,
 	.regs_valid = true,
 	.regs = {
 		0xffbd0000, /* gmac0 */
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
