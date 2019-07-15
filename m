From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 01/15] ram: rk3399: Fix code warnings
Date: Mon, 15 Jul 2019 23:50:56 +0530
Message-ID: <20190715182110.21336-2-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190715182110.21336-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Fix checkpatch warninigs on sdram_rk3399.c like
- Avoid CamelCase
- Unnecessary parentheses
- Alignment should match open parenthesis
- multiple blank lines
- misspelled
- spaces preferred around that '>>'

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 48 ++++++++++++++---------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 52518656c4..541e4a4b1e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -47,7 +47,7 @@ struct dram_info {
 #define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
 #define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
 
-#define PHY_DRV_ODT_Hi_Z	0x0
+#define PHY_DRV_ODT_HI_Z	0x0
 #define PHY_DRV_ODT_240		0x1
 #define PHY_DRV_ODT_120		0x8
 #define PHY_DRV_ODT_80		0x9
@@ -150,7 +150,7 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 			((16 - row) << 24));
 	/* PI_41 PI_CS_MAP:RW:24:4 */
 	clrsetbits_le32(&denali_pi[41], 0xf << 24, cs_map << 24);
-	if ((sdram_ch->rank == 1) && (sdram_params->base.dramtype == DDR3))
+	if (sdram_ch->rank == 1 && sdram_params->base.dramtype == DDR3)
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
@@ -166,10 +166,10 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
-		tsel_rd_select_p = PHY_DRV_ODT_Hi_Z;
+		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_p = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
-		tsel_idle_select_p = PHY_DRV_ODT_Hi_Z;
+		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_n = PHY_DRV_ODT_40;
@@ -181,10 +181,10 @@ static void set_ds_odt(const struct chan_info *chan,
 		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
-		tsel_rd_select_n = PHY_DRV_ODT_Hi_Z;
+		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_n = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_48;
-		tsel_idle_select_n = PHY_DRV_ODT_Hi_Z;
+		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_p = PHY_DRV_ODT_34_3;
@@ -294,7 +294,7 @@ static void set_ds_odt(const struct chan_info *chan,
 }
 
 static int phy_io_config(const struct chan_info *chan,
-			  const struct rk3399_sdram_params *sdram_params)
+			 const struct rk3399_sdram_params *sdram_params)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
@@ -423,7 +423,6 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_939 PHY_PAD_CS_DRIVE */
 	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
 
-
 	/* speed setting */
 	if (sdram_params->base.ddr_freq < 400)
 		speed = 0x0;
@@ -492,7 +491,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	setbits_le32(&denali_pi[0], START);
 	setbits_le32(&denali_ctl[0], START);
 
-	/* Wating for phy DLL lock */
+	/* Waiting for phy DLL lock */
 	while (1) {
 		tmp = readl(&denali_phy[920]);
 		tmp1 = readl(&denali_phy[921]);
@@ -547,12 +546,12 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	/* PHY_DLL_RST_EN */
 	clrsetbits_le32(&denali_phy[957], 0x3 << 24, 0x2 << 24);
 
-	/* Wating for PHY and DRAM init complete */
+	/* Waiting for PHY and DRAM init complete */
 	tmp = get_timer(0);
 	do {
 		if (get_timer(tmp) > timeout_ms) {
 			pr_err("DRAM (%s): phy failed to lock within  %ld ms\n",
-			      __func__, timeout_ms);
+			       __func__, timeout_ms);
 			return -ETIME;
 		}
 	} while (!(readl(&denali_ctl[203]) & (1 << 3)));
@@ -569,7 +568,7 @@ static void select_per_cs_training_index(const struct chan_info *chan,
 	u32 *denali_phy = chan->publ->denali_phy;
 
 	/* PHY_84 PHY_PER_CS_TRAINING_EN_0 1bit offset_16 */
-	if ((readl(&denali_phy[84])>>16) & 1) {
+	if ((readl(&denali_phy[84]) >> 16) & 1) {
 		/*
 		 * PHY_8/136/264/392
 		 * phy_per_cs_training_index_X 1bit offset_24
@@ -646,7 +645,7 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 			if ((((tmp >> 11) & 0x1) == 0x1) &&
 			    (((tmp >> 13) & 0x1) == 0x1) &&
 			    (((tmp >> 5) & 0x1) == 0x0) &&
-			    (obs_err == 0))
+			    obs_err == 0)
 				break;
 			else if ((((tmp >> 5) & 0x1) == 0x1) ||
 				 (obs_err == 1))
@@ -700,7 +699,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 			if ((((tmp >> 10) & 0x1) == 0x1) &&
 			    (((tmp >> 13) & 0x1) == 0x1) &&
 			    (((tmp >> 4) & 0x1) == 0x0) &&
-			    (obs_err == 0))
+			    obs_err == 0)
 				break;
 			else if ((((tmp >> 4) & 0x1) == 0x1) ||
 				 (obs_err == 1))
@@ -759,7 +758,7 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 			if ((((tmp >> 9) & 0x1) == 0x1) &&
 			    (((tmp >> 13) & 0x1) == 0x1) &&
 			    (((tmp >> 3) & 0x1) == 0x0) &&
-			    (obs_err == 0))
+			    obs_err == 0)
 				break;
 			else if ((((tmp >> 3) & 0x1) == 0x1) ||
 				 (obs_err == 1))
@@ -955,8 +954,10 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
-		sys_reg |= (info->cs0_row - 13) << SYS_REG_CS0_ROW_SHIFT(channel);
-		sys_reg |= (info->cs1_row - 13) << SYS_REG_CS1_ROW_SHIFT(channel);
+		sys_reg |= (info->cs0_row - 13) <<
+			    SYS_REG_CS0_ROW_SHIFT(channel);
+		sys_reg |= (info->cs1_row - 13) <<
+			    SYS_REG_CS1_ROW_SHIFT(channel);
 		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
 		sys_reg |= (2 >> info->dbw) << SYS_REG_DBW_SHIFT(channel);
 
@@ -991,7 +992,7 @@ static void dram_all_config(struct dram_info *dram,
 }
 
 static int switch_to_phy_index1(struct dram_info *dram,
-				 const struct rk3399_sdram_params *sdram_params)
+				const struct rk3399_sdram_params *sdram_params)
 {
 	u32 channel;
 	u32 *denali_phy;
@@ -1026,7 +1027,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 		denali_phy = dram->chan[channel].publ->denali_phy;
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
 		ret = data_training(&dram->chan[channel], channel,
-				  sdram_params, PI_FULL_TRAINING);
+				    sdram_params, PI_FULL_TRAINING);
 		if (ret) {
 			debug("index1 training failed\n");
 			return ret;
@@ -1116,8 +1117,8 @@ static int conv_of_platdata(struct udevice *dev)
 	int ret;
 
 	ret = regmap_init_mem_platdata(dev, dtplat->reg,
-			ARRAY_SIZE(dtplat->reg) / 2,
-			&plat->map);
+				       ARRAY_SIZE(dtplat->reg) / 2,
+				       &plat->map);
 	if (ret)
 		return ret;
 
@@ -1199,8 +1200,8 @@ static int rk3399_dmc_probe(struct udevice *dev)
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
 	debug("%s: pmugrf=%p\n", __func__, priv->pmugrf);
 	priv->info.base = CONFIG_SYS_SDRAM_BASE;
-	priv->info.size = rockchip_sdram_size(
-			(phys_addr_t)&priv->pmugrf->os_reg2);
+	priv->info.size =
+		rockchip_sdram_size((phys_addr_t)&priv->pmugrf->os_reg2);
 #endif
 	return 0;
 }
@@ -1218,7 +1219,6 @@ static struct ram_ops rk3399_dmc_ops = {
 	.get_info = rk3399_dmc_get_info,
 };
 
-
 static const struct udevice_id rk3399_dmc_ids[] = {
 	{ .compatible = "rockchip,rk3399-dmc" },
 	{ }
-- 
2.18.0.321.gffc6fa0e3
