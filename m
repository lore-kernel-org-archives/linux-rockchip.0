From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 5/6] board: puma: Get bl31.bin via BL31 and rk3399m0.bin
 via PMUM0
Date: Wed,  8 May 2019 00:22:14 +0530
Message-ID: <20190507185215.15441-6-jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507185215.15441-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
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
 .../puma_rk3399/fit_spl_atf.its               | 58 ------------
 .../puma_rk3399/fit_spl_atf.sh                | 94 +++++++++++++++++++
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           |  8 +-
 4 files changed, 99 insertions(+), 63 deletions(-)
 delete mode 100644 board/theobroma-systems/puma_rk3399/fit_spl_atf.its
 create mode 100755 board/theobroma-systems/puma_rk3399/fit_spl_atf.sh

diff --git a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its b/board/theobroma-systems/puma_rk3399/fit_spl_atf.its
deleted file mode 100644
index 530f059f3d..0000000000
--- a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its
+++ /dev/null
@@ -1,58 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ OR X11 */
-/*
- * Copyright (C) 2017 Theobroma Systems Design und Consulting GmbH
- *
- * Minimal dts for a SPL FIT image payload.
- */
-
-/dts-v1/;
-
-/ {
-	description = "FIT image with U-Boot proper, ATF bl31, M0 Firmware, DTB";
-	#address-cells = <1>;
-
-	images {
-		uboot {
-			description = "U-Boot (64-bit)";
-			data = /incbin/("../../../u-boot-nodtb.bin");
-			type = "standalone";
-			os = "U-Boot";
-			arch = "arm64";
-			compression = "none";
-			load = <0x00200000>;
-		};
-		atf {
-			description = "ARM Trusted Firmware";
-			data = /incbin/("../../../bl31-rk3399.bin");
-			type = "firmware";
-			arch = "arm64";
-			os = "arm-trusted-firmware";
-			compression = "none";
-			load = <0x1000>;
-			entry = <0x1000>;
-		};
-		pmu {
-		        description = "Cortex-M0 firmware";
-			data = /incbin/("../../../rk3399m0.bin");
-			type = "pmu-firmware";
-			compression = "none";
-			load = <0x180000>;
-                };
-		fdt {
-			description = "RK3399-Q7 (Puma) flat device-tree";
-			data = /incbin/("../../../u-boot.dtb");
-			type = "flat_dt";
-			compression = "none";
-		};
-	};
-
-	configurations {
-		default = "conf";
-		conf {
-			description = "Theobroma Systems RK3399-Q7 (Puma) SoM";
-			firmware = "atf";
-			loadables = "uboot", "pmu";
-			fdt = "fdt";
-		};
-	};
-};
diff --git a/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
new file mode 100755
index 0000000000..420e7daf4c
--- /dev/null
+++ b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
@@ -0,0 +1,94 @@
+#!/bin/sh
+#
+# SPDX-License-Identifier:      GPL-2.0+
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
+/* SPDX-License-Identifier: GPL-2.0+ OR X11 */
+/*
+ * Copyright (C) 2017 Theobroma Systems Design und Consulting GmbH
+ *
+ * Minimal dts for a SPL FIT image payload.
+ */
+
+/dts-v1/;
+
+/ {
+	description = "FIT image with U-Boot proper, ATF bl31, M0 Firmware, DTB";
+	#address-cells = <1>;
+
+	images {
+		uboot {
+			description = "U-Boot (64-bit)";
+			data = /incbin/("u-boot-nodtb.bin");
+			type = "standalone";
+			arch = "arm64";
+			compression = "none";
+			load = <0x4a000000>;
+		};
+		atf {
+			description = "ARM Trusted Firmware";
+			data = /incbin/("$BL31");
+			type = "firmware";
+			arch = "arm64";
+			os = "arm-trusted-firmware";
+			compression = "none";
+			load = <0x1000>;
+			entry = <0x1000>;
+		};
+		pmu {
+		        description = "Cortex-M0 firmware";
+			data = /incbin/("$PMUM0");
+			type = "pmu-firmware";
+			compression = "none";
+			load = <0x180000>;
+                };
+		fdt {
+			description = "RK3399-Q7 (Puma) flat device-tree";
+			data = /incbin/("u-boot.dtb");
+			type = "flat_dt";
+			compression = "none";
+		};
+__HEADER_EOF
+
+cat << __CONF_HEADER_EOF
+	};
+
+	configurations {
+		default = "conf";
+		conf {
+			description = "Theobroma Systems RK3399-Q7 (Puma) SoM";
+			firmware = "atf";
+			loadables = "uboot", "pmu";
+			fdt = "fdt";
+		};
+__CONF_HEADER_EOF
+
+cat << __ITS_EOF
+	};
+};
+__ITS_EOF
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index 03f0bfdb59..ebc78fb216 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -15,7 +15,7 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
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
