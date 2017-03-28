From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 2/4] clk: rockchip: rk3228: make noc and some special clk
 as critical_clocks
Date: Tue, 28 Mar 2017 18:06:52 +0800
Message-ID: <1490695614-3220-3-git-send-email-zhangqing@rock-chips.com>
References: <1490695614-3220-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1490695614-3220-1-git-send-email-zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, xf-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/clk/rockchip/clk-rk3228.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index db6e5a9e6de6..4d3203f887e2 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -445,7 +445,7 @@ enum rk3228_plls {
 			RK2928_CLKGATE_CON(2), 12, GFLAGS,
 			&rk3228_spdif_fracmux),
 
-	GATE(0, "jtag", "ext_jtag", 0,
+	GATE(0, "jtag", "ext_jtag", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 3, GFLAGS),
 
 	GATE(0, "sclk_otgphy0", "xin24m", 0,
@@ -644,9 +644,37 @@ enum rk3228_plls {
 
 static const char *const rk3228_critical_clocks[] __initconst = {
 	"aclk_cpu",
+	"pclk_cpu",
+	"hclk_cpu",
 	"aclk_peri",
 	"hclk_peri",
 	"pclk_peri",
+	"aclk_rga_noc",
+	"aclk_iep_noc",
+	"aclk_vop_noc",
+	"aclk_hdcp_noc",
+	"hclk_vio_ahb_arbi",
+	"hclk_vio_noc",
+	"hclk_vop_noc",
+	"hclk_host0_arb",
+	"hclk_host1_arb",
+	"hclk_host2_arb",
+	"hclk_otg_pmu",
+	"aclk_gpu_noc",
+	"sclk_initmem_mbist",
+	"aclk_initmem",
+	"hclk_rom",
+	"pclk_ddrupctl",
+	"pclk_ddrmon",
+	"pclk_msch_noc",
+	"pclk_stimer",
+	"pclk_ddrphy",
+	"pclk_acodecphy",
+	"pclk_phy_noc",
+	"aclk_vpu_noc",
+	"aclk_rkvdec_noc",
+	"hclk_vpu_noc",
+	"hclk_rkvdec_noc",
 };
 
 static void __init rk3228_clk_init(struct device_node *np)
-- 
1.9.1
