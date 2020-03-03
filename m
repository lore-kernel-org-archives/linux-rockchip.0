From: Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH] clk: rockchip: fix mmc get phase
Date: Tue,  3 Mar 2020 20:29:56 +0100
Message-ID: <20200303192956.64410-1-jbrunet@baylibre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Jerome Brunet <jbrunet@baylibre.com>, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Markus Reichl <m.reichl@fivetechno.de>
List-Id: linux-rockchip.vger.kernel.org

If the mmc clock has no rate, it can be assumed to be constant.
In such case, there is no measurable phase shift. Just return 0
in this case instead of returning an error.

Fixes: 2760878662a2 ("clk: Bail out when calculating phase fails during clk
registration")
Tested-by: Markus Reichl <m.reichl@fivetechno.de>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/clk/rockchip/clk-mmc-phase.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 4abe7ff31f53..975454a3dd72 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -51,9 +51,9 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 	u16 degrees;
 	u32 delay_num = 0;
 
-	/* See the comment for rockchip_mmc_set_phase below */
+	/* Constant signal, no measurable phase shift */
 	if (!rate)
-		return -EINVAL;
+		return 0;
 
 	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
 
-- 
2.24.1
