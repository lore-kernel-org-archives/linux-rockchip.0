From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 11/14] rockchip: rk3399: Add Nanopc T4 board support
Date: Tue, 16 Apr 2019 16:26:44 +0530
Message-ID: <20190416105647.18437-12-jagan@amarulasolutions.com>
References: <20190416105647.18437-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190416105647.18437-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add initial support for Nanopc T4 board.

Specification
- Rockchip RK3399
- Dual-Channel 4GB LPDDR3-1866
- SD card slot
- 16GB eMMC
- RTL8211E 1Gbps
- AP6356S WiFI/BT
- HDMI In/Out, DP, MIPI DSI/CSI, eDP
- USB 3.0, 2.0
- USB Type C power and data
- GPIO expansion ports
- DC 12V/2A

Commit details of rk3399-nanopc-t4.dts sync from Linux 5.1-rc2:
"arm64: dts: rockchip: Add NanoPC-T4 IR receiver"
(sha1: 95658e21b1707ad7844f873db2fdaa295109a5a3)

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Note: Hardware on the way, since it shared same DDR with Nanopi M4
I'm confident it will boot.

 arch/arm/dts/Makefile                     |  1 +
 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi |  7 ++
 arch/arm/dts/rk3399-nanopc-t4.dts         | 91 +++++++++++++++++++++++
 board/rockchip/evb_rk3399/MAINTAINERS     |  6 ++
 configs/nanopc-t4-rk3399_defconfig        | 58 +++++++++++++++
 5 files changed, 163 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4.dts
 create mode 100644 configs/nanopc-t4-rk3399_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d2ac26b556..e048565bb6 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -87,6 +87,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3399-evb.dtb \
 	rk3399-firefly.dtb \
 	rk3399-gru-bob.dtb \
+	rk3399-nanopc-t4.dtb \
 	rk3399-nanopi-m4.dtb \
 	rk3399-orangepi.dtb \
 	rk3399-puma-ddr1333.dtb \
diff --git a/arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi
new file mode 100644
index 0000000000..1173d496ec
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr3-4GB-1866.dtsi"
diff --git a/arch/arm/dts/rk3399-nanopc-t4.dts b/arch/arm/dts/rk3399-nanopc-t4.dts
new file mode 100644
index 0000000000..84433cf02b
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopc-t4.dts
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * FriendlyElec NanoPC-T4 board device tree source
+ *
+ * Copyright (c) 2018 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2018 Collabora Ltd.
+ */
+
+/dts-v1/;
+#include "rk3399-nanopi4.dtsi"
+
+/ {
+	model = "FriendlyElec NanoPC-T4";
+	compatible = "friendlyarm,nanopc-t4", "rockchip,rk3399";
+
+	vcc12v0_sys: vcc12v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <12000000>;
+		regulator-min-microvolt = <12000000>;
+		regulator-name = "vcc12v0_sys";
+	};
+
+	vcc5v0_host0: vcc5v0-host0 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "vcc5v0_host0";
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_rx>;
+	};
+};
+
+&pinctrl {
+	ir {
+		ir_rx: ir-rx {
+			/* external pullup to VCC3V3_SYS, despite being 1.8V :/ */
+			rockchip,pins = <0 RK_PA6 RK_FUNC_1 &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdhci {
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+};
+
+&u2phy0_host {
+	phy-supply = <&vcc5v0_host0>;
+};
+
+&u2phy1_host {
+	phy-supply = <&vcc5v0_host0>;
+};
+
+&vcc5v0_sys {
+	vin-supply = <&vcc12v0_sys>;
+};
+
+&vcc3v3_sys {
+	vin-supply = <&vcc12v0_sys>;
+};
+
+&vbus_typec {
+	enable-active-high;
+	gpios = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+	vin-supply = <&vcc5v0_sys>;
+};
diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
index ae43805a6a..5917abb9c1 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -6,6 +6,12 @@ F:      include/configs/evb_rk3399.h
 F:      configs/evb-rk3399_defconfig
 F:      configs/firefly-rk3399_defconfig
 
+NANOPC-T4
+M:	Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+S:	Maintained
+F:	configs/nanopic-t4-rk3399_defconfig
+F:	arch/arm/dts/rk3399-nanopic-t4-u-boot.dtsi
+
 NANOPI-M4
 M:	Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
 S:	Maintained
diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
new file mode 100644
index 0000000000..7ba4f85485
--- /dev/null
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -0,0 +1,58 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_LIBCOMMON_SUPPORT=y
+CONFIG_SPL_LIBGENERIC_SUPPORT=y
+CONFIG_SYS_MALLOC_F_LEN=0x4000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_SPL_STACK_R_ADDR=0x80000
+CONFIG_DEBUG_UART=y
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopc-t4.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_SF=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopc-t4"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_BAUDRATE=1500000
+CONFIG_DEBUG_UART_SHIFT=2
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
+CONFIG_USE_TINY_PRINTF=y
+CONFIG_ERRNO_STR=y
-- 
2.18.0.321.gffc6fa0e3
