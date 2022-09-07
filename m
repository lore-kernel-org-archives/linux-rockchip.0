Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E9A3C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 05:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJhDgk2JfAPKLc4zrDSMIHOaWcBMLyPrktDgwW9bBVo=; b=3fanETiFjtJ8LD
	PAsQ2EPwotLuiHR+C/g4wGX9sILlG7sYt9k4V4uRsJMBOuN6QTFrxZSNHSaTrYrbpWIHYPcSC1hpW
	IfmmvpsLLELB3aj0zD7rKr68ViEofN4rytxNfowVH4weTD5nHO7TbwJhyThR3Z1tCKw6FFKXHOke2
	N2r0DmbmzXDGsa7Zt5VBV669uLaEeOo3sG/xIm+ceXODkUKWbFOcLs/mkpKcXQ09fSzj7QWvBMuyD
	XoTuumVUrzsH2i6mbQFclver+ASmcuk9XVwSAm/lZUrqf006eLVYuNlT/poPYwYF5Vj474ThzPind
	JOP5dyvqHnd1m8DwVpgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVnDk-002e6p-EN; Wed, 07 Sep 2022 05:03:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVnDi-002e5h-PJ; Wed, 07 Sep 2022 05:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zENC4k39AkcPoCgtsmOBhT3lUK8zmWEgdQwbUyfLsVk=; b=X8/7vYPHeVkhWfp2qlVmiZ94v/
	zxqe9Ju1Ibu8UsryQfBT+2rP5/nZ6TaC2uv49TNjnTW2Mmb1Nh1p6udpNrMOV3sKg/2XEew8lEf67
	V8EgFS5AyhHFo8393rM2Lt0Zbiou/F3TP2HCu6V+fDdxsDigkR1T6ssorLdTK1faX4vB1D+FBwY14
	SLrdmlc3lnccvJ2GPuFeDPVZb7rH1Dv0HVCNbT4fVuV2gO3gBBM2GlqjNtyquyZVeN6vhvkdoVhY9
	I03NYu4+UrLOrZmTXKvtn4ryvokGYUUMD5PBhoVXZ7GV87bnxgRL5LvI6RPyNukLPv96Ld1XEZiz9
	jZqKJ1jw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVnDb-00B4hI-0c; Wed, 07 Sep 2022 05:03:27 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 28752YYF010356;
	Wed, 7 Sep 2022 14:02:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: add LEDs for ROCK 4C+
Date: Wed,  7 Sep 2022 04:59:25 +0000
Message-Id: <20220907045925.1284785-2-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220907045925.1284785-1-naoki@radxa.com>
References: <20220907045925.1284785-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_060319_522355_5758F0B7 
X-CRM114-Status: UNSURE (   7.67  )
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

add support for user LEDs on Radxa ROCK 4C+ board.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index a1c4727acfcd..effe514e87dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -6,6 +6,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/leds/common.h>
 #include "rk3399.dtsi"
 #include "rk3399-t-opp.dtsi"
 
@@ -38,6 +39,26 @@ clkin_gmac: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&user_led1 &user_led2>;
+
+		user_led1 {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "default-on";
+		};
+
+		user_led2 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -404,6 +425,7 @@ &i2s2 {
 
 &io_domains {
 	bt656-supply = <&vcc_3v0>;
+	audio-supply = <&vcca_1v8>;
 	gpio1830-supply = <&vcc_3v0>;
 	sdmmc-supply = <&vccio_sd>;
 	status = "okay";
@@ -424,6 +446,16 @@ bt_wake_l: bt-wake-l {
 		};
 	};
 
+	leds {
+		user_led1: user-led1 {
+			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		user_led2: user-led2 {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
