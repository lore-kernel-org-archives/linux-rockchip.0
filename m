From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH] clk: rockchip: Fix static checker warning in rockchip_ddrclk_get_parent call
Date: Tue, 16 Oct 2018 15:41:44 +0200
Message-ID: <20181016134144.12461-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Michael Turquette <mturquette@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Fixes the signedness bug returning '(-22)' on the return type by removing the
sanity checker in rockchip_ddrclk_get_parent(). The function should return
and unsigned value only and it's safe to remove the sanity checker as the
core functions that call get_parent like clk_core_get_parent_by_index already
ensures the validity of the clk index returned (index >= core->num_parents).

Fixes: a4f182bf81f18 ("clk: rockchip: add new clock-type for the ddrclk")
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/clk/rockchip/clk-ddr.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-ddr.c b/drivers/clk/rockchip/clk-ddr.c
index de00590af167..fd5c90371dbf 100644
--- a/drivers/clk/rockchip/clk-ddr.c
+++ b/drivers/clk/rockchip/clk-ddr.c
@@ -185,16 +185,12 @@ rockchip_ddrclk_sip_recalc_rate(struct clk_hw *hw,
 static u8 rockchip_ddrclk_get_parent(struct clk_hw *hw)
 {
 	struct rockchip_ddrclk *ddrclk = to_rockchip_ddrclk_hw(hw);
-	int num_parents = clk_hw_get_num_parents(hw);
 	u32 val;
 
 	val = clk_readl(ddrclk->reg_base +
 			ddrclk->mux_offset) >> ddrclk->mux_shift;
 	val &= GENMASK(ddrclk->mux_width - 1, 0);
 
-	if (val >= num_parents)
-		return -EINVAL;
-
 	return val;
 }
 
-- 
2.19.1
