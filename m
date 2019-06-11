From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 71/92] ram: sdram: Configure lpddr4 tsel rd,
 wr based on IO settings
Date: Tue, 11 Jun 2019 20:21:14 +0530
Message-ID: <20190611145135.21399-72-jagan@amarulasolutions.com>
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

Now we have IO settings available for all supported sdram
frequencies, so retrieve these IO settings and make used
for LPDDR4 ds odt configuration.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 42 ++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 5db7cbe116..6385df5600 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -184,6 +184,33 @@ struct io_setting {
 	},
 };
 
+/**
+ * phy = 0, PHY boot freq
+ * phy = 1, PHY index 0
+ * phy = 2, PHY index 1
+ */
+static struct io_setting *
+lpddr4_get_io_settings(const struct rk3399_sdram_params *params, u32 mr5)
+{
+	struct io_setting *io = NULL;
+	u32 n;
+
+	for (n = 0; n < ARRAY_SIZE(lpddr4_io_setting); n++) {
+		io = &lpddr4_io_setting[n];
+
+		if (io->mr5 != 0) {
+			if (io->mhz >= params->base.ddr_freq &&
+			    io->mr5 == mr5)
+				break;
+		} else {
+			if (io->mhz >= params->base.ddr_freq)
+				break;
+		}
+	}
+
+	return io;
+}
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
@@ -525,7 +552,7 @@ static int phy_io_config(const struct chan_info *chan,
 }
 
 static void set_ds_odt(const struct chan_info *chan,
-		       const struct rk3399_sdram_params *sdram_params)
+		       const struct rk3399_sdram_params *sdram_params, u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 
@@ -534,19 +561,22 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_select_n, tsel_rd_select_n;
 	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
+	struct io_setting *io = NULL;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
+		io = lpddr4_get_io_settings(sdram_params, mr5);
+
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
-		tsel_rd_select_n = PHY_DRV_ODT_240;
+		tsel_rd_select_n = io->rd_odt;
 
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 
-		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
+		tsel_wr_select_dq_p = io->wr_dq_drv;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
 
-		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_p = io->wr_ca_drv;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -728,7 +758,7 @@ static void pctl_start(struct dram_info *dram,
 }
 
 static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
-		    u32 channel, const struct rk3399_sdram_params *sdram_params)
+		    u32 channel, struct rk3399_sdram_params *sdram_params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
@@ -812,7 +842,7 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	copy_to_reg(&denali_phy[512], &params_phy[512], (549 - 512 + 1) * 4);
 	copy_to_reg(&denali_phy[640], &params_phy[640], (677 - 640 + 1) * 4);
 	copy_to_reg(&denali_phy[768], &params_phy[768], (805 - 768 + 1) * 4);
-	set_ds_odt(chan, sdram_params);
+	set_ds_odt(chan, sdram_params, 0);
 
 	/*
 	 * phy_dqs_tsel_wr_timing_X 8bits DENALI_PHY_84/212/340/468 offset_8
-- 
2.18.0.321.gffc6fa0e3
