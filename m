From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 51/57] ram: rk3399: Add set_rate sdram rk3399 ops
Date: Tue, 16 Jul 2019 17:27:39 +0530
Message-ID: <20190716115745.12585-52-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

DDR set rate can be even required for lpddr4 and we
need to keep the lpddr4 code to compile only for relevant
boards which do support lpddr4.

For this requirement, and for code readability handle
data training via sdram_rk3399_ops with .set_rate and
same will update in future while supporting lpddr4 code.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 623685e3c5..c3d7665ea2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -74,6 +74,8 @@ struct dram_info {
 struct sdram_rk3399_ops {
 	int (*data_training)(struct dram_info *dram, u32 channel, u8 rank,
 			     struct rk3399_sdram_params *sdram);
+	int (*set_rate)(struct dram_info *dram,
+			const struct rk3399_sdram_params *params);
 };
 
 #if defined(CONFIG_TPL_BUILD) || \
@@ -948,6 +950,7 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	return 0;
 }
 
+#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 static void select_per_cs_training_index(const struct chan_info *chan,
 					 u32 rank)
 {
@@ -1368,6 +1371,7 @@ static int data_training(struct dram_info *dram, u32 channel,
 
 	return 0;
 }
+#endif
 
 static void set_ddrconfig(const struct chan_info *chan,
 			  const struct rk3399_sdram_params *params,
@@ -1487,7 +1491,6 @@ static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 
 	return data_training(dram, channel, params, training_flag);
 }
-#endif
 
 static int switch_to_phy_index1(struct dram_info *dram,
 				const struct rk3399_sdram_params *params)
@@ -1534,7 +1537,8 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
-#if defined(CONFIG_RAM_RK3399_LPDDR4)
+#else
+
 static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
 {
 	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
@@ -1938,7 +1942,7 @@ static int sdram_init(struct dram_info *dram,
 
 	params->base.stride = calculate_stride(params);
 	dram_all_config(dram, params);
-	switch_to_phy_index1(dram, params);
+	dram->ops->set_rate(dram, params);
 
 	debug("Finish SDRAM initialization...\n");
 	return 0;
@@ -1986,6 +1990,7 @@ static int conv_of_platdata(struct udevice *dev)
 static const struct sdram_rk3399_ops rk3399_ops = {
 #if !defined(CONFIG_RAM_RK3399_LPDDR4)
 	.data_training = default_data_training,
+	.set_rate = switch_to_phy_index1,
 #else
 	.data_training = lpddr4_mr_detect,
 #endif
-- 
2.18.0.321.gffc6fa0e3
