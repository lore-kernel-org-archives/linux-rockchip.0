From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] clk: rockchip: Use clk_hw_get_rate() in MMC phase calculation
Date: Tue,  7 May 2019 13:49:35 -0700
Message-ID: <20190507204935.256982-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, hal@halemmerich.com, Douglas Anderson <dianders@chromium.org>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

When calculating the MMC phase we can just use clk_hw_get_rate()
instead of clk_get_rate().  This avoids recalculating the rate.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-mmc-phase.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 026a26bb702d..07526f64dbfd 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -55,7 +55,7 @@ static unsigned long rockchip_mmc_recalc(struct clk_hw *hw,
 static int rockchip_mmc_get_phase(struct clk_hw *hw)
 {
 	struct rockchip_mmc_clock *mmc_clock = to_mmc_clock(hw);
-	unsigned long rate = clk_get_rate(hw->clk);
+	unsigned long rate = clk_hw_get_rate(hw);
 	u32 raw_value;
 	u16 degrees;
 	u32 delay_num = 0;
@@ -86,7 +86,7 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 static int rockchip_mmc_set_phase(struct clk_hw *hw, int degrees)
 {
 	struct rockchip_mmc_clock *mmc_clock = to_mmc_clock(hw);
-	unsigned long rate = clk_get_rate(hw->clk);
+	unsigned long rate = clk_hw_get_rate(hw);
 	u8 nineties, remainder;
 	u8 delay_num;
 	u32 raw_value;
-- 
2.21.0.1020.gf2820cf01a-goog
