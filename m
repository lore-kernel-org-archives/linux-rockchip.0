From: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 5/8] clk: rockchip: Add rk3328 Saradc clock support
Date: Wed, 13 Sep 2017 18:52:49 +0800
Message-ID: <1505299969-13329-1-git-send-email-david.wu@rock-chips.com>
References: <1505297379-12638-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1505297379-12638-1-git-send-email-david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, p.marczak-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The clk_saradc is dividing from the 24M, clk_saradc=24MHz/(saradc_div_con+1).
Saradc integer divider control register is 10-bits width.

Signed-off-by: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/clk/rockchip/clk_rk3328.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3328.c b/drivers/clk/rockchip/clk_rk3328.c
index c3a6650..e1ae7b2 100644
--- a/drivers/clk/rockchip/clk_rk3328.c
+++ b/drivers/clk/rockchip/clk_rk3328.c
@@ -115,6 +115,7 @@ enum {
 	/* CLKSEL_CON23 */
 	CLK_SARADC_DIV_CON_SHIFT	= 0,
 	CLK_SARADC_DIV_CON_MASK		= 0x3ff << CLK_SARADC_DIV_CON_SHIFT,
+	CLK_SARADC_DIV_CON_WIDTH	= 10,
 
 	/* CLKSEL_CON24 */
 	CLK_PWM_PLL_SEL_CPLL		= 0,
@@ -180,6 +181,11 @@ enum {
 #define PLL_DIV_MIN	16
 #define PLL_DIV_MAX	3200
 
+static inline u32 extract_bits(u32 val, unsigned width, unsigned shift)
+{
+	return (val >> shift) & ((1 << width) - 1);
+}
+
 /*
  * How to calculate the PLL(from TRM V0.3 Part 1 Page 63):
  * Formulas also embedded within the Fractional PLL Verilog model:
@@ -478,6 +484,31 @@ static ulong rk3328_pwm_set_clk(struct rk3328_cru *cru, uint hz)
 	return DIV_TO_RATE(GPLL_HZ, div);
 }
 
+static ulong rk3328_saradc_get_clk(struct rk3328_cru *cru)
+{
+	u32 div, val;
+
+	val = readl(&cru->clksel_con[23]);
+	div = extract_bits(val, CLK_SARADC_DIV_CON_WIDTH,
+			   CLK_SARADC_DIV_CON_SHIFT);
+
+	return DIV_TO_RATE(OSC_HZ, div);
+}
+
+static ulong rk3328_saradc_set_clk(struct rk3328_cru *cru, uint hz)
+{
+	int src_clk_div;
+
+	src_clk_div = DIV_ROUND_UP(OSC_HZ, hz) - 1;
+	assert(src_clk_div < 128);
+
+	rk_clrsetreg(&cru->clksel_con[23],
+		     CLK_SARADC_DIV_CON_MASK,
+		     src_clk_div << CLK_SARADC_DIV_CON_SHIFT);
+
+	return rk3328_saradc_get_clk(cru);
+}
+
 static ulong rk3328_clk_get_rate(struct clk *clk)
 {
 	struct rk3328_clk_priv *priv = dev_get_priv(clk->dev);
@@ -501,6 +532,9 @@ static ulong rk3328_clk_get_rate(struct clk *clk)
 	case SCLK_PWM:
 		rate = rk3328_pwm_get_clk(priv->cru);
 		break;
+	case SCLK_SARADC:
+		rate = rk3328_saradc_get_clk(priv->cru);
+		break;
 	default:
 		return -ENOENT;
 	}
@@ -531,6 +565,9 @@ static ulong rk3328_clk_set_rate(struct clk *clk, ulong rate)
 	case SCLK_PWM:
 		ret = rk3328_pwm_set_clk(priv->cru, rate);
 		break;
+	case SCLK_SARADC:
+		ret = rk3328_saradc_set_clk(priv->cru, rate);
+		break;
 	default:
 		return -ENOENT;
 	}
-- 
2.7.4
