From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 41/99] arm: include: rockchip: Move dramtypes to common
 header
Date: Mon, 17 Jun 2019 13:01:54 +0530
Message-ID: <20190617073252.27810-42-jagan@amarulasolutions.com>
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

dramtype enum numbers as common across all dram controllers
in rockchip, so move the eneum values in common header.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/sdram.h        | 6 ------
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 8 ++++++++
 arch/arm/include/asm/arch-rockchip/sdram_rk322x.h | 7 -------
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 8 --------
 4 files changed, 8 insertions(+), 21 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram.h b/arch/arm/include/asm/arch-rockchip/sdram.h
index bbe425deb9..9220763fa7 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram.h
@@ -8,12 +8,6 @@
 #ifndef _ASM_ARCH_RK3288_SDRAM_H__
 #define _ASM_ARCH_RK3288_SDRAM_H__
 
-enum {
-	DDR3 = 3,
-	LPDDR3 = 6,
-	UNUSED = 0xFF,
-};
-
 struct rk3288_sdram_channel {
 	/*
 	 * bit width in address, eg:
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 6b75de5b6f..09f98bbf46 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -6,6 +6,14 @@
 #ifndef _ASM_ARCH_SDRAM_COMMON_H
 #define _ASM_ARCH_SDRAM_COMMON_H
 
+enum {
+	DDR3 = 0x3,
+	LPDDR2 = 0x5,
+	LPDDR3 = 0x6,
+	LPDDR4 = 0x7,
+	UNUSED = 0xFF
+};
+
 struct sdram_cap_info {
 	unsigned int rank;
 	/* dram column number, 0 means this channel is invalid */
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h b/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h
index d0091a7aaf..336c5d7e8c 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h
@@ -7,13 +7,6 @@
 
 #include <common.h>
 
-enum {
-	DDR3		= 3,
-	LPDDR2		= 5,
-	LPDDR3		= 6,
-	UNUSED		= 0xFF,
-};
-
 struct rk322x_sdram_channel {
 	/*
 	 * bit width in address, eg:
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 6258c811f5..dc65ae7924 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -6,14 +6,6 @@
 #ifndef _ASM_ARCH_SDRAM_RK3399_H
 #define _ASM_ARCH_SDRAM_RK3399_H
 
-enum {
-	DDR3 = 0x3,
-	LPDDR2 = 0x5,
-	LPDDR3 = 0x6,
-	LPDDR4 = 0x7,
-	UNUSED = 0xFF
-};
-
 struct rk3399_ddr_pctl_regs {
 	u32 denali_ctl[332];
 };
-- 
2.18.0.321.gffc6fa0e3
