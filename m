From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 02/15] ram: rk3399: Some trivial code fixes
Date: Mon, 15 Jul 2019 23:50:57 +0530
Message-ID: <20190715182110.21336-3-jagan@amarulasolutions.com>
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

- Add proper spaces in data training, rk3399_dmc_init, pctl_cfg
- Order include files
- Move macro after include files

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 60 +++++++++++++++++++++--------
 1 file changed, 43 insertions(+), 17 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 541e4a4b1e..733864f5d2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -14,14 +14,27 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/sdram_common.h>
-#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
+#include <asm/arch-rockchip/sdram_common.h>
+#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <linux/err.h>
 #include <time.h>
 
+#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
+#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
+#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
+
+#define PHY_DRV_ODT_HI_Z	0x0
+#define PHY_DRV_ODT_240		0x1
+#define PHY_DRV_ODT_120		0x8
+#define PHY_DRV_ODT_80		0x9
+#define PHY_DRV_ODT_60		0xc
+#define PHY_DRV_ODT_48		0xd
+#define PHY_DRV_ODT_40		0xe
+#define PHY_DRV_ODT_34_3	0xf
+
 struct chan_info {
 	struct rk3399_ddr_pctl_regs *pctl;
 	struct rk3399_ddr_pi_regs *pi;
@@ -43,19 +56,6 @@ struct dram_info {
 	struct rk3399_pmugrf_regs *pmugrf;
 };
 
-#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
-#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
-#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
-
-#define PHY_DRV_ODT_HI_Z	0x0
-#define PHY_DRV_ODT_240		0x1
-#define PHY_DRV_ODT_120		0x8
-#define PHY_DRV_ODT_80		0x9
-#define PHY_DRV_ODT_60		0xc
-#define PHY_DRV_ODT_48		0xd
-#define PHY_DRV_ODT_40		0xe
-#define PHY_DRV_ODT_34_3	0xf
-
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
 
@@ -473,8 +473,10 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	copy_to_reg(&denali_ctl[1], &params_ctl[1],
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
+
 	copy_to_reg(denali_pi, &sdram_params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
+
 	/* rank count need to set for init */
 	set_memory_map(chan, channel, sdram_params);
 
@@ -620,8 +622,10 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_100 PI_CALVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[100], 0x3 << 8, 0x2 << 8);
+
 		/* PI_92 PI_CALVL_REQ:WR:16:1,PI_CALVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[92],
 				(0x1 << 16) | (0x3 << 24),
@@ -651,9 +655,11 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[100], 0x3 << 8);
 
 	return 0;
@@ -670,8 +676,10 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_60 PI_WRLVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[60], 0x3 << 8, 0x2 << 8);
+
 		/* PI_59 PI_WRLVL_REQ:WR:8:1,PI_WRLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[59],
 				(0x1 << 8) | (0x3 << 16),
@@ -705,6 +713,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
@@ -726,8 +735,10 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_GATE_EN:RW:24:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 24, 0x2 << 24);
+
 		/*
 		 * PI_74 PI_RDLVL_GATE_REQ:WR:16:1
 		 * PI_RDLVL_CS:RW:24:2
@@ -764,9 +775,11 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 24);
 
 	return 0;
@@ -781,8 +794,10 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 16, 0x2 << 16);
+
 		/* PI_74 PI_RDLVL_REQ:WR:8:1,PI_RDLVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[74],
 				(0x1 << 8) | (0x3 << 24),
@@ -805,9 +820,11 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 2) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 16);
 
 	return 0;
@@ -822,13 +839,16 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/*
 		 * disable PI_WDQLVL_VREF_EN before wdq leveling?
 		 * PI_181 PI_WDQLVL_VREF_EN:RW:8:1
 		 */
 		clrbits_le32(&denali_pi[181], 0x1 << 8);
+
 		/* PI_124 PI_WDQLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[124], 0x3 << 16, 0x2 << 16);
+
 		/* PI_121 PI_WDQLVL_REQ:WR:8:1,PI_WDQLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[121],
 				(0x1 << 8) | (0x3 << 16),
@@ -845,9 +865,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 6) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[124], 0x3 << 16);
 
 	return 0;
@@ -938,6 +960,7 @@ static void dram_all_config(struct dram_info *dram,
 	sys_reg |= sdram_params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
 	sys_reg |= (sdram_params->base.num_channels - 1)
 		    << SYS_REG_NUM_CH_SHIFT;
+
 	for (channel = 0, idx = 0;
 	     (idx < sdram_params->base.num_channels) && (channel < 2);
 	     channel++) {
@@ -1164,6 +1187,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 	      priv->chan[1].publ, priv->chan[1].msch);
 	debug("cru %p, cic %p, grf %p, sgrf %p, pmucru %p\n", priv->cru,
 	      priv->cic, priv->pmugrf, priv->pmusgrf, priv->pmucru);
+
 #if CONFIG_IS_ENABLED(OF_PLATDATA)
 	ret = clk_get_by_index_platdata(dev, 0, dtplat->clocks, &priv->ddr_clk);
 #else
@@ -1173,14 +1197,16 @@ static int rk3399_dmc_init(struct udevice *dev)
 		printf("%s clk get failed %d\n", __func__, ret);
 		return ret;
 	}
+
 	ret = clk_set_rate(&priv->ddr_clk, params->base.ddr_freq * MHz);
 	if (ret < 0) {
 		printf("%s clk set failed %d\n", __func__, ret);
 		return ret;
 	}
+
 	ret = sdram_init(priv, params);
 	if (ret < 0) {
-		printf("%s DRAM init failed%d\n", __func__, ret);
+		printf("%s DRAM init failed %d\n", __func__, ret);
 		return ret;
 	}
 
@@ -1198,7 +1224,7 @@ static int rk3399_dmc_probe(struct udevice *dev)
 	struct dram_info *priv = dev_get_priv(dev);
 
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
-	debug("%s: pmugrf=%p\n", __func__, priv->pmugrf);
+	debug("%s: pmugrf = %p\n", __func__, priv->pmugrf);
 	priv->info.base = CONFIG_SYS_SDRAM_BASE;
 	priv->info.size =
 		rockchip_sdram_size((phys_addr_t)&priv->pmugrf->os_reg2);
-- 
2.18.0.321.gffc6fa0e3
