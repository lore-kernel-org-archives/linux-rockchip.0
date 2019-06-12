From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH] clk: rockchip: select hdmiphy clock source for rk3228
Date: Wed, 12 Jun 2019 13:33:43 +0000
Message-ID: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Unless explictly configured by a bootloader, the hdmiphy clock parent
defaults to the xin24m clock source. This configuration does not yield
any HDMI video output, so let hdmiphy_phy (the HDMI PHY output clock)
be the parent instead.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 drivers/clk/rockchip/clk-rk3228.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index 1c5267d134ee..00a195e6c014 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -699,6 +699,9 @@ static void __init rk3228_clk_init(struct device_node *np)
 		return;
 	}
 
+	/* Let hdmiphy_phy be the parent of the hdmiphy clock. */
+	writel_relaxed(HIWORD_UPDATE(0, 1, 13), reg_base + RK2928_MISC_CON);
+
 	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
-- 
2.11.0
