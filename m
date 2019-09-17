From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 3/5] clk: rockchip: move px30 critical clocks to correct clock
 controller
Date: Tue, 17 Sep 2019 10:19:01 +0200
Message-ID: <20190917081903.25139-3-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190917081903.25139-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The clocks in the px30 critical clock section are from the regular cru not
the pmucru, so move them to the correct place.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 drivers/clk/rockchip/clk-px30.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index a973394f3d65..5c77da1e3abc 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -976,7 +976,7 @@ static struct rockchip_clk_branch px30_clk_pmu_branches[] __initdata = {
 	GATE(0, "pclk_cru_pmu", "pclk_pmu_pre", CLK_IGNORE_UNUSED, PX30_PMU_CLKGATE_CON(0), 8, GFLAGS),
 };
 
-static const char *const px30_pmucru_critical_clocks[] __initconst = {
+static const char *const px30_cru_critical_clocks[] __initconst = {
 	"aclk_bus_pre",
 	"pclk_bus_pre",
 	"hclk_bus_pre",
@@ -1021,6 +1021,9 @@ static void __init px30_clk_init(struct device_node *np)
 				     &px30_cpuclk_data, px30_cpuclk_rates,
 				     ARRAY_SIZE(px30_cpuclk_rates));
 
+	rockchip_clk_protect_critical(px30_cru_critical_clocks,
+				      ARRAY_SIZE(px30_cru_critical_clocks));
+
 	rockchip_register_softrst(np, 12, reg_base + PX30_SOFTRST_CON(0),
 				  ROCKCHIP_SOFTRST_HIWORD_MASK);
 
@@ -1053,9 +1056,6 @@ static void __init px30_pmu_clk_init(struct device_node *np)
 	rockchip_clk_register_branches(ctx, px30_clk_pmu_branches,
 				       ARRAY_SIZE(px30_clk_pmu_branches));
 
-	rockchip_clk_protect_critical(px30_pmucru_critical_clocks,
-				      ARRAY_SIZE(px30_pmucru_critical_clocks));
-
 	rockchip_clk_of_add_provider(np, ctx);
 }
 CLK_OF_DECLARE(px30_cru_pmu, "rockchip,px30-pmucru", px30_pmu_clk_init);
-- 
2.20.1
