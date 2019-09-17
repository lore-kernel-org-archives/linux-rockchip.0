From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 4/5] clk: rockchip: add video-related niu clocks as critical on px30
Date: Tue, 17 Sep 2019 10:19:02 +0200
Message-ID: <20190917081903.25139-4-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190917081903.25139-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, finley.xiao@rock-chips.com, zhangqing@rock-chips.com, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Video-In and -Out interconnect clocks need to stay on all the
time for the peripheral to work and we do not model the actual
interconnect at this point. So mark them as critical for now.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-px30.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 5c77da1e3abc..7a8bc416c947 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -803,25 +803,25 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	GATE(0, "pclk_cpu_hoost", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 7, GFLAGS),
 
 	/* PD_VI */
-	GATE(0, "aclk_vi_niu", "aclk_vi_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(4), 15, GFLAGS),
+	GATE(0, "aclk_vi_niu", "aclk_vi_pre", 0, PX30_CLKGATE_CON(4), 15, GFLAGS),
 	GATE(ACLK_CIF, "aclk_cif", "aclk_vi_pre", 0, PX30_CLKGATE_CON(5), 1, GFLAGS),
 	GATE(ACLK_ISP, "aclk_isp", "aclk_vi_pre", 0, PX30_CLKGATE_CON(5), 3, GFLAGS),
-	GATE(0, "hclk_vi_niu", "hclk_vi_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(5), 0, GFLAGS),
+	GATE(0, "hclk_vi_niu", "hclk_vi_pre", 0, PX30_CLKGATE_CON(5), 0, GFLAGS),
 	GATE(HCLK_CIF, "hclk_cif", "hclk_vi_pre", 0, PX30_CLKGATE_CON(5), 2, GFLAGS),
 	GATE(HCLK_ISP, "hclk_isp", "hclk_vi_pre", 0, PX30_CLKGATE_CON(5), 4, GFLAGS),
 
 	/* PD_VO */
-	GATE(0, "aclk_vo_niu", "aclk_vo_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(3), 0, GFLAGS),
+	GATE(0, "aclk_vo_niu", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 0, GFLAGS),
 	GATE(ACLK_VOPB, "aclk_vopb", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 3, GFLAGS),
 	GATE(ACLK_RGA, "aclk_rga", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 7, GFLAGS),
 	GATE(ACLK_VOPL, "aclk_vopl", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 5, GFLAGS),
 
-	GATE(0, "hclk_vo_niu", "hclk_vo_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(3), 1, GFLAGS),
+	GATE(0, "hclk_vo_niu", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 1, GFLAGS),
 	GATE(HCLK_VOPB, "hclk_vopb", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 4, GFLAGS),
 	GATE(HCLK_RGA, "hclk_rga", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 8, GFLAGS),
 	GATE(HCLK_VOPL, "hclk_vopl", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 6, GFLAGS),
 
-	GATE(0, "pclk_vo_niu", "pclk_vo_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(3), 2, GFLAGS),
+	GATE(0, "pclk_vo_niu", "pclk_vo_pre", 0, PX30_CLKGATE_CON(3), 2, GFLAGS),
 	GATE(PCLK_MIPI_DSI, "pclk_mipi_dsi", "pclk_vo_pre", 0, PX30_CLKGATE_CON(3), 9, GFLAGS),
 
 	/* PD_BUS */
@@ -986,6 +986,11 @@ static const char *const px30_cru_critical_clocks[] __initconst = {
 	"pclk_top_pre",
 	"pclk_pmu_pre",
 	"hclk_usb_niu",
+	"pclk_vo_niu",
+	"aclk_vo_niu",
+	"hclk_vo_niu",
+	"aclk_vi_niu",
+	"hclk_vi_niu",
 	"pll_npll",
 	"usb480m",
 	"clk_uart2",
-- 
2.20.1
