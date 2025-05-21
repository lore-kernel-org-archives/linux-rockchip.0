Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D15DCC54EDA
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZInSouJ0m0VJLEvU1yPaaoPDoHCbAdeP3tSLRQymzSY=; b=lxp82u7vAZMXYG
	eKYuVqyYUnzfqpzrW0DwsCI92jSRfRKgZqLGjRMUP/7sD1W7aSwaQ3LuL24I1GrqEtGGMoALu5HbL
	RZkkwY3FAm3PfG8148ziT0Lb9JDXHx9Jo6JRYhxoxG3+4dS+g+MOrxHut1ZdbiqzkY6dkOkHaYDmP
	1BBUxQBUz4eWN/gmzOo1vbKtfYMuCo7Jej19tu+/4IKAm31yyftUQAAAiYHMoXnT1venS/g8z3sfl
	vF7BHOiSlLU6XZNDal8UUsHqYoCPoazyoB0tfuqQFWU7jmGJtIBVpEwIsKtvWSZ9Ys2xiepgGvvWv
	/Xad66puSEfAbne54msw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjmz-0000000FzI3-07NW;
	Wed, 21 May 2025 13:47:21 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjES-0000000FtMM-1mvF
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 13:11:44 +0000
X-QQ-mid: esmtpgz16t1747833082t5c3b6228
X-QQ-Originating-IP: w7QdUaAMMuFhuDSNFrKfTRg/9UU0mjsmdq/QciBDReE=
Received: from chainsx-ubuntu-server.lan ( [116.249.112.84])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 May 2025 21:11:20 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2270933146112048966
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v4 3/3] arm64: dts: rockchip: add DTs for Sakura Pi RK3308B
Date: Wed, 21 May 2025 21:11:08 +0800
Message-Id: <20250521131108.5710-4-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250521131108.5710-1-i@chainsx.cn>
References: <20250521131108.5710-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MWLCkAjnYYm5g6nBR56V8ua3o98i1nqhoX+0LmXvItY8F0EE7WH9YSW2
	xWUgPMuIcBdHtUTSbqP1p8OE7SPTKrPp6tfNa95X9JeXpck2rcf1Z8byNIBNzKIdw5pW3gg
	jFzTpAUmBWDrB/gDq8RoUy/4pI8V0MdeX5t6ZyIpfxIl4c5SUaNCp8vTzM4trm5EGkp+kVp
	3MqB9z/BeFvf6AEcLwbdFJXGltmG7kRbw5UZZyhI96ZyJZzw4fyFWt/mMKBu9lVPBRML7aG
	2cbzfK4twpkFDoaAwRNLHTXclzEDFhHoUuztWnr5+wMfuUKmpDh4XiDFcIO8zocyVwOBZrQ
	V5ZnCvCciIQ3tcPgs7CHpkjaBAnF2IZ0hFw/WlHfQVCaG5hC4L+NcDpe0MannqzsjmBmoDj
	n5rTdZISenqGGjaPiS2ReNOpF8JBFkIG0qKXe0E5Rz3ak73eM79U3QwDbRh1bDv6yM9eRhZ
	d4bn40S9GiltJVWWZ3sY2tKprLFnPjlOUhV9bagSGHnuOAGPRf+L+lTMDeEVi1FzLBAh2C8
	qRbQwlNv21Ht5C1EVp0wNGx56U+PGoxm4YSsuhHvsXogF1PQ/TwV+FZremuDzIt2BbomDr6
	WXeFIQdhG9nD8X7lg5CM5K26Eh6hJOLrHAMC9XTNHD2kOEh/sW41Wy4WhxkfyQm+dwrLRZQ
	mkaC9Gf03ZOGOlyJ2IdeSwX2Y5B60KKttPfOpJL3fyt8lfiBw6CeKRvysCVGbRtgyfGi278
	48Mk97RKUy65Ivk2+o1Laft9aS1CT+jZ6jBacH41zhSdMUtsgLLnwykkE0iMrXDWLcVF95Q
	IULwf7XxKC4Q6jE7tEQ2dhuXh5dLoGORl6OS+EHQsF+WnzuH7jkouKGrbqmorCWkZs3dZY2
	J0K4E0+7Yt0JiqHsivW1a6dUXy9tpj2+Q1RRCLT2MHX50joQyvsXkWqKjgWc5cBQUkBe4gy
	YBFay2E2cNx3QwolcQQhZoN7gXLN8gmQzj8pgxBLPosX20pTAWgy1cxDJR6X80kIUr+Jjts
	12tfVGzIcBSL9G73Q0
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_061141_019571_7DC7E294 
X-CRM114-Status: GOOD (  14.99  )
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

(no changes since v3)

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
