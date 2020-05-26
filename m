From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v6 03/16] clk: rk3399: Enable/Disable TCPHY clocks
Date: Tue, 26 May 2020 11:32:07 +0800
Message-ID: <20200526033220.20047-4-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200526033220.20047-1-frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, marex-ynQEQJNshbs@public.gmane.org, bmeng.cn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: jianing.ren-TNX95d0MmH7DzftRWevZcw@public.gmane.org, marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, wmc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>

Enable/Disable TCPHY clock for rk3399 platform.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/clk/rockchip/clk_rk3399.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 98fc6a3267..06232f1903 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1144,6 +1144,18 @@ static int rk3399_clk_enable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_UPHY0_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(4));
+		break;
+	case SCLK_UPHY0_TCPDCORE:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(5));
+		break;
+	case SCLK_UPHY1_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(6));
+		break;
+	case SCLK_UPHY1_TCPDCORE:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(7));
+		break;
 	case SCLK_PCIEPHY_REF:
 		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
 		break;
@@ -1226,6 +1238,18 @@ static int rk3399_clk_disable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_setreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_UPHY0_TCPDPHY_REF:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(4));
+		break;
+	case SCLK_UPHY0_TCPDCORE:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(5));
+		break;
+	case SCLK_UPHY1_TCPDPHY_REF:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(6));
+		break;
+	case SCLK_UPHY1_TCPDCORE:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(7));
+		break;
 	case SCLK_PCIEPHY_REF:
 		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
 		break;
-- 
2.17.1
