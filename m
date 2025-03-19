Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA5AC35FFA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Mar 2025 21:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGrXZjm0dCYLw3MEHNSRm69oS2qIHyQ4dGsr6NTkjk8=; b=HFDiTRTmBfv+Mj
	yhItd1b9Nt62svCJtyfOCtXy6Qecvn1sn1cOXHBuYf31OztY/SMCgT0SM8LQUMqx6dpagOO/K5vj8
	vkTnj/bk9IVtL1LqxY27LiLlAzSUBDjw+wDiofBAWYAY2HOBNFfpSGr3e1CAlvAgoQk4uz/lOixNw
	H+GbwucR3yTVKDEOU0G07+xuDKaubVfrkwYDppGx49McnpOjrmdUQQa1QLW3aa384wuHCkqXIE9FH
	3MivJ3PiGmnQQ9JfGVsqLQ0IscC/SJ8WX+sSC6u3WUWZTIjmaffQ6GLuESPf8LGDaGMJJLUulYkx2
	oCPyPgDNEEPj1mFKgshw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1Jy-0000000ACPv-0khK;
	Wed, 19 Mar 2025 21:51:30 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1Dc-0000000ABOA-1Lm0
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Mar 2025 21:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1742420695; bh=9X1F/xfetnSLnkEq2u6eu/eFYJz8Nx38UqeZ/11Mabw=;
 b=lDewz1IPzNuZr1to+bNZnuyaoMUhxlgMGGqdkqiZzsHAgLG7aVMY7Zl3jiVnbTvZ9V3/SC46H
 U+HptIlBSlksiQwzyELtkIzA9H85T4LyPwLHMhQcb+P/oAMelqV/ROojsxdcDwW5VSq+LjQ0L4w
 bnfiRZJ8EO+xAaDlRwwDmgAh3gPenXuH0M27w/Bv3cXzcZq8WAseltnpkbwOMMMkFj0GhwbZPLI
 dxZJ327bJWdh0tkq7t66ijohYg3fAdh32V8CcqO5f/NF6YGb9K+w4WngHUITjqtEo1E42rLqYuQ
 TUdrMSAj2oRTBMdeJYmeui2w9zFCHBZ1ODcUUOf0p8rw==
X-Forward-Email-ID: 67db3ac9cf4d592372b9942d
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
Subject: [PATCH net-next v3 4/5] net: stmmac: dwmac-rk: Add integrated_phy_powerdown operation
Date: Wed, 19 Mar 2025 21:44:08 +0000
Message-ID: <20250319214415.3086027-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250319214415.3086027-1-jonas@kwiboo.se>
References: <20250319214415.3086027-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_144456_399648_0F51A99E 
X-CRM114-Status: GOOD (  12.08  )
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

Add a new integrated_phy_powerdown operation and change the call chain
for integrated_phy_powerup to prepare support for the integrated PHY
found in these newer SoCs.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v3:
- No change
Changes in v2:
- New patch
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 26 +++++++++++--------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 0321befed0d3..3673abd65302 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -33,6 +33,7 @@ struct rk_gmac_ops {
 	void (*set_clock_selection)(struct rk_priv_data *bsp_priv, bool input,
 				    bool enable);
 	void (*integrated_phy_powerup)(struct rk_priv_data *bsp_priv);
+	void (*integrated_phy_powerdown)(struct rk_priv_data *bsp_priv);
 	bool php_grf_required;
 	bool regs_valid;
 	u32 regs[];
@@ -104,11 +105,8 @@ struct rk_priv_data {
 #define RK_GRF_CON2_MACPHY_ID		HIWORD_UPDATE(0x1234, 0xffff, 0)
 #define RK_GRF_CON3_MACPHY_ID		HIWORD_UPDATE(0x35, 0x3f, 0)
 
-static void rk_gmac_integrated_phy_powerup(struct rk_priv_data *priv)
+static void rk_gmac_integrated_ephy_powerup(struct rk_priv_data *priv)
 {
-	if (priv->ops->integrated_phy_powerup)
-		priv->ops->integrated_phy_powerup(priv);
-
 	regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_CFG_CLK_50M);
 	regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_GMAC2PHY_RMII_MODE);
 
@@ -129,7 +127,7 @@ static void rk_gmac_integrated_phy_powerup(struct rk_priv_data *priv)
 	}
 }
 
-static void rk_gmac_integrated_phy_powerdown(struct rk_priv_data *priv)
+static void rk_gmac_integrated_ephy_powerdown(struct rk_priv_data *priv)
 {
 	regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_DISABLE);
 	if (priv->phy_reset)
@@ -368,6 +366,8 @@ static void rk3228_integrated_phy_powerup(struct rk_priv_data *priv)
 {
 	regmap_write(priv->grf, RK3228_GRF_CON_MUX,
 		     RK3228_GRF_CON_MUX_GMAC_INTEGRATED_PHY);
+
+	rk_gmac_integrated_ephy_powerup(priv);
 }
 
 static const struct rk_gmac_ops rk3228_ops = {
@@ -375,7 +375,8 @@ static const struct rk_gmac_ops rk3228_ops = {
 	.set_to_rmii = rk3228_set_to_rmii,
 	.set_rgmii_speed = rk3228_set_rgmii_speed,
 	.set_rmii_speed = rk3228_set_rmii_speed,
-	.integrated_phy_powerup =  rk3228_integrated_phy_powerup,
+	.integrated_phy_powerup = rk3228_integrated_phy_powerup,
+	.integrated_phy_powerdown = rk_gmac_integrated_ephy_powerdown,
 };
 
 #define RK3288_GRF_SOC_CON1	0x0248
@@ -601,6 +602,8 @@ static void rk3328_integrated_phy_powerup(struct rk_priv_data *priv)
 {
 	regmap_write(priv->grf, RK3328_GRF_MACPHY_CON1,
 		     RK3328_MACPHY_RMII_MODE);
+
+	rk_gmac_integrated_ephy_powerup(priv);
 }
 
 static const struct rk_gmac_ops rk3328_ops = {
@@ -608,7 +611,8 @@ static const struct rk_gmac_ops rk3328_ops = {
 	.set_to_rmii = rk3328_set_to_rmii,
 	.set_rgmii_speed = rk3328_set_rgmii_speed,
 	.set_rmii_speed = rk3328_set_rmii_speed,
-	.integrated_phy_powerup =  rk3328_integrated_phy_powerup,
+	.integrated_phy_powerup = rk3328_integrated_phy_powerup,
+	.integrated_phy_powerdown = rk_gmac_integrated_ephy_powerdown,
 };
 
 #define RK3366_GRF_SOC_CON6	0x0418
@@ -1802,16 +1806,16 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 
 	pm_runtime_get_sync(dev);
 
-	if (bsp_priv->integrated_phy)
-		rk_gmac_integrated_phy_powerup(bsp_priv);
+	if (bsp_priv->integrated_phy && bsp_priv->ops->integrated_phy_powerup)
+		bsp_priv->ops->integrated_phy_powerup(bsp_priv);
 
 	return 0;
 }
 
 static void rk_gmac_powerdown(struct rk_priv_data *gmac)
 {
-	if (gmac->integrated_phy)
-		rk_gmac_integrated_phy_powerdown(gmac);
+	if (gmac->integrated_phy && gmac->ops->integrated_phy_powerdown)
+		gmac->ops->integrated_phy_powerdown(gmac);
 
 	pm_runtime_put_sync(&gmac->pdev->dev);
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
