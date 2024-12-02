Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ACC9D49792
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 02:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aGvvBni5yhWnUaSRyZpO5zEBUR+FAr1r2YL98m9Fqc=; b=fz8OtGUBl1l49l
	cn1wLhfB4VcdcCkmuGRb9yOXh7i0X9rxXY3GI0rFuiXmsquZRVHO6H7yFO6iT7OEgTMWSjPg0cVbG
	KzPP1L+V045UwzY5on3LeG8Qmqp7nZ2hYjzi/zNWsrxVrUjN1ZR/n5Kye3cSps+7lamaf2qemRki3
	dOb+CB3xt0ULtS2pnBfVqXukloQ7er0AWGE8UB0V1QaPqJVy0do+8OuuAulBj4ECM/RHcmno6MVYX
	8D0m6ut042Tw3jkZXrQ1Y73PB+DSWnWyF7QlwTmke7TvkmyoVszpwURve6SCt2ug6qN1YL3vhZslI
	Z5NiSGdQLFHU84pcym0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwGT-00000004okm-2mIA;
	Mon, 02 Dec 2024 02:34:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwGR-00000004oid-0r3L
	for linux-rockchip@bombadil.infradead.org;
	Mon, 02 Dec 2024 02:34:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CQOD0RFwtniYvfmvL9kr2sp5W1ZX9xos9iYKxvzbcQk=; b=hCinhgEElHHlWkNGLE2g4E7elr
	hd/AVfv7YbK+swJAV22H3mwQV4sMAB5668UHfcDKzQAC9kqY07XZNb9gohAEfI935yg0Wk7xPT0+F
	zzoaroIzKYvULlbsEKv564crsn6fGpIsxZZsFMgBgOm8IZbXGCzHMhRHSebe89r71RsJraXNzh0en
	H1ElfRSVmFaH+zU8wvMzSIBifPCTgHB8EkHdXE0GEcrcrOB73YzSIDPxS5sjBeO+4wsJkXnj0NXEN
	A8q/i8MegoARdqfh1AvaBIfZwWXhiWnxn99azasrIHl2H6Wme3zMGnwyKFHSc2VLdRL6W9fMHrs68
	b7VR25fA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwGJ-00000007Ntl-14y3
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 02:34:18 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B22XVDf000375;
	Mon, 2 Dec 2024 11:33:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/4] arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
Date: Mon,  2 Dec 2024 02:32:25 +0000
Message-ID: <20241202023227.2671-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
References: <20241202023227.2671-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_023413_241345_55D6D6F9 
X-CRM114-Status: UNSURE (   6.99  )
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
Changes in v2:
- none
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 42 +++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 08f5efeeac9c..c816febb486a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -91,30 +91,30 @@ typec_vin: regulator-typec-vin {
 		regulator-boot-on;
 	};
 
-	vcc3v3_wf: regulator-vcc3v3-wf {
+	/* pi6c pcie clock generator */
+	vcc3v3_pi6c_05: vcc3v3_pcie30: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&ekey_en>;
-		regulator-name = "vcc3v3_wf";
+		pinctrl-0 = <&pcie30x4_pwren_h>;
+		regulator-name = "vcc3v3_pi6c_05";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <50000>;
+		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	/* pi6c pcie clock generator */
-	vcc3v3_pi6c_05: vcc3v3_pcie30: regulator-vcc3v3-pi6c-05 {
+	vcc3v3_wf: regulator-vcc3v3-wf {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie30x4_pwren_h>;
-		regulator-name = "vcc3v3_pi6c_05";
+		pinctrl-0 = <&ekey_en>;
+		regulator-name = "vcc3v3_wf";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <5000>;
+		startup-delay-us = <50000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -128,6 +128,16 @@ vcc4v0_sys: regulator-vcc4v0-sys {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&typec_vin>;
+	};
+
 	vcc5v_usb: regulator-vcc5v-usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v_usb";
@@ -140,16 +150,6 @@ vcc5v_usb: regulator-vcc5v-usb {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_sys: regulator-vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&typec_vin>;
-	};
-
 	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v1_nldo_s3";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
