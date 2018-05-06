From: "Marty E. Plummer" <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
Subject: [PATCH 3/3] rockchip: fix incorrect detection of ram size
Date: Sun,  6 May 2018 09:25:13 -0500
Message-ID: <20180506142513.19911-4-hanetzer@startmail.com>
References: <20180506142513.19911-1-hanetzer@startmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180506142513.19911-1-hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: vagrant-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "Marty E. Plummer" <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Taken from coreboot's src/soc/rockchip/rk3288/sdram.c

Without this change, my u-boot build for the asus c201 chromebook (4GiB)
is incorrectly detected as 0 Bytes of ram.

Signed-off-by: Marty E. Plummer <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
---
 arch/arm/mach-rockchip/sdram_common.c | 62 ++++++++++++++++-----------
 1 file changed, 37 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-rockchip/sdram_common.c b/arch/arm/mach-rockchip/sdram_common.c
index 76dbdc8715..a9c9f970a4 100644
--- a/arch/arm/mach-rockchip/sdram_common.c
+++ b/arch/arm/mach-rockchip/sdram_common.c
@@ -10,6 +10,8 @@
 #include <asm/io.h>
 #include <asm/arch/sdram_common.h>
 #include <dm/uclass-internal.h>
+#include <linux/kernel.h>
+#include <linux/sizes.h>
 
 DECLARE_GLOBAL_DATA_PTR;
 size_t rockchip_sdram_size(phys_addr_t reg)
@@ -19,34 +21,44 @@ size_t rockchip_sdram_size(phys_addr_t reg)
 	size_t size_mb = 0;
 	u32 ch;
 
-	u32 sys_reg = readl(reg);
-	u32 ch_num = 1 + ((sys_reg >> SYS_REG_NUM_CH_SHIFT)
-		       & SYS_REG_NUM_CH_MASK);
+	if (!size_mb) {
 
-	debug("%s %x %x\n", __func__, (u32)reg, sys_reg);
-	for (ch = 0; ch < ch_num; ch++) {
-		rank = 1 + (sys_reg >> SYS_REG_RANK_SHIFT(ch) &
-			SYS_REG_RANK_MASK);
-		col = 9 + (sys_reg >> SYS_REG_COL_SHIFT(ch) & SYS_REG_COL_MASK);
-		bk = 3 - ((sys_reg >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
-		cs0_row = 13 + (sys_reg >> SYS_REG_CS0_ROW_SHIFT(ch) &
-				SYS_REG_CS0_ROW_MASK);
-		cs1_row = 13 + (sys_reg >> SYS_REG_CS1_ROW_SHIFT(ch) &
-				SYS_REG_CS1_ROW_MASK);
-		bw = (2 >> ((sys_reg >> SYS_REG_BW_SHIFT(ch)) &
-			SYS_REG_BW_MASK));
-		row_3_4 = sys_reg >> SYS_REG_ROW_3_4_SHIFT(ch) &
-			SYS_REG_ROW_3_4_MASK;
+		u32 sys_reg = readl(reg);
+		u32 ch_num = 1 + ((sys_reg >> SYS_REG_NUM_CH_SHIFT)
+			       & SYS_REG_NUM_CH_MASK);
 
-		chipsize_mb = (1 << (cs0_row + col + bk + bw - 20));
+		debug("%s %x %x\n", __func__, (u32)reg, sys_reg);
+		for (ch = 0; ch < ch_num; ch++) {
+			rank = 1 + (sys_reg >> SYS_REG_RANK_SHIFT(ch) &
+				SYS_REG_RANK_MASK);
+			col = 9 + (sys_reg >> SYS_REG_COL_SHIFT(ch) & SYS_REG_COL_MASK);
+			bk = 3 - ((sys_reg >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
+			cs0_row = 13 + (sys_reg >> SYS_REG_CS0_ROW_SHIFT(ch) &
+					SYS_REG_CS0_ROW_MASK);
+			cs1_row = 13 + (sys_reg >> SYS_REG_CS1_ROW_SHIFT(ch) &
+					SYS_REG_CS1_ROW_MASK);
+			bw = (2 >> ((sys_reg >> SYS_REG_BW_SHIFT(ch)) &
+				SYS_REG_BW_MASK));
+			row_3_4 = sys_reg >> SYS_REG_ROW_3_4_SHIFT(ch) &
+				SYS_REG_ROW_3_4_MASK;
 
-		if (rank > 1)
-			chipsize_mb += chipsize_mb >> (cs0_row - cs1_row);
-		if (row_3_4)
-			chipsize_mb = chipsize_mb * 3 / 4;
-		size_mb += chipsize_mb;
-		debug("rank %d col %d bk %d cs0_row %d bw %d row_3_4 %d\n",
-		      rank, col, bk, cs0_row, bw, row_3_4);
+			chipsize_mb = (1 << (cs0_row + col + bk + bw - 20));
+
+			if (rank > 1)
+				chipsize_mb += chipsize_mb >> (cs0_row - cs1_row);
+			if (row_3_4)
+				chipsize_mb = chipsize_mb * 3 / 4;
+			size_mb += chipsize_mb;
+			debug("rank %d col %d bk %d cs0_row %d bw %d row_3_4 %d\n",
+			      rank, col, bk, cs0_row, bw, row_3_4);
+		}
+
+		/*
+		 * we use the 0x00000000~0xfeffffff space
+		 * since 0xff000000~0xffffffff is soc register space
+		 * so we reserve it
+		 */
+		size_mb = min(size_mb, 0xff000000/SZ_1M);
 	}
 
 	return (size_t)size_mb << 20;
-- 
2.17.0
