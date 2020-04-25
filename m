From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 6/6] rk3399: Add ROC-RK3399-PC Mezzanine board
Date: Sat, 25 Apr 2020 16:23:19 +0530
Message-ID: <20200425105319.12009-7-jagan@amarulasolutions.com>
References: <20200425105319.12009-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200425105319.12009-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>

Add Firefly ROC-RK3399-PC Mezzanine board which is an
extension board on top of roc-rk3399-pc.

Will drop the separate defconfig file, once we support
the board detection at runtime.

Signed-off-by: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 .../dts/rk3399-roc-pc-mezzanine-u-boot.dtsi   | 26 +++++++
 board/firefly/roc-pc-rk3399/MAINTAINERS       |  2 +
 configs/roc-pc-mezzanine-rk3399_defconfig     | 67 +++++++++++++++++++
 3 files changed, 95 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
 create mode 100644 configs/roc-pc-mezzanine-rk3399_defconfig

diff --git a/arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
new file mode 100644
index 0000000000..29325da71f
--- /dev/null
+++ b/arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr4-100.dtsi"
+
+/ {
+	aliases {
+		spi0 = &spi1;
+	};
+
+	chosen {
+		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
+	};
+
+	config {
+                pcie-pwr-gpio = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+        };
+};
+
+&vdd_log {
+	regulator-min-microvolt = <430000>;
+	regulator-init-microvolt = <950000>;
+};
diff --git a/board/firefly/roc-pc-rk3399/MAINTAINERS b/board/firefly/roc-pc-rk3399/MAINTAINERS
index 7564dd252d..68a5b757d1 100644
--- a/board/firefly/roc-pc-rk3399/MAINTAINERS
+++ b/board/firefly/roc-pc-rk3399/MAINTAINERS
@@ -1,6 +1,8 @@
 ROC-RK3399-PC
 M:	Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
+M:	Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
 S:	Maintained
 F:	board/firefly/roc-pc-rk3399
 F:	include/configs/roc-pc-rk3399.h
 F:	configs/roc-pc-rk3399_defconfig
+F:	configs/roc-pc-mezzanine-rk3399_defconfig
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
new file mode 100644
index 0000000000..5a694edc03
--- /dev/null
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -0,0 +1,67 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_TARGET_ROC_PC_RK3399=y
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
+CONFIG_TPL_GPIO_SUPPORT=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_SPI_FLASH_WINBOND=y
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM_RK3399_LPDDR4=y
+CONFIG_BAUDRATE=1500000
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_ROCKCHIP_SPI=y
+CONFIG_SYSRESET=y
+CONFIG_USB=y
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_DWC3=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_HOST_ETHER=y
+CONFIG_USB_ETHER_ASIX=y
+CONFIG_USB_ETHER_ASIX88179=y
+CONFIG_USB_ETHER_MCS7830=y
+CONFIG_USB_ETHER_RTL8152=y
+CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_KEYBOARD=y
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
-- 
2.17.1
