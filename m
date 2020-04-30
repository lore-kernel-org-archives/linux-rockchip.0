From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 3/8] clk: rk3399: Add enable/disable clks
Date: Thu, 30 Apr 2020 12:34:07 +0530
Message-ID: <20200430070412.12499-4-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200430070412.12499-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Yes, most of the high speed peripheral clocks
in rk3399 enabled by default.

But it would be better to handle them via clk
enable/disable API for handling proper reset
conditions like 'usb reset' over command line.

So, enable USB, GMAC clock via enable/disable ops.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v2:
- new patch

 drivers/clk/rockchip/clk_rk3399.c | 148 ++++++++++++++++++++++++++++++
 1 file changed, 148 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index d822acace1..df70e9fa88 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1071,12 +1071,160 @@ static int __maybe_unused rk3399_clk_set_parent(struct clk *clk,
 	return -ENOENT;
 }
 
+static int rk3399_clk_enable(struct clk *clk)
+{
+	struct rk3399_clk_priv *priv = dev_get_priv(clk->dev);
+
+	switch (clk->id) {
+	case SCLK_MAC:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(5));
+		break;
+	case SCLK_MAC_RX:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(8));
+		break;
+	case SCLK_MAC_TX:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(9));
+		break;
+	case SCLK_MACREF:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(7));
+		break;
+	case SCLK_MACREF_OUT:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(6));
+		break;
+	case ACLK_GMAC:
+		rk_clrreg(&priv->cru->clkgate_con[32], BIT(0));
+		break;
+	case PCLK_GMAC:
+		rk_clrreg(&priv->cru->clkgate_con[32], BIT(2));
+		break;
+	case SCLK_USB3OTG0_REF:
+		rk_clrreg(&priv->cru->clksel_con[12], BIT(1));
+		break;
+	case SCLK_USB3OTG1_REF:
+		rk_clrreg(&priv->cru->clksel_con[12], BIT(2));
+		break;
+	case SCLK_USB3OTG0_SUSPEND:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(3));
+		break;
+	case SCLK_USB3OTG1_SUSPEND:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(4));
+		break;
+	case ACLK_USB3OTG0:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(1));
+		break;
+	case ACLK_USB3OTG1:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(2));
+		break;
+	case ACLK_USB3_RKSOC_AXI_PERF:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(3));
+		break;
+	case ACLK_USB3:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(0));
+		break;
+	case ACLK_USB3_GRF:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(4));
+		break;
+	case HCLK_HOST0:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(5));
+		break;
+	case HCLK_HOST0_ARB:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(6));
+		break;
+	case HCLK_HOST1:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(7));
+		break;
+	case HCLK_HOST1_ARB:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
+		break;
+	default:
+		debug("%s: unsupported clk %ld\n", __func__, clk->id);
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
+static int rk3399_clk_disable(struct clk *clk)
+{
+	struct rk3399_clk_priv *priv = dev_get_priv(clk->dev);
+
+	switch (clk->id) {
+	case SCLK_MAC:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(5));
+		break;
+	case SCLK_MAC_RX:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(8));
+		break;
+	case SCLK_MAC_TX:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(9));
+		break;
+	case SCLK_MACREF:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(7));
+		break;
+	case SCLK_MACREF_OUT:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(6));
+		break;
+	case ACLK_GMAC:
+		rk_setreg(&priv->cru->clkgate_con[32], BIT(0));
+		break;
+	case PCLK_GMAC:
+		rk_setreg(&priv->cru->clkgate_con[32], BIT(2));
+		break;
+	case SCLK_USB3OTG0_REF:
+		rk_setreg(&priv->cru->clksel_con[12], BIT(1));
+		break;
+	case SCLK_USB3OTG1_REF:
+		rk_setreg(&priv->cru->clksel_con[12], BIT(2));
+		break;
+	case SCLK_USB3OTG0_SUSPEND:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(3));
+		break;
+	case SCLK_USB3OTG1_SUSPEND:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(4));
+		break;
+	case ACLK_USB3OTG0:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(1));
+		break;
+	case ACLK_USB3OTG1:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(2));
+		break;
+	case ACLK_USB3_RKSOC_AXI_PERF:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(3));
+		break;
+	case ACLK_USB3:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(0));
+		break;
+	case ACLK_USB3_GRF:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(4));
+		break;
+	case HCLK_HOST0:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(5));
+		break;
+	case HCLK_HOST0_ARB:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(6));
+		break;
+	case HCLK_HOST1:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(7));
+		break;
+	case HCLK_HOST1_ARB:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(8));
+		break;
+	default:
+		debug("%s: unsupported clk %ld\n", __func__, clk->id);
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
 static struct clk_ops rk3399_clk_ops = {
 	.get_rate = rk3399_clk_get_rate,
 	.set_rate = rk3399_clk_set_rate,
 #if CONFIG_IS_ENABLED(OF_CONTROL) && !CONFIG_IS_ENABLED(OF_PLATDATA)
 	.set_parent = rk3399_clk_set_parent,
 #endif
+	.enable = rk3399_clk_enable,
+	.disable = rk3399_clk_disable,
 };
 
 #ifdef CONFIG_SPL_BUILD
-- 
2.17.1
