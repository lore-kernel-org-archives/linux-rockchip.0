Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECF50D72373
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 11:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2gWlGPvexG7Z4TwHQtvgS/NdHf9Un1KtSwRiNltUyQ=; b=HZs4BshXiZBQf0
	pzC8DnTp2RGiGRJx1dTcqsfRiOaYX04Zfp43h58vawi2EYD0Auz6X8GSj43zMcwE+mH5aLV4eGFHj
	u1e1WYFV4K/Ryh+J1kgWjypLHJUe0+AU/XPCkJqNRQQhnf3GCM3jztt1gqGDLAvzgT8wV+icpR8XZ
	CgXF97ZCUN3CnXwc1gwOypiHQPpNo7P2JvxlG6Fitq1E10UfCuyCLBgb4AjpRrSWtmeyNxJ/QvZHV
	tfjZT8aCMEUs3sW96oAp9sCPR5slIxsW1aKkmkibCS46jqNWGkeVGNiwPZmPrI6WU6k+gK+EPxLPV
	Hk5t2MWyPwAvgf1RS5Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjEv0-00000008mKn-2FgT;
	Fri, 23 Jan 2026 11:01:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjEuw-00000008mF6-0EuO;
	Fri, 23 Jan 2026 11:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description;
	bh=C9X93ngFdepZJ7tlo3uK6JHD/4lpqLqmjUTQoYX79KQ=; b=XnD4nqXoec0Ukn3Cy3DfiF9Sa6
	zFB1nOcq8RwcnEsPkc6Sq8CeFjqcIjppcQP+S9CHfccW5xnAFtpEVxbvl97EW7RYGGjrBdida945R
	10j9lRXtKzGr/3cZSWcXD2QhpzDsKsvK5WfprwVu1yQvLN3XJlteanOmVkbbih8MC7moO8Osf2tpc
	+gL/D2n2DgFJ9zv/Gtm62TFpEOioaV5432nambcP/Vx11Mg6kNGv6spKG/iz8wXDTmASFRjGD95/f
	09/vmEN4r6UV1L07cStI34qlcnm4r/vrUqRqu3LxJM4nsmJFyYHvSVXBU1aOO0ScA7JJcyuYUzqHF
	wGflLTiA==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjEus-00000002DQd-3l3r;
	Fri, 23 Jan 2026 11:01:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=C9X93ngFdepZJ7tlo3uK6JHD/4lpqLqmjUTQoYX79KQ=; b=nvQh7NG1A+rE9MGH1ZNoosBYsC
	aqOn+JbCxR+IQaruD+m8hdWlfo2zCjLA+a6wQpIfggw7GIir9FFMEkhKmhTyOg1vQpWQLtrdtTt0n
	mPSHZbZQ3nOJ53+05kyVCBt6OvaYqCSnP0H3F9aGLM21CUzPMg2CO9TCeqUZIZS6c4vQ1c3X3Ky0q
	rnjokF82F9sYjbUgPz0IV+QCnPZw2KRCebFmc0kCKVaqYarox6V+OHSBAS8XDNMdo1npCS9jzapD9
	wQ81AzRsuWO+k+7SBYcP8pKwfyCyG6MJ+yp1BGx+mLrvx8/gQ5PZP9LXoMYc4X+1u1vnErLaaW7Sg
	ueb+m4iQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:42140 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vjEuh-000000001pF-2LNz;
	Fri, 23 Jan 2026 11:01:16 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vjEuf-00000005ggc-3vy3;
	Fri, 23 Jan 2026 11:01:13 +0000
In-Reply-To: <aXNUlVZilT-CTgph@shell.armlinux.org.uk>
References: <aXNUlVZilT-CTgph@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next 11/21] net: stmmac: rk: use rk_encode_wm16() for
 RGMII clocks
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vjEuf-00000005ggc-3vy3@rmk-PC.armlinux.org.uk>
Date: Fri, 23 Jan 2026 11:01:13 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_110127_186132_3E25194B 
X-CRM114-Status: GOOD (  17.24  )
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

As all of the RGMII clock selection bitfields (gmii_clk_sel) use the
same encoding, parameterise this by providing the bitfield mask in
the BSP private data.

This is the last user of GRF_FIELD_CONST(), so remove that definition
as well.

One additional change is for RK3328 - as only gmac2io supports RGMII,
only initialise the mask for this instance.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 100 +++++++-----------
 1 file changed, 36 insertions(+), 64 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index f2b7917b6a30..0f94304e721a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -26,10 +26,11 @@
 
 struct rk_priv_data;
 
+struct rk_clock_fields {
+	u16 gmii_clk_sel_mask;
+};
+
 struct rk_reg_speed_data {
-	unsigned int rgmii_10;
-	unsigned int rgmii_100;
-	unsigned int rgmii_1000;
 	unsigned int rmii_10;
 	unsigned int rmii_100;
 };
@@ -51,6 +52,7 @@ struct rk_gmac_ops {
 	u16 gmac_rmii_mode_mask;
 
 	u16 clock_grf_reg;
+	struct rk_clock_fields clock;
 
 	bool clock_grf_reg_in_php;
 	bool php_grf_required;
@@ -104,12 +106,24 @@ struct rk_priv_data {
 	u16 gmac_rmii_mode_mask;
 
 	u16 clock_grf_reg;
+	struct rk_clock_fields clock;
 };
 
 #define GMAC_CLK_DIV1_125M		0
 #define GMAC_CLK_DIV50_2_5M		2
 #define GMAC_CLK_DIV5_25M		3
 
+static int rk_gmac_rgmii_clk_div(int speed)
+{
+	if (speed == SPEED_10)
+		return GMAC_CLK_DIV50_2_5M;
+	if (speed == SPEED_100)
+		return GMAC_CLK_DIV5_25M;
+	if (speed == SPEED_1000)
+		return GMAC_CLK_DIV1_125M;
+	return -EINVAL;
+}
+
 static int rk_get_phy_intf_sel(phy_interface_t interface)
 {
 	int ret = stmmac_get_phy_intf_sel(interface);
@@ -148,20 +162,14 @@ static int rk_set_reg_speed(struct rk_priv_data *bsp_priv,
 			    phy_interface_t interface, int speed)
 {
 	unsigned int val;
+	int ret;
 
 	if (phy_interface_mode_is_rgmii(interface)) {
-		if (speed == SPEED_10) {
-			val = rsd->rgmii_10;
-		} else if (speed == SPEED_100) {
-			val = rsd->rgmii_100;
-		} else if (speed == SPEED_1000) {
-			val = rsd->rgmii_1000;
-		} else {
-			/* Phylink will not allow inappropriate speeds for
-			 * interface modes, so this should never happen.
-			 */
-			return -EINVAL;
-		}
+		ret = rk_gmac_rgmii_clk_div(speed);
+		if (ret < 0)
+			return ret;
+
+		val = rk_encode_wm16(ret, bsp_priv->clock.gmii_clk_sel_mask);
 	} else if (interface == PHY_INTERFACE_MODE_RMII) {
 		if (speed == SPEED_10) {
 			val = rsd->rmii_10;
@@ -202,8 +210,6 @@ static int rk_set_clk_mac_speed(struct rk_priv_data *bsp_priv,
 
 #define GRF_FIELD(hi, lo, val)		\
 	FIELD_PREP_WM16(GENMASK_U16(hi, lo), val)
-#define GRF_FIELD_CONST(hi, lo, val)	\
-	FIELD_PREP_WM16_CONST(GENMASK_U16(hi, lo), val)
 
 #define GRF_BIT(nr)			(BIT(nr) | BIT(nr+16))
 #define GRF_CLR_BIT(nr)			(BIT(nr+16))
@@ -349,7 +355,6 @@ static const struct rk_gmac_ops px30_ops = {
 #define RK3128_GMAC_SPEED_100M         GRF_BIT(10)
 #define RK3128_GMAC_RMII_CLK_25M       GRF_BIT(11)
 #define RK3128_GMAC_RMII_CLK_2_5M      GRF_CLR_BIT(11)
-#define RK3128_GMAC_CLK(val)           GRF_FIELD_CONST(13, 12, val)
 
 static void rk3128_set_to_rgmii(struct rk_priv_data *bsp_priv,
 				int tx_delay, int rx_delay)
@@ -365,9 +370,6 @@ static void rk3128_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3128_reg_speed_data = {
-	.rgmii_10 = RK3128_GMAC_CLK(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3128_GMAC_CLK(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3128_GMAC_CLK(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3128_GMAC_RMII_CLK_2_5M | RK3128_GMAC_SPEED_10M,
 	.rmii_100 = RK3128_GMAC_RMII_CLK_25M | RK3128_GMAC_SPEED_100M,
 };
@@ -389,6 +391,7 @@ static const struct rk_gmac_ops rk3128_ops = {
 	.gmac_rmii_mode_mask = BIT_U16(14),
 
 	.clock_grf_reg = RK3128_GRF_MAC_CON1,
+	.clock.gmii_clk_sel_mask = GENMASK_U16(13, 12),
 };
 
 #define RK3228_GRF_MAC_CON0	0x0900
@@ -407,7 +410,6 @@ static const struct rk_gmac_ops rk3128_ops = {
 #define RK3228_GMAC_SPEED_100M		GRF_BIT(2)
 #define RK3228_GMAC_RMII_CLK_25M	GRF_BIT(7)
 #define RK3228_GMAC_RMII_CLK_2_5M	GRF_CLR_BIT(7)
-#define RK3228_GMAC_CLK(val)		GRF_FIELD_CONST(9, 8, val)
 #define RK3228_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(0)
 #define RK3228_GMAC_TXCLK_DLY_DISABLE	GRF_CLR_BIT(0)
 #define RK3228_GMAC_RXCLK_DLY_ENABLE	GRF_BIT(1)
@@ -434,9 +436,6 @@ static void rk3228_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3228_reg_speed_data = {
-	.rgmii_10 = RK3228_GMAC_CLK(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3228_GMAC_CLK(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3228_GMAC_CLK(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3228_GMAC_RMII_CLK_2_5M | RK3228_GMAC_SPEED_10M,
 	.rmii_100 = RK3228_GMAC_RMII_CLK_25M | RK3228_GMAC_SPEED_100M,
 };
@@ -468,6 +467,7 @@ static const struct rk_gmac_ops rk3228_ops = {
 	.gmac_rmii_mode_mask = BIT_U16(10),
 
 	.clock_grf_reg = RK3228_GRF_MAC_CON1,
+	.clock.gmii_clk_sel_mask = GENMASK_U16(9, 8),
 };
 
 #define RK3288_GRF_SOC_CON1	0x0248
@@ -480,7 +480,6 @@ static const struct rk_gmac_ops rk3228_ops = {
 #define RK3288_GMAC_SPEED_100M		GRF_BIT(10)
 #define RK3288_GMAC_RMII_CLK_25M	GRF_BIT(11)
 #define RK3288_GMAC_RMII_CLK_2_5M	GRF_CLR_BIT(11)
-#define RK3288_GMAC_CLK(val)		GRF_FIELD_CONST(13, 12, val)
 
 /*RK3288_GRF_SOC_CON3*/
 #define RK3288_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(14)
@@ -504,9 +503,6 @@ static void rk3288_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3288_reg_speed_data = {
-	.rgmii_10 = RK3288_GMAC_CLK(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3288_GMAC_CLK(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3288_GMAC_CLK(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3288_GMAC_RMII_CLK_2_5M | RK3288_GMAC_SPEED_10M,
 	.rmii_100 = RK3288_GMAC_RMII_CLK_25M | RK3288_GMAC_SPEED_100M,
 };
@@ -528,6 +524,7 @@ static const struct rk_gmac_ops rk3288_ops = {
 	.gmac_rmii_mode_mask = BIT_U16(14),
 
 	.clock_grf_reg = RK3288_GRF_SOC_CON1,
+	.clock.gmii_clk_sel_mask = GENMASK_U16(13, 12),
 };
 
 #define RK3308_GRF_MAC_CON0		0x04a0
@@ -580,7 +577,6 @@ static const struct rk_gmac_ops rk3308_ops = {
 #define RK3328_GMAC_SPEED_100M		GRF_BIT(2)
 #define RK3328_GMAC_RMII_CLK_25M	GRF_BIT(7)
 #define RK3328_GMAC_RMII_CLK_2_5M	GRF_CLR_BIT(7)
-#define RK3328_GMAC_CLK(val)		GRF_FIELD_CONST(12, 11, val)
 #define RK3328_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(0)
 #define RK3328_GMAC_RXCLK_DLY_ENABLE	GRF_BIT(1)
 
@@ -593,6 +589,7 @@ static int rk3328_init(struct rk_priv_data *bsp_priv)
 	case 0: /* gmac2io */
 		bsp_priv->gmac_grf_reg = RK3328_GRF_MAC_CON1;
 		bsp_priv->clock_grf_reg = RK3328_GRF_MAC_CON1;
+		bsp_priv->clock.gmii_clk_sel_mask = GENMASK_U16(12, 11);
 		return 0;
 
 	case 1: /* gmac2phy */
@@ -622,9 +619,6 @@ static void rk3328_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3328_reg_speed_data = {
-	.rgmii_10 = RK3328_GMAC_CLK(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3328_GMAC_CLK(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3328_GMAC_CLK(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3328_GMAC_RMII_CLK_2_5M | RK3328_GMAC_SPEED_10M,
 	.rmii_100 = RK3328_GMAC_RMII_CLK_25M | RK3328_GMAC_SPEED_100M,
 };
@@ -673,7 +667,6 @@ static const struct rk_gmac_ops rk3328_ops = {
 #define RK3366_GMAC_SPEED_100M		GRF_BIT(7)
 #define RK3366_GMAC_RMII_CLK_25M	GRF_BIT(3)
 #define RK3366_GMAC_RMII_CLK_2_5M	GRF_CLR_BIT(3)
-#define RK3366_GMAC_CLK(val)		GRF_FIELD_CONST(5, 4, val)
 
 /* RK3366_GRF_SOC_CON7 */
 #define RK3366_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(7)
@@ -697,9 +690,6 @@ static void rk3366_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3366_reg_speed_data = {
-	.rgmii_10 = RK3366_GMAC_CLK(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3366_GMAC_CLK(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3366_GMAC_CLK(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3366_GMAC_RMII_CLK_2_5M | RK3366_GMAC_SPEED_10M,
 	.rmii_100 = RK3366_GMAC_RMII_CLK_25M | RK3366_GMAC_SPEED_100M,
 };
@@ -721,6 +711,7 @@ static const struct rk_gmac_ops rk3366_ops = {
 	.gmac_rmii_mode_mask = BIT_U16(6),
 
 	.clock_grf_reg = RK3366_GRF_SOC_CON6,
+	.clock.gmii_clk_sel_mask = GENMASK_U16(5, 4),
 };
 
 #define RK3368_GRF_SOC_CON15	0x043c
@@ -733,7 +724,6 @@ static const struct rk_gmac_ops rk3366_ops = {
 #define RK3368_GMAC_SPEED_100M		GRF_BIT(7)
 #define RK3368_GMAC_RMII_CLK_25M	GRF_BIT(3)
 #define RK3368_GMAC_RMII_CLK_2_5M	GRF_CLR_BIT(3)
-#define RK3368_GMAC_CLK(val)		GRF_FIELD_CONST(5, 4, val)
 
 /* RK3368_GRF_SOC_CON16 */
 #define RK3368_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(7)
@@ -757,9 +747,6 @@ static void rk3368_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3368_reg_speed_data = {
-	.rgmii_10 = RK3368_GMAC_CLK(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3368_GMAC_CLK(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3368_GMAC_CLK(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3368_GMAC_RMII_CLK_2_5M | RK3368_GMAC_SPEED_10M,
 	.rmii_100 = RK3368_GMAC_RMII_CLK_25M | RK3368_GMAC_SPEED_100M,
 };
@@ -781,6 +768,7 @@ static const struct rk_gmac_ops rk3368_ops = {
 	.gmac_rmii_mode_mask = BIT_U16(6),
 
 	.clock_grf_reg = RK3368_GRF_SOC_CON15,
+	.clock.gmii_clk_sel_mask = GENMASK_U16(5, 4),
 };
 
 #define RK3399_GRF_SOC_CON5	0xc214
@@ -793,7 +781,6 @@ static const struct rk_gmac_ops rk3368_ops = {
 #define RK3399_GMAC_SPEED_100M		GRF_BIT(7)
 #define RK3399_GMAC_RMII_CLK_25M	GRF_BIT(3)
 #define RK3399_GMAC_RMII_CLK_2_5M	GRF_CLR_BIT(3)
-#define RK3399_GMAC_CLK(val)		GRF_FIELD_CONST(5, 4, val)
 
 /* RK3399_GRF_SOC_CON6 */
 #define RK3399_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(7)
@@ -817,9 +804,6 @@ static void rk3399_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3399_reg_speed_data = {
-	.rgmii_10 = RK3399_GMAC_CLK(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3399_GMAC_CLK(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3399_GMAC_CLK(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3399_GMAC_RMII_CLK_2_5M | RK3399_GMAC_SPEED_10M,
 	.rmii_100 = RK3399_GMAC_RMII_CLK_25M | RK3399_GMAC_SPEED_100M,
 };
@@ -841,6 +825,7 @@ static const struct rk_gmac_ops rk3399_ops = {
 	.gmac_rmii_mode_mask = BIT_U16(6),
 
 	.clock_grf_reg = RK3399_GRF_SOC_CON5,
+	.clock.gmii_clk_sel_mask = GENMASK_U16(5, 4),
 };
 
 #define RK3506_GRF_SOC_CON8		0x0020
@@ -946,8 +931,6 @@ static const struct rk_gmac_ops rk3506_ops = {
 #define RK3528_GMAC1_CLK_RMII_DIV2	GRF_BIT(10)
 #define RK3528_GMAC1_CLK_RMII_DIV20	GRF_CLR_BIT(10)
 
-#define RK3528_GMAC1_CLK_RGMII(val)	GRF_FIELD_CONST(11, 10, val)
-
 #define RK3528_GMAC0_CLK_RMII_GATE	GRF_BIT(2)
 #define RK3528_GMAC0_CLK_RMII_NOGATE	GRF_CLR_BIT(2)
 #define RK3528_GMAC1_CLK_RMII_GATE	GRF_BIT(9)
@@ -962,6 +945,7 @@ static int rk3528_init(struct rk_priv_data *bsp_priv)
 
 	case 1:
 		bsp_priv->clock_grf_reg = RK3528_VPU_GRF_GMAC_CON5;
+		bsp_priv->clock.gmii_clk_sel_mask = GENMASK_U16(11, 10);
 		return 0;
 
 	default:
@@ -999,9 +983,6 @@ static const struct rk_reg_speed_data rk3528_gmac0_reg_speed_data = {
 };
 
 static const struct rk_reg_speed_data rk3528_gmac1_reg_speed_data = {
-	.rgmii_10 = RK3528_GMAC1_CLK_RGMII(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3528_GMAC1_CLK_RGMII(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3528_GMAC1_CLK_RGMII(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3528_GMAC1_CLK_RMII_DIV20,
 	.rmii_100 = RK3528_GMAC1_CLK_RMII_DIV2,
 };
@@ -1159,8 +1140,6 @@ static const struct rk_gmac_ops rk3568_ops = {
 #define RK3576_GMAC_CLK_RMII_DIV2		GRF_BIT(5)
 #define RK3576_GMAC_CLK_RMII_DIV20		GRF_CLR_BIT(5)
 
-#define RK3576_GMAC_CLK_RGMII(val)		GRF_FIELD_CONST(6, 5, val)
-
 #define RK3576_GMAC_CLK_RMII_GATE		GRF_BIT(4)
 #define RK3576_GMAC_CLK_RMII_NOGATE		GRF_CLR_BIT(4)
 
@@ -1210,9 +1189,6 @@ static void rk3576_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3578_reg_speed_data = {
-	.rgmii_10 = RK3576_GMAC_CLK_RGMII(GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3576_GMAC_CLK_RGMII(GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3576_GMAC_CLK_RGMII(GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3576_GMAC_CLK_RMII_DIV20,
 	.rmii_100 = RK3576_GMAC_CLK_RMII_DIV2,
 };
@@ -1249,6 +1225,8 @@ static const struct rk_gmac_ops rk3576_ops = {
 
 	.gmac_rmii_mode_mask = BIT_U16(3),
 
+	.clock.gmii_clk_sel_mask = GENMASK_U16(6, 5),
+
 	.php_grf_required = true,
 	.regs_valid = true,
 	.regs = {
@@ -1284,9 +1262,6 @@ static const struct rk_gmac_ops rk3576_ops = {
 #define RK3588_GMA_CLK_RMII_DIV2(id)		GRF_BIT(5 * (id) + 2)
 #define RK3588_GMA_CLK_RMII_DIV20(id)		GRF_CLR_BIT(5 * (id) + 2)
 
-#define RK3588_GMAC_CLK_RGMII(id, val)		\
-	(GRF_FIELD_CONST(3, 2, val) << ((id) * 5))
-
 #define RK3588_GMAC_CLK_RMII_GATE(id)		GRF_BIT(5 * (id) + 1)
 #define RK3588_GMAC_CLK_RMII_NOGATE(id)		GRF_CLR_BIT(5 * (id) + 1)
 
@@ -1295,10 +1270,12 @@ static int rk3588_init(struct rk_priv_data *bsp_priv)
 	switch (bsp_priv->id) {
 	case 0:
 		bsp_priv->gmac_phy_intf_sel_mask = GENMASK_U16(5, 3);
+		bsp_priv->clock.gmii_clk_sel_mask = GENMASK_U16(3, 2);
 		return 0;
 
 	case 1:
 		bsp_priv->gmac_phy_intf_sel_mask = GENMASK_U16(11, 9);
+		bsp_priv->clock.gmii_clk_sel_mask = GENMASK_U16(8, 7);
 		return 0;
 
 	default:
@@ -1333,17 +1310,11 @@ static void rk3588_set_to_rmii(struct rk_priv_data *bsp_priv)
 }
 
 static const struct rk_reg_speed_data rk3588_gmac0_speed_data = {
-	.rgmii_10 = RK3588_GMAC_CLK_RGMII(0, GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3588_GMAC_CLK_RGMII(0, GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3588_GMAC_CLK_RGMII(0, GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3588_GMA_CLK_RMII_DIV20(0),
 	.rmii_100 = RK3588_GMA_CLK_RMII_DIV2(0),
 };
 
 static const struct rk_reg_speed_data rk3588_gmac1_speed_data = {
-	.rgmii_10 = RK3588_GMAC_CLK_RGMII(1, GMAC_CLK_DIV50_2_5M),
-	.rgmii_100 = RK3588_GMAC_CLK_RGMII(1, GMAC_CLK_DIV5_25M),
-	.rgmii_1000 = RK3588_GMAC_CLK_RGMII(1, GMAC_CLK_DIV1_125M),
 	.rmii_10 = RK3588_GMA_CLK_RMII_DIV20(1),
 	.rmii_100 = RK3588_GMA_CLK_RMII_DIV2(1),
 };
@@ -1712,6 +1683,7 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 
 	/* Set the default clock control register related parameters */
 	bsp_priv->clock_grf_reg = ops->clock_grf_reg;
+	bsp_priv->clock = ops->clock;
 
 	if (ops->init) {
 		ret = ops->init(bsp_priv);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
