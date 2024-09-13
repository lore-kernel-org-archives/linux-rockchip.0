Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 277ABFC6182
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 23:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoXDL4NTvA1yl+dQJiL9fYsCFjl03Nb6E8oUWo2Js70=; b=tHiVSYrgU7OQzA
	P6+UnaJtJop7VU6cg0AIc/4O4eybTn5iYoaAJ0Fi39EyV6WbE0nPVFYu4ISmTaf96pTvZ71tbo61E
	bAeWpB3IgpGbIg/1ABt25JfUgDoMjNipkHqYE63z1SW0myoB0KILmywpqs+szaZBc2gTPyJNR7jHY
	T1SRAwudZuh6+axohak9hZRdxrYZUGiry58AQPBr3R+Ao9d5T7UPP325f6S1HAEucoioYRoN6in12
	T1IrtsiLGbFQ3Z319LP9e7rN8DzPzW1GNC3qmbWAfk7yzYhmk0UAYZltXdpHRYlCnejd7GWcp3ab4
	Mq1sEo/1CuFSAfMdhIjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spFMw-0000000HKG2-3gD5;
	Fri, 13 Sep 2024 23:06:26 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spFMs-0000000HKFK-3vXS
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 23:06:24 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 48DN6BA3019601;
	Sat, 14 Sep 2024 08:06:12 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: make PCIe3 (M.2 M key) work for Radxa ROCK 3A
Date: Sat, 14 Sep 2024 08:06:04 +0900
Message-ID: <20240913230604.696-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240913230604.696-1-naoki@radxa.com>
References: <20240913230604.696-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_160623_203661_F0BCA285 
X-CRM114-Status: GOOD (  10.78  )
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

on Radxa ROCK 3A, GPIO0_D4 is used to enable both pi6c PCIe clock
generator and "vcc3v3_pcie" regulator (PCIe3 M.2 M key connector).

since pi6c needs to be enabled before using PCIe3, GPIO0_D4 need to be
controlled by "vcc3v3_pi6c_03" regulator. then, make "vcc3v3_pi6c_03"
vin-supply for "vcc3v3_pcie30x1".

also, "pcie30_avdd0v9" and "pcie30_avdd1v8" are unused. remove them.

changes for pinctrl are to claim all 3 pins instead of only reset pin
as like as rk3568-rock-3b.dts.

Fixes: 0522cd811220 ("arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- split patches for PCIe2 and PCIe3
- change regulator name from "vcc3v3_pcie" to "vcc3v3_pcie30x1"
- add comment for vin-supply of "vcc3v3_pcie30x1" regulator
- remove unused "pcie30_avdd0v9" and "pcie30_avdd1v8"
- fix pinctrl node name to overwrite rk3568-pinctrl.dtsi
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 51 ++++++++-----------
 1 file changed, 22 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 6f6b31b4442cd..14193b638518c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -86,29 +86,13 @@ vcc12v_dcin: vcc12v-dcin-regulator {
 		regulator-boot-on;
 	};
 
-	pcie30_avdd0v9: pcie30-avdd0v9-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "pcie30_avdd0v9";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <900000>;
-		regulator-max-microvolt = <900000>;
-		vin-supply = <&vcc3v3_sys>;
-	};
-
-	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "pcie30_avdd1v8";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vcc3v3_sys>;
-	};
-
 	/* pi6c pcie clock generator */
 	vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
 		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_pwren_h>;
 		regulator-name = "vcc3v3_pi6c_03";
 		regulator-always-on;
 		regulator-boot-on;
@@ -117,16 +101,13 @@ vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_pcie: vcc3v3-pcie-regulator {
+	/* actually fed by vcc5v0_sys, dependent on pi6c clock generator */
+	vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pcie_enable_h>;
-		regulator-name = "vcc3v3_pcie";
+		regulator-name = "vcc3v3_pcie30x1";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc3v3_pi6c_03>;
 	};
 
 	vcc3v3_sys: vcc3v3-sys-regulator {
@@ -617,7 +598,7 @@ &pcie3x2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie30x2m1_pins>;
 	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie>;
+	vpcie3v3-supply = <&vcc3v3_pcie30x1>;
 	status = "okay";
 };
 
@@ -653,7 +634,7 @@ led_user_en: led_user_en {
 	};
 
 	pcie {
-		pcie_enable_h: pcie-enable-h {
+		pcie_pwren_h: pcie-pwren-h {
 			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -670,6 +651,18 @@ pcie20m1_pins: pcie20m1-pins {
 		};
 	};
 
+	pcie30x2 {
+		pcie30x2m1_pins: pcie30x2m1-pins {
+			rockchip,pins =
+				/* pcie30x2_clkreqnm1 */
+				<2 RK_PD4 4 &pcfg_pull_none>,
+				/* pcie30x2_perstnm1 */
+				<2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>,
+				/* pcie30x2_wakenm1 */
+				<2 RK_PD5 4 &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int: pmic_int {
 			rockchip,pins =
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
