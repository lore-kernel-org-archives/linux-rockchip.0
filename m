Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 950A9CCFA13
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 14:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VA6scfJZdOzsTKmZ0dlFzpbko+JqrpzNg1IEwRoa9EY=; b=EGap48UoK3oUXP
	Q2BG9vWl9S4xfwqQeq8oAH3pdosh6202t12DCk7SZcam30I2uxJ+Fsm0nCkP9e+2eFUy+/WNEuB3Q
	vAImtOcv3+tKGL2hWJqXAQYuFn8J1gi4oNo+2+tHX/IbccnIJ4ZdiQwYBDM6d6MeRWdAxne+ZYLUS
	W+h69CRQNsdof8s3+xtXjw94HrluMoRggq7I5gSZCo8buMS8wMo8ZhdRxuKQ+BcsDgqzGgEa6TikZ
	vdRRcANus+A+5TREKalq9TrmTE6BY76nn5mnfi2UARciUivA9Q4NJxTO1MUdzgdZX6lj94+wN17Fq
	oZH2IXdCXpu1bmY+PWVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GT-00000004439-3vBO;
	Sun, 09 Nov 2025 14:19:33 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GL-000000043rJ-3avv
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 14:19:30 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5du015030;
	Sun, 9 Nov 2025 23:19:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 10/14] arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:55 +0000
Message-ID: <20251109141859.206835-11-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_061926_111285_C347A693 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

No functional change.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- Reflect other commits, no functional change
Changes in v6:
- New
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 64 +++++++++----------
 1 file changed, 31 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index e693eedcbc378..4e15c28f8a5fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * Copyright (c) 2024 Radxa Computer (Shenzhen) Co., Ltd.
+ * Copyright (c) 2024,2025 Radxa Computer (Shenzhen) Co., Ltd.
  */
 
 /dts-v1/;
@@ -25,7 +25,7 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	analog-sound {
+	sound {
 		compatible = "audio-graph-card";
 		label = "rk3588-es8316";
 		dais = <&i2s0_8ch_p0>;
@@ -49,14 +49,14 @@ hdmi0_con_in: endpoint {
 
 	leds {
 		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
 
 		led-0 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "on";
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&power_led>;
 		};
 
 		led-1 {
@@ -65,6 +65,8 @@ led-1 {
 			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&io_led>;
 		};
 	};
 
@@ -76,19 +78,19 @@ fan: fan {
 		pwms = <&pwm3 0 60000 0>;
 	};
 
-	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
+	vcc3v3_pcie2x1l2: regulator-3v3-0 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pow_en>;
-		regulator-name = "pcie2x1l2_3v3";
+		regulator-name = "vcc3v3_pcie2x1l2";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc5v_dcin: regulator-vcc5v-dcin {
+	vcc5v_dcin: regulator-5v0-0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v_dcin";
 		regulator-always-on;
@@ -97,7 +99,7 @@ vcc5v_dcin: regulator-vcc5v-dcin {
 		regulator-max-microvolt = <5000000>;
 	};
 
-	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
+	vcc5v0_usb_host: regulator-5v0-1 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -109,7 +111,7 @@ vcc5v0_usb_host: regulator-vcc5v0-usb-host {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc5v0_usb_otg0: regulator-vcc5v0-usb-otg0 {
+	vcc5v0_usb_otg0: regulator-5v0-2 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
@@ -121,7 +123,7 @@ vcc5v0_usb_otg0: regulator-vcc5v0-usb-otg0 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
+	vcc_1v1_nldo_s3: regulator-1v1 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v1_nldo_s3";
 		regulator-always-on;
@@ -131,17 +133,7 @@ vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_3v3_pmu: regulator-vcc-3v3-pmu {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_pmu";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
-	vcc_3v3_s0: regulator-vcc-3v3-s0 {
+	vcc_3v3_s0: regulator-3v3-1 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v3_s0";
 		regulator-always-on;
@@ -151,7 +143,7 @@ vcc_3v3_s0: regulator-vcc-3v3-s0 {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
-	vcc_5v0: regulator-vcc-5v0 {
+	vcc_5v0: regulator-5v0-3 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
@@ -163,7 +155,7 @@ vcc_5v0: regulator-vcc-5v0 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_sysin: regulator-vcc-sysin {
+	vcc_sysin: regulator-5v0-4 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sysin";
 		regulator-always-on;
@@ -173,7 +165,7 @@ vcc_sysin: regulator-vcc-sysin {
 		vin-supply = <&vcc5v_dcin>;
 	};
 
-	vcca: regulator-vcca {
+	vcca: regulator-4v0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcca";
 		regulator-always-on;
@@ -183,7 +175,7 @@ vcca: regulator-vcca {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vdd_3v3: regulator-vdd-3v3 {
+	vdd_3v3: regulator-3v3-2 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
@@ -203,6 +195,7 @@ &combphy0_ps {
 };
 
 &combphy2_psu {
+	phy-supply = <&vcc5v0_usb_host>;
 	status = "okay";
 };
 
@@ -435,7 +428,7 @@ &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&pcie2x1l2_3v3>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
 };
 
@@ -445,13 +438,16 @@ &pd_gpu {
 
 &pinctrl {
 	leds {
-		led_pins: led-pins {
-			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
-					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		io_led: io-led {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		power_led: power-led {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-	mdio {
+	ethernet {
 		gmac1_rstn: gmac1-rstn {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -479,7 +475,9 @@ usb_otg_pwren_h: usb-otg-pwren-h {
 		usb_wifi_pwr: usb-wifi-pwr {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+	};
 
+	regulators {
 		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -506,7 +504,7 @@ &sdhci {
 	no-sd;
 	non-removable;
 	vmmc-supply = <&vcc_3v3_s0>;
-	vqmmc-supply = <&vcc_1v8_s3>;
+	vqmmc-supply = <&vccio_flash>;
 	status = "okay";
 };
 
@@ -682,7 +680,7 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_3v3_s3: dcdc-reg8 {
+			vcc_3v3_pmu: vcc_3v3_s3: dcdc-reg8 {
 				regulator-name = "vcc_3v3_s3";
 				regulator-always-on;
 				regulator-boot-on;
@@ -705,7 +703,7 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_1v8_s3: dcdc-reg10 {
+			vccio_flash: vcc_1v8_s3: dcdc-reg10 {
 				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
