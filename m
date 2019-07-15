From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 10/15] ram: rockchip: rk3399: Add cap_info structure
Date: Mon, 15 Jul 2019 23:51:05 +0530
Message-ID: <20190715182110.21336-11-jagan@amarulasolutions.com>
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

Group common ddr attributes like
- rank
- col
- bk
- bw
- dbw
- row_3_4
- cs0_row
- cs1_row
- ddrconfig

into a common cap_info structure for more code readability and extend
if possible based on the new features.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 .../include/asm/arch-rockchip/sdram_rk3399.h  |  6 +-
 drivers/ram/rockchip/sdram_rk3399.c           | 73 ++++++++++---------
 2 files changed, 45 insertions(+), 34 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index c6a260bad8..683093d4ca 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -71,7 +71,7 @@ struct rk3399_ddr_cic_regs {
 /* DENALI_CTL_274 */
 #define MEM_RST_VALID	1
 
-struct rk3399_sdram_channel {
+struct sdram_cap_info {
 	unsigned int rank;
 	/* dram column number, 0 means this channel is invalid */
 	unsigned int col;
@@ -89,6 +89,10 @@ struct rk3399_sdram_channel {
 	unsigned int cs0_row;
 	unsigned int cs1_row;
 	unsigned int ddrconfig;
+};
+
+struct rk3399_sdram_channel {
+	struct sdram_cap_info cap_info;
 	struct rk3399_msch_timings noc_timings;
 };
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 043b27737d..492b0975dd 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -121,35 +121,36 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 	u32 row;
 
 	/* Get row number from ddrconfig setting */
-	if (sdram_ch->ddrconfig < 2 || sdram_ch->ddrconfig == 4)
+	if (sdram_ch->cap_info.ddrconfig < 2 ||
+	    sdram_ch->cap_info.ddrconfig == 4)
 		row = 16;
-	else if (sdram_ch->ddrconfig == 3)
+	else if (sdram_ch->cap_info.ddrconfig == 3)
 		row = 14;
 	else
 		row = 15;
 
-	cs_map = (sdram_ch->rank > 1) ? 3 : 1;
-	reduc = (sdram_ch->bw == 2) ? 0 : 1;
+	cs_map = (sdram_ch->cap_info.rank > 1) ? 3 : 1;
+	reduc = (sdram_ch->cap_info.bw == 2) ? 0 : 1;
 
 	/* Set the dram configuration to ctrl */
-	clrsetbits_le32(&denali_ctl[191], 0xF, (12 - sdram_ch->col));
+	clrsetbits_le32(&denali_ctl[191], 0xF, (12 - sdram_ch->cap_info.col));
 	clrsetbits_le32(&denali_ctl[190], (0x3 << 16) | (0x7 << 24),
-			((3 - sdram_ch->bk) << 16) |
+			((3 - sdram_ch->cap_info.bk) << 16) |
 			((16 - row) << 24));
 
 	clrsetbits_le32(&denali_ctl[196], 0x3 | (1 << 16),
 			cs_map | (reduc << 16));
 
 	/* PI_199 PI_COL_DIFF:RW:0:4 */
-	clrsetbits_le32(&denali_pi[199], 0xF, (12 - sdram_ch->col));
+	clrsetbits_le32(&denali_pi[199], 0xF, (12 - sdram_ch->cap_info.col));
 
 	/* PI_155 PI_ROW_DIFF:RW:24:3 PI_BANK_DIFF:RW:16:2 */
 	clrsetbits_le32(&denali_pi[155], (0x3 << 16) | (0x7 << 24),
-			((3 - sdram_ch->bk) << 16) |
+			((3 - sdram_ch->cap_info.bk) << 16) |
 			((16 - row) << 24));
 	/* PI_41 PI_CS_MAP:RW:24:4 */
 	clrsetbits_le32(&denali_pi[41], 0xf << 24, cs_map << 24);
-	if (sdram_ch->rank == 1 && params->base.dramtype == DDR3)
+	if (sdram_ch->cap_info.rank == 1 && params->base.dramtype == DDR3)
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
@@ -624,7 +625,7 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -678,7 +679,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -737,7 +738,7 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -796,7 +797,7 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -841,7 +842,7 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -940,14 +941,14 @@ static void set_ddrconfig(const struct chan_info *chan,
 	unsigned int cs0_cap = 0;
 	unsigned int cs1_cap = 0;
 
-	cs0_cap = (1 << (params->ch[channel].cs0_row
-			+ params->ch[channel].col
-			+ params->ch[channel].bk
-			+ params->ch[channel].bw - 20));
-	if (params->ch[channel].rank > 1)
-		cs1_cap = cs0_cap >> (params->ch[channel].cs0_row
-				- params->ch[channel].cs1_row);
-	if (params->ch[channel].row_3_4) {
+	cs0_cap = (1 << (params->ch[channel].cap_info.cs0_row
+			+ params->ch[channel].cap_info.col
+			+ params->ch[channel].cap_info.bk
+			+ params->ch[channel].cap_info.bw - 20));
+	if (params->ch[channel].cap_info.rank > 1)
+		cs1_cap = cs0_cap >> (params->ch[channel].cap_info.cs0_row
+				- params->ch[channel].cap_info.cs1_row);
+	if (params->ch[channel].cap_info.row_3_4) {
 		cs0_cap = cs0_cap * 3 / 4;
 		cs1_cap = cs1_cap * 3 / 4;
 	}
@@ -973,20 +974,26 @@ static void dram_all_config(struct dram_info *dram,
 		struct rk3399_msch_regs *ddr_msch_regs;
 		const struct rk3399_msch_timings *noc_timing;
 
-		if (params->ch[channel].col == 0)
+		if (params->ch[channel].cap_info.col == 0)
 			continue;
 		idx++;
-		sys_reg |= info->row_3_4 << SYS_REG_ROW_3_4_SHIFT(channel);
+		sys_reg |= info->cap_info.row_3_4 <<
+			   SYS_REG_ROW_3_4_SHIFT(channel);
 		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
-		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
-		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
-		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
-		sys_reg |= (info->cs0_row - 13) <<
+		sys_reg |= (info->cap_info.rank - 1) <<
+			   SYS_REG_RANK_SHIFT(channel);
+		sys_reg |= (info->cap_info.col - 9) <<
+			   SYS_REG_COL_SHIFT(channel);
+		sys_reg |= info->cap_info.bk == 3 ? 0 : 1 <<
+			   SYS_REG_BK_SHIFT(channel);
+		sys_reg |= (info->cap_info.cs0_row - 13) <<
 			    SYS_REG_CS0_ROW_SHIFT(channel);
-		sys_reg |= (info->cs1_row - 13) <<
+		sys_reg |= (info->cap_info.cs1_row - 13) <<
 			    SYS_REG_CS1_ROW_SHIFT(channel);
-		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
-		sys_reg |= (2 >> info->dbw) << SYS_REG_DBW_SHIFT(channel);
+		sys_reg |= (2 >> info->cap_info.bw) <<
+			   SYS_REG_BW_SHIFT(channel);
+		sys_reg |= (2 >> info->cap_info.dbw) <<
+			   SYS_REG_DBW_SHIFT(channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
@@ -1002,7 +1009,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrmode);
 
 		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (params->ch[channel].rank == 1)
+		if (params->ch[channel].cap_info.rank == 1)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
@@ -1106,7 +1113,7 @@ static int sdram_init(struct dram_info *dram,
 		}
 
 		set_ddrconfig(chan, params, channel,
-			      params->ch[channel].ddrconfig);
+			      params->ch[channel].cap_info.ddrconfig);
 	}
 	dram_all_config(dram, params);
 	switch_to_phy_index1(dram, params);
-- 
2.18.0.321.gffc6fa0e3
