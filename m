From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1] clk: Export __clk_lookup()
Date: Wed, 22 Jul 2020 10:32:30 +0800
Message-ID: <20200722023230.10826-1-zhangqing@rock-chips.com>
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Export __clk_lookup() to support user built as module.

ERROR:
drivers/clk/rockchip/clk.ko: In function
`rockchip_clk_protect_critical':
drivers/clk/rockchip/clk.c:741:
undefined reference to `__clk_lookup'

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/clk.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 3f588ed06ce3..600284fbb257 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -618,6 +618,7 @@ struct clk *__clk_lookup(const char *name)
 
 	return !core ? NULL : core->hw->clk;
 }
+EXPORT_SYMBOL_GPL(__clk_lookup);
 
 static void clk_core_get_boundaries(struct clk_core *core,
 				    unsigned long *min_rate,
-- 
2.17.1
