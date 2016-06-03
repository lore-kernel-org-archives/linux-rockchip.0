From: Lin Huang <hl@rock-chips.com>
Subject: [RFC PATCH v1 3/6] clk: rockchip: rk3399: add ddrc clock support
Date: Fri,  3 Jun 2016 17:55:16 +0800
Message-ID: <1464947719-6245-4-git-send-email-hl@rock-chips.com>
References: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de, mark.yao@rock-chips.com, myungjoo.ham@samsung.com
Cc: huangtao@rock-chips.com, typ@rock-chips.com, Lin Huang <hl@rock-chips.com>, airlied@linux.ie, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

add ddrc clock setting, so we can do ddr frequency
scaling on rk3399 platform in future.

Signed-off-by: Lin Huang <hl@rock-chips.com>
---
Changes in v1:
- remove ddrc source CLK_IGNORE_UNUSED flag, Suggestion by Doug
- move clk_ddrc and clk_ddrc_dpll_src to critical, Suggestion by Doug

 drivers/clk/rockchip/clk-rk3399.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index f1d8e44..29afb88 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -118,6 +118,10 @@ PNAME(mux_armclkb_p)				= { "clk_core_b_lpll_src",
 						    "clk_core_b_bpll_src",
 						    "clk_core_b_dpll_src",
 						    "clk_core_b_gpll_src" };
+PNAME(mux_ddrclk_p)				= { "clk_ddrc_lpll_src",
+						    "clk_ddrc_bpll_src",
+						    "clk_ddrc_dpll_src",
+						    "clk_ddrc_gpll_src" };
 PNAME(mux_aclk_cci_p)				= { "cpll_aclk_cci_src",
 						    "gpll_aclk_cci_src",
 						    "npll_aclk_cci_src",
@@ -1377,6 +1381,18 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "clk_test", "clk_test_pre", CLK_IGNORE_UNUSED,
 			RK3368_CLKSEL_CON(58), 0, 5, DFLAGS,
 			RK3368_CLKGATE_CON(13), 11, GFLAGS),
+
+	/* ddrc */
+	GATE(0, "clk_ddrc_lpll_src", "lpll", 0, RK3399_CLKGATE_CON(3),
+	     0, GFLAGS),
+	GATE(0, "clk_ddrc_bpll_src", "bpll", 0, RK3399_CLKGATE_CON(3),
+	     1, GFLAGS),
+	GATE(0, "clk_ddrc_dpll_src", "dpll", 0, RK3399_CLKGATE_CON(3),
+	     2, GFLAGS),
+	GATE(0, "clk_ddrc_gpll_src", "gpll", 0, RK3399_CLKGATE_CON(3),
+	     3, GFLAGS),
+	COMPOSITE_DDRC(SCLK_DDRCLK, "clk_ddrc", mux_ddrclk_p, 0,
+		       RK3399_CLKSEL_CON(6), 4, 2, MFLAGS, 0, 3, DFLAGS),
 };
 
 static struct rockchip_clk_branch rk3399_clk_pmu_branches[] __initdata = {
@@ -1487,6 +1503,10 @@ static const char *const rk3399_cru_critical_clocks[] __initconst = {
 	"gpll_hclk_perilp1_src",
 	"gpll_aclk_perilp0_src",
 	"gpll_aclk_perihp_src",
+
+	/* ddrc */
+	"clk_ddrc_dpll_src",
+	"clk_ddrc",
 };
 
 static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
-- 
1.9.1
