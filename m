Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE76C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1v0GYeCq4z6r1hkBsQMJww25HU17bFrBZIUcOSkXHQk=; b=ctp6TqrV1TNC7I
	eKJT0Y8CVOEm4/YNmRjhAK2SijTHnYkoO707WUwr5uLnbyEzo2RThaRjKWB1WkgBwWcPJwpmvgyHn
	+gwgAFSjxEc6HNuCMCuRo7UBrYBgrE2LZJW2+JcbgXTwH6/OcwY0tohDub/HhNhfjDAMDrGfyGpfW
	zh7As0pdgIk+F5RSMpL3YH8MpYBLF9MnDoctJLqKC+GHMGrIE3NbROPb+nuhq+BQHAvSFSPXjKTj5
	7/cEIrgT1sQuTC1Zl4bghpMuPQsGYplnsTrRuMwsIT0dzgcVEvOrpxHqv/LZekqlFAmfPweAgLutM
	MCpTYzGpdk4cqT6yrlnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwIj-00000008RkK-01mV;
	Mon, 19 May 2025 08:56:49 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwId-00000008Rbr-3gHe
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 08:56:47 +0000
X-QQ-mid: esmtpsz19t1747644988t9b802add
X-QQ-Originating-IP: mEZBgbcquZ2Du2McekxoKZ2hM/Tuu43HWG7JYXN3+cc=
Received: from localhost.localdomain ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 16:56:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3363981724281907959
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v3 3/3] arm64: dts: rockchip: add DTs for Sakura Pi RK3308B
Date: Mon, 19 May 2025 16:56:14 +0800
Message-Id: <20250519085614.2245892-4-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519085614.2245892-1-i@chainsx.cn>
References: <20250519085614.2245892-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NwsFSQp7kFPKzwfTgwT9VGFmpP5r/PfYzjyZyMkgLAVpvemVSnNf+IiP
	tZpEQ8NqbBwBFZpVA9pxEIclfrPpuZo0s+/gj9o8JXDe7Cni4KU9s8SnJZutsqAlFCFTFae
	l0JSDiWYnZC1HdTXhEcXRW7hMD+KYKNFZKHBRs9LenM3YSCjE5tK/qHsZphk3/sLZbCVh1w
	zlurpYovTPCKjfjFGHs/ni/7Gl4NGg9Bnv87UsWViejYCXQtFlaIk9hzR3BV6fwM0jrFrSa
	SsPnjar7LsdUZazULhAh8o5V27vhW5gpU41Zei73mN6z4E155s9ZF68Czb8ThUhptWoVtPh
	o1Kpbed5PhxvDYUBxirehouAKqLn8/4HdAkZ7MElu3+mjD76r2aAA3bHMONlS8z8iYQ6b0V
	ICbKNHcdYQZQuGWCaBpSbLhbNMQi3JpNn34hEAUWsIZgX+wjd4wOeHyG8CwPmIHPybViUAa
	eCj6JZYA0U4Ov2TbbuDm+kMTEJ6IuRaRdnUUNtr36iYbH/MEAyGPlcZ2XhBsgYFPVFX6y8B
	DOgJGPCRAD4YczZ4f+zqSqv1LAP8Jcl1VSIAcfYhpukgB3A1TzWFzuMs53S6srkQBg/wybr
	XFIqC6KQ2NKXWaO0xnErg1NSBKWCVeZ9krAO4cIB2Ovv+doE1Hq3ctv8AZATDsEY0MJe7sY
	x308tzerOkgm5VupAwu8pB4VYXe/77cJ5R1uG5j2JRDVDzPxuCLQc0jmLmK4/pqSobN+j5Q
	WG3DdwHOcWHcu9H2olAb7wCSBR13tzXKnGghTR1vCPUpJWYrl/A1m1E8ic5WydN1WsHQ6uL
	HNQx1h4MNKZkXW9zgBnzpxwAFNHFm4ZaA0QixKJV96zkM/xW0ltiSD6oxypuIOd2vZlbwnT
	3+D6db6rJkatWULFbHOCclnlEfSF/dsdu3pxqneQzkwj4E4LW/DxwytO0zFJIxm6cnr7mXU
	manN+e1HZxr1z/YwwweFYbtpP7XhfVyf2B0ppe5Vl39fBot51yjFRZan9q+NWZUsjiy7HuQ
	1A+J2G2dVWCEJ2noas
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_015644_446101_43D3501A 
X-CRM114-Status: GOOD (  15.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Sakura Pi RK3308B is a SBC based on the Rockchip RK3308 SoC.

Link: https://github.com/Sakura-Pi
Link: https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce

The device contains the following hardware that is tested/working:
 - 4 or 8GB eMMC
 - SDMMC card slot
 - Realtek SDIO WiFi 5/BT
 - 256 or 512MB of RAM
 - USB 2.0 port
 - OTG port

Signed-off-by: Hsun Lai <i@chainsx.cn>

---

Changes in v3:
- Remove empty i2c controller (Heiko Stuebner, v1)
- Remove unused spi nodes (Heiko Stuebner, v1)
- Sort nodes alphabetically (Heiko Stuebner, v1)
- Put status as last property (Heiko Stuebner, v1)

Changes in v2:
- Update the names of the regulators (Heiko Stuebner, v1)

Changes in v1:
- Add support for Sakura Pi RK3308B
- Patch 2: Acked-by: Conor Dooley <conor.dooley@microchip.com>

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3308-sakurapi-rk3308b.dts  | 274 ++++++++++++++++++
 2 files changed, 275 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index e63c3f5eb..c9017bdc3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -12,6 +12,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-s0.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-sakurapi-rk3308b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351m.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351v.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
new file mode 100644
index 000000000..b9032d4e7
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
@@ -0,0 +1,274 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <akash@openedev.com>
+ * Copyright (c) 2019 Jagan Teki <jagan@openedev.com>
+ * Copyright (C) 2024 TheSnowfield <thesnowfield@sakurapi.org>
+ * Copyright (C) 2025 Hsun Lai <i@chainsx.cn>
+ */
+
+/dts-v1/;
+#include "rk3308.dtsi"
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Sakura Pi RK3308B";
+	compatible = "sakurapi,rk3308-sakurapi-rk3308b", "rockchip,rk3308";
+
+	aliases {
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-0 = <&wifi_enable_h>;
+		pinctrl-names = "default";
+		/*
+		 * On the module itself this is one of these (depending
+		 * on the actual card populated):
+		 * - SDIO_RESET_L_WL_REG_ON
+		 * - PDN (power down when low)
+		 */
+		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vdd_core: regulator-vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_core";
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_log: regulator-vdd-log {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_ddr: regulator-vcc-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_1v8: regulator-vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_io: regulator-vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_phy: regulator-vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc5v0_otg: regulator-vcc5v0-otg {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_otg";
+		regulator-always-on;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&otg_vbus_drv>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_core>;
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	non-removable;
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&sdmmc {
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
+	card-detect-delay = <800>;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	no-mmc;
+	no-sd;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm43455-fmac", "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake>;
+	};
+};
+
+&dmac0 {
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_32k>;
+
+	usb {
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_host_wake: wifi-host-wake {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	bluetooth {
+		bt_reg_on: bt-reg-on {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		host_wake_bt: host-wake-bt {
+			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&pwm3 {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&cru SCLK_RTC32K>;
+		clock-names = "lpo";
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_wake_bt &bt_wake_host &bt_reg_on>;
+		device-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
+	};
+};
+
+&usb20_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_otg {
+	status = "okay";
+};
+
+&u2phy_host {
+	status = "okay";
+};
+
+&usb_host_ehci {
+	status = "okay";
+};
+
+&usb_host_ohci{
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
