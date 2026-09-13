Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD124C88E5C
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 19:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaqfPzm3TYyC9ScOZJa4ysy0qtvakNarx09TWcU34RE=; b=uYqrhfC2JphBp2
	rs0T3XaWm2l1PYh+vP1clsX3uq3E+HAWPHQIxlXUg6CttwI/Go/ssMQpXPBcpL/ydJbKQSHUJJ8rQ
	bmpiDyWaVcVsF0yumAl6t48zjAXDqbaP+daXX60h5sJRjZfWRkmrYyC2pFn1Ogz6FKVxJzZTO6+a1
	aa+uIewVyriWxAZJoaH4J61e7dJJp83dVGdHqkXGM0tfTnfAS/VU3uVqFYJ5yHkEkrwmD9cPmXnpK
	xAhmr7jprJjifskaLiWBKbbkaRpXGZCNFxQ7nxXFLAi+aDthx3Dirsb6nYdvfN0/0RGv1ZvMx/LGu
	F0PkpmfOellqjfHF+mpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRt-00000001xvb-0ymE;
	Sun, 13 Sep 2026 19:01:09 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRn-00000001xoS-2eEW
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 19:01:07 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2ccc2e84048so11125745ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 12:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326063; x=1789930863; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+DyjQ9loM0wDm9rGROTMfggQGQnOkAeWemGVcdToBZo=;
        b=qGLTsxJFsr/jTMH7pUyEMwSBxvi46jQ3oowu7ayGhEKpqPDew9Zv5XS53N0QhEIPAY
         y8GyQLh64CovST/hPH8K6lYub/0JjG7R3Wn9V7/ervf7wOsIUiNA/Tj2JCGAiaLEN68c
         QP6blv6mCHOyAUxqiTvo0sl1zWi05TGDj+Ialc1beXl/njhT17IotqmnqkO5gTqKAAs7
         uz7spffulPFIMqgqxvA7tFTl3Q2EL5qXu4ngluUuAI6dLeyltwMKmDocD0eK2nWZXS9j
         bhpaa0AU8bwcHQgtOYxChobV3fgvQefwOwivOAWVDwAS0qgHA2uM+5QwieA66pEQXN1y
         XPyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326063; x=1789930863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+DyjQ9loM0wDm9rGROTMfggQGQnOkAeWemGVcdToBZo=;
        b=DY2XrGL3wd9GkpQAN7dQSDWvuBixAdONXzK8Ry/hkWjGAxuA+70q8Z3EA1ma3ThNDJ
         MJLCc1+I9NzGuYCBwRdJP65kPVKtqCghtbxzgyk7q/V2zhV4ORGpS/HZfDuNPUdqyoBs
         F75TOBqI1OXezfqB8QHG4dxyh5UGxuZRRBJbsxk7vBnK3YTXBQG49ezkzVNszMpp7YLt
         3+Ej9luV7vBwsYQevKmDaRfyNvA2t26A2csyuMGs/VT6sk/li1j0bq1ZmqFOv+5VXEoH
         F+drHOdjvuXljQA6QhKlWmQerNYlwThx1yGwYOWIpx2X/AsW3wgbJUSKDOeCvBsYM+1C
         3/Jw==
X-Forwarded-Encrypted: i=1; AKwUvByFwMPqOzSmUw3Qi/ZO56cHjoFctGD7Q7eqqt7xvkA9TErKG1Fx2ub9PyX/1Y/BmKaqXX8Grs2yMaFwD3/Gvw==@lists.infradead.org
X-Gm-Message-State: AFuF++mpDxerqqI1uYfncajfVy7TG+YxUveHk5kD4PRR63+JzV1iaJrt
	5r7KLJI2S8vYTnPfSP8FCtrvaDn7cB2ichKoAIUaKwO1AQPUYhq89zBr
X-Gm-Gg: AYBFou2gPkx5BJGKC/xDIfg5hBnZ334sHHZF2OVwbi4nxiiotwqYpcZcz8+GJ0XP8ny
	y4yepcGcMpJyQ/qI9lreq4m6WK9swxm9x5trPxlwD0RXAW0vuzUYh8Yb3VdzDdBJC05qfyqnfO2
	40YXVZWZoyAKNBZEWI3LPxt9oayssZTFtJB37Cd1jGXU35Tr3+AEOsHsi/YPCDGasoYPxKNEY7x
	Uzd21Q2j3a1E69JZa8cvJcOvxmaumzNlICZWNIZ6xDTkH0lrL8kJ7v+AxkUvcV7q9fy6BS5+teb
	2mWEXXY4EENuarjSkiIHft7tOtAUR6/9TPyNnzwbC/Tu+O2ciZgwJaQ1OWkLpqAUU9NnffcH9yN
	16cPyBonXwyuWwtun7EgbFHpG13YgQz4SISU0isYoN2XO83LaxobBaY3Xl88IPLwqCDiQD1dXzK
	/R0eKhIB4OQqIpOwQMd99kzYl8V/qIccznkCSlgRIe+VJRM1P9736XcdzFcRqOHiv3NNJODA==
X-Received: by 2002:a17:902:e88a:b0:2d5:2f49:b3f4 with SMTP id d9443c01a7336-2dd2a1d5275mr237270575ad.2.1789326062483;
        Sun, 13 Sep 2026 12:01:02 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:01:00 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v5 09/11] net: stmmac: dwmac-rk: add SGMII support for RK3568
Date: Mon, 14 Sep 2026 02:58:44 +0800
Message-ID: <20260913185849.907479-10-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120103_746272_32EC5AC0 
X-CRM114-Status: GOOD (  29.77  )
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

The RK3568 SoC integrates a Synopsys DesignWare XPCS that can be
connected to GMAC0 or GMAC1 in SGMII mode.  Add the necessary glue
logic to support this configuration.

The current dwmac-rk driver does not support SGMII mode.  SGMII
requires a PCS to handle auto-negotiation and link state reporting,
but the existing driver only supports RGMII and RMII.

Add a set_to_sgmii() callback to configure the GMAC GRF register for
SGMII mode (bit 7 set, interface selection bits 4:6 ignored when set).
Also add a set_to_rmii() callback for rk3568 to explicitly clear bit 7,
since the new SGMII path leaves it set and the RMII branch previously
relied on the SoC reset value.

Provide pcs_init/pcs_exit callbacks to create/destroy the XPCS via
xpcs_rk_create() from the Rockchip XPCS platform driver, and a
select_pcs callback to return the XPCS to phylink.

Reorder rk_gmac_powerup() so that gmac_clk_enable() is called before
the SGMII check.  The SGMII path skips rk_get_phy_intf_sel(), so the
clock must be enabled earlier to cover all register accesses in that
path.  While at it, unify the error unwinding into a single
clk_disable label and add error handling for the default (unhandled
interface) case.

SGMII In-band vs Out-of-band
============================
On RK3568, the MAC clock is fixed at 125 MHz and cannot be dynamically
changed by the stmmac core's set_clk_tx_rate callback.  In-band mode
works because the PCS handles rate adaptation internally.  Out-of-band
mode does not work because the MAC would need to change the clock rate
to 125/12.5/1.25 MHz for 1000/100/10 Mbps respectively, and the clock
is fixed.

Enable default_an_inband for SGMII and disable the generic stmmac
set_clk_tx_rate callback.  This forces phylink to use in-band mode,
where the PCS is responsible for speed/duplex negotiation.

Note that default_an_inband can be overridden by a fixed-link node,
and phylink may also fall back to out-of-band if the PHY does not
support in-band signalling.  Out-of-band SGMII is not supported by
this driver: the MAC clock would stay at 125 MHz for 10/100 Mbps,
giving working TX but failing RX.  Boards must use in-band mode
(managed = "in-band-status" or an in-band capable PHY).

Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf (Page 386)
Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |   1 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 134 +++++++++++++++---
 2 files changed, 115 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index e3dd5adda5aca..5088acc06982e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -170,6 +170,7 @@ config DWMAC_ROCKCHIP
 	default ARCH_ROCKCHIP
 	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
 	select MFD_SYSCON
+	select PCS_XPCS_ROCKCHIP
 	help
 	  Support for Ethernet controller on Rockchip RK3288 SoC.
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 8d7042e689261..5d501ed8d1429 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -20,6 +20,7 @@
 #include <linux/delay.h>
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/pcs/pcs-xpcs-rk.h>
 #include <linux/pm_runtime.h>
 
 #include "stmmac_platform.h"
@@ -47,6 +48,7 @@ struct rk_gmac_ops {
 	void (*set_to_rgmii)(struct rk_priv_data *bsp_priv,
 			     int tx_delay, int rx_delay);
 	void (*set_to_rmii)(struct rk_priv_data *bsp_priv);
+	void (*set_to_sgmii)(struct rk_priv_data *bsp_priv);
 	int (*set_speed)(struct rk_priv_data *bsp_priv,
 			 phy_interface_t interface, int speed);
 	void (*integrated_phy_powerup)(struct rk_priv_data *bsp_priv);
@@ -63,6 +65,7 @@ struct rk_gmac_ops {
 	bool clock_grf_reg_in_php;
 	bool supports_rgmii;
 	bool supports_rmii;
+	bool supports_sgmii;
 	bool php_grf_required;
 	bool regs_valid;
 	u32 regs[];
@@ -98,6 +101,7 @@ struct rk_priv_data {
 	bool integrated_phy;
 	bool supports_rgmii;
 	bool supports_rmii;
+	bool supports_sgmii;
 
 	struct clk_bulk_data *clks;
 	int num_clks;
@@ -809,6 +813,8 @@ static const struct rk_gmac_ops rk3528_ops = {
 #define RK3568_GRF_GMAC1_CON1		0x038c
 
 /* RK3568_GRF_GMAC0_CON1 && RK3568_GRF_GMAC1_CON1 */
+#define RK3568_GMAC_MODE_RMII_RGMII		GRF_CLR_BIT(7)
+#define RK3568_GMAC_MODE_SGMII_QSGMII		GRF_BIT(7)
 #define RK3568_GMAC_FLOW_CTRL			GRF_BIT(3)
 #define RK3568_GMAC_FLOW_CTRL_CLR		GRF_CLR_BIT(3)
 #define RK3568_GMAC_RXCLK_DLY_ENABLE		GRF_BIT(1)
@@ -836,6 +842,17 @@ static int rk3568_init(struct rk_priv_data *bsp_priv)
 	}
 }
 
+static void rk3568_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	u32 con1;
+
+	con1 = (bsp_priv->id == 1) ? RK3568_GRF_GMAC1_CON1 :
+				     RK3568_GRF_GMAC0_CON1;
+
+	regmap_write(bsp_priv->grf, con1,
+		     RK3568_GMAC_MODE_RMII_RGMII);
+}
+
 static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_priv,
 				int tx_delay, int rx_delay)
 {
@@ -851,19 +868,31 @@ static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_priv,
 		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
 
 	regmap_write(bsp_priv->grf, con1,
+		     RK3568_GMAC_MODE_RMII_RGMII |
 		     RK3568_GMAC_RXCLK_DLY_ENABLE |
 		     RK3568_GMAC_TXCLK_DLY_ENABLE);
 }
 
+static void rk3568_set_to_sgmii(struct rk_priv_data *bsp_priv)
+{
+	u32 con1;
+
+	con1 = (bsp_priv->id == 1) ? RK3568_GRF_GMAC1_CON1 :
+				     RK3568_GRF_GMAC0_CON1;
+
+	regmap_write(bsp_priv->grf, con1, RK3568_GMAC_MODE_SGMII_QSGMII);
+}
+
 static const struct rk_gmac_ops rk3568_ops = {
 	.init = rk3568_init,
+	.set_to_rmii = rk3568_set_to_rmii,
 	.set_to_rgmii = rk3568_set_to_rgmii,
+	.set_to_sgmii = rk3568_set_to_sgmii,
+
 	.set_speed = rk_set_clk_mac_speed,
 
 	.gmac_phy_intf_sel_mask = GENMASK_U16(6, 4),
 
-	.supports_rmii = true,
-
 	.regs_valid = true,
 	.regs = {
 		0xfe2a0000, /* gmac0 */
@@ -1208,6 +1237,43 @@ static void rk_phy_powerdown(struct rk_priv_data *bsp_priv)
 		dev_err(bsp_priv->dev, "fail to disable phy-supply\n");
 }
 
+static int rk_pcs_init(struct stmmac_priv *priv)
+{
+	struct device_node *np = priv->device->of_node;
+	struct device_node *pcs_node;
+	struct dw_xpcs *xpcs;
+
+	pcs_node = of_parse_phandle(np, "pcs-handle", 0);
+	if (!pcs_node)
+		return -ENODEV;
+
+	xpcs = xpcs_rk_create(priv->device, pcs_node);
+	of_node_put(pcs_node);
+	if (IS_ERR(xpcs))
+		return PTR_ERR(xpcs);
+
+	priv->hw->xpcs = xpcs;
+	return 0;
+}
+
+static void rk_pcs_exit(struct stmmac_priv *priv)
+{
+	if (!priv->hw->xpcs)
+		return;
+
+	xpcs_destroy(priv->hw->xpcs);
+	priv->hw->xpcs = NULL;
+}
+
+static struct phylink_pcs *rk_select_pcs(struct stmmac_priv *priv,
+					 phy_interface_t interface)
+{
+	if (!priv->hw->xpcs)
+		return NULL;
+
+	return xpcs_to_phylink_pcs(priv->hw->xpcs);
+}
+
 static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 					  struct plat_stmmacenet_data *plat,
 					  const struct rk_gmac_ops *ops)
@@ -1330,6 +1396,7 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 
 	bsp_priv->supports_rgmii = ops->supports_rgmii || !!ops->set_to_rgmii;
 	bsp_priv->supports_rmii = ops->supports_rmii || !!ops->set_to_rmii;
+	bsp_priv->supports_sgmii = ops->supports_sgmii || !!ops->set_to_sgmii;
 
 	if (ops->init) {
 		ret = ops->init(bsp_priv);
@@ -1361,6 +1428,10 @@ static int rk_gmac_check_ops(struct rk_priv_data *bsp_priv)
 		if (!bsp_priv->supports_rmii)
 			return -EINVAL;
 		break;
+	case PHY_INTERFACE_MODE_SGMII:
+		if (!bsp_priv->supports_sgmii)
+			return -EINVAL;
+		break;
 	default:
 		dev_err(bsp_priv->dev,
 			"unsupported interface %d", bsp_priv->phy_iface);
@@ -1379,16 +1450,19 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 	if (ret)
 		return ret;
 
+	ret = gmac_clk_enable(bsp_priv, true);
+	if (ret)
+		return ret;
+
+	if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_SGMII)
+		goto set_mode;
+
 	ret = rk_get_phy_intf_sel(bsp_priv->phy_iface);
 	if (ret < 0)
-		return ret;
+		goto clk_disable;
 
 	intf = ret;
 
-	ret = gmac_clk_enable(bsp_priv, true);
-	if (ret)
-		return ret;
-
 	if (bsp_priv->gmac_phy_intf_sel_mask ||
 	    bsp_priv->gmac_rmii_mode_mask) {
 		/* If defined, encode the phy_intf_sel value */
@@ -1399,10 +1473,8 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 				      bsp_priv->gmac_rmii_mode_mask);
 
 		ret = rk_write_gmac_grf_reg(bsp_priv, val);
-		if (ret < 0) {
-			gmac_clk_enable(bsp_priv, false);
-			return ret;
-		}
+		if (ret < 0)
+			goto clk_disable;
 	}
 
 	if (bsp_priv->clock.rmii_mode_mask) {
@@ -1410,13 +1482,12 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 				     bsp_priv->clock.rmii_mode_mask);
 
 		ret = rk_write_clock_grf_reg(bsp_priv, val);
-		if (ret < 0) {
-			gmac_clk_enable(bsp_priv, false);
-			return ret;
-		}
+		if (ret < 0)
+			goto clk_disable;
 	}
 
-	/*rmii or rgmii*/
+set_mode:
+	/* rmii, rgmii, sgmii */
 	switch (bsp_priv->phy_iface) {
 	case PHY_INTERFACE_MODE_RGMII:
 		dev_info(dev, "init for RGMII\n");
@@ -1447,15 +1518,20 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 		if (bsp_priv->ops->set_to_rmii)
 			bsp_priv->ops->set_to_rmii(bsp_priv);
 		break;
+	case PHY_INTERFACE_MODE_SGMII:
+		dev_info(dev, "init for SGMII\n");
+		if (bsp_priv->ops->set_to_sgmii)
+			bsp_priv->ops->set_to_sgmii(bsp_priv);
+		break;
 	default:
 		dev_err(dev, "NO interface defined!\n");
+		ret = -EINVAL;
+		goto clk_disable;
 	}
 
 	ret = rk_phy_powerup(bsp_priv);
-	if (ret) {
-		gmac_clk_enable(bsp_priv, false);
-		return ret;
-	}
+	if (ret)
+		goto clk_disable;
 
 	pm_runtime_get_sync(dev);
 
@@ -1463,6 +1539,10 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 		bsp_priv->ops->integrated_phy_powerup(bsp_priv);
 
 	return 0;
+
+clk_disable:
+	gmac_clk_enable(bsp_priv, false);
+	return ret;
 }
 
 static void rk_gmac_powerdown(struct rk_priv_data *gmac)
@@ -1486,6 +1566,9 @@ static void rk_get_interfaces(struct stmmac_priv *priv, void *bsp_priv,
 
 	if (rk->supports_rmii)
 		__set_bit(PHY_INTERFACE_MODE_RMII, interfaces);
+
+	if (rk->supports_sgmii)
+		__set_bit(PHY_INTERFACE_MODE_SGMII, interfaces);
 }
 
 static int rk_set_clk_tx_rate(void *bsp_priv_, struct clk *clk_tx_i,
@@ -1602,6 +1685,17 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	plat_dat->suspend = rk_gmac_suspend;
 	plat_dat->resume = rk_gmac_resume;
 
+	if (plat_dat->phy_interface == PHY_INTERFACE_MODE_SGMII) {
+		/* SGMII clock always runs at 125 MHz */
+		plat_dat->set_clk_tx_rate = NULL;
+
+		/* SGMII requires a PCS */
+		plat_dat->default_an_inband = true;
+		plat_dat->pcs_init = rk_pcs_init;
+		plat_dat->pcs_exit = rk_pcs_exit;
+		plat_dat->select_pcs = rk_select_pcs;
+	}
+
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
 	if (IS_ERR(plat_dat->bsp_priv))
 		return PTR_ERR(plat_dat->bsp_priv);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
