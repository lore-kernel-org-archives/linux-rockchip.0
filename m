Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC0B3ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 19:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waHaYnOO+2/069cLq+wqmmxRaxnqoqL5sPwlbBh6AqQ=; b=uHxPKwmzbBOQTi
	bdCfz8WgqYfkyWx0UH5gN90h24wHR1sNk1nNAzOkv98CNoFvLddCvccC1MtYlU0jhul/fg0DqktAF
	b9WLRSFga9+0ZF2O907OwW5/ebGmdH/eH4nQeLzrg7jlXcfcTScXGHE7MnSgO1MKyO45IhmJHZ4uv
	Vto9kem+Hsyoum4HBWSgIKkT+rQmke0EmhSMazb3rBZRTmqtbZj+ZbL2Wy5OXcfpCqz2V3zjh+4ae
	PG0yo+Sob64QTr6RolBo4b7kKmpuBaTrqYYxJkLmdW36GtBtPzFG7OkcKxuUowoaYfBkWyw+N12Xr
	Z0L16u2GYd5xCz4r/ZYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk35-002CcR-Je; Fri, 09 Sep 2022 19:52:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2l-002CNg-ES; Fri, 09 Sep 2022 19:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kwWDRTfihSCZ0EB0gNSau9tNGnsKm3aM+kACEZ7r1h0=; b=Wb7CaEQ9xymtmgC7pJdreURaji
	O+/8IXxlGVwix6VTXIZx6jodUrGlb/qL2xZjIrhnfTx22jo6fOIAotfoOdS7dp/w5pljL3EXBLI5I
	wjFUM0FkfR8qNdudEDSiArjNQ6IJMqtQkBOs08e5aOy1UxFQ6Ear8Vou4t8yl+z/pOyFJaGAHk7Zz
	WyPLUbAxURuQK1r/V/tdXKzDuPe47k0JLNhTekzCMrYhlqphBGTUpcGCvn56MCd5eANfMJQtxSSzi
	d1P355Mhtnu9RjBvqSEUfQDxuXc9zD86k4vs+vnmxeLoakHtkCQxU8uySn4IpKLjfwJnToH/IH2Sz
	7g207oJA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2f-00DWYw-Gp; Fri, 09 Sep 2022 19:52:03 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 289Joxem025079;
	Sat, 10 Sep 2022 04:51:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 5/6] arm64: dts: rockchip: rk3399-rock-4: sort nodes/properties
Date: Fri,  9 Sep 2022 19:50:05 +0000
Message-Id: <20220909195006.127957-5-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220909195006.127957-1-naoki@radxa.com>
References: <20220909195006.127957-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_205158_060444_A48F882C 
X-CRM114-Status: UNSURE (   7.46  )
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

sort nodes/properties alphabetically

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 124 +++++++++---------
 1 file changed, 61 insertions(+), 63 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index bb1dcf319b02..485277f7ed17 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -74,32 +74,33 @@ dit_p0_0: endpoint {
 		};
 	};
 
-	vcc12v_dcin: dc-12v {
+	vbus_typec: vbus-typec-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc12v_dcin";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_typec_en>;
+		regulator-name = "vbus_typec";
 		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_sys: vcc-sys {
+	vcc12v_dcin: dc-12v {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
+		regulator-name = "vcc12v_dcin";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc12v_dcin>;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
 	};
 
-	vcc_0v9: vcc-0v9 {
+	vcc3v3_lan: vcc3v3-lan-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc_0v9";
+		regulator-name = "vcc3v3_lan";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <900000>;
-		regulator-max-microvolt = <900000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc3v3_sys>;
 	};
 
@@ -136,24 +137,23 @@ vcc5v0_host: vcc5v0-host-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vbus_typec: vbus-typec-regulator {
+	vcc5v0_sys: vcc-sys {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_typec_en>;
-		regulator-name = "vbus_typec";
+		regulator-name = "vcc5v0_sys";
 		regulator-always-on;
-		vin-supply = <&vcc5v0_sys>;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
 	};
 
-	vcc3v3_lan: vcc3v3-lan-regulator {
+	vcc_0v9: vcc-0v9 {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lan";
+		regulator-name = "vcc_0v9";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
 		vin-supply = <&vcc3v3_sys>;
 	};
 
@@ -515,21 +515,10 @@ &i2s2 {
 };
 
 &io_domains {
-	status = "okay";
-
-	bt656-supply = <&vcc_3v0>;
 	audio-supply = <&vcca1v8_codec>;
-	sdmmc-supply = <&vcc_sdio>;
+	bt656-supply = <&vcc_3v0>;
 	gpio1830-supply = <&vcc_3v0>;
-};
-
-&pmu_io_domains {
-	status = "okay";
-
-	pmu1830-supply = <&vcc_3v0>;
-};
-
-&pcie_phy {
+	sdmmc-supply = <&vcc_sdio>;
 	status = "okay";
 };
 
@@ -544,6 +533,10 @@ &pcie0 {
 	status = "okay";
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -581,6 +574,20 @@ pcie_pwr_en: pcie-pwr-en {
 		};
 	};
 
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		vsel1_pin: vsel1-pin {
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		vsel2_pin: vsel2-pin {
+			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
 	sdio0 {
 		sdio0_bus4: sdio0-bus4 {
 			rockchip,pins = <2 RK_PC4 1 &pcfg_pull_up_20ma>,
@@ -598,20 +605,6 @@ sdio0_clk: sdio0-clk {
 		};
 	};
 
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		vsel1_pin: vsel1-pin {
-			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-
-		vsel2_pin: vsel2-pin {
-			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-	};
-
 	usb-typec {
 		vcc5v0_typec_en: vcc5v0-typec-en {
 			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -635,6 +628,11 @@ wifi_host_wake_l: wifi-host-wake-l {
 	};
 };
 
+&pmu_io_domains {
+	pmu1830-supply = <&vcc_3v0>;
+	status = "okay";
+};
+
 &pwm2 {
 	status = "okay";
 };
@@ -645,6 +643,14 @@ &saradc {
 	vref-supply = <&vcc_1v8>;
 };
 
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	non-removable;
+	status = "okay";
+};
+
 &sdio0 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -672,14 +678,6 @@ &sdmmc {
 	status = "okay";
 };
 
-&sdhci {
-	bus-width = <8>;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
-	non-removable;
-	status = "okay";
-};
-
 &spdif {
 
 	spdif_p0: port {
@@ -761,13 +759,13 @@ &usbdrd3_0 {
 	status = "okay";
 };
 
-&usbdrd_dwc3_0 {
+&usbdrd3_1 {
 	status = "okay";
-	dr_mode = "host";
 };
 
-&usbdrd3_1 {
+&usbdrd_dwc3_0 {
 	status = "okay";
+	dr_mode = "host";
 };
 
 &usbdrd_dwc3_1 {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
