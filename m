From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 36/92] ram: rk3399: Add pctl start support
Date: Tue, 11 Jun 2019 20:20:39 +0530
Message-ID: <20190611145135.21399-37-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190611145135.21399-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add support for pctl start for both channel 0, 1 control
and phy registers.

This would also handle pwrup_srefresh_exit init based
on the channel number.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 79 +++++++++++++++++++++--------
 1 file changed, 59 insertions(+), 20 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7ca76d304f..220197a42e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -49,10 +49,11 @@ struct chan_info {
 struct dram_info {
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
-	u32 pwrup_srefresh_exit;
+	u32 pwrup_srefresh_exit[2];
 	struct chan_info chan[2];
 	struct clk ddr_clk;
 	struct rk3399_cru *cru;
+	struct rk3399_grf_regs *grf;
 	struct rk3399_pmucru *pmucru;
 	struct rk3399_pmusgrf_regs *pmusgrf;
 	struct rk3399_ddr_cic_regs *cic;
@@ -73,6 +74,11 @@ struct rockchip_dmc_plat {
 	struct regmap *map;
 };
 
+static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
+{
+	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
+}
+
 static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 {
 	int i;
@@ -328,6 +334,52 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[930], 0x1 << 17, reg_value);
 }
 
+static void pctl_start(struct dram_info *dram,
+		       const struct rk3399_sdram_params *sdram_params,
+		       u8 channel)
+{
+	const struct chan_info *chan = &dram->chan[channel];
+	u32 *ddrc0_con = get_ddrc0_con(dram, channel);
+	u32 *denali_ctl, *denali_phy;
+	u32 count = 0;
+	u32 byte, tmp;
+
+	denali_ctl = chan->pctl->denali_ctl;
+	denali_phy = chan->publ->denali_phy;
+
+	writel(0x01000000, &ddrc0_con);
+
+	clrsetbits_le32(&denali_phy[957], 0x3 << 24, 0x2 << 24);
+
+	while (!(readl(&denali_ctl[203]) & (1 << 3))) {
+		if (count > 1000) {
+			printf("%s: Failed to init pctl for channel %d\n",
+			       __func__, channel);
+			while (1)
+				;
+		}
+
+		udelay(1);
+		count++;
+	}
+
+	writel(0x01000100, &ddrc0_con);
+
+	for (byte = 0; byte < 4; byte++) {
+		tmp = 0x820;
+		writel((tmp << 16) | tmp, &denali_phy[53 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[54 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[55 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[56 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[57 + (128 * byte)]);
+
+		clrsetbits_le32(&denali_phy[58 + (128 * byte)], 0xffff, tmp);
+	}
+
+	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
+			dram->pwrup_srefresh_exit[channel]);
+}
+
 static int phy_io_config(const struct chan_info *chan,
 			 const struct rk3399_sdram_params *sdram_params)
 {
@@ -498,7 +550,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	const u32 *params_phy = sdram_params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
 	int ret;
-	const ulong timeout_ms = 200;
 
 	/*
 	 * work around controller bug:
@@ -516,8 +567,8 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	writel(sdram_params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(sdram_params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
-				    PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit[channel] = readl(&denali_ctl[68]) &
+					     PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -578,22 +629,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	if (ret)
 		return ret;
 
-	/* PHY_DLL_RST_EN */
-	clrsetbits_le32(&denali_phy[957], 0x3 << 24, 0x2 << 24);
-
-	/* Waiting for PHY and DRAM init complete */
-	tmp = get_timer(0);
-	do {
-		if (get_timer(tmp) > timeout_ms) {
-			pr_err("DRAM (%s): phy failed to lock within  %ld ms\n",
-			       __func__, timeout_ms);
-			return -ETIME;
-		}
-	} while (!(readl(&denali_ctl[203]) & (1 << 3)));
-	debug("DRAM (%s): phy locked after %ld ms\n", __func__, get_timer(tmp));
-
-	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
-			dram->pwrup_srefresh_exit);
 	return 0;
 }
 
@@ -1183,6 +1218,9 @@ static int sdram_init(struct dram_info *dram,
 			return ret;
 		}
 
+		/* start to trigger initialization */
+		pctl_start(dram, sdram_params, channel);
+
 		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
 		if (dramtype == LPDDR3)
 			udelay(10);
@@ -1260,6 +1298,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 #endif
 
 	priv->cic = syscon_get_first_range(ROCKCHIP_SYSCON_CIC);
+	priv->grf = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
 	priv->pmusgrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUSGRF);
 	priv->pmucru = rockchip_get_pmucru();
-- 
2.18.0.321.gffc6fa0e3
