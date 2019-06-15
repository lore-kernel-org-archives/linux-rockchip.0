From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/3] clk: rockchip: add watchdog pclk on rk3328
Date: Sat, 15 Jun 2019 17:30:31 +0200
Message-ID: <20190615153032.27772-2-heiko@sntech.de>
References: <20190615153032.27772-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190615153032.27772-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, papadakospan@gmail.com, sboyd@kernel.org, mturquette@baylibre.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The watchdog pclk is controlled from the secure GRF but we still
want to mention it explicitly to not use arbitary parent clocks
in the devicetree wdt node, so add a SGRF_GATE for it.

Suggested-by: Leonidas P. Papadakos <papadakospan@gmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-rk3328.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index 076b9777a955..c186a1985bf4 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -791,6 +791,9 @@ static struct rockchip_clk_branch rk3328_clk_branches[] __initdata = {
 	GATE(PCLK_SARADC, "pclk_saradc", "pclk_bus", 0, RK3328_CLKGATE_CON(17), 15, GFLAGS),
 	GATE(0, "pclk_pmu", "pclk_bus", CLK_IGNORE_UNUSED, RK3328_CLKGATE_CON(28), 3, GFLAGS),
 
+	/* Watchdog pclk is controlled from the secure GRF */
+	SGRF_GATE(PCLK_WDT, "pclk_wdt", "pclk_bus"),
+
 	GATE(PCLK_USB3PHY_OTG, "pclk_usb3phy_otg", "pclk_phy_pre", 0, RK3328_CLKGATE_CON(28), 1, GFLAGS),
 	GATE(PCLK_USB3PHY_PIPE, "pclk_usb3phy_pipe", "pclk_phy_pre", 0, RK3328_CLKGATE_CON(28), 2, GFLAGS),
 	GATE(PCLK_USB3_GRF, "pclk_usb3_grf", "pclk_phy_pre", CLK_IGNORE_UNUSED, RK3328_CLKGATE_CON(17), 2, GFLAGS),
-- 
2.20.1
