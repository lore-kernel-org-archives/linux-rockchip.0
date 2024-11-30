Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99CAAD735E4
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tx4q7VFQdZj60C8d14UwhX0Pi4KOUHocBhQGk5BUEOo=; b=D73fHRI9eyS3O1
	gfIqLaFjpRSc1X/uPOraDDKl9xVgzA/QfdcyOxzeqUC9OeWGEBIaHXMJ2p/0yLoDWlpsf/SlRtoYJ
	ZhTlL8lg56kcUKHJH7IkSc4MD9PO1AMCCctHgUKVLstL7//qhsFamzgvk5aJi7VdOWaLvlNaLZPB8
	n2ySfluAfrx7BrWoU4vBJpAPC4BX6/aloQoqmH46pOhZcVYup1t7bjq4rg9p7LgDfm0Jps83ed66c
	SLQu95JC0NvVgFcvV1hVkOfoy8Ep4+rkvUBwKeaVtfPLRiXARx8CMSDgHym3z14A9oPw80ZcuhyPS
	MP7xaaV2WJbBQJy95YOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBg3-00000001Bn7-1QiW;
	Sat, 30 Nov 2024 00:49:39 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBg0-00000001Bks-16uH
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:49:37 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0nQ2N024394;
	Sat, 30 Nov 2024 09:49:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 2/4] arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:49:18 +0000
Message-ID: <20241130004920.7505-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004920.7505-1-naoki@radxa.com>
References: <20241130004920.7505-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164936_515960_DCD954DA 
X-CRM114-Status: UNSURE (   7.51  )
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
