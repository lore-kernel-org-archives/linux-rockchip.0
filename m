From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 22/99] ram: rk3399: Rename sys_reg with sys_reg2
Date: Mon, 17 Jun 2019 13:01:35 +0530
Message-ID: <20190617073252.27810-23-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190617073252.27810-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Use dram config variable name as sys_reg2 instead of sys_reg
since the final variable value is to written into a pmugrf
register named as sys_reg2.

This reflect the both variable and associated register
names are same and also help to add next sys_reg's to
add it in future.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e8203e4c32..bb673a862e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1004,11 +1004,11 @@ static void set_ddrconfig(const struct chan_info *chan,
 static void dram_all_config(struct dram_info *dram,
 			    const struct rk3399_sdram_params *params)
 {
-	u32 sys_reg = 0;
+	u32 sys_reg2 = 0;
 	unsigned int channel, idx;
 
-	sys_reg |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
-	sys_reg |= SYS_REG_ENC_NUM_CH(params->base.num_channels);
+	sys_reg2 |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
+	sys_reg2 |= SYS_REG_ENC_NUM_CH(params->base.num_channels);
 
 	for (channel = 0, idx = 0;
 	     (idx < params->base.num_channels) && (channel < 2);
@@ -1020,15 +1020,15 @@ static void dram_all_config(struct dram_info *dram,
 		if (params->ch[channel].col == 0)
 			continue;
 		idx++;
-		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
-		sys_reg |= SYS_REG_ENC_CHINFO(channel);
-		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
-		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
-		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
-		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
-		sys_reg |= SYS_REG_ENC_BW(info->bw, channel);
-		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
+		sys_reg2 |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
+		sys_reg2 |= SYS_REG_ENC_CHINFO(channel);
+		sys_reg2 |= SYS_REG_ENC_RANK(info->rank, channel);
+		sys_reg2 |= SYS_REG_ENC_COL(info->col, channel);
+		sys_reg2 |= SYS_REG_ENC_BK(info->bk, channel);
+		sys_reg2 |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
+		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
+		sys_reg2 |= SYS_REG_ENC_BW(info->bw, channel);
+		sys_reg2 |= SYS_REG_ENC_DBW(info->dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
@@ -1049,7 +1049,7 @@ static void dram_all_config(struct dram_info *dram,
 				     1 << 17);
 	}
 
-	writel(sys_reg, &dram->pmugrf->os_reg2);
+	writel(sys_reg2, &dram->pmugrf->os_reg2);
 	rk_clrsetreg(&dram->pmusgrf->soc_con4, 0x1f << 10,
 		     params->base.stride << 10);
 
-- 
2.18.0.321.gffc6fa0e3
