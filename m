Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 427F2D735EC
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUWRcV4T67n5GjN0hFwwMQCKnsXq0hD09JnYvQkqD4U=; b=wLq3f5NFN9QZyy
	cJshtuvuSpl+IDriybXRhcYf3hdlQNhJnfOmuloR35xblpyRWodpX7JVzAScBln9OvouXbLM2CWz0
	g0Tne3Mvb8V8w50LSzwant7hK9pEzuyEMtBzqybbvULL+gvX//5cRA1/IOfwj6+Izxwpkz/qEuAAj
	pqDvkaedFJvGSlIz1httYchMVEU7c18+ffomMfpa+Jqnol9Wdt8488TJIdrsfPLAbko2ubNHwnlJw
	FU37Y1pc2YkHPt1KYiU++UyvAQpQx9/1kc5VNOIJbKsMBP+3jygYIWajWKfVsG7UZyjAAOvvLZl7o
	49O/Xh1wpk1h734rLEqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBg2-00000001Bmk-46or;
	Sat, 30 Nov 2024 00:49:38 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBg0-00000001Bkf-0WhN
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:49:37 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0nQ2O024394;
	Sat, 30 Nov 2024 09:49:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 3/4] arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:49:19 +0000
Message-ID: <20241130004920.7505-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004920.7505-1-naoki@radxa.com>
References: <20241130004920.7505-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164936_375872_795BF1D2 
X-CRM114-Status: UNSURE (   8.51  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

sort alphanumerically.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 79 +++++++++----------
 1 file changed, 36 insertions(+), 43 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c816febb486a..fb39629c13c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -24,18 +24,15 @@ chosen {
 	analog-sound {
 		compatible = "audio-graph-card";
 		label = "rk3588-es8316";
-
-		widgets = "Microphone", "Mic Jack",
-			  "Headphone", "Headphones";
-
-		routing = "MIC2", "Mic Jack",
-			  "Headphones", "HPOL",
-			  "Headphones", "HPOR";
-
 		dais = <&i2s0_8ch_p0>;
 		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_detect>;
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
 	};
 
 	hdmi0-con {
@@ -140,13 +137,13 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 
 	vcc5v_usb: regulator-vcc5v-usb {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v_usb";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&usb_host_pwren_h>;
+		regulator-name = "vcc5v_usb";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -315,10 +312,10 @@ &i2c7 {
 	es8316: audio-codec@11 {
 		compatible = "everest,es8316";
 		reg = <0x11>;
-		clocks = <&cru I2S0_8CH_MCLKOUT>;
-		clock-names = "mclk";
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
 		#sound-dai-cells = <0>;
 
 		port {
@@ -407,18 +404,6 @@ &pcie3x4 {
 };
 
 &pinctrl {
-	rtc {
-		rtc_int_l: rtc-int-l {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	sound {
-		hp_detect: hp-detect {
-			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pcie2 {
 		pcie30x1_0_perstn_m1_l: pcie30x1-0-perstn-m1-l {
 			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -443,6 +428,18 @@ pcie30x4_pwren_h: pcie30x4-pwren-h {
 		};
 	};
 
+	rtc {
+		rtc_int_l: rtc-int-l {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sound {
+		hp_detect: hp-detect {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -465,44 +462,44 @@ &saradc {
 
 &sdhci {
 	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
 	no-sdio;
 	no-sd;
 	non-removable;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
 	status = "okay";
 };
 
 &sdio {
 	max-frequency = <200000000>;
-	no-sd;
-	no-mmc;
-	non-removable;
 	bus-width = <4>;
 	cap-sdio-irq;
 	disable-wp;
 	keep-power-in-suspend;
-	wakeup-source;
+	no-sd;
+	no-mmc;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdiom0_pins>;
 	sd-uhs-sdr12;
 	sd-uhs-sdr25;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_wf>;
 	vqmmc-supply = <&vcc_1v8_s3>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdiom0_pins>;
+	wakeup-source;
 	status = "okay";
 };
 
 &sdmmc {
 	max-frequency = <200000000>;
-	no-sdio;
-	no-mmc;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
+	no-sdio;
+	no-mmc;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
@@ -527,22 +524,21 @@ &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
 	assigned-clock-rates = <200000000>;
+	num-cs = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
-	num-cs = <1>;
 
 	pmic@0 {
 		compatible = "rockchip,rk806";
-		spi-max-frequency = <1000000>;
 		reg = <0x0>;
-
+		gpio-controller;
+		#gpio-cells = <2>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
-
+		spi-max-frequency = <1000000>;
 		system-power-controller;
 
 		vcc1-supply = <&vcc4v0_sys>;
@@ -561,9 +557,6 @@ pmic@0 {
 		vcc14-supply = <&vcc_1v1_nldo_s3>;
 		vcca-supply = <&vcc4v0_sys>;
 
-		gpio-controller;
-		#gpio-cells = <2>;
-
 		rk806_dvs1_null: dvs1-null-pins {
 			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
