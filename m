From: Xing Zheng <zhengxing@rock-chips.com>
Subject: [PATCH] clk: rockchip: fix the incorrect pclk_edp div width for RK3399
Date: Wed, 18 Jan 2017 12:20:56 +0800
Message-ID: <1484713256-3005-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de
Cc: hl@rock-chips.com, Xing Zheng <zhengxing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, dianders@google.com, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The range of the  pclk_edp_div_con is [13:8] and 6 bits, not 5.

Reported-by: Lin Huang <hl@rock-chips.com>
Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
---

 drivers/clk/rockchip/clk-rk3399.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 3490887..73121b14 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1132,7 +1132,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 			RK3399_CLKGATE_CON(11), 8, GFLAGS),
 
 	COMPOSITE(PCLK_EDP, "pclk_edp", mux_pll_src_cpll_gpll_p, 0,
-			RK3399_CLKSEL_CON(44), 15, 1, MFLAGS, 8, 5, DFLAGS,
+			RK3399_CLKSEL_CON(44), 15, 1, MFLAGS, 8, 6, DFLAGS,
 			RK3399_CLKGATE_CON(11), 11, GFLAGS),
 	GATE(PCLK_EDP_NOC, "pclk_edp_noc", "pclk_edp", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(32), 12, GFLAGS),
-- 
2.7.4
