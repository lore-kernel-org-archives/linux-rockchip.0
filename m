Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CC68CD6E4D
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 12:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WaS1KjWB8AHIAA7V3o9VJSIVQ1kch1Bk07uQaguJkgs=; b=1pqzdNujiDdgAn
	bJetOuJMItPfjZEsWQBahoc2Xr9VvLUs9wS95BwHkgnDvaBC/ut8bojE6wYYeKG1y7MGPwmYflQ7n
	Hf5AXQjQrqraYko7rOhf3TSNDuTlzhAoDjESccY5AL/MhSfnBte1BdyqwjqLHwA4tEq4pUfbOvy+y
	gJ3PqxEQIG7h9j/aSrPNiHSOhaa9zIX4Ro7LtPR+JWx+joEaTwLT1IqKMTUfmcdsQAEZbvwABVN8E
	RbMHLoluxZ7noRaJO3xoxsI0ONtKzWyllZl1nXIBFO0It2xXTnx0WpkKGr5y0SSWSbXThf+51kY7E
	Rfs6Axf8f+Z1V8aPlSRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWfs-0000000AUQL-11Lc;
	Thu, 13 Nov 2025 12:43:40 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWfp-0000000AUPR-2ndS
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 12:43:39 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5ADCgQXu030553;
	Thu, 13 Nov 2025 21:42:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, pgwipeout@gmail.com, didi.debian@cknow.org,
        jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
        nicolas.frattaroli@collabora.com, pbrobinson@gmail.com,
        wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com,
        kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 1/3] arm64: dts: rockchip: Use default-state for power LED for Radxa boards
Date: Thu, 13 Nov 2025 12:42:20 +0000
Message-ID: <20251113124222.4691-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113124222.4691-1-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_044337_917829_5746C93E 
X-CRM114-Status: GOOD (  10.65  )
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

Currently, on Radxa boards, the power LED is turned on immediately
after power-up, independent of software control. The heartbeat LED and
other available LEDs are subsequently turned on by the initial
software, such as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent
and fragmented, with definitions split between the main Linux DTS
files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch addresses the inconsistency for the power LED by using
default-state = "on" instead of linux,default-trigger = "default-on".

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 2 +-
 6 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index 7a32972bc2496..c1e3098b9a7bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -35,7 +35,6 @@ green-led {
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 			label = "rockpis:green:power";
-			linux,default-trigger = "default-on";
 		};
 
 		blue-led {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 962b8b231c960..74160cf891885 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -39,8 +39,8 @@ leds {
 		led-0 {
 			function = LED_FUNCTION_POWER;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "default-on";
 		};
 
 		/* USER_LED2 */
diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
index c03ae1dd34560..0b696d49b71fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
@@ -45,7 +45,6 @@ led-1 {
 		default-state = "on";
 		function = LED_FUNCTION_STATUS;
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
-		linux,default-trigger = "default-on";
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 9bc33422ced50..7023dc326d0e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -52,9 +52,9 @@ leds: leds {
 
 		power-led {
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
 		};
 
 		user-led {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index bc8140883de47..e360446368ae6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -88,8 +88,8 @@ gpio-leds {
 		pinctrl-0 = <&led_pins>;
 
 		power-led1 {
+			default-state = "on";
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
 		};
 
 		hdd-led2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 19a08f7794e67..217538ed12df8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -61,9 +61,9 @@ io-led {
 
 		power-led {
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
