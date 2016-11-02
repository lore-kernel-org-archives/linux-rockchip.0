From: Julius Werner <jwerner@chromium.org>
Subject: [PATCH] clk: rockchip: Ignore frac divisor for PLL equivalence when it's unused
Date: Wed,  2 Nov 2016 16:43:24 -0700
Message-ID: <1478130204-3167-1-git-send-email-jwerner@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Doug Anderson <dianders@chromium.org>, Xing Zheng <zhengxing@rock-chips.com>, Julius Werner <jwerner@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Rockchip RK3399 PLLs can be used in two separate modes: integral and
fractional. We can select between these two modes with the unambiguously
named DSMPD bit.

During boot, we check all PLL settings to confirm that they match our
PLL table for that frequency, and reinitialize the PLLs where they
don't. The settings checked for this include the fractional divider
field that is only used in fractional mode, even if we're in integral
mode (DSMPD = 1) and that field has no effect.

This patch changes the check to only compare the fractional divider if
we're actually in fractional mode. This way, we won't reinitialize the
PLL in cases where there's absolutely no reason for that, which may
avoid glitching child clocks that should better not be glitched (e.g.
PWM regulators).

Signed-off-by: Julius Werner <jwerner@chromium.org>
---
 drivers/clk/rockchip/clk-pll.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 9c1373e..1449c76 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -795,7 +795,8 @@ static void rockchip_rk3399_pll_init(struct clk_hw *hw)
 
 	if (rate->fbdiv != cur.fbdiv || rate->postdiv1 != cur.postdiv1 ||
 		rate->refdiv != cur.refdiv || rate->postdiv2 != cur.postdiv2 ||
-		rate->dsmpd != cur.dsmpd || rate->frac != cur.frac) {
+		rate->dsmpd != cur.dsmpd ||
+		(!cur.dsmpd && (rate->frac != cur.frac))) {
 		struct clk *parent = clk_get_parent(hw->clk);
 
 		if (!parent) {
-- 
2.6.6
