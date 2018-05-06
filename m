From: "Marty E. Plummer" <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
Subject: [PATCH 2/3] rockchip: add support for veyron-speedy (ASUS Chromebook
 C201)
Date: Sun,  6 May 2018 09:25:12 -0500
Message-ID: <20180506142513.19911-3-hanetzer@startmail.com>
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

This adds support for the ASUS C201, a RK3288-based clamshell
device. The device tree comes from linus's linux tree at
87ef12027b9b1dd0e0b12cf311fbcb19f9d92539. The SDRAM parameters
are for 4GB Samsung LPDDR3, decoded from coreboot's
src/mainboard/google/veyron/sdram_inf/sdram-lpddr3-samsung-4GB.inc

Signed-off-by: Marty E. Plummer <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
---
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/rk3288-veyron-speedy.dts     | 189 ++++++++++++++++++++++
 arch/arm/mach-rockchip/rk3288-board-spl.c |   3 +-
 arch/arm/mach-rockchip/rk3288/Kconfig     |  11 ++
 board/google/veyron/Kconfig               |  16 ++
 configs/chromebook_speedy_defconfig       |  96 +++++++++++
 6 files changed, 315 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/rk3288-veyron-speedy.dts
 create mode 100644 configs/chromebook_speedy_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ac7667b1e8..ee04d9bedd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -42,6 +42,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-veyron-jerry.dtb \
 	rk3288-veyron-mickey.dtb \
 	rk3288-veyron-minnie.dtb \
+	rk3288-veyron-speedy.dtb \
 	rk3288-vyasa.dtb \
 	rk3328-evb.dtb \
 	rk3368-lion.dtb \
diff --git a/arch/arm/dts/rk3288-veyron-speedy.dts b/arch/arm/dts/rk3288-veyron-speedy.dts
new file mode 100644
index 0000000000..d5383cef0d
--- /dev/null
+++ b/arch/arm/dts/rk3288-veyron-speedy.dts
@@ -0,0 +1,189 @@
+/*
+ * Google Veyron Speedy Rev 1+ board device tree source
+ *
+ * Copyright 2015 Google, Inc
+ *
+ * SPDX-License-Identifier:	GPL-2.0
+ */
+
+/dts-v1/;
+#include "rk3288-veyron-chromebook.dtsi"
+#include "cros-ec-sbs.dtsi"
+
+/ {
+	model = "Google Speedy";
+	compatible = "google,veyron-speedy-rev9", "google,veyron-speedy-rev8",
+		     "google,veyron-speedy-rev7", "google,veyron-speedy-rev6",
+		     "google,veyron-speedy-rev5", "google,veyron-speedy-rev4",
+		     "google,veyron-speedy-rev3", "google,veyron-speedy-rev2",
+		     "google,veyron-speedy", "google,veyron", "rockchip,rk3288";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	panel_regulator: panel-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_enable_h>;
+		regulator-name = "panel_regulator";
+		startup-delay-us = <100000>;
+		vin-supply = <&vcc33_sys>;
+	};
+
+	vcc18_lcd: vcc18-lcd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&avdd_1v8_disp_en>;
+		regulator-name = "vcc18_lcd";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc18_wl>;
+	};
+
+	backlight_regulator: backlight-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bl_pwr_en>;
+		regulator-name = "backlight_regulator";
+		vin-supply = <&vcc33_sys>;
+		startup-delay-us = <15000>;
+	};
+};
+
+&dmc {
+	rockchip,pctl-timing = <0x215 0xc8 0x0 0x35 0x26 0x2 0x70 0x2000d
+		0x6 0x0 0x8 0x4 0x17 0x24 0xd 0x6
+		0x4 0x8 0x4 0x76 0x4 0x0 0x30 0x0
+		0x1 0x2 0x2 0x4 0x0 0x0 0xc0 0x4
+		0x8 0x1f4>;
+	rockchip,phy-timing = <0x48d7dd93 0x187008d8 0x121076
+		0x0 0xc3 0x6 0x1>;
+	rockchip,sdram-params = <0x20D266A4 0x5B6 6 533000000 6 13 0>;
+};
+
+&gpio_keys {
+	power {
+		gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&backlight {
+	power-supply = <&backlight_regulator>;
+};
+
+&panel {
+	power-supply = <&panel_regulator>;
+};
+
+&rk808 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_int_l>;
+};
+
+&sdmmc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
+			&sdmmc_bus4>;
+	disable-wp;
+};
+
+&vcc_5v {
+	enable-active-high;
+	gpio = <&gpio7 RK_PC5 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&drv_5v>;
+};
+
+&vcc50_hdmi {
+	enable-active-high;
+	gpio = <&gpio5 RK_PC3 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&vcc50_hdmi_en>;
+};
+
+&edp {
+	pinctrl-names = "default";
+	pinctrl-0 = <&edp_hpd>;
+};
+
+&pinctrl {
+	backlight {
+		bl_pwr_en: bl_pwr_en {
+			rockchip,pins = <2 12 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	buck-5v {
+		drv_5v: drv-5v {
+			rockchip,pins = <7 21 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	edp {
+		edp_hpd: edp_hpd {
+			rockchip,pins = <7 11 RK_FUNC_2 &pcfg_pull_down>;
+		};
+	};
+
+	emmc {
+		/* Make sure eMMC is not in reset */
+		emmc_deassert_reset: emmc-deassert-reset {
+			rockchip,pins = <2 9 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hdmi {
+		vcc50_hdmi_en: vcc50-hdmi-en {
+			rockchip,pins = <5 19 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	lcd {
+		lcd_enable_h: lcd-en {
+			rockchip,pins = <7 14 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		avdd_1v8_disp_en: avdd-1v8-disp-en {
+			rockchip,pins = <2 13 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		dvs_1: dvs-1 {
+			rockchip,pins = <7 12 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		dvs_2: dvs-2 {
+			rockchip,pins = <7 15 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&i2c4 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4_xfer>;
+
+	trackpad@15 {
+		compatible = "elan,i2c_touchpad";
+		interrupt-parent = <&gpio7>;
+		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+		/*
+		 * Remove the inherited pinctrl settings to avoid clashing
+		 * with bus-wide ones.
+		 */
+		/delete-property/pinctrl-names;
+		/delete-property/pinctrl-0;
+		reg = <0x15>;
+		vcc-supply = <&vcc33_io>;
+		wakeup-source;
+	};
+};
diff --git a/arch/arm/mach-rockchip/rk3288-board-spl.c b/arch/arm/mach-rockchip/rk3288-board-spl.c
index f3ea624277..9ae4802647 100644
--- a/arch/arm/mach-rockchip/rk3288-board-spl.c
+++ b/arch/arm/mach-rockchip/rk3288-board-spl.c
@@ -72,7 +72,8 @@ u32 spl_boot_device(void)
 fallback:
 #elif defined(CONFIG_TARGET_CHROMEBOOK_JERRY) || \
 		defined(CONFIG_TARGET_CHROMEBIT_MICKEY) || \
-		defined(CONFIG_TARGET_CHROMEBOOK_MINNIE)
+		defined(CONFIG_TARGET_CHROMEBOOK_MINNIE) || \
+		defined(CONFIG_TARGET_CHROMEBOOK_SPEEDY)
 	return BOOT_DEVICE_SPI;
 #endif
 	return BOOT_DEVICE_MMC1;
diff --git a/arch/arm/mach-rockchip/rk3288/Kconfig b/arch/arm/mach-rockchip/rk3288/Kconfig
index 6beb26fd7a..8d1d37895d 100644
--- a/arch/arm/mach-rockchip/rk3288/Kconfig
+++ b/arch/arm/mach-rockchip/rk3288/Kconfig
@@ -30,6 +30,17 @@ config TARGET_CHROMEBOOK_MINNIE
 	  functions. It includes 2 or 4GB of SDRAM and 16 or 32GB of
 	  internal MMC. The product name is ASUS Chromebook Flip.
 
+config TARGET_CHROMEBOOK_SPEEDY
+	bool "Google/Rockchip Veyron-Speedy Chromebook"
+	select BOARD_LATE_INIT
+	help
+	  Speedy is a RK3288-based clamshell device with 2 USB 2.0 ports,
+	  micro HDMI, an 11.6 inch display, micro-SD card,
+	  HD camera, touchpad, wifi and Bluetooth. It includes a Chrome OS
+	  EC (Cortex-M3) to provide access to the keyboard and battery
+	  functions. It includes 2 or 4GB of SDRAM and 16GB of internal MMC.
+	  The product name is Asus Chromebook C201PA.
+
 config TARGET_EVB_RK3288
 	bool "Evb-RK3288"
 	select BOARD_LATE_INIT
diff --git a/board/google/veyron/Kconfig b/board/google/veyron/Kconfig
index 770e9aad28..7f55d78dac 100644
--- a/board/google/veyron/Kconfig
+++ b/board/google/veyron/Kconfig
@@ -45,3 +45,19 @@ config BOARD_SPECIFIC_OPTIONS # dummy
 	def_bool y
 
 endif
+
+if TARGET_CHROMEBOOK_SPEEDY
+
+config SYS_BOARD
+	default "veyron"
+
+config SYS_VENDOR
+	default "google"
+
+config SYS_CONFIG_NAME
+	default "veyron"
+
+config BOARD_SPECIFIC_OPTIONS # dummy
+	def_bool y
+
+endif
diff --git a/configs/chromebook_speedy_defconfig b/configs/chromebook_speedy_defconfig
new file mode 100644
index 0000000000..8789b56f37
--- /dev/null
+++ b/configs/chromebook_speedy_defconfig
@@ -0,0 +1,96 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00100000
+CONFIG_SYS_MALLOC_F_LEN=0x2000
+CONFIG_ROCKCHIP_RK3288=y
+# CONFIG_SPL_MMC_SUPPORT is not set
+CONFIG_TARGET_CHROMEBOOK_SPEEDY=y
+CONFIG_SPL_SPI_FLASH_SUPPORT=y
+CONFIG_SPL_SPI_SUPPORT=y
+CONFIG_SPL_STACK_R_ADDR=0x80000
+CONFIG_DEFAULT_DEVICE_TREE="rk3288-veyron-speedy"
+CONFIG_DEBUG_UART=y
+# CONFIG_ANDROID_BOOT_IMAGE is not set
+CONFIG_SILENT_CONSOLE=y
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_BOARD_EARLY_INIT_F=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
+CONFIG_SPL_SPI_LOAD=y
+CONFIG_FASTBOOT_FLASH=y
+CONFIG_FASTBOOT_FLASH_MMC_DEV=0
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_SF=y
+CONFIG_CMD_SF_TEST=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_CACHE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_PMIC=y
+CONFIG_CMD_REGULATOR=y
+# CONFIG_SPL_DOS_PARTITION is not set
+# CONFIG_SPL_EFI_PARTITION is not set
+CONFIG_SPL_PARTITION_UUIDS=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_SPL_OF_PLATDATA=y
+CONFIG_REGMAP=y
+CONFIG_SPL_REGMAP=y
+CONFIG_SYSCON=y
+CONFIG_SPL_SYSCON=y
+# CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_CLK=y
+CONFIG_SPL_CLK=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_I2C_CROS_EC_TUNNEL=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_I2C_MUX=y
+CONFIG_DM_KEYBOARD=y
+CONFIG_CROS_EC_KEYB=y
+CONFIG_CROS_EC=y
+CONFIG_CROS_EC_SPI=y
+CONFIG_PWRSEQ=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_PINCTRL=y
+CONFIG_SPL_PINCTRL=y
+# CONFIG_SPL_PINCTRL_FULL is not set
+CONFIG_PINCTRL_ROCKCHIP_RK3288=y
+CONFIG_DM_PMIC=y
+# CONFIG_SPL_PMIC_CHILDREN is not set
+CONFIG_PMIC_RK8XX=y
+CONFIG_DM_REGULATOR_FIXED=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM=y
+CONFIG_SPL_RAM=y
+CONFIG_DEBUG_UART_BASE=0xff690000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_SYS_NS16550=y
+CONFIG_ROCKCHIP_SERIAL=y
+CONFIG_ROCKCHIP_SPI=y
+CONFIG_SYSRESET=y
+CONFIG_USB=y
+CONFIG_ROCKCHIP_USB2_PHY=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
+CONFIG_USB_GADGET_VENDOR_NUM=0x2207
+CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
+CONFIG_USB_GADGET_DWC2_OTG=y
+CONFIG_USB_FUNCTION_MASS_STORAGE=y
+CONFIG_DM_VIDEO=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_EDP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
+CONFIG_USE_TINY_PRINTF=y
+CONFIG_CMD_DHRYSTONE=y
+CONFIG_ERRNO_STR=y
+# CONFIG_SPL_OF_LIBFDT is not set
-- 
2.17.0
