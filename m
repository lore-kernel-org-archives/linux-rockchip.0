From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: add critical clock for rk3368
Date: Sun, 13 Sep 2015 13:20:36 +0200
Message-ID: <5267432.TORlj1Iv40@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: mturquette@baylibre.com, sboyd@codeaurora.org
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>
List-Id: linux-rockchip.vger.kernel.org

Again a result of the gpio-clock-liberation the rk3368 needs the
pclk_pd_pmu marked as critical, to boot successfully.

Reported-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
should go on top of clk-fixes. Sorry only finding these piece
by piece :-) .

 drivers/clk/rockchip/clk-rk3368.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 9c5d61e..7e6b783 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -818,6 +818,10 @@ static struct rockchip_clk_branch rk3368_clk_branches[] __initdata = {
 	GATE(0, "sclk_timer00", "xin24m", CLK_IGNORE_UNUSED, RK3368_CLKGATE_CON(24), 0, GFLAGS),
 };
 
+static const char *const rk3368_critical_clocks[] __initconst = {
+	"pclk_pd_pmu",
+};
+
 static void __init rk3368_clk_init(struct device_node *np)
 {
 	void __iomem *reg_base;
@@ -862,6 +866,8 @@ static void __init rk3368_clk_init(struct device_node *np)
 				   RK3368_GRF_SOC_STATUS0);
 	rockchip_clk_register_branches(rk3368_clk_branches,
 				  ARRAY_SIZE(rk3368_clk_branches));
+	rockchip_clk_protect_critical(rk3368_critical_clocks,
+				      ARRAY_SIZE(rk3368_critical_clocks));
 
 	rockchip_clk_register_armclk(ARMCLKB, "armclkb",
 			mux_armclkb_p, ARRAY_SIZE(mux_armclkb_p),
-- 
2.5.1


