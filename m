From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 85/92] ram: rk3399: Set lpddr4 dq odt
Date: Tue, 11 Jun 2019 20:21:28 +0530
Message-ID: <20190611145135.21399-86-jagan@amarulasolutions.com>
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

Set DQ ODT based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 80 ++++++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 170743b88c..fc9958de17 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -220,6 +220,12 @@ lpddr4_get_io_settings(const struct rk3399_sdram_params *params, u32 mr5)
 	return io;
 }
 
+static void *get_denali_pi(const struct chan_info *chan,
+			   struct rk3399_sdram_params *params, bool reg)
+{
+	return reg ? &chan->pi->denali_pi : &params->pi_regs.denali_pi;
+}
+
 static void *get_denali_phy(const struct chan_info *chan,
 			    struct rk3399_sdram_params *params, bool reg)
 {
@@ -244,6 +250,13 @@ static u32 lpddr4_get_phy(struct rk3399_sdram_params *params, u32 ctl)
 	return lpddr4_phy[ctl];
 }
 
+static u32 lpddr4_get_ctl(struct rk3399_sdram_params *params, u32 phy)
+{
+	u32 lpddr4_ctl[] = {1, 0, 2};
+
+	return lpddr4_ctl[phy];
+}
+
 static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
 {
 	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
@@ -1840,16 +1853,65 @@ end:
 	return ret;
 }
 
+static void set_lpddr4_dq_odt(const struct chan_info *chan,
+			      struct rk3399_sdram_params *params, u32 ctl,
+			      bool en, bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	if (!en)
+		return;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = io->dq_odt;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[139], 0x7 << 24, reg_value << 24);
+		clrsetbits_le32(&denali_ctl[153], 0x7 << 24, reg_value << 24);
+
+		clrsetbits_le32(&denali_pi[132], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[139], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[147], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[154], 0x7 << 16, (reg_value << 16));
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 0, reg_value << 0);
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 0, reg_value << 0);
+
+		clrsetbits_le32(&denali_pi[129], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[137], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[144], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[152], 0x7 << 0, (reg_value << 0));
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 8, (reg_value << 8));
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 8, (reg_value << 8));
+
+		clrsetbits_le32(&denali_pi[127], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[134], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[142], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[149], 0x7 << 16, (reg_value << 16));
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
 			    u32 channel)
 {
-	u32 *denali_phy;
+	u32 *denali_ctl, *denali_phy;
 	u32 *denali_phy_params;
 	u32 speed = 0;
-	u32 mr5;
+	u32 ctl, mr5;
 
+	denali_ctl = dram->chan[channel].pctl->denali_ctl;
 	denali_phy = dram->chan[channel].publ->denali_phy;
 	denali_phy_params = timings->phy_regs.denali_phy;
 
@@ -2084,6 +2146,9 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	read_mr(dram->chan[channel].pctl, 1, 5, &mr5);
 	set_ds_odt(&dram->chan[channel], timings, true, mr5);
 
+	ctl = lpddr4_get_ctl(timings, phy);
+	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+
 	/*
 	 * if phy_sw_master_mode_X not bypass mode,
 	 * clear PHY_SLICE_PWR_RDC_DISABLE.
@@ -2095,6 +2160,17 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 		clrbits_le32(&denali_phy[266], 1 << 16);
 		clrbits_le32(&denali_phy[394], 1 << 16);
 	}
+
+	/*
+	 * when PHY_PER_CS_TRAINING_EN=1, W2W_DIFFCS_DLY_Fx can't
+	 * smaller than 8
+	 * NOTE: need use timings, not ddr_publ_regs
+	 */
+	if ((denali_phy_params[84] >> 16) & 1) {
+		if (((readl(&denali_ctl[217 + ctl]) >> 16) & 0x1f) < 8)
+			clrsetbits_le32(&denali_ctl[217 + ctl],
+					0x1f << 16, 8 << 16);
+	}
 }
 
 static void lpddr4_set_phy(struct dram_info *dram,
-- 
2.18.0.321.gffc6fa0e3
