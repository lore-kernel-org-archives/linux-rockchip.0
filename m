Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D54D7ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 19:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpHvy+CIpQXP+TRmop7Oqk0uEZd270KjOjnaryqZT14=; b=QIoYEAsISoxX2Z
	DF9KbkszzO3CGQK3SBTq4YsSO6Cs7ZdyOzKo6N0lP/AOsiNr9b/clelYmsSwRsJpRvnkSEybSNT3s
	pIWpRnU8O0mzowC/NOR6NmONAdqLWtYMuaa5XAeXvgsPHN1RQDDCwY2pirF9ehVnPgJG2r5qy3yOu
	cfIlrA6z0ph3Alnths/58SqTSen4zaC+ZsOkXTvANjosAqigPLu0TmX/oQyaoO9hDCIFAkQE1BdtF
	fAxAlxTVBQ9bDYUQdNGC30NdX0Rv/K5sZGhipCz8eqVmZyfKz5ehGDvfOIrWaHOvJczLwvCXIJC4p
	siXKmNEeb6Je87sCGTWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2m-002CPp-6s; Fri, 09 Sep 2022 19:52:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2k-002CMA-Bu; Fri, 09 Sep 2022 19:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LatpASvDqEcpIsWcU7+NrsGu31twO0yFAzCKrTG1BKM=; b=LiIoOwyTsX+R6VYFCLn4soyr0k
	aMtHgjAUUT7L1n/MckohU7uoCzJwetiQfOQowjq1zmtqydXozhwpna5p2MnW+OEUISynH+cTC7ZHK
	MGfeFBc6BLx2mFK+tV1Gamw9WA4hpgJMi2qHZ5UxliwMMO+4yTlBxj41qE/Yd9aC+nU0yMuvc0STT
	Q3I/yhQ+kBpSgbRM1cU7XSSfj4q3hEqVuuE8y5/srVSRFYVMVudmUsjn8QzjZGDdMWvt0GIqe1lMq
	DCU0ST3gAQJfKzoSU5vX7WvQVBte+jvlvbU/EI6rbYmRM6TyHHCM9iZRDq34DhIDkyrAPTjQHKXoS
	Zl/v09uw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2d-00DWYH-TC; Fri, 09 Sep 2022 19:52:02 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 289Joxej025079;
	Sat, 10 Sep 2022 04:51:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/6] arm64: dts: rockchip: rk3399-rock-4c-plus: fix regulator name
Date: Fri,  9 Sep 2022 19:50:02 +0000
Message-Id: <20220909195006.127957-2-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220909195006.127957-1-naoki@radxa.com>
References: <20220909195006.127957-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_205156_470653_F04EC374 
X-CRM114-Status: UNSURE (   7.72  )
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

fix regulator name.
also, add vcc_3v3 and vdd_log.

ref:
 https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4c_plus_v12_sch_220304.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 83 ++++++++++++-------
 1 file changed, 52 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index d7051b5d4904..c88a7512e296 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -61,6 +61,16 @@ led-1 {
 		};
 	};
 
+	vcc_3v3: vcc-3v3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -94,13 +104,24 @@ vcc5v0_typec: vcc5v0-typec-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc_lan: vcc3v3-phy-regulator {
+	vcc3v3_phy1: vcc3v3-phy1-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc_lan";
+		regulator-name = "vcc3v3_phy1";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vdd_log: vdd-log-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <950000>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 };
 
@@ -136,7 +157,7 @@ &gmac {
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
 	assigned-clock-parents = <&clkin_gmac>;
 	clock_in_out = "input";
-	phy-supply = <&vcc_lan>;
+	phy-supply = <&vcc3v3_phy1>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii_pins>;
@@ -186,20 +207,20 @@ rk809: pmic@20 {
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
 		vcc4-supply = <&vcc5v0_sys>;
-		vcc5-supply = <&vcc_buck5>;
-		vcc6-supply = <&vcc_buck5>;
+		vcc5-supply = <&vcc_buck5_s3>;
+		vcc6-supply = <&vcc_buck5_s3>;
 		vcc7-supply = <&vcc5v0_sys>;
 		vcc8-supply = <&vcc3v3_sys>;
 		vcc9-supply = <&vcc5v0_sys>;
 
 		regulators {
-			vdd_log: DCDC_REG1 {
+			vdd_center: DCDC_REG1 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-initial-mode = <0x2>;
-				regulator-name = "vdd_log";
+				regulator-name = "vdd_center";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 					regulator-suspend-microvolt = <900000>;
@@ -242,59 +263,59 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_buck5: DCDC_REG5 {
+			vcc_buck5_s3: DCDC_REG5 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_buck5";
+				regulator-name = "vcc_buck5_s3";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <3300000>;
 				};
 			};
 
-			vcca_0v9: LDO_REG1 {
+			vcc_0v9_s3: LDO_REG1 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <900000>;
-				regulator-name = "vcca_0v9";
+				regulator-name = "vcc_0v9_s3";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
-			vcc_1v8: LDO_REG2 {
+			vcc_1v8_s3: LDO_REG2 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8";
+				regulator-name = "vcc_1v8_s3";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <1800000>;
 				};
 			};
 
-			vcc0v9_soc: LDO_REG3 {
+			vcc_0v9_s0: LDO_REG3 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <900000>;
-				regulator-name = "vcc0v9_soc";
+				regulator-name = "vcc_0v9_s0";
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <900000>;
 				};
 			};
 
-			vcca_1v8: LDO_REG4 {
+			vcc_1v8_s0: LDO_REG4 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcca_1v8";
+				regulator-name = "vcc_1v8_s0";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -311,34 +332,34 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_1v5: LDO_REG6 {
+			vcc_1v5_s0: LDO_REG6 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1500000>;
 				regulator-max-microvolt = <1500000>;
-				regulator-name = "vcc_1v5";
+				regulator-name = "vcc_1v5_s0";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
-			vcc_3v0: LDO_REG7 {
+			vcc_3v0_s0: LDO_REG7 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3000000>;
-				regulator-name = "vcc_3v0";
+				regulator-name = "vcc_3v0_s0";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
-			vccio_sd: LDO_REG8 {
+			vcc_sdio_s0: LDO_REG8 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_sd";
+				regulator-name = "vcc_sdio_s0";
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -426,10 +447,10 @@ &i2s2 {
 };
 
 &io_domains {
-	bt656-supply = <&vcc_3v0>;
-	audio-supply = <&vcca_1v8>;
-	gpio1830-supply = <&vcc_3v0>;
-	sdmmc-supply = <&vccio_sd>;
+	bt656-supply = <&vcc_3v0_s0>;
+	audio-supply = <&vcc_1v8_s0>;
+	gpio1830-supply = <&vcc_3v0_s0>;
+	sdmmc-supply = <&vcc_sdio_s0>;
 	status = "okay";
 };
 
@@ -513,13 +534,13 @@ wifi_host_wake_l: wifi-host-wake-l {
 };
 
 &pmu_io_domains {
-	pmu1830-supply = <&vcc_3v0>;
+	pmu1830-supply = <&vcc_3v0_s0>;
 	status = "okay";
 };
 
 &saradc {
 	status = "okay";
-	vref-supply = <&vcc_1v8>;
+	vref-supply = <&vcc_1v8_s3>;
 };
 
 &sdhci {
@@ -566,7 +587,7 @@ &sdmmc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
 	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
-	vqmmc-supply = <&vccio_sd>;
+	vqmmc-supply = <&vcc_sdio_s0>;
 	status = "okay";
 };
 
@@ -620,7 +641,7 @@ bluetooth {
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
 		vbat-supply = <&vcc3v3_sys>;
-		vddio-supply = <&vcc_1v8>;
+		vddio-supply = <&vcc_1v8_s3>;
 	};
 };
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
