From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 42/57] ram: rk3399: Handle data training via ops
Date: Tue, 16 Jul 2019 17:27:30 +0530
Message-ID: <20190716115745.12585-43-jagan@amarulasolutions.com>
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

data training can be even required for lpddr4 and we
need to keep the lpddr4 code to compile only for relevant
boards which do support lpddr4.

For this requirement, and for code readability handle
data training via sdram_rk3399_ops and same will update
in future while supporting lpddr4 code.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 43 ++++++++++++++++++++++-------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1aaaeb5b88..da01f08732 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -65,11 +65,17 @@ struct dram_info {
 	struct rk3399_pmucru *pmucru;
 	struct rk3399_pmusgrf_regs *pmusgrf;
 	struct rk3399_ddr_cic_regs *cic;
+	const struct sdram_rk3399_ops *ops;
 #endif
 	struct ram_info info;
 	struct rk3399_pmugrf_regs *pmugrf;
 };
 
+struct sdram_rk3399_ops {
+	int (*data_training)(struct dram_info *dram, u32 channel, u8 rank,
+			     struct rk3399_sdram_params *sdram);
+};
+
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
 
@@ -1464,6 +1470,23 @@ static void dram_all_config(struct dram_info *dram,
 	clrsetbits_le32(&dram->cru->glb_rst_con, 0x3, 0x3);
 }
 
+static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
+				 struct rk3399_sdram_params *params)
+{
+	u8 training_flag = PI_READ_GATE_TRAINING;
+
+	/*
+	 * LPDDR3 CA training msut be trigger before
+	 * other training.
+	 * DDR3 is not have CA training.
+	 */
+
+	if (params->base.dramtype == LPDDR3)
+		training_flag |= PI_CA_TRAINING;
+
+	return data_training(dram, channel, params, training_flag);
+}
+
 static int switch_to_phy_index1(struct dram_info *dram,
 				const struct rk3399_sdram_params *params)
 {
@@ -1626,7 +1649,6 @@ static int sdram_init(struct dram_info *dram,
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
-	u32 training_flag = PI_READ_GATE_TRAINING;
 	int channel, ch, rank;
 	int ret;
 
@@ -1654,16 +1676,12 @@ static int sdram_init(struct dram_info *dram,
 
 			params->ch[ch].cap_info.rank = rank;
 
-			/*
-			 * LPDDR3 CA training msut be trigger before
-			 * other training.
-			 * DDR3 is not have CA training.
-			 */
-			if (params->base.dramtype == LPDDR3)
-				training_flag |= PI_CA_TRAINING;
-
-			if (!(data_training(dram, ch, params, training_flag)))
+			ret = dram->ops->data_training(dram, ch, rank, params);
+			if (!ret) {
+				debug("%s: data trained for rank %d, ch %d\n",
+				      __func__, rank, ch);
 				break;
+			}
 		}
 		/* Computed rank with associated channel number */
 		params->ch[ch].cap_info.rank = rank;
@@ -1743,6 +1761,10 @@ static int conv_of_platdata(struct udevice *dev)
 }
 #endif
 
+static const struct sdram_rk3399_ops rk3399_ops = {
+	.data_training = default_data_training,
+};
+
 static int rk3399_dmc_init(struct udevice *dev)
 {
 	struct dram_info *priv = dev_get_priv(dev);
@@ -1760,6 +1782,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 		return ret;
 #endif
 
+	priv->ops = &rk3399_ops;
 	priv->cic = syscon_get_first_range(ROCKCHIP_SYSCON_CIC);
 	priv->grf = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
-- 
2.18.0.321.gffc6fa0e3
