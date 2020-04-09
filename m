From: Jason Yan <yanaijie@huawei.com>
Subject: [PATCH] clk: rockchip: remove defined but not used 'mux_timer_src_p'
Date: Thu, 9 Apr 2020 19:40:01 +0800
Message-ID: <20200409114001.38122-1-yanaijie@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jason Yan <yanaijie@huawei.com>
List-Id: linux-rockchip.vger.kernel.org

Fix the following gcc warning:

drivers/clk/rockchip/clk-rk3308.c:136:7: warning: ‘mux_timer_src_p’
defined but not used [-Wunused-const-variable=]
 PNAME(mux_timer_src_p)  = { "xin24m", "clk_rtc32k" };
       ^

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/clk/rockchip/clk-rk3308.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3308.c b/drivers/clk/rockchip/clk-rk3308.c
index b0baf87a283e..5bf15f2a44b7 100644
--- a/drivers/clk/rockchip/clk-rk3308.c
+++ b/drivers/clk/rockchip/clk-rk3308.c
@@ -133,7 +133,6 @@ PNAME(mux_uart1_p)		= { "clk_uart1_src", "dummy", "clk_uart1_frac" };
 PNAME(mux_uart2_p)		= { "clk_uart2_src", "dummy", "clk_uart2_frac" };
 PNAME(mux_uart3_p)		= { "clk_uart3_src", "dummy", "clk_uart3_frac" };
 PNAME(mux_uart4_p)		= { "clk_uart4_src", "dummy", "clk_uart4_frac" };
-PNAME(mux_timer_src_p)		= { "xin24m", "clk_rtc32k" };
 PNAME(mux_dclk_vop_p)		= { "dclk_vop_src", "dclk_vop_frac", "xin24m" };
 PNAME(mux_nandc_p)		= { "clk_nandc_div", "clk_nandc_div50" };
 PNAME(mux_sdmmc_p)		= { "clk_sdmmc_div", "clk_sdmmc_div50" };
-- 
2.17.2
