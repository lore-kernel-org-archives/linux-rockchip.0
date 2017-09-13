From: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 4/8] clk: rockchip: Add Saradc clock support for rk3288
Date: Wed, 13 Sep 2017 18:09:35 +0800
Message-ID: <1505297379-12638-5-git-send-email-david.wu@rock-chips.com>
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

Signed-off-by: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/clk/rockchip/clk_rk3288.c | 45 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3288.c b/drivers/clk/rockchip/clk_rk3288.c
index 478195b..29652b0 100644
--- a/drivers/clk/rockchip/clk_rk3288.c
+++ b/drivers/clk/rockchip/clk_rk3288.c
@@ -111,6 +111,15 @@ enum {
 	PERI_ACLK_DIV_SHIFT	= 0,
 	PERI_ACLK_DIV_MASK	= 0x1f << PERI_ACLK_DIV_SHIFT,
 
+	/*
+	 * CLKSEL24
+	 * saradc_div_con:
+	 * clk_saradc=24MHz/(saradc_div_con+1)
+	 */
+	CLK_SARADC_DIV_CON_SHIFT	= 8,
+	CLK_SARADC_DIV_CON_MASK		= 0xff << CLK_SARADC_DIV_CON_SHIFT,
+	CLK_SARADC_DIV_CON_WIDTH	= 8,
+
 	SOCSTS_DPLL_LOCK	= 1 << 5,
 	SOCSTS_APLL_LOCK	= 1 << 6,
 	SOCSTS_CPLL_LOCK	= 1 << 7,
@@ -131,6 +140,11 @@ static const struct pll_div apll_init_cfg = PLL_DIVISORS(APLL_HZ, 1, 1);
 static const struct pll_div gpll_init_cfg = PLL_DIVISORS(GPLL_HZ, 2, 2);
 static const struct pll_div cpll_init_cfg = PLL_DIVISORS(CPLL_HZ, 1, 2);
 
+static inline u32 extract_bits(u32 val, unsigned width, unsigned shift)
+{
+	return (val >> shift) & ((1 << width) - 1);
+}
+
 static int rkclk_set_pll(struct rk3288_cru *cru, enum rk_clk_id clk_id,
 			 const struct pll_div *div)
 {
@@ -634,6 +648,31 @@ static ulong rockchip_spi_set_clk(struct rk3288_cru *cru, uint gclk_rate,
 	return rockchip_spi_get_clk(cru, gclk_rate, periph);
 }
 
+static ulong rockchip_saradc_get_clk(struct rk3288_cru *cru)
+{
+	u32 div, val;
+
+	val = readl(&cru->cru_clksel_con[24]);
+	div = extract_bits(val, CLK_SARADC_DIV_CON_WIDTH,
+			   CLK_SARADC_DIV_CON_SHIFT);
+
+	return DIV_TO_RATE(OSC_HZ, div);
+}
+
+static ulong rockchip_saradc_set_clk(struct rk3288_cru *cru, uint hz)
+{
+	int src_clk_div;
+
+	src_clk_div = DIV_ROUND_UP(OSC_HZ, hz) - 1;
+	assert(src_clk_div < 128);
+
+	rk_clrsetreg(&cru->cru_clksel_con[24],
+		     CLK_SARADC_DIV_CON_MASK,
+		     src_clk_div << CLK_SARADC_DIV_CON_SHIFT);
+
+	return rockchip_saradc_get_clk(cru);
+}
+
 static ulong rk3288_clk_get_rate(struct clk *clk)
 {
 	struct rk3288_clk_priv *priv = dev_get_priv(clk->dev);
@@ -666,6 +705,9 @@ static ulong rk3288_clk_get_rate(struct clk *clk)
 		return gclk_rate;
 	case PCLK_PWM:
 		return PD_BUS_PCLK_HZ;
+	case SCLK_SARADC:
+		new_rate = rockchip_saradc_get_clk(priv->cru);
+		break;
 	default:
 		return -ENOENT;
 	}
@@ -756,6 +798,9 @@ static ulong rk3288_clk_set_rate(struct clk *clk, ulong rate)
 		new_rate = rate;
 		break;
 #endif
+	case SCLK_SARADC:
+		new_rate = rockchip_saradc_set_clk(priv->cru, rate);
+		break;
 	default:
 		return -ENOENT;
 	}
-- 
2.7.4
