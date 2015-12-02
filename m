From: "jianqun.xu" <jay.xu@rock-chips.com>
Subject: [PATCH] clk: rockchip: rk3368: protect aclk_bus and aclk_peri clocks
Date: Wed,  2 Dec 2015 21:22:31 +0800
Message-ID: <1449062551-2498-1-git-send-email-jay.xu@rock-chips.com>
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: heiko@sntech.de
Cc: huangtao@rock-chips.com, mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jianqun xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: Jianqun xu <jay.xu@rock-chips.com>

Add aclk_bus and aclk_peri to the list of rk3368 critical clocks,
which are the base clocks that supply for all peripherals, never
to be disabled automatically.

Signed-off-by: Jianqun xu <jay.xu@rock-chips.com>
---
 drivers/clk/rockchip/clk-rk3368.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 7e6b783..cd9d4aa 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -819,6 +819,8 @@ static struct rockchip_clk_branch rk3368_clk_branches[] __initdata = {
 };
 
 static const char *const rk3368_critical_clocks[] __initconst = {
+	"aclk_bus",
+	"aclk_peri",
 	"pclk_pd_pmu",
 };
 
-- 
1.9.1


