From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 14/57] ram: rk3399: Update cs1_row to use sys_reg3
Date: Tue, 16 Jul 2019 17:27:02 +0530
Message-ID: <20190716115745.12585-15-jagan@amarulasolutions.com>
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

cs1_row can handle the pmu via sys_reg2 and sys_reg3 while
configuring the dram instead of just sys_reg2.

So, update cs1_row macro to make use of both sys_reg2,
sys_reg3.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 10 ++++++++--
 drivers/ram/rockchip/sdram_rk3399.c               |  4 +++-
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index f74377225c..9cd9f3b969 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -92,8 +92,6 @@ struct sdram_base_params {
 #define SYS_REG_CS0_ROW_MASK		3
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
-#define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
-					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_ENC_BW(n, ch)		((2 >> (n)) << SYS_REG_BW_SHIFT(ch))
@@ -107,6 +105,14 @@ struct sdram_base_params {
 				     (5 + 2 * (ch)); \
 		} while (0)
 
+#define SYS_REG_ENC_CS1_ROW(n, os_reg2, os_reg3, ch) do { \
+			(os_reg2) &= (~(0x3 << (4 + 16 * (ch)))); \
+			(os_reg3) &= (~(0x1 << (4 + 2 * (ch)))); \
+			(os_reg2) |= (((n) - 13) & 0x3) << (4 + 16 * (ch)); \
+			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
+				     (4 + 2 * (ch)); \
+		} while (0)
+
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 70867cbd5f..1222da39c2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1095,10 +1095,12 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg2 |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
 		sys_reg2 |= SYS_REG_ENC_COL(info->cap_info.col, channel);
 		sys_reg2 |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
-		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, channel);
 		sys_reg2 |= SYS_REG_ENC_BW(info->cap_info.bw, channel);
 		sys_reg2 |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
 		SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, sys_reg2, sys_reg3, channel);
+		if (info->cap_info.cs1_row)
+			SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, sys_reg2,
+					    sys_reg3, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3
