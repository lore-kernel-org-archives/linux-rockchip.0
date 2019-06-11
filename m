From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 78/92] ram: rk3399: Add LPPDR4 mr detection
Date: Tue, 11 Jun 2019 20:21:21 +0530
Message-ID: <20190611145135.21399-79-jagan@amarulasolutions.com>
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
 drivers/ram/rockchip/sdram_rk3399.c | 254 ++++++++++++++++++++++++++--
 1 file changed, 243 insertions(+), 11 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 89348cf296..5a0872c23f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -218,6 +218,16 @@ static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
 }
 
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
 static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 {
 	int i;
@@ -1593,6 +1603,215 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *sdram_params)
 	return stride;
 }
 
+static void set_cap_relate_config(const struct chan_info *chan,
+				  struct rk3399_sdram_params *sdram_params,
+				  unsigned int channel)
+{
+	u32 *denali_ctl = chan->pctl->denali_ctl;
+	u32 tmp;
+	struct rk3399_msch_timings *noc_timing;
+
+	if (sdram_params->base.dramtype == LPDDR3) {
+		tmp = (8 << sdram_params->ch[channel].cap_info.bw) /
+			(8 << sdram_params->ch[channel].cap_info.dbw);
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
+	noc_timing = &sdram_params->ch[channel].noc_timings;
+
+	/*
+	 * noc timing bw relate timing is 32 bit, and real bw is 16bit
+	 * actually noc reg is setting at function dram_all_config
+	 */
+	if (sdram_params->ch[channel].cap_info.bw == 16 &&
+	    noc_timing->ddrmode.b.mwrsize == 2) {
+		if (noc_timing->ddrmode.b.burstsize)
+			noc_timing->ddrmode.b.burstsize -= 1;
+		noc_timing->ddrmode.b.mwrsize -= 1;
+		noc_timing->ddrtimingc0.b.burstpenalty *= 2;
+		noc_timing->ddrtimingc0.b.wrtomwr *= 2;
+	}
+}
+
+static u32 calculate_ddrconfig(struct rk3399_sdram_params *sdram_params,
+			       u32 channel)
+{
+	unsigned int cs0_row = sdram_params->ch[channel].cap_info.cs0_row;
+	unsigned int col = sdram_params->ch[channel].cap_info.col;
+	unsigned int bw = sdram_params->ch[channel].cap_info.bw;
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
+static int lpddr4_mr_detect(struct dram_info *dram, u32 channel, u32 rank,
+			    struct rk3399_sdram_params *sdram_params)
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
+	if (sdram_params->ch[channel].cap_info.col == 0) {
+		ret = -EPERM;
+		goto end;
+	}
+
+	cs = sdram_params->ch[channel].cap_info.rank;
+	col = sdram_params->ch[channel].cap_info.col;
+	bk = sdram_params->ch[channel].cap_info.bk;
+	bw = sdram_params->ch[channel].cap_info.bw;
+	row_3_4 = sdram_params->ch[channel].cap_info.row_3_4;
+	cs0_row = sdram_params->ch[channel].cap_info.cs0_row;
+	cs1_row = sdram_params->ch[channel].cap_info.cs1_row;
+	ddrconfig = sdram_params->ch[channel].cap_info.ddrconfig;
+
+	/* 2GB */
+	sdram_params->ch[channel].cap_info.rank = 2;
+	sdram_params->ch[channel].cap_info.col = 10;
+	sdram_params->ch[channel].cap_info.bk = 3;
+	sdram_params->ch[channel].cap_info.bw = 2;
+	sdram_params->ch[channel].cap_info.row_3_4 = 0;
+	sdram_params->ch[channel].cap_info.cs0_row = 15;
+	sdram_params->ch[channel].cap_info.cs1_row = 15;
+	sdram_params->ch[channel].cap_info.ddrconfig = 1;
+
+	set_memory_map(chan, channel, sdram_params);
+	sdram_params->ch[channel].cap_info.ddrconfig =
+			calculate_ddrconfig(sdram_params, channel);
+	set_ddrconfig(chan, sdram_params, channel,
+		      sdram_params->ch[channel].cap_info.ddrconfig);
+	set_cap_relate_config(chan, sdram_params, channel);
+
+	cs0_cap = (1 << (sdram_params->ch[channel].cap_info.bw
+			+ sdram_params->ch[channel].cap_info.col
+			+ sdram_params->ch[channel].cap_info.bk
+			+ sdram_params->ch[channel].cap_info.cs0_row));
+
+	if (sdram_params->ch[channel].cap_info.row_3_4)
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
+	sdram_params->ch[channel].cap_info.rank = cs;
+	sdram_params->ch[channel].cap_info.col = col;
+	sdram_params->ch[channel].cap_info.bk = bk;
+	sdram_params->ch[channel].cap_info.bw = bw;
+	sdram_params->ch[channel].cap_info.row_3_4 = row_3_4;
+	sdram_params->ch[channel].cap_info.cs0_row = cs0_row;
+	sdram_params->ch[channel].cap_info.cs1_row = cs1_row;
+	sdram_params->ch[channel].cap_info.ddrconfig = ddrconfig;
+
+	set_ddr_stride(dram->pmusgrf, stride);
+
+	return ret;
+}
+
 static void clear_channel_params(struct rk3399_sdram_params *params, u8 channel)
 {
 	params->ch[channel].cap_info.rank = 0;
@@ -1665,17 +1884,30 @@ static int sdram_init(struct dram_info *dram,
 
 			sdram_params->ch[ch].cap_info.rank = rank;
 
-			/*
-			 * LPDDR3 CA training msut be trigger before
-			 * other training.
-			 * DDR3 is not have CA training.
-			 */
-			if (sdram_params->base.dramtype == LPDDR3)
-				training_flag |= PI_CA_TRAINING;
-
-			if (!(data_training(&dram->chan[ch], ch,
-					    sdram_params, training_flag)))
-				break;
+			if (sdram_params->base.dramtype == LPDDR4) {
+				if (!lpddr4_mr_detect(dram, ch, rank,
+						      sdram_params)) {
+					debug("%s: lpddr4 mr detected for rank %d, ch %d\n",
+					      __func__, rank, ch);
+					break;
+				}
+			} else {
+				/*
+				 * LPDDR3 CA training msut be trigger before
+				 * other training.
+				 * DDR3 is not have CA training.
+				 */
+				if (sdram_params->base.dramtype == LPDDR3)
+					training_flag |= PI_CA_TRAINING;
+
+				if (!(data_training(&dram->chan[ch], ch,
+						    sdram_params,
+						    training_flag))) {
+					debug("%s: data trained for rank %d, ch %d\n",
+					      __func__, rank, ch);
+					break;
+				}
+			}
 		}
 		/* Computed rank with associated channel number */
 		sdram_params->ch[ch].cap_info.rank = rank;
-- 
2.18.0.321.gffc6fa0e3
