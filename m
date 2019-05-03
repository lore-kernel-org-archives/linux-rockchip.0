From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] clk: rockchip: Don't yell about bad mmc phases when getting
Date: Fri,  3 May 2019 14:22:08 -0700
Message-ID: <20190503212208.223232-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: hal@halemmerich.com, linux-rockchip@lists.infradead.org, mka@chromium.org, Douglas Anderson <dianders@chromium.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

At boot time, my rk3288-veyron devices yell with 8 lines that look
like this:
  [    0.000000] rockchip_mmc_get_phase: invalid clk rate

This is because the clock framework at clk_register() time tries to
get the phase but we don't have a parent yet.

While the errors appear to be harmless they are still ugly and, in
general, we don't want yells like this in the log unless they are
important.

There's no real reason to be yelling here.  We can still return
-EINVAL to indicate that the phase makes no sense without a parent.
If someone really tries to do tuning and the clock is reported as 0
then we'll see the yells in rockchip_mmc_set_phase().

Fixes: 4bf59902b500 ("clk: rockchip: Prevent calculating mmc phase if clock rate is zero")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-mmc-phase.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 026a26bb702d..dbec84238ecd 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -61,10 +61,8 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 	u32 delay_num = 0;
 
 	/* See the comment for rockchip_mmc_set_phase below */
-	if (!rate) {
-		pr_err("%s: invalid clk rate\n", __func__);
+	if (!rate)
 		return -EINVAL;
-	}
 
 	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
 
-- 
2.21.0.1020.gf2820cf01a-goog
