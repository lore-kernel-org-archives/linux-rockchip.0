From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: use separate compatibles for rk3288w-cru
Date: Fri,  3 Jul 2020 17:28:25 +0200
Message-ID: <20200703152825.245920-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: mylene.josserand@collabora.com, mturquette@baylibre.com, sboyd@kernel.org, jagan@amarulasolutions.com, linux-kernel@vger.kernel.org, heiko@sntech.de, ezequiel@collabora.com, linux-clk@vger.kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Commit 1627f683636d ("clk: rockchip: Handle clock tree for rk3288w variant")
added the check for rk3288w-specific clock-tree changes but in turn would
require a double-compatible due to re-using the main rockchip,rk3288-cru
compatible as entry point.

The binding change actually describes the compatibles as one or the other
so adapt the code accordingly and add a real second entry-point for the
clock controller.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/clk/rockchip/clk-rk3288.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 204976e2d0cb..a39ca9809cc3 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -922,7 +922,7 @@ static struct syscore_ops rk3288_clk_syscore_ops = {
 	.resume = rk3288_clk_resume,
 };
 
-static void __init rk3288_clk_init(struct device_node *np)
+static void __init rk3288_common_init(struct device_node *np, bool is_w)
 {
 	struct rockchip_clk_provider *ctx;
 
@@ -945,7 +945,7 @@ static void __init rk3288_clk_init(struct device_node *np)
 	rockchip_clk_register_branches(ctx, rk3288_clk_branches,
 				  ARRAY_SIZE(rk3288_clk_branches));
 
-	if (of_device_is_compatible(np, "rockchip,rk3288w-cru"))
+	if (is_w)
 		rockchip_clk_register_branches(ctx, rk3288w_hclkvio_branch,
 					       ARRAY_SIZE(rk3288w_hclkvio_branch));
 	else
@@ -970,4 +970,15 @@ static void __init rk3288_clk_init(struct device_node *np)
 
 	rockchip_clk_of_add_provider(np, ctx);
 }
+
+static void __init rk3288_clk_init(struct device_node *np)
+{
+	rk3288_common_init(np, false);
+}
 CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288-cru", rk3288_clk_init);
+
+static void __init rk3288w_clk_init(struct device_node *np)
+{
+	rk3288_common_init(np, true);
+}
+CLK_OF_DECLARE(rk3288w_cru, "rockchip,rk3288w-cru", rk3288w_clk_init);
-- 
2.26.2
