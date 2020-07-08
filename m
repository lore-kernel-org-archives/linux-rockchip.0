From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] clk: rockchip: mark pclk_uart2 as critical on rk3328
Date: Wed,  8 Jul 2020 16:45:28 +0200
Message-ID: <20200708144528.20465-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: zhangqing@rock-chips.com, mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The rk3328 uart2 port is used as boot console and to debug.
During the boot pclk_uart2 is disabled by a clk_disable_unused
initcall. Fix the uart2 function by marking pclk_uart2
as critical on rk3328. Also add sclk_uart2 as that is needed
for the same DT node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/clk/rockchip/clk-rk3328.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index c186a1985..cb7749cb7 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -875,6 +875,8 @@ static const char *const rk3328_critical_clocks[] __initconst = {
 	"aclk_gmac_niu",
 	"pclk_gmac_niu",
 	"pclk_phy_niu",
+	"pclk_uart2",
+	"sclk_uart2",
 };
 
 static void __init rk3328_clk_init(struct device_node *np)
-- 
2.11.0
