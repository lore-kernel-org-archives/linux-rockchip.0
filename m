From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 12/15] ram: rk3399: Move common sdram structures in common
 header
Date: Mon, 15 Jul 2019 23:51:07 +0530
Message-ID: <20190715182110.21336-13-jagan@amarulasolutions.com>
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

Move common sdram structures like sdram_cap_info, sdram_base_params
into sdram_common header, this would help to reuse the same
from another controllers like px30.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 .../include/asm/arch-rockchip/sdram_common.h  | 29 +++++++++++++++++++
 .../include/asm/arch-rockchip/sdram_rk3399.h  | 28 ------------------
 2 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 671c318d50..82ce3d3fc9 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -5,6 +5,35 @@
 
 #ifndef _ASM_ARCH_SDRAM_COMMON_H
 #define _ASM_ARCH_SDRAM_COMMON_H
+
+struct sdram_cap_info {
+	unsigned int rank;
+	/* dram column number, 0 means this channel is invalid */
+	unsigned int col;
+	/* dram bank number, 3:8bank, 2:4bank */
+	unsigned int bk;
+	/* channel buswidth, 2:32bit, 1:16bit, 0:8bit */
+	unsigned int bw;
+	/* die buswidth, 2:32bit, 1:16bit, 0:8bit */
+	unsigned int dbw;
+	/*
+	 * row_3_4 = 1: 6Gb or 12Gb die
+	 * row_3_4 = 0: normal die, power of 2
+	 */
+	unsigned int row_3_4;
+	unsigned int cs0_row;
+	unsigned int cs1_row;
+	unsigned int ddrconfig;
+};
+
+struct sdram_base_params {
+	unsigned int ddr_freq;
+	unsigned int dramtype;
+	unsigned int num_channels;
+	unsigned int stride;
+	unsigned int odt;
+};
+
 /*
  * sys_reg bitfield struct
  * [31]		row_3_4_ch1
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 5614b94ecb..65c92cf744 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -71,39 +71,11 @@ struct rk3399_ddr_cic_regs {
 /* DENALI_CTL_274 */
 #define MEM_RST_VALID	1
 
-struct sdram_cap_info {
-	unsigned int rank;
-	/* dram column number, 0 means this channel is invalid */
-	unsigned int col;
-	/* dram bank number, 3:8bank, 2:4bank */
-	unsigned int bk;
-	/* channel buswidth, 2:32bit, 1:16bit, 0:8bit */
-	unsigned int bw;
-	/* die buswidth, 2:32bit, 1:16bit, 0:8bit */
-	unsigned int dbw;
-	/*
-	 * row_3_4 = 1: 6Gb or 12Gb die
-	 * row_3_4 = 0: normal die, power of 2
-	 */
-	unsigned int row_3_4;
-	unsigned int cs0_row;
-	unsigned int cs1_row;
-	unsigned int ddrconfig;
-};
-
 struct rk3399_sdram_channel {
 	struct sdram_cap_info cap_info;
 	struct rk3399_msch_timings noc_timings;
 };
 
-struct sdram_base_params {
-	unsigned int ddr_freq;
-	unsigned int dramtype;
-	unsigned int num_channels;
-	unsigned int stride;
-	unsigned int odt;
-};
-
 struct rk3399_sdram_params {
 	struct rk3399_sdram_channel ch[2];
 	struct sdram_base_params base;
-- 
2.18.0.321.gffc6fa0e3
