From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 1/7] clk: rk3399: Enable/Disable the USB2PHY clk
Date: Wed,  6 May 2020 13:20:19 +0530
Message-ID: <20200506075025.1677-2-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200506075025.1677-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, wmc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Belisko Marek <marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Enable/Disable the USB2PHY clk for rk3399.

CLK is clear in enable and set in disable functionality.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v2:
- none

 drivers/clk/rockchip/clk_rk3399.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 7feba92f9e..b1c89ea127 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1091,6 +1091,12 @@ static int rk3399_clk_enable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_clrreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_clrreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
@@ -1167,6 +1173,12 @@ static int rk3399_clk_disable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_setreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_setreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
-- 
2.17.1
