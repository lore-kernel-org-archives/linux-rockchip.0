From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 2/3] clk: rockchip: convert basic pll lock_wait to use regmap_read_poll_timeout
Date: Wed, 29 Jan 2020 17:38:20 +0100
Message-ID: <20200129163821.1547295-2-heiko@sntech.de>
References: <20200129163821.1547295-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200129163821.1547295-1-heiko@sntech.de>
Sender: linux-clk-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, christoph.muellner@theobroma-systems.com, zhangqing@rock-chips.com, robin.murphy@arm.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Instead of open coding the polling of the lock status, use the
handy regmap_read_poll_timeout for this. As the pll locking is
normally blazingly fast and we don't want to incur additional
delays, we're not doing any sleeps similar to for example the imx
clk-pllv4 and define a very safe but still short timeout of 1ms.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes in v3:
- none
changes in v2:
- add patch to keep generic grf wait_lock similar to the rest
  and use regmap_read_poll_timeout for this

 drivers/clk/rockchip/clk-pll.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 6fd52895e7b6..c7c3848d68e8 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -86,23 +86,14 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
 {
 	struct regmap *grf = pll->ctx->grf;
 	unsigned int val;
-	int delay = 24000000, ret;
-
-	while (delay > 0) {
-		ret = regmap_read(grf, pll->lock_offset, &val);
-		if (ret) {
-			pr_err("%s: failed to read pll lock status: %d\n",
-			       __func__, ret);
-			return ret;
-		}
+	int ret;
 
-		if (val & BIT(pll->lock_shift))
-			return 0;
-		delay--;
-	}
+	ret = regmap_read_poll_timeout(grf, pll->lock_offset, val,
+				       val & BIT(pll->lock_shift), 0, 1000);
+	if (ret)
+		pr_err("%s: timeout waiting for pll to lock\n", __func__);
 
-	pr_err("%s: timeout waiting for pll to lock\n", __func__);
-	return -ETIMEDOUT;
+	return ret;
 }
 
 /**
-- 
2.24.1
