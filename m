From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 1/5] clk: rockchip: Turn on "aclk_dmac1" for suspend
Date: Thu, 11 Apr 2019 16:21:53 -0700
Message-ID: <20190411232157.55125-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: dbasehore@chromium.org, amstan@chromium.org, linux-rockchip@lists.infradead.org, briannorris@chromium.org, mka@chromium.org, ryandcase@chromium.org, Chris Zhong <zyw@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Experimentally it can be seen that going into deep sleep (specifically
setting PMU_CLR_DMA and PMU_CLR_BUS in RK3288_PMU_PWRMODE_CON1)
appears to fail unless "aclk_dmac1" is on.  The failure is that the
system never signals that it made it into suspend on the GLOBAL_PWROFF
pin and it just hangs.

NOTE that it's confirmed that it's the actual suspend that fails, not
one of the earlier calls to read/write registers.  Specifically if you
comment out the "PMU_GLOBAL_INT_DISABLE" setting in
rk3288_slp_mode_set() and then comment out the "cpu_do_idle()" call in
rockchip_lpmode_enter() then you can exercise the whole suspend path
without any crashing.

This is currently not a problem with suspend upstream because there is
no current way to exercise the deep suspend code.  However, anyone
trying to make it work will run into this issue.

This was not a problem on shipping rk3288-based Chromebooks because
those devices all ran on an old kernel based on 3.14.  On that kernel
"aclk_dmac1" appears to be left on all the time.

There are several ways to skin this problem.

A) We could add "aclk_dmac1" to the list of critical clocks and that
apperas to work, but presumably that wastes power.

B) We could keep a list of "struct clk" objects to enable at suspend
time in clk-rk3288.c and use the standard clock APIs.

C) We could make the rk3288-pmu driver keep a list of clocks to enable
at suspend time.  Presumably this would require a dts and bindings
change.

D) We could just whack the clock on in the existing syscore suspend
function where we whack a bunch of other clocks.  This is particularly
easy because we know for sure that the clock's only parent
("aclk_cpu") is a critical clock so we don't need to do anything more
than ungate it.

In this case I have chosen D) because it seemed like the least work,
but any of the other options would presumably also work fine.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-rk3288.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 5a67b7869960..b245367393cd 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -859,6 +859,9 @@ static const int rk3288_saved_cru_reg_ids[] = {
 	RK3288_CLKSEL_CON(10),
 	RK3288_CLKSEL_CON(33),
 	RK3288_CLKSEL_CON(37),
+
+	/* We turn aclk_dmac1 on for suspend; this will restore it */
+	RK3288_CLKGATE_CON(10),
 };
 
 static u32 rk3288_saved_cru_regs[ARRAY_SIZE(rk3288_saved_cru_reg_ids)];
@@ -874,6 +877,14 @@ static int rk3288_clk_suspend(void)
 				readl_relaxed(rk3288_cru_base + reg_id);
 	}
 
+	/*
+	 * Going into deep sleep (specifically setting PMU_CLR_DMA in
+	 * RK3288_PMU_PWRMODE_CON1) appears to fail unless
+	 * "aclk_dmac1" is on.
+	 */
+	writel_relaxed(1 << (12 + 16),
+		       rk3288_cru_base + RK3288_CLKGATE_CON(10));
+
 	/*
 	 * Switch PLLs other than DPLL (for SDRAM) to slow mode to
 	 * avoid crashes on resume. The Mask ROM on the system will
-- 
2.21.0.392.gf8f6787159e-goog
