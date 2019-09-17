From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 5/5] clk: rockchip: protect the pclk_usb_grf as critical
Date: Tue, 17 Sep 2019 10:19:03 +0200
Message-ID: <20190917081903.25139-5-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190917081903.25139-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, finley.xiao@rock-chips.com, zhangqing@rock-chips.com, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Make this clock a real critical clock, so that writes to the usbphy grf
always succeed.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-px30.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 7a8bc416c947..6fb9c98b7d24 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -799,7 +799,7 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	GATE(0, "pclk_ddrphy", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 3, GFLAGS),
 	GATE(PCLK_MIPIDSIPHY, "pclk_mipidsiphy", "pclk_top_pre", 0, PX30_CLKGATE_CON(16), 4, GFLAGS),
 	GATE(PCLK_MIPICSIPHY, "pclk_mipicsiphy", "pclk_top_pre", 0, PX30_CLKGATE_CON(16), 5, GFLAGS),
-	GATE(PCLK_USB_GRF, "pclk_usb_grf", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 6, GFLAGS),
+	GATE(PCLK_USB_GRF, "pclk_usb_grf", "pclk_top_pre", 0, PX30_CLKGATE_CON(16), 6, GFLAGS),
 	GATE(0, "pclk_cpu_hoost", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 7, GFLAGS),
 
 	/* PD_VI */
@@ -995,6 +995,7 @@ static const char *const px30_cru_critical_clocks[] __initconst = {
 	"usb480m",
 	"clk_uart2",
 	"pclk_uart2",
+	"pclk_usb_grf",
 };
 
 static void __init px30_clk_init(struct device_node *np)
-- 
2.20.1
