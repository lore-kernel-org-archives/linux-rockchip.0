From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 5/6] clk: rockchip: fix coding style for clk-cpu.c
Date: Mon, 15 Feb 2016 11:33:50 +0800
Message-ID: <1455507230-13120-1-git-send-email-shawn.lin@rock-chips.com>
References: <1455507153-12914-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1455507153-12914-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Fix the issue reported by checkpatch:
ERROR: space prohibited before that ',' (ctx:WxW)
+               writel(clksel->val , cpuclk->reg_base + clksel->reg);

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/clk/rockchip/clk-cpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 68a2a87..4e73ed5 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -116,7 +116,7 @@ static void rockchip_cpuclk_set_dividers(struct rockchip_cpuclk *cpuclk,
 
 		pr_debug("%s: setting reg 0x%x to 0x%x\n",
 			 __func__, clksel->reg, clksel->val);
-		writel(clksel->val , cpuclk->reg_base + clksel->reg);
+		writel(clksel->val, cpuclk->reg_base + clksel->reg);
 	}
 }
 
-- 
2.3.7
