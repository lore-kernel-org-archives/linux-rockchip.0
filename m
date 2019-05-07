From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] clk: rockchip: Slightly more accurate math in rockchip_mmc_get_phase()
Date: Tue,  7 May 2019 13:57:42 -0700
Message-ID: <20190507205742.50835-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, hal@halemmerich.com, amstan@chromium.org, Douglas Anderson <dianders@chromium.org>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

There's a bit of math in rockchip_mmc_get_phase() to calculate the
"fine delay".  This math boils down to:

 PSECS_PER_SEC = 1000000000000.
 ROCKCHIP_MMC_DELAY_ELEMENT_PSEC = 60
 card_clk * ROCKCHIP_MMC_DELAY_ELEMENT_PSEC * 360 * x / PSECS_PER_SEC

...but we do it in pieces to avoid overflowing 32-bits.  Right now we
overdo it a little bit, though, and end up getting less accurate math
than we could.  Right now we do:

 DIV_ROUND_CLOSEST((card_clk / 1000000) *
                   (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
                   (360 / 10) *
		   delay_num,
		   PSECS_PER_SEC / 1000000 / 10 / 10)

This is non-ideal because:
A) The pins on Rockchip SoCs are rated to go at most 150 MHz, so the
   max card clock is 150 MHz.  Even ignoring this the maximum SD card
   clock (for SDR104) would be 208 MHz.  This means you can decrease
   your division by 100x and still not overflow:
     hex(208000000 / 10000 * 6 * 36 * 0xff) == 0x44497200
B) On many Rockchip SoCs we end up with a card clock that is actually
   148500000 because we parent off the 297 MHz PLL.  That means the
   math we're actually doing today is less than ideal.  Specifically:
   148500000 / 1000000 = 148

Let's fix the math to be slightly more accurate.

NOTE: no known problems are fixed by this.  It was found simply by
code inspection.  If you want to see the difference between the old
and the new on a 148.5 MHz clock, this python can help:

  old = [x for x in
         (int(round(148 * 6 * 36 * x / 10000.)) for x in range(256))
	 if x < 90]
  new = [x for x in
         (int(round(1485 * 6 * 36 * x / 100000.)) for x in range(256))
	 if x < 90]

The only differences are:
  delay_num=17 54=>55
  delay_num=22 70=>71
  delay_num=27 86=>87

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-mmc-phase.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 026a26bb702d..9b2f4c094adf 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -71,13 +71,13 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 	degrees = (raw_value & ROCKCHIP_MMC_DEGREE_MASK) * 90;
 
 	if (raw_value & ROCKCHIP_MMC_DELAY_SEL) {
-		/* degrees/delaynum * 10000 */
+		/* degrees/delaynum * 1000000 */
 		unsigned long factor = (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
-					36 * (rate / 1000000);
+					36 * (rate / 10000);
 
 		delay_num = (raw_value & ROCKCHIP_MMC_DELAYNUM_MASK);
 		delay_num >>= ROCKCHIP_MMC_DELAYNUM_OFFSET;
-		degrees += DIV_ROUND_CLOSEST(delay_num * factor, 10000);
+		degrees += DIV_ROUND_CLOSEST(delay_num * factor, 1000000);
 	}
 
 	return degrees % 360;
-- 
2.21.0.1020.gf2820cf01a-goog
