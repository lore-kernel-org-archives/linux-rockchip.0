From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] clk: rockchip: Remove 48 MHz PLL rate from rk3288
Date: Tue,  4 Jun 2019 15:31:59 -0700
Message-ID: <20190604223200.345-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Stephen Boyd <sboyd@kernel.org>, mka@chromium.org, seanpaul@chromium.org, Urja Rannikko <urjaman@gmail.com>, Douglas Anderson <dianders@chromium.org>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The 48 MHz PLL rate is not present in the downstream chromeos-3.14
tree.  Looking at history, it was originally removed in
<https://crrev.com/c/265810> ("CHROMIUM: clk: rockchip: expand more
clocks support") with no explanation.  Much of that patch was later
reverted in <https://crrev.com/c/284595> ("CHROMIUM: clk: rockchip:
Revert more questionable PLL rates"), but that patch left in the
removal of 48 MHz.  What I wrote in that patch:

> Note that the original change also removed the rate (48000000, 1,
> 64, 32) from the table.  I have no idea why that was squashed in
> there, but that rate was invalid anyway (it appears to have an out
> of bounds NO).  I'm not putting that rate in.

Reading the TRM I see that NO is defined as
- NO: 1, 2-16 (even only)
...and furthermore only 4 bits are assigned for NO-1, which means that
the highest NO we could even represent is 16.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-rk3288.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 152a22a69b04..51a26ff600a1 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -101,7 +101,6 @@ static struct rockchip_pll_rate_table rk3288_pll_rates[] = {
 	RK3066_PLL_RATE( 216000000, 1, 72, 8),
 	RK3066_PLL_RATE( 148500000, 2, 99, 8),
 	RK3066_PLL_RATE( 126000000, 1, 84, 16),
-	RK3066_PLL_RATE(  48000000, 1, 64, 32),
 	{ /* sentinel */ },
 };
 
-- 
2.22.0.rc1.311.g5d7573a151-goog
