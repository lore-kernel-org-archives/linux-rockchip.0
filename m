From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 19/57] ram: rk3399: Configure phy IO in ds odt
Date: Tue, 16 Jul 2019 17:27:07 +0530
Message-ID: <20190716115745.12585-20-jagan@amarulasolutions.com>
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

Some dramtypes like lpddr4 initialization would required to
configure phy IO even after pctl_cfg and after set_ds_odt.

For those cases the set_ds_odt would be an initial call to
setup the phy.

To satisfy all the cases, trigger phy IO from set_ds_odt.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 327 ++++++++++++++--------------
 1 file changed, 162 insertions(+), 165 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e4723c7d59..a49677285d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -188,6 +188,166 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
+static int phy_io_config(const struct chan_info *chan,
+			 const struct rk3399_sdram_params *params)
+{
+	u32 *denali_phy = chan->publ->denali_phy;
+	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
+	u32 mode_sel;
+	u32 reg_value;
+	u32 drv_value, odt_value;
+	u32 speed;
+
+	/* vref setting */
+	if (params->base.dramtype == LPDDR4) {
+		/* LPDDR4 */
+		vref_mode_dq = 0x6;
+		vref_value_dq = 0x1f;
+		vref_mode_ac = 0x6;
+		vref_value_ac = 0x1f;
+	} else if (params->base.dramtype == LPDDR3) {
+		if (params->base.odt == 1) {
+			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
+			drv_value = (readl(&denali_phy[6]) >> 12) & 0xf;
+			odt_value = (readl(&denali_phy[6]) >> 4) & 0xf;
+			if (drv_value == PHY_DRV_ODT_48) {
+				switch (odt_value) {
+				case PHY_DRV_ODT_240:
+					vref_value_dq = 0x16;
+					break;
+				case PHY_DRV_ODT_120:
+					vref_value_dq = 0x26;
+					break;
+				case PHY_DRV_ODT_60:
+					vref_value_dq = 0x36;
+					break;
+				default:
+					debug("Invalid ODT value.\n");
+					return -EINVAL;
+				}
+			} else if (drv_value == PHY_DRV_ODT_40) {
+				switch (odt_value) {
+				case PHY_DRV_ODT_240:
+					vref_value_dq = 0x19;
+					break;
+				case PHY_DRV_ODT_120:
+					vref_value_dq = 0x23;
+					break;
+				case PHY_DRV_ODT_60:
+					vref_value_dq = 0x31;
+					break;
+				default:
+					debug("Invalid ODT value.\n");
+					return -EINVAL;
+				}
+			} else if (drv_value == PHY_DRV_ODT_34_3) {
+				switch (odt_value) {
+				case PHY_DRV_ODT_240:
+					vref_value_dq = 0x17;
+					break;
+				case PHY_DRV_ODT_120:
+					vref_value_dq = 0x20;
+					break;
+				case PHY_DRV_ODT_60:
+					vref_value_dq = 0x2e;
+					break;
+				default:
+					debug("Invalid ODT value.\n");
+					return -EINVAL;
+				}
+			} else {
+				debug("Invalid DRV value.\n");
+				return -EINVAL;
+			}
+		} else {
+			vref_mode_dq = 0x2;  /* LPDDR3 */
+			vref_value_dq = 0x1f;
+		}
+		vref_mode_ac = 0x2;
+		vref_value_ac = 0x1f;
+	} else if (params->base.dramtype == DDR3) {
+		/* DDR3L */
+		vref_mode_dq = 0x1;
+		vref_value_dq = 0x1f;
+		vref_mode_ac = 0x1;
+		vref_value_ac = 0x1f;
+	} else {
+		debug("Unknown DRAM type.\n");
+		return -EINVAL;
+	}
+
+	reg_value = (vref_mode_dq << 9) | (0x1 << 8) | vref_value_dq;
+
+	/* PHY_913 PHY_PAD_VREF_CTRL_DQ_0 12bits offset_8 */
+	clrsetbits_le32(&denali_phy[913], 0xfff << 8, reg_value << 8);
+	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_1 12bits offset_0 */
+	clrsetbits_le32(&denali_phy[914], 0xfff, reg_value);
+	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_2 12bits offset_16 */
+	clrsetbits_le32(&denali_phy[914], 0xfff << 16, reg_value << 16);
+	/* PHY_915 PHY_PAD_VREF_CTRL_DQ_3 12bits offset_0 */
+	clrsetbits_le32(&denali_phy[915], 0xfff, reg_value);
+
+	reg_value = (vref_mode_ac << 9) | (0x1 << 8) | vref_value_ac;
+
+	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
+	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
+
+	if (params->base.dramtype == LPDDR4)
+		mode_sel = 0x6;
+	else if (params->base.dramtype == LPDDR3)
+		mode_sel = 0x0;
+	else if (params->base.dramtype == DDR3)
+		mode_sel = 0x1;
+	else
+		return -EINVAL;
+
+	/* PHY_924 PHY_PAD_FDBK_DRIVE */
+	clrsetbits_le32(&denali_phy[924], 0x7 << 15, mode_sel << 15);
+	/* PHY_926 PHY_PAD_DATA_DRIVE */
+	clrsetbits_le32(&denali_phy[926], 0x7 << 6, mode_sel << 6);
+	/* PHY_927 PHY_PAD_DQS_DRIVE */
+	clrsetbits_le32(&denali_phy[927], 0x7 << 6, mode_sel << 6);
+	/* PHY_928 PHY_PAD_ADDR_DRIVE */
+	clrsetbits_le32(&denali_phy[928], 0x7 << 14, mode_sel << 14);
+	/* PHY_929 PHY_PAD_CLK_DRIVE */
+	clrsetbits_le32(&denali_phy[929], 0x7 << 14, mode_sel << 14);
+	/* PHY_935 PHY_PAD_CKE_DRIVE */
+	clrsetbits_le32(&denali_phy[935], 0x7 << 14, mode_sel << 14);
+	/* PHY_937 PHY_PAD_RST_DRIVE */
+	clrsetbits_le32(&denali_phy[937], 0x7 << 14, mode_sel << 14);
+	/* PHY_939 PHY_PAD_CS_DRIVE */
+	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
+
+	/* speed setting */
+	if (params->base.ddr_freq < 400)
+		speed = 0x0;
+	else if (params->base.ddr_freq < 800)
+		speed = 0x1;
+	else if (params->base.ddr_freq < 1200)
+		speed = 0x2;
+	else
+		speed = 0x3;
+
+	/* PHY_924 PHY_PAD_FDBK_DRIVE */
+	clrsetbits_le32(&denali_phy[924], 0x3 << 21, speed << 21);
+	/* PHY_926 PHY_PAD_DATA_DRIVE */
+	clrsetbits_le32(&denali_phy[926], 0x3 << 9, speed << 9);
+	/* PHY_927 PHY_PAD_DQS_DRIVE */
+	clrsetbits_le32(&denali_phy[927], 0x3 << 9, speed << 9);
+	/* PHY_928 PHY_PAD_ADDR_DRIVE */
+	clrsetbits_le32(&denali_phy[928], 0x3 << 17, speed << 17);
+	/* PHY_929 PHY_PAD_CLK_DRIVE */
+	clrsetbits_le32(&denali_phy[929], 0x3 << 17, speed << 17);
+	/* PHY_935 PHY_PAD_CKE_DRIVE */
+	clrsetbits_le32(&denali_phy[935], 0x3 << 17, speed << 17);
+	/* PHY_937 PHY_PAD_RST_DRIVE */
+	clrsetbits_le32(&denali_phy[937], 0x3 << 17, speed << 17);
+	/* PHY_939 PHY_PAD_CS_DRIVE */
+	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
+
+	return 0;
+}
+
 static void set_ds_odt(const struct chan_info *chan,
 		       const struct rk3399_sdram_params *params)
 {
@@ -332,6 +492,8 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_pad_fdbk_term 1bit DENALI_PHY_930 offset_17 */
 	clrsetbits_le32(&denali_phy[930], 0x1 << 17, reg_value);
+
+	phy_io_config(chan, params);
 }
 
 static void pctl_start(struct dram_info *dram, u8 channel)
@@ -376,166 +538,6 @@ static void pctl_start(struct dram_info *dram, u8 channel)
 			dram->pwrup_srefresh_exit[channel]);
 }
 
-static int phy_io_config(const struct chan_info *chan,
-			 const struct rk3399_sdram_params *params)
-{
-	u32 *denali_phy = chan->publ->denali_phy;
-	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
-	u32 mode_sel;
-	u32 reg_value;
-	u32 drv_value, odt_value;
-	u32 speed;
-
-	/* vref setting */
-	if (params->base.dramtype == LPDDR4) {
-		/* LPDDR4 */
-		vref_mode_dq = 0x6;
-		vref_value_dq = 0x1f;
-		vref_mode_ac = 0x6;
-		vref_value_ac = 0x1f;
-	} else if (params->base.dramtype == LPDDR3) {
-		if (params->base.odt == 1) {
-			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-			drv_value = (readl(&denali_phy[6]) >> 12) & 0xf;
-			odt_value = (readl(&denali_phy[6]) >> 4) & 0xf;
-			if (drv_value == PHY_DRV_ODT_48) {
-				switch (odt_value) {
-				case PHY_DRV_ODT_240:
-					vref_value_dq = 0x16;
-					break;
-				case PHY_DRV_ODT_120:
-					vref_value_dq = 0x26;
-					break;
-				case PHY_DRV_ODT_60:
-					vref_value_dq = 0x36;
-					break;
-				default:
-					debug("Invalid ODT value.\n");
-					return -EINVAL;
-				}
-			} else if (drv_value == PHY_DRV_ODT_40) {
-				switch (odt_value) {
-				case PHY_DRV_ODT_240:
-					vref_value_dq = 0x19;
-					break;
-				case PHY_DRV_ODT_120:
-					vref_value_dq = 0x23;
-					break;
-				case PHY_DRV_ODT_60:
-					vref_value_dq = 0x31;
-					break;
-				default:
-					debug("Invalid ODT value.\n");
-					return -EINVAL;
-				}
-			} else if (drv_value == PHY_DRV_ODT_34_3) {
-				switch (odt_value) {
-				case PHY_DRV_ODT_240:
-					vref_value_dq = 0x17;
-					break;
-				case PHY_DRV_ODT_120:
-					vref_value_dq = 0x20;
-					break;
-				case PHY_DRV_ODT_60:
-					vref_value_dq = 0x2e;
-					break;
-				default:
-					debug("Invalid ODT value.\n");
-					return -EINVAL;
-				}
-			} else {
-				debug("Invalid DRV value.\n");
-				return -EINVAL;
-			}
-		} else {
-			vref_mode_dq = 0x2;  /* LPDDR3 */
-			vref_value_dq = 0x1f;
-		}
-		vref_mode_ac = 0x2;
-		vref_value_ac = 0x1f;
-	} else if (params->base.dramtype == DDR3) {
-		/* DDR3L */
-		vref_mode_dq = 0x1;
-		vref_value_dq = 0x1f;
-		vref_mode_ac = 0x1;
-		vref_value_ac = 0x1f;
-	} else {
-		debug("Unknown DRAM type.\n");
-		return -EINVAL;
-	}
-
-	reg_value = (vref_mode_dq << 9) | (0x1 << 8) | vref_value_dq;
-
-	/* PHY_913 PHY_PAD_VREF_CTRL_DQ_0 12bits offset_8 */
-	clrsetbits_le32(&denali_phy[913], 0xfff << 8, reg_value << 8);
-	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_1 12bits offset_0 */
-	clrsetbits_le32(&denali_phy[914], 0xfff, reg_value);
-	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_2 12bits offset_16 */
-	clrsetbits_le32(&denali_phy[914], 0xfff << 16, reg_value << 16);
-	/* PHY_915 PHY_PAD_VREF_CTRL_DQ_3 12bits offset_0 */
-	clrsetbits_le32(&denali_phy[915], 0xfff, reg_value);
-
-	reg_value = (vref_mode_ac << 9) | (0x1 << 8) | vref_value_ac;
-
-	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
-	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
-
-	if (params->base.dramtype == LPDDR4)
-		mode_sel = 0x6;
-	else if (params->base.dramtype == LPDDR3)
-		mode_sel = 0x0;
-	else if (params->base.dramtype == DDR3)
-		mode_sel = 0x1;
-	else
-		return -EINVAL;
-
-	/* PHY_924 PHY_PAD_FDBK_DRIVE */
-	clrsetbits_le32(&denali_phy[924], 0x7 << 15, mode_sel << 15);
-	/* PHY_926 PHY_PAD_DATA_DRIVE */
-	clrsetbits_le32(&denali_phy[926], 0x7 << 6, mode_sel << 6);
-	/* PHY_927 PHY_PAD_DQS_DRIVE */
-	clrsetbits_le32(&denali_phy[927], 0x7 << 6, mode_sel << 6);
-	/* PHY_928 PHY_PAD_ADDR_DRIVE */
-	clrsetbits_le32(&denali_phy[928], 0x7 << 14, mode_sel << 14);
-	/* PHY_929 PHY_PAD_CLK_DRIVE */
-	clrsetbits_le32(&denali_phy[929], 0x7 << 14, mode_sel << 14);
-	/* PHY_935 PHY_PAD_CKE_DRIVE */
-	clrsetbits_le32(&denali_phy[935], 0x7 << 14, mode_sel << 14);
-	/* PHY_937 PHY_PAD_RST_DRIVE */
-	clrsetbits_le32(&denali_phy[937], 0x7 << 14, mode_sel << 14);
-	/* PHY_939 PHY_PAD_CS_DRIVE */
-	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
-
-	/* speed setting */
-	if (params->base.ddr_freq < 400)
-		speed = 0x0;
-	else if (params->base.ddr_freq < 800)
-		speed = 0x1;
-	else if (params->base.ddr_freq < 1200)
-		speed = 0x2;
-	else
-		speed = 0x3;
-
-	/* PHY_924 PHY_PAD_FDBK_DRIVE */
-	clrsetbits_le32(&denali_phy[924], 0x3 << 21, speed << 21);
-	/* PHY_926 PHY_PAD_DATA_DRIVE */
-	clrsetbits_le32(&denali_phy[926], 0x3 << 9, speed << 9);
-	/* PHY_927 PHY_PAD_DQS_DRIVE */
-	clrsetbits_le32(&denali_phy[927], 0x3 << 9, speed << 9);
-	/* PHY_928 PHY_PAD_ADDR_DRIVE */
-	clrsetbits_le32(&denali_phy[928], 0x3 << 17, speed << 17);
-	/* PHY_929 PHY_PAD_CLK_DRIVE */
-	clrsetbits_le32(&denali_phy[929], 0x3 << 17, speed << 17);
-	/* PHY_935 PHY_PAD_CKE_DRIVE */
-	clrsetbits_le32(&denali_phy[935], 0x3 << 17, speed << 17);
-	/* PHY_937 PHY_PAD_RST_DRIVE */
-	clrsetbits_le32(&denali_phy[937], 0x3 << 17, speed << 17);
-	/* PHY_939 PHY_PAD_CS_DRIVE */
-	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
-
-	return 0;
-}
-
 static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 		    u32 channel, const struct rk3399_sdram_params *params)
 {
@@ -545,7 +547,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	const u32 *params_ctl = params->pctl_regs.denali_ctl;
 	const u32 *params_phy = params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
-	int ret;
 
 	/*
 	 * work around controller bug:
@@ -623,10 +624,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	tmp = (readl(&denali_phy[467]) >> 16) & 0xff;
 	clrsetbits_le32(&denali_phy[467], 0xff << 16, (tmp + 0x10) << 16);
 
-	ret = phy_io_config(chan, params);
-	if (ret)
-		return ret;
-
 	return 0;
 }
 
-- 
2.18.0.321.gffc6fa0e3
