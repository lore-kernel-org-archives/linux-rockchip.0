Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7551CD13DA
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 14:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Phky2Y6btYJBGGMo3O2/eIEMrNcMpWAbjhCQvFGxZHc=; b=sr5jBgUCTxH0nT
	qt0K7D+vHb8ec03ji6LTYG+UBbJWz9hbWpN8CpOy8RRL1sL4dXbp0YlDO+HFixnJv11SbitVrQWjA
	DZZKcQDe+efWZLl+rTnRBkvKE5Ro2vLLFeqFxulzjV/pabwm56KkNhtnNjkF/c6tSbgRuWNvPBSc3
	0vMzFIplWHfUIGRXXbJGMfYXmJ4pb73afgj9uu2yFlDoJa3iAG8xiSxieOoeY06lREeDOro2qV099
	Tzb9SlKKtU2dmQuAT1oheqprhndAcV5JMQEeK/JQ5cUiOcW+EuiTIZnawEUccAUDqgH/5+FlT2+g0
	H4RvhfMGA5S6BMP1ib7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GR-000000043xG-0cOH;
	Sun, 09 Nov 2025 14:19:31 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GK-000000043rB-3gKM
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 14:19:28 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dv015030;
	Sun, 9 Nov 2025 23:19:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 11/14] arm64: dts: rockchip: Sort nodes/properties for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:56 +0000
Message-ID: <20251109141859.206835-12-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_061925_223427_9B35E7C0 
X-CRM114-Status: UNSURE (   8.59  )
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

Sort nodes/properties alphanumerically. No functional change.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- Reflect other commits, no functional change
Changes in v6:
- Reflect other commits, no functional change
Changes in v5:
- Reword commit message
Changes in v4:
- Reflect other commits, no functional change
Changes in v3:
- None
Changes in v2:
- New
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 162 +++++++++---------
 1 file changed, 81 insertions(+), 81 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 4e15c28f8a5fa..6ef9a5d8cd9c1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -25,15 +25,12 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	sound {
-		compatible = "audio-graph-card";
-		label = "rk3588-es8316";
-		dais = <&i2s0_8ch_p0>;
-		routing = "MIC2", "Mic Jack",
-			  "Headphones", "HPOL",
-			  "Headphones", "HPOR";
-		widgets = "Microphone", "Mic Jack",
-			  "Headphone", "Headphones";
+	fan: fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc_5v0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	hdmi0-con {
@@ -70,12 +67,14 @@ led-1 {
 		};
 	};
 
-	fan: fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		cooling-levels = <0 24 44 64 128 192 255>;
-		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 60000 0>;
+	vcc_1v1_nldo_s3: regulator-1v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v1_nldo_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc_sysin>;
 	};
 
 	vcc3v3_pcie2x1l2: regulator-3v3-0 {
@@ -90,6 +89,40 @@ vcc3v3_pcie2x1l2: regulator-3v3-0 {
 		vin-supply = <&vcc_sysin>;
 	};
 
+	vcc_3v3_s0: regulator-3v3-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vdd_3v3: regulator-3v3-2 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_wifi_pwr>;
+		regulator-name = "vdd_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vcca: regulator-4v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		vin-supply = <&vcc_sysin>;
+	};
+
 	vcc5v_dcin: regulator-5v0-0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v_dcin";
@@ -123,26 +156,6 @@ vcc5v0_usb_otg0: regulator-5v0-2 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_1v1_nldo_s3: regulator-1v1 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_1v1_nldo_s3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1100000>;
-		regulator-max-microvolt = <1100000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vcc_3v3_s0: regulator-3v3-1 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
 	vcc_5v0: regulator-5v0-3 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -165,28 +178,15 @@ vcc_sysin: regulator-5v0-4 {
 		vin-supply = <&vcc5v_dcin>;
 	};
 
-	vcca: regulator-4v0 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcca";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <4000000>;
-		regulator-max-microvolt = <4000000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vdd_3v3: regulator-3v3-2 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb_wifi_pwr>;
-		regulator-name = "vdd_3v3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
+	sound {
+		compatible = "audio-graph-card";
+		label = "rk3588-es8316";
+		dais = <&i2s0_8ch_p0>;
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
 	};
 };
 
@@ -399,27 +399,27 @@ &package_thermal {
 
 	trips {
 		package_fan0: package-fan0 {
-			temperature = <55000>;
 			hysteresis = <2000>;
+			temperature = <55000>;
 			type = "active";
 		};
 
 		package_fan1: package-fan1 {
-			temperature = <65000>;
 			hysteresis = <2000>;
+			temperature = <65000>;
 			type = "active";
 		};
 	};
 
 	cooling-maps {
 		map0 {
-			trip = <&package_fan0>;
 			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+			trip = <&package_fan0>;
 		};
 
 		map1 {
-			trip = <&package_fan1>;
 			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+			trip = <&package_fan1>;
 		};
 	};
 };
@@ -437,6 +437,12 @@ &pd_gpu {
 };
 
 &pinctrl {
+	ethernet {
+		gmac1_rstn: gmac1-rstn {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		io_led: io-led {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -447,12 +453,6 @@ power_led: power-led {
 		};
 	};
 
-	ethernet {
-		gmac1_rstn: gmac1-rstn {
-			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pcie {
 		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
 			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -463,6 +463,12 @@ pow_en: pow-en {
 		};
 	};
 
+	regulators {
+		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -476,12 +482,6 @@ usb_wifi_pwr: usb-wifi-pwr {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-
-	regulators {
-		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
-			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
 };
 
 &pwm3 {
@@ -500,8 +500,8 @@ &sdhci {
 	cap-mmc-highspeed;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-	no-sdio;
 	no-sd;
+	no-sdio;
 	non-removable;
 	vmmc-supply = <&vcc_3v3_s0>;
 	vqmmc-supply = <&vccio_flash>;
@@ -514,8 +514,8 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	no-sdio;
 	no-mmc;
+	no-sdio;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
 	sd-uhs-sdr104;
@@ -538,12 +538,12 @@ flash@0 {
 };
 
 &spi2 {
-	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
 	assigned-clock-rates = <200000000>;
 	num-cs = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
+	status = "okay";
 
 	pmic@0 {
 		compatible = "rockchip,rk806";
@@ -898,10 +898,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usbdp_phy0 {
-	status = "okay";
-};
-
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -923,7 +919,7 @@ &usb_host2_xhci {
 	status = "okay";
 };
 
-&vop_mmu {
+&usbdp_phy0 {
 	status = "okay";
 };
 
@@ -931,6 +927,10 @@ &vop {
 	status = "okay";
 };
 
+&vop_mmu {
+	status = "okay";
+};
+
 &vp0 {
 	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
