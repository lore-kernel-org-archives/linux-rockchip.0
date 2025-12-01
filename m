Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FE84D116F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 14:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=md04mz5rS+3QRA7CzFtZWR+fa3IQOHTjUMPQxHcckKg=; b=nBo7BSNsNDEeAB
	GsLgbYY5Oh+X/Psm6Sh55kuxJKsCoaralPSSzBG4mPZ/FAPu7NzaquCo8GD1sNWi0p0zc3BSrOpJf
	y5suM17ENeI99aX5Uy91cHio8TLBW6zAJ0ul2A/3oJW7QJ+vsp5icpWqsDvkecmbmBe3xgGxEt0fX
	tYWlw5YwUIR570st9zvOQIbV0RdaCvF0cw5S263I4s+WH0LQwlCWoEFpYGSj1nXR2o3P9Vd3PeaHU
	r1Ke30L/1PEUI2qqqQtDN8EeqU6IQAwPi17vsdvhwMHGQ9/I7//WxGaFRb5jY+vox1xjHT66+KgUR
	XAFBOgLk4uomxy6GSjlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ5F2-000000046f6-2rAo;
	Mon, 01 Dec 2025 14:51:04 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ5Ez-000000046bn-3Yib;
	Mon, 01 Dec 2025 14:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZaKSEvdDyeTiA0HMqOl6QsBhL6t6yklD6sx9tNZvcpA=; b=i3/F45thnTBz2RLGjkaZ6VfJzK
	WkPJbbsRuJt1c2iiDhQ4RgCBoRwGyCjdzlrrblq1iHQ8Ns2W2khF3vz4mLN9ad6uxSJZnz3dRSHgM
	l64SMXxOikLC/OKC7UG8urHTXOw03MZb6mOKNTtawrzuvTB1dacjTQ8sh4mqxmmJbuqgq1VdvEYp7
	QmjGsIigaHC9NLW6EyIAhsJ2l5MYi1rtDe5v286rPDDO1OoK4UIphmXKpr91JWvmD86M+bma7kCZ6
	zvPPwaTzjOtLz7atE6w9qf7QlMFBHqCQmVmDAbe1Ne3MjXcuLDj8V86XAGK41X29O+upeT8yR6F/S
	KnMukDPQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:43530 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vQ5Er-000000000fH-3Sz4;
	Mon, 01 Dec 2025 14:50:53 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vQ5Eq-0000000GNva-3OiR;
	Mon, 01 Dec 2025 14:50:52 +0000
In-Reply-To: <aS2rFBlz1jdwXaS8@shell.armlinux.org.uk>
References: <aS2rFBlz1jdwXaS8@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH RFC net-next 02/15] net: stmmac: rk: convert rk3328 to use
 bsp_priv->id
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vQ5Eq-0000000GNva-3OiR@rmk-PC.armlinux.org.uk>
Date: Mon, 01 Dec 2025 14:50:52 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_065101_886506_2C891A5D 
X-CRM114-Status: GOOD (  13.78  )
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

rk3328 contains two GMAC instances - gmac2io and gmac2phy. The gmac2io
instance can be connected to an external PHY, whereas gmac2phy is
connected via RMII to an on-SoC integrated PHY. This configuration can
not be changed.

The driver tests for the gmac2phy instance by checking
bsp_priv->integrated_phy (determined from the PHY's phy-is-integrated
property) and sometimes that the interface mode is RMII. This works
because the rk3328.dtsi has:

        gmac2phy: ethernet@ff550000 {
                compatible = "rockchip,rk3328-gmac";
                phy-mode = "rmii";

                mdio {
                        phy: ethernet-phy@0 {
                                phy-is-integrated;
                        };
                };
        };

The driver contains a mechanism to look up the MMIO address in a table
to determine bsp_priv->id, which is used for every other Rockchip
device. Switch rk3328 to use this mechanism to determine bsp_priv->id
and use that to select which GRF register is used for configuration.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 3679081047e0..f9bc9b145ff4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -566,8 +566,7 @@ static void rk3328_set_to_rmii(struct rk_priv_data *bsp_priv)
 {
 	unsigned int reg;
 
-	reg = bsp_priv->integrated_phy ? RK3328_GRF_MAC_CON2 :
-		  RK3328_GRF_MAC_CON1;
+	reg = bsp_priv->id ? RK3328_GRF_MAC_CON2 : RK3328_GRF_MAC_CON1;
 
 	regmap_write(bsp_priv->grf, reg,
 		     RK3328_GMAC_PHY_INTF_SEL(PHY_INTF_SEL_RMII) |
@@ -587,10 +586,7 @@ static int rk3328_set_speed(struct rk_priv_data *bsp_priv,
 {
 	unsigned int reg;
 
-	if (interface == PHY_INTERFACE_MODE_RMII && bsp_priv->integrated_phy)
-		reg = RK3328_GRF_MAC_CON2;
-	else
-		reg = RK3328_GRF_MAC_CON1;
+	reg = bsp_priv->id ? RK3328_GRF_MAC_CON2 : RK3328_GRF_MAC_CON1;
 
 	return rk_set_reg_speed(bsp_priv, &rk3328_reg_speed_data, reg,
 				interface, speed);
@@ -610,6 +606,13 @@ static const struct rk_gmac_ops rk3328_ops = {
 	.set_speed = rk3328_set_speed,
 	.integrated_phy_powerup = rk3328_integrated_phy_powerup,
 	.integrated_phy_powerdown = rk_gmac_integrated_ephy_powerdown,
+
+	.regs_valid = true,
+	.regs = {
+		0xff540000, /* gmac2io */
+		0xff550000, /* gmac2phy */
+		0, /* sentinel */
+	},
 };
 
 #define RK3366_GRF_SOC_CON6	0x0418
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
