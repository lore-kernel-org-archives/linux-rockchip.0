From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/7] clk: rockchip: remove mux_core_reg from rockchip_cpuclk_reg_data
Date: Sun, 13 Mar 2016 00:25:00 +0800
Message-ID: <1457799900-3056-1-git-send-email-shawn.lin@rock-chips.com>
References: <1457799871-3015-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1457799871-3015-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Xing Zheng <zhengxing@rock-chips.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

mux_core_reg isn't been used anywhere, let's remove it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 drivers/clk/rockchip/clk.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 4798786..b298f99 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -245,7 +245,6 @@ struct rockchip_cpuclk_reg_data {
 	int		core_reg;
 	u8		div_core_shift;
 	u32		div_core_mask;
-	int		mux_core_reg;
 	u8		mux_core_alt;
 	u8		mux_core_main;
 	u8		mux_core_shift;
-- 
2.3.7


