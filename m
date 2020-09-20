Return-Path: <SRS0=htw7=C5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FABC43465
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2020 15:46:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D09A20870
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2020 15:46:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZUKW+Re1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D09A20870
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=david-bauer.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TWlLBa5FnqxfOOIs0jldK6ZtQdT+BuwT9x2I54AO3I0=; b=ZUKW+Re1yS8IOxLbGX8gUDqv7K
	K+g/Wau3v4ejXS5xQJS5nOhUvuC63GHQm9gx5zDF7IVP42kvAhRKTN5XiERovPOshLWzJWVk5pvbJ
	7lIA+By7EtVbUWFrd3y7KK/XmetqYdu8KZat51SDf1XYetcWdyoX1cndrjRwhwv0ck4DgqkCato2z
	WfTZfjJL1FRUt2sugcutYtahBjy8UCmyekBsVm13WPMtiQXcr8/Zt9BELkGIhYu1LApGx7rSTGRdP
	xMFhsCLmkb7uT+Orf3onKIVdI2XJc1rwSBFTzNdmtsIF2umT0tXJ2+URWZyNOTflXB9fZChUM+eFe
	jT9Fw5Ig==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kK1XK-0006Ut-1X; Sun, 20 Sep 2020 15:45:58 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kK1XB-0006Ta-RT; Sun, 20 Sep 2020 15:45:51 +0000
Received: from localhost.localdomain
 (p200300e53f3f5e006864d0f74357ffb3.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3f:5e00:6864:d0f7:4357:ffb3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 3FEF52EC4B;
 Sun, 20 Sep 2020 17:45:42 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: robh+dt@kernel.org, heiko@sntech.de, andy.yan@rock-chips.com,
 jagan@amarulasolutions.com, jbx6244@gmail.com, robin.murphy@arm.com,
 kever.yang@rock-chips.com, m.reichl@fivetechno.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 2/2] rockchip: rk3328: Add support for FriendlyARM NanoPi
 R2S
Date: Sun, 20 Sep 2020 17:45:28 +0200
Message-Id: <20200920154528.88185-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200920154528.88185-1-mail@david-bauer.net>
References: <20200920154528.88185-1-mail@david-bauer.net>
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200920_114550_118260_7C7D37B4 
X-CRM114-Status: GOOD (  18.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This adds support for the NanoPi R2S from FriendlyARM.

Rockchip RK3328 SoC
1GB DDR4 RAM
Gigabit Ethernet (WAN)
Gigabit Ethernet (USB3) (LAN)
USB 2.0 Host Port
MicroSD slot
Reset button
WAN - LAN - SYS LED

Signed-off-by: David Bauer <mail@david-bauer.net>
---
Changes in v3:
 - Rename gmac-clock node
 - Various sorting fixes
 - Rename label for reset button
 - Fix LED pinctrl bracketing
 - Fix ethernet-phy node name
 - add dr_mode property to OTG node

Changes in v2:
 - Change model name to FriendlyElec
 - Enable SD UHS modes
 - Add startup delay to SDIO regulator to improve
   issues reported with some cards
 - Fix PMIC interrupt pin
 - Add pinctrl node for ethernet-PHY
 - Fix various formatting issues

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 368 ++++++++++++++++++
 2 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index b87b1f773083..20055c51e150 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-evb-act8846.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
new file mode 100644
index 000000000000..b9daf89e950a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -0,0 +1,368 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 David Bauer <mail@david-bauer.net>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "rk3328.dtsi"
+
+/ {
+	model = "FriendlyElec NanoPi R2S";
+	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	gmac_clk: gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac_clk";
+		#clock-cells = <0>;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&reset_button_pin>;
+		pinctrl-names = "default";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+			debounce-interval = <50>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
+		pinctrl-names = "default";
+
+		lan_led: led-0 {
+			gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-r2s:green:lan";
+		};
+
+		sys_led: led-1 {
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-r2s:red:sys";
+		};
+
+		wan_led: led-2 {
+			gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-r2s:green:wan";
+		};
+	};
+
+	vcc_io_sdio: sdmmcio-regulator {
+		compatible = "regulator-gpio";
+		enable-active-high;
+		gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&sdio_vcc_pin>;
+		pinctrl-names = "default";
+		regulator-name = "vcc_io_sdio";
+		regulator-always-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-settling-time-us = <5000>;
+		regulator-type = "voltage";
+		startup-delay-us = <2000>;
+		states = <1800000 0x1
+			  3300000 0x0>;
+		vin-supply = <&vcc_io_33>;
+	};
+
+	vcc_sd: sdmmc-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-names = "default";
+		regulator-name = "vcc_sd";
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io_33>;
+	};
+
+	vdd_5v: vdd-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&gmac2io {
+	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+	assigned-clock-parents = <&gmac_clk>, <&gmac_clk>;
+	clock_in_out = "input";
+	phy-handle = <&rtl8211e>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_io_33>;
+	pinctrl-0 = <&rgmiim1_pins>;
+	pinctrl-names = "default";
+	rx_delay = <0x18>;
+	snps,aal;
+	tx_delay = <0x24>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211e: ethernet-phy@1 {
+			reg = <1>;
+			pinctrl-0 = <&eth_phy_reset_pin>;
+			pinctrl-names = "default";
+			reset-assert-us = <10000>;
+			reset-deassert-us = <50000>;
+			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	rk805: pmic@18 {
+		compatible = "rockchip,rk805";
+		reg = <0x18>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rk805-clkout2";
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-names = "default";
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vdd_5v>;
+		vcc2-supply = <&vdd_5v>;
+		vcc3-supply = <&vdd_5v>;
+		vcc4-supply = <&vdd_5v>;
+		vcc5-supply = <&vcc_io_33>;
+		vcc6-supply = <&vdd_5v>;
+
+		regulators {
+			vdd_log: DCDC_REG1 {
+				regulator-name = "vdd_log";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <712500>;
+				regulator-max-microvolt = <1450000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <712500>;
+				regulator-max-microvolt = <1450000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_io_33: DCDC_REG4 {
+				regulator-name = "vcc_io_33";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_18: LDO_REG1 {
+				regulator-name = "vcc_18";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc18_emmc: LDO_REG2 {
+				regulator-name = "vcc18_emmc";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_10: LDO_REG3 {
+				regulator-name = "vdd_10";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+		};
+	};
+};
+
+&io_domains {
+	pmuio-supply = <&vcc_io_33>;
+	vccio1-supply = <&vcc_io_33>;
+	vccio2-supply = <&vcc18_emmc>;
+	vccio3-supply = <&vcc_io_sdio>;
+	vccio4-supply = <&vcc_18>;
+	vccio5-supply = <&vcc_io_33>;
+	vccio6-supply = <&vcc_io_33>;
+	status = "okay";
+};
+
+&pinctrl {
+	button {
+		reset_button_pin: reset-button-pin {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	ethernet-phy {
+		eth_phy_reset_pin: eth-phy-reset-pin {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	leds {
+		lan_led_pin: lan-led-pin {
+			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		sys_led_pin: sys-led-pin {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wan_led_pin: wan-led-pin {
+			rockchip,pins = <2 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sd {
+		sdio_vcc_pin: sdio-vcc-pin {
+			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
+	pinctrl-names = "default";
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vcc_io_sdio>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <0>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	status = "okay";
+};
+
+&u2phy_otg {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb20_otg {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
