From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v7 6/7] rockchip: Add Single boot image (with binman, pad_cat)
Date: Fri, 10 Jan 2020 00:16:21 +0530
Message-ID: <20200109184622.3098-7-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>, linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>
List-Id: linux-rockchip.vger.kernel.org

All rockchip platforms support TPL or SPL-based bootloader
in mainline with U-Boot proper as final stage. For each
stage we need to burn the image on to flash with respective
offsets.

This patch creates a single boot image component using
- binman, for arm32 rockchip platforms
- pad_cat, for arm64 rockchip platforms.

This would help users to get rid of burning different
boot stage images.

The new image called 'u-boot-rockchip.bin'
which can burn into flash like:

₹ sudo dd if=u-boot-rockchip.bin of=/dev/sda seek=64

This would support all rockchip platforms, except rk3128
since it doesn't support for SPL yet.

Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
Cc: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile                          | 14 ++++++++++++--
 arch/arm/Kconfig                  |  1 +
 arch/arm/dts/rk3036-u-boot.dtsi   |  2 ++
 arch/arm/dts/rk3188-u-boot.dtsi   |  2 ++
 arch/arm/dts/rk3288-u-boot.dtsi   |  2 ++
 arch/arm/dts/rockchip-u-boot.dtsi | 21 +++++++++++++++++++++
 configs/phycore-rk3288_defconfig  |  2 --
 include/configs/rockchip-common.h |  3 +++
 8 files changed, 43 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi

diff --git a/Makefile b/Makefile
index 5361524f77..1d71a77cbb 100644
--- a/Makefile
+++ b/Makefile
@@ -909,7 +909,7 @@ ALL-y += u-boot-with-dtb.bin
 endif
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
-ALL-y += idbloader.img
+ALL-y += u-boot-rockchip.bin
 endif
 
 LDFLAGS_u-boot += $(LDFLAGS_FINAL)
@@ -1395,7 +1395,17 @@ idbloader.img: spl/u-boot-spl.bin FORCE
 	$(call if_changed,mkimage)
 endif
 
-endif
+ifeq ($(CONFIG_ARM64),)
+u-boot-rockchip.bin: idbloader.img u-boot.img FORCE
+	$(call if_changed,binman)
+else
+OBJCOPYFLAGS_u-boot-rockchip.bin = -I binary -O binary \
+	--pad-to=$(CONFIG_SPL_PAD_TO) --gap-fill=0xff
+u-boot-rockchip.bin: idbloader.img u-boot.itb FORCE
+	$(call if_changed,pad_cat)
+endif # CONFIG_ARM64
+
+endif # CONFIG_ARCH_ROCKCHIP
 
 ifeq ($(CONFIG_ARCH_LPC32XX)$(CONFIG_SPL),yy)
 MKIMAGEFLAGS_lpc32xx-spl.img = -T lpc32xximage -a $(CONFIG_SPL_TEXT_BASE)
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f9dab073ea..7bd99ba3bb 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1590,6 +1590,7 @@ config ARCH_STM32MP
 config ARCH_ROCKCHIP
 	bool "Support Rockchip SoCs"
 	select BLK
+	select BINMAN if !ARM64
 	select DM
 	select DM_GPIO
 	select DM_I2C
diff --git a/arch/arm/dts/rk3036-u-boot.dtsi b/arch/arm/dts/rk3036-u-boot.dtsi
index 1e7d079315..41ac054b81 100644
--- a/arch/arm/dts/rk3036-u-boot.dtsi
+++ b/arch/arm/dts/rk3036-u-boot.dtsi
@@ -2,3 +2,5 @@
 /*
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
+
+#include "rockchip-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3188-u-boot.dtsi b/arch/arm/dts/rk3188-u-boot.dtsi
index 1e7d079315..41ac054b81 100644
--- a/arch/arm/dts/rk3188-u-boot.dtsi
+++ b/arch/arm/dts/rk3188-u-boot.dtsi
@@ -2,3 +2,5 @@
 /*
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
+
+#include "rockchip-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3288-u-boot.dtsi b/arch/arm/dts/rk3288-u-boot.dtsi
index 3f00a3b6d3..6d31735362 100644
--- a/arch/arm/dts/rk3288-u-boot.dtsi
+++ b/arch/arm/dts/rk3288-u-boot.dtsi
@@ -3,6 +3,8 @@
  * Copyright (C) 2019 Rockchip Electronics Co., Ltd
  */
 
+#include "rockchip-u-boot.dtsi"
+
 / {
 	chosen {
 		u-boot,spl-boot-order = \
diff --git a/arch/arm/dts/rockchip-u-boot.dtsi b/arch/arm/dts/rockchip-u-boot.dtsi
new file mode 100644
index 0000000000..a2559e2db0
--- /dev/null
+++ b/arch/arm/dts/rockchip-u-boot.dtsi
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include <config.h>
+
+/ {
+	binman {
+		filename = "u-boot-rockchip.bin";
+		pad-byte = <0xff>;
+
+		blob {
+			filename = "idbloader.img";
+		};
+
+		u-boot-img {
+			offset = <CONFIG_SPL_PAD_TO>;
+		};
+	};
+};
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 2f10c7a3b3..ee164a9083 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -19,8 +19,6 @@ CONFIG_DEFAULT_FDT_FILE="rk3288-phycore-rdk.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
-CONFIG_SPL_I2C_SUPPORT=y
-CONFIG_SPL_POWER_SUPPORT=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_I2C=y
diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
index 68e1105a4b..b55e09a9ca 100644
--- a/include/configs/rockchip-common.h
+++ b/include/configs/rockchip-common.h
@@ -9,6 +9,9 @@
 
 #define CONFIG_SYS_NS16550_MEM32
 
+/* ((CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR - 64) * 512) */
+#define CONFIG_SPL_PAD_TO		8355840
+
 #ifndef CONFIG_SPL_BUILD
 
 /* First try to boot from SD (index 0), then eMMC (index 1) */
-- 
2.18.0.321.gffc6fa0e3
