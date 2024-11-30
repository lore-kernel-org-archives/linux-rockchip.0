Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4159ED735E4
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CH/S+1VQAJq3Ag+/D8S5sB2ZG8waUEWzFN9hNCmEHo0=; b=1VOczZFrio8fNI
	8oHdyrWJSmx1r+BjTUC4mvZrcyelCPn0kc9WZypm8vjuB5MpeGYT8M1eB2YMrl4yBpO6KY7O6W1n7
	VsqlyUZG81MZz760TbCJvN5BQVC7JgjpTMiSub3EVw4VZnW25wYFLj4gvM14lhNMvMWgxUCjXptTe
	x10iPzdCKURKFomVCrPWeFMWNIODqVYUvSv1W//vizc4B3djtRh7Dbcds1OnpyYWDDF0E3XkaTyht
	cTpfTgOGW6D2y7MeN6ozUxIk6mbvoVAx10aL0R4shPMXZaecfx4k1sZyMRxvimtUGmfzkKUlX8ojR
	V1MEJJmBYARLtMU48J2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBYB-00000001B97-1dwd;
	Sat, 30 Nov 2024 00:41:31 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBY5-00000001B5v-03rC
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:41:29 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BF024368;
	Sat, 30 Nov 2024 09:41:04 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 1/6] arm64: dts: rockchip: fix regulators for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:52 +0000
Message-ID: <20241130004057.7432-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004057.7432-1-naoki@radxa.com>
References: <20241130004057.7432-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164125_260743_210AC016 
X-CRM114-Status: UNSURE (   8.81  )
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

fix regulator and pin names to match with schematic. regulator for USB
ports are unnamed, so I referred schematic for Radxa ROCK 5B+.

add missing "typec_vin" and "vcc4v0_sys" regulator, and add missing
"phy-supply" for "pcie30phy" and "u2phy1_otg". remove now unused and
non-existent "vcc3v3_pcie2x1l2" regulator.

remove "regulator-always-on" and "regulator-boot-on" from regulators
which is turned on by consumer.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 106 ++++++++++--------
 1 file changed, 57 insertions(+), 49 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d597112f1d5b..727a5880d87a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -84,54 +84,59 @@ rfkill-bt {
 		shutdown-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 	};
 
-	vcc3v3_pcie2x1l0: regulator-vcc3v3-pcie2x1l0 {
+	typec_vin: regulator-typec-vin {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pcie2_0_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-name = "typec_vin";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <50000>;
-		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_pcie2x1l2: regulator-vcc3v3-pcie2x1l2 {
+	vcc3v3_wf: regulator-vcc3v3-wf {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_pcie2x1l2";
+		enable-active-high;
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ekey_en>;
+		regulator-name = "vcc3v3_wf";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <5000>;
-		vin-supply = <&vcc_3v3_s3>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_pcie30: regulator-vcc3v3-pcie30 {
+	/* pi6c pcie clock generator */
+	vcc3v3_pi6c_05: vcc3v3_pcie30: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie3_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie30";
+		pinctrl-0 = <&pcie30x4_pwren_h>;
+		regulator-name = "vcc3v3_pi6c_05";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_host: regulator-vcc5v0-host {
+	vcc4v0_sys: regulator-vcc4v0-sys {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_host";
-		regulator-boot-on;
+		regulator-name = "vcc4v0_sys";
 		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v_usb: regulator-vcc5v-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v_usb";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
+		pinctrl-0 = <&usb_host_pwren_h>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -142,6 +147,7 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
+		vin-supply = <&typec_vin>;
 	};
 
 	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
@@ -151,7 +157,7 @@ vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
 		regulator-boot-on;
 		regulator-min-microvolt = <1100000>;
 		regulator-max-microvolt = <1100000>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc4v0_sys>;
 	};
 };
 
@@ -239,7 +245,7 @@ vdd_cpu_big0_s0: regulator@42 {
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <1050000>;
 		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc4v0_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -256,7 +262,7 @@ vdd_cpu_big1_s0: regulator@43 {
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <1050000>;
 		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc4v0_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -350,27 +356,28 @@ map1 {
 
 &pcie2x1l0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_0_rst>;
+	pinctrl-0 = <&pcie30x1_0_perstn_m1_l>;
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
 	status = "okay";
 };
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_2_rst>;
+	pinctrl-0 = <&pcie_perst_l>;
 	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 
 &pcie30phy {
+	phy-supply = <&vcc3v3_pi6c_05>;
 	status = "okay";
 };
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie30x4_perstn_m1_l>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -396,31 +403,31 @@ hp_detect: hp-detect {
 	};
 
 	pcie2 {
-		pcie2_0_rst: pcie2-0-rst {
+		pcie30x1_0_perstn_m1_l: pcie30x1-0-perstn-m1-l {
 			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie2_0_vcc3v3_en: pcie2-0-vcc-en {
+		ekey_en: ekey-en {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie2_2_rst: pcie2-2-rst {
+		pcie_perst_l: pcie-perst-l {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	pcie3 {
-		pcie3_rst: pcie3-rst {
+		pcie30x4_perstn_m1_l: pcie30x4-perstn-m1-l {
 			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
+		pcie30x4_pwren_h: pcie30x4-pwren-h {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
+		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -474,7 +481,7 @@ &sdio {
 	sd-uhs-sdr25;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
-	vmmc-supply = <&vcc3v3_pcie2x1l0>;
+	vmmc-supply = <&vcc3v3_wf>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdiom0_pins>;
@@ -523,21 +530,21 @@ pmic@0 {
 
 		system-power-controller;
 
-		vcc1-supply = <&vcc5v0_sys>;
-		vcc2-supply = <&vcc5v0_sys>;
-		vcc3-supply = <&vcc5v0_sys>;
-		vcc4-supply = <&vcc5v0_sys>;
-		vcc5-supply = <&vcc5v0_sys>;
-		vcc6-supply = <&vcc5v0_sys>;
-		vcc7-supply = <&vcc5v0_sys>;
-		vcc8-supply = <&vcc5v0_sys>;
-		vcc9-supply = <&vcc5v0_sys>;
-		vcc10-supply = <&vcc5v0_sys>;
+		vcc1-supply = <&vcc4v0_sys>;
+		vcc2-supply = <&vcc4v0_sys>;
+		vcc3-supply = <&vcc4v0_sys>;
+		vcc4-supply = <&vcc4v0_sys>;
+		vcc5-supply = <&vcc4v0_sys>;
+		vcc6-supply = <&vcc4v0_sys>;
+		vcc7-supply = <&vcc4v0_sys>;
+		vcc8-supply = <&vcc4v0_sys>;
+		vcc9-supply = <&vcc4v0_sys>;
+		vcc10-supply = <&vcc4v0_sys>;
 		vcc11-supply = <&vcc_2v0_pldo_s3>;
-		vcc12-supply = <&vcc5v0_sys>;
+		vcc12-supply = <&vcc4v0_sys>;
 		vcc13-supply = <&vcc_1v1_nldo_s3>;
 		vcc14-supply = <&vcc_1v1_nldo_s3>;
-		vcca-supply = <&vcc5v0_sys>;
+		vcca-supply = <&vcc4v0_sys>;
 
 		gpio-controller;
 		#gpio-cells = <2>;
@@ -840,6 +847,7 @@ &u2phy1 {
 };
 
 &u2phy1_otg {
+	phy-supply = <&vcc5v_usb>;
 	status = "okay";
 };
 
@@ -858,7 +866,7 @@ &u2phy3 {
 };
 
 &u2phy3_host {
-	phy-supply = <&vcc5v0_host>;
+	phy-supply = <&vcc5v_usb>;
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
