From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 5/9] board: puma: Get bl31.bin via BL31 and rk3399m0.bin
 via PMUM0
Date: Sun, 28 Apr 2019 14:39:09 +0530
Message-ID: <20190428090913.10568-6-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190428090913.10568-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Right now puma rk3399 board need to copy bl31-rk3399.bin and
rk3399m0.bin into u-boot source directory to make use of building
u-boot.itb.

So, add environment variable
- BL31 for bl31.bin (instead of bl31-rk3399.bin to compatible with other
  platform BL31 env)
- PMUM0 for rk3399m0.bin

If the builds are not exporting BL31, PMUM0 env, the fit_spl_atf.sh will
notify with warning about which document to refer for more information
like this:

 WARNING: BL31 file bl31.bin NOT found, resulting binary is non-functional
 Please read Building section in doc/README.rockchip
 WARNING: PMUM0 file rk3399m0.bin NOT found, resulting binary is non-functional
 Please read Building section in doc/README.rockchip

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 .../{fit_spl_atf.its => fit_spl_atf.sh}       | 46 ++++++++++++++++---
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           |  8 ++--
 3 files changed, 45 insertions(+), 11 deletions(-)
 rename board/theobroma-systems/puma_rk3399/{fit_spl_atf.its => fit_spl_atf.sh} (50%)
 mode change 100644 => 100755

diff --git a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
old mode 100644
new mode 100755
similarity index 50%
rename from board/theobroma-systems/puma_rk3399/fit_spl_atf.its
rename to board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
index 530f059f3d..517fad40a1
--- a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its
+++ b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
@@ -1,3 +1,31 @@
+#!/bin/sh
+#
+# Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+#
+# Based on the board/sunxi/mksunxi_fit_atf.sh
+#
+# Script to generate FIT image source for 64-bit puma boards with
+# U-Boot proper, ATF, PMU firmware and devicetree.
+#
+# usage: $0 <dt_name> [<dt_name> [<dt_name] ...]
+
+[ -z "$BL31" ] && BL31="bl31.bin"
+
+if [ ! -f $BL31 ]; then
+	echo "WARNING: BL31 file $BL31 NOT found, resulting binary is non-functional" >&2
+	echo "Please read Building section in doc/README.rockchip" >&2
+	BL31=/dev/null
+fi
+
+[ -z "$PMUM0" ] && PMUM0="rk3399m0.bin"
+
+if [ ! -f $PMUM0 ]; then
+	echo "WARNING: PMUM0 file $PMUM0 NOT found, resulting binary is non-functional" >&2
+	echo "Please read Building section in doc/README.rockchip" >&2
+	PMUM0=/dev/null
+fi
+
+cat << __HEADER_EOF
 /* SPDX-License-Identifier: GPL-2.0+ OR X11 */
 /*
  * Copyright (C) 2017 Theobroma Systems Design und Consulting GmbH
@@ -14,16 +42,15 @@
 	images {
 		uboot {
 			description = "U-Boot (64-bit)";
-			data = /incbin/("../../../u-boot-nodtb.bin");
+			data = /incbin/("u-boot-nodtb.bin");
 			type = "standalone";
-			os = "U-Boot";
 			arch = "arm64";
 			compression = "none";
-			load = <0x00200000>;
+			load = <0x4a000000>;
 		};
 		atf {
 			description = "ARM Trusted Firmware";
-			data = /incbin/("../../../bl31-rk3399.bin");
+			data = /incbin/("$BL31");
 			type = "firmware";
 			arch = "arm64";
 			os = "arm-trusted-firmware";
@@ -33,17 +60,20 @@
 		};
 		pmu {
 		        description = "Cortex-M0 firmware";
-			data = /incbin/("../../../rk3399m0.bin");
+			data = /incbin/("$PMUM0");
 			type = "pmu-firmware";
 			compression = "none";
 			load = <0x180000>;
                 };
 		fdt {
 			description = "RK3399-Q7 (Puma) flat device-tree";
-			data = /incbin/("../../../u-boot.dtb");
+			data = /incbin/("u-boot.dtb");
 			type = "flat_dt";
 			compression = "none";
 		};
+__HEADER_EOF
+
+cat << __CONF_HEADER_EOF
 	};
 
 	configurations {
@@ -54,5 +84,9 @@
 			loadables = "uboot", "pmu";
 			fdt = "fdt";
 		};
+__CONF_HEADER_EOF
+
+cat << __ITS_EOF
 	};
 };
+__ITS_EOF
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index e5ea2fe0b3..98b2dd6f02 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -15,7 +15,7 @@ CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"
+CONFIG_SPL_FIT_GENERATOR="board/theobroma-systems/puma_rk3399/fit_spl_atf.sh"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
 CONFIG_MISC_INIT_R=y
 # CONFIG_DISPLAY_CPUINFO is not set
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 98a3824e2c..88a4593392 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -137,8 +137,8 @@ For example:
 	=> cd arm-trusted-firmware
 	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399 bl31
 
-	(copy bl31.bin into U-Boot root dir)
-	=> cp build/rk3399/release/bl31/bl31.bin /path/to/u-boot/bl31-rk3399.bin
+	(export bl31.bin)
+	=> export BL31=/path/to/arm-trusted-firmware/build/rk3399/release/bl31/bl31.bin
 
      For rest of rk3399 boards.
 
@@ -162,8 +162,8 @@ For example:
      (export cross compiler path for Cortex-M0 PMU)
      => make CROSS_COMPILE=arm-cortex_m0-eabi-
 
-     (copy rk3399m0.bin into U-Boot root dir)
-     => cp rk3399m0.bin /path/to/u-boot
+     (export rk3399m0.bin)
+     => export PMUM0=/path/to/rk3399-cortex-m0/rk3399m0.bin
 
    - Compile U-Boot
 
-- 
2.18.0.321.gffc6fa0e3
