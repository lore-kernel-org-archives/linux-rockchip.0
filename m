From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 43/57] ram: rk3399: Add LPPDR4 mr detection
Date: Tue, 16 Jul 2019 17:27:31 +0530
Message-ID: <20190716115745.12585-44-jagan@amarulasolutions.com>
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

Like data training in other sdram types, mr detection need
to taken care for lpddr4 with looped rank and associated
channel to make sure the proper configuration held.

Once the mr detection successful for active and configured
rank with channel number, the same can later reused during
actual LPDDR4 initialization.

So, add code to support for it.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 226 ++++++++++++++++++++++++++++
 1 file changed, 226 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index da01f08732..623685e3c5 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1470,6 +1470,7 @@ static void dram_all_config(struct dram_info *dram,
 	clrsetbits_le32(&dram->cru->glb_rst_con, 0x3, 0x3);
 }
 
+#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 				 struct rk3399_sdram_params *params)
 {
@@ -1486,6 +1487,7 @@ static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 
 	return data_training(dram, channel, params, training_flag);
 }
+#endif
 
 static int switch_to_phy_index1(struct dram_info *dram,
 				const struct rk3399_sdram_params *params)
@@ -1532,6 +1534,226 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
+#if defined(CONFIG_RAM_RK3399_LPDDR4)
+static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
+{
+	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
+}
+
+static void set_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf, u32 stride)
+{
+	rk_clrsetreg(&pmusgrf->soc_con4, 0x1f << 10, stride << 10);
+}
+
+static void set_cap_relate_config(const struct chan_info *chan,
+				  struct rk3399_sdram_params *params,
+				  unsigned int channel)
+{
+	u32 *denali_ctl = chan->pctl->denali_ctl;
+	u32 tmp;
+	struct rk3399_msch_timings *noc_timing;
+
+	if (params->base.dramtype == LPDDR3) {
+		tmp = (8 << params->ch[channel].cap_info.bw) /
+			(8 << params->ch[channel].cap_info.dbw);
+
+		/**
+		 * memdata_ratio
+		 * 1 -> 0, 2 -> 1, 4 -> 2
+		 */
+		clrsetbits_le32(&denali_ctl[197], 0x7,
+				(tmp >> 1));
+		clrsetbits_le32(&denali_ctl[198], 0x7 << 8,
+				(tmp >> 1) << 8);
+	}
+
+	noc_timing = &params->ch[channel].noc_timings;
+
+	/*
+	 * noc timing bw relate timing is 32 bit, and real bw is 16bit
+	 * actually noc reg is setting at function dram_all_config
+	 */
+	if (params->ch[channel].cap_info.bw == 16 &&
+	    noc_timing->ddrmode.b.mwrsize == 2) {
+		if (noc_timing->ddrmode.b.burstsize)
+			noc_timing->ddrmode.b.burstsize -= 1;
+		noc_timing->ddrmode.b.mwrsize -= 1;
+		noc_timing->ddrtimingc0.b.burstpenalty *= 2;
+		noc_timing->ddrtimingc0.b.wrtomwr *= 2;
+	}
+}
+
+static u32 calculate_ddrconfig(struct rk3399_sdram_params *params, u32 channel)
+{
+	unsigned int cs0_row = params->ch[channel].cap_info.cs0_row;
+	unsigned int col = params->ch[channel].cap_info.col;
+	unsigned int bw = params->ch[channel].cap_info.bw;
+	u16  ddr_cfg_2_rbc[] = {
+		/*
+		 * [6]	  highest bit col
+		 * [5:3]  max row(14+n)
+		 * [2]    insertion row
+		 * [1:0]  col(9+n),col, data bus 32bit
+		 *
+		 * highbitcol, max_row, insertion_row,  col
+		 */
+		((0 << 6) | (2 << 3) | (0 << 2) | 0), /* 0 */
+		((0 << 6) | (2 << 3) | (0 << 2) | 1), /* 1 */
+		((0 << 6) | (1 << 3) | (0 << 2) | 2), /* 2 */
+		((0 << 6) | (0 << 3) | (0 << 2) | 3), /* 3 */
+		((0 << 6) | (2 << 3) | (1 << 2) | 1), /* 4 */
+		((0 << 6) | (1 << 3) | (1 << 2) | 2), /* 5 */
+		((1 << 6) | (0 << 3) | (0 << 2) | 2), /* 6 */
+		((1 << 6) | (1 << 3) | (0 << 2) | 2), /* 7 */
+	};
+	u32 i;
+
+	col -= (bw == 2) ? 0 : 1;
+	col -= 9;
+
+	for (i = 0; i < 4; i++) {
+		if ((col == (ddr_cfg_2_rbc[i] & 0x3)) &&
+		    (cs0_row <= (((ddr_cfg_2_rbc[i] >> 3) & 0x7) + 14)))
+			break;
+	}
+
+	if (i >= 4)
+		i = -EINVAL;
+
+	return i;
+}
+
+/**
+ * read mr_num mode register
+ * rank = 1: cs0
+ * rank = 2: cs1
+ */
+static int read_mr(struct rk3399_ddr_pctl_regs *ddr_pctl_regs, u32 rank,
+		   u32 mr_num, u32 *buf)
+{
+	s32 timeout = 100;
+
+	writel(((1 << 16) | (((rank == 2) ? 1 : 0) << 8) | mr_num) << 8,
+	       &ddr_pctl_regs->denali_ctl[118]);
+
+	while (0 == (readl(&ddr_pctl_regs->denali_ctl[203]) &
+			((1 << 21) | (1 << 12)))) {
+		udelay(1);
+
+		if (timeout <= 0) {
+			printf("%s: pctl timeout!\n", __func__);
+			return -ETIMEDOUT;
+		}
+
+		timeout--;
+	}
+
+	if (!(readl(&ddr_pctl_regs->denali_ctl[203]) & (1 << 12))) {
+		*buf = readl(&ddr_pctl_regs->denali_ctl[119]) & 0xFF;
+	} else {
+		printf("%s: read mr failed with 0x%x status\n", __func__,
+		       readl(&ddr_pctl_regs->denali_ctl[17]) & 0x3);
+		*buf = 0;
+	}
+
+	setbits_le32(&ddr_pctl_regs->denali_ctl[205], (1 << 21) | (1 << 12));
+
+	return 0;
+}
+
+static int lpddr4_mr_detect(struct dram_info *dram, u32 channel, u8 rank,
+			    struct rk3399_sdram_params *params)
+{
+	u64 cs0_cap;
+	u32 stride;
+	u32 cs = 0, col = 0, bk = 0, bw = 0, row_3_4 = 0;
+	u32 cs0_row = 0, cs1_row = 0, ddrconfig = 0;
+	u32 mr5, mr12, mr14;
+	struct chan_info *chan = &dram->chan[channel];
+	struct rk3399_ddr_pctl_regs *ddr_pctl_regs = chan->pctl;
+	void __iomem *addr = NULL;
+	int ret = 0;
+	u32 val;
+
+	stride = get_ddr_stride(dram->pmusgrf);
+
+	if (params->ch[channel].cap_info.col == 0) {
+		ret = -EPERM;
+		goto end;
+	}
+
+	cs = params->ch[channel].cap_info.rank;
+	col = params->ch[channel].cap_info.col;
+	bk = params->ch[channel].cap_info.bk;
+	bw = params->ch[channel].cap_info.bw;
+	row_3_4 = params->ch[channel].cap_info.row_3_4;
+	cs0_row = params->ch[channel].cap_info.cs0_row;
+	cs1_row = params->ch[channel].cap_info.cs1_row;
+	ddrconfig = params->ch[channel].cap_info.ddrconfig;
+
+	/* 2GB */
+	params->ch[channel].cap_info.rank = 2;
+	params->ch[channel].cap_info.col = 10;
+	params->ch[channel].cap_info.bk = 3;
+	params->ch[channel].cap_info.bw = 2;
+	params->ch[channel].cap_info.row_3_4 = 0;
+	params->ch[channel].cap_info.cs0_row = 15;
+	params->ch[channel].cap_info.cs1_row = 15;
+	params->ch[channel].cap_info.ddrconfig = 1;
+
+	set_memory_map(chan, channel, params);
+	params->ch[channel].cap_info.ddrconfig =
+			calculate_ddrconfig(params, channel);
+	set_ddrconfig(chan, params, channel,
+		      params->ch[channel].cap_info.ddrconfig);
+	set_cap_relate_config(chan, params, channel);
+
+	cs0_cap = (1 << (params->ch[channel].cap_info.bw
+			+ params->ch[channel].cap_info.col
+			+ params->ch[channel].cap_info.bk
+			+ params->ch[channel].cap_info.cs0_row));
+
+	if (params->ch[channel].cap_info.row_3_4)
+		cs0_cap = cs0_cap * 3 / 4;
+
+	if (channel == 0)
+		set_ddr_stride(dram->pmusgrf, 0x17);
+	else
+		set_ddr_stride(dram->pmusgrf, 0x18);
+
+	/* read and write data to DRAM, avoid be optimized by compiler. */
+	if (rank == 1)
+		addr = (void __iomem *)0x100;
+	else if (rank == 2)
+		addr = (void __iomem *)(cs0_cap + 0x100);
+
+	val = readl(addr);
+	writel(val + 1, addr);
+
+	read_mr(ddr_pctl_regs, rank, 5, &mr5);
+	read_mr(ddr_pctl_regs, rank, 12, &mr12);
+	read_mr(ddr_pctl_regs, rank, 14, &mr14);
+
+	if (mr5 == 0 || mr12 != 0x4d || mr14 != 0x4d) {
+		ret = -EINVAL;
+		goto end;
+	}
+end:
+	params->ch[channel].cap_info.rank = cs;
+	params->ch[channel].cap_info.col = col;
+	params->ch[channel].cap_info.bk = bk;
+	params->ch[channel].cap_info.bw = bw;
+	params->ch[channel].cap_info.row_3_4 = row_3_4;
+	params->ch[channel].cap_info.cs0_row = cs0_row;
+	params->ch[channel].cap_info.cs1_row = cs1_row;
+	params->ch[channel].cap_info.ddrconfig = ddrconfig;
+
+	set_ddr_stride(dram->pmusgrf, stride);
+
+	return ret;
+}
+#endif /* CONFIG_RAM_RK3399_LPDDR4 */
+
 static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 {
 	unsigned int stride = params->base.stride;
@@ -1762,7 +1984,11 @@ static int conv_of_platdata(struct udevice *dev)
 #endif
 
 static const struct sdram_rk3399_ops rk3399_ops = {
+#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 	.data_training = default_data_training,
+#else
+	.data_training = lpddr4_mr_detect,
+#endif
 };
 
 static int rk3399_dmc_init(struct udevice *dev)
-- 
2.18.0.321.gffc6fa0e3
