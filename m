Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63037CD6E4B
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 12:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qmcrMgm/AXG7K6CWaAwT8tF/bwsV7kTnI0XsRxg0rg=; b=sGw0AJwX4THZwB
	imOBJb/YeIJSrXqkySfIfL62f/VrS+Wa/Y5zt0XF1C3Dfc5k1fJstEXHWlpOi9elIFvtq8upRiVFk
	at6w9IhDFK1I/OezNwVZyvliWMR6R/KfEq1z+tFdDzYglywRee4xC0Z5frcg5JCSNLy4zXZcEuH/4
	hhlqt7pi1UFE72NASSNSnTtCJurRYqMuBHlaEuaRE/ltlQ/4iqzZPIjxfbyH/ze6eA+eM96ZX8lKI
	F1wypevcViPTWOuLdLG9VaIBSHxhDCcw3kwtMZX2iSMNM9B7/dr1LZl3n2nNvPANUx3ocUXlUtthz
	pwXlV1YWkyEikt20YdFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWfs-0000000AUQP-2BQR;
	Thu, 13 Nov 2025 12:43:40 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWfp-0000000AUPQ-2gqU
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 12:43:39 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5ADCgQXv030553;
	Thu, 13 Nov 2025 21:42:33 +0900
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
Subject: [PATCH v3 2/3] arm64: dts: rockchip: Turn on heartbeat LED at boot for Radxa boards
Date: Thu, 13 Nov 2025 12:42:21 +0000
Message-ID: <20251113124222.4691-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113124222.4691-1-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_044337_898544_7972640E 
X-CRM114-Status: UNSURE (   9.08  )
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

Currently, on Radxa boards, the power LED is turned on immediately
after power-up, independent of software control. The heartbeat LED and
other available LEDs are subsequently turned on by the initial
software, such as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent
and fragmented, with definitions split between the main Linux DTS
files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch addresses the description fragmentation for the heartbeat
LED by consolidating its default-state = "on" definition from the
U-Boot files into the main Linux DTS.

- Radxa CM3 IO board
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12

- Radxa CM3I
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-radxa-e25-u-boot.dtsi#L7-24

- Radxa ROCK 3A
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-rock-3a-u-boot.dtsi#L11-13

- Radxa ROCK 3C
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-rock-3c-u-boot.dtsi#L14-16

- Radxa ROCK 4C+
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-4c-plus-u-boot.dtsi#L11-17

- Radxa ROCK 4D
  (New)

- Radxa ROCK 4SE
  Radxa ROCK Pi 4A/A+/B/B+/C
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi#L11-13

- Radxa ROCK 5A
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588s-rock-5a-u-boot.dtsi#L10-12

- Radxa ROCK 5B
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13

- Radxa ROCK 5B+/5T
  (New)

- Radxa ROCK Pi E
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328-rock-pi-e-base-u-boot.dtsi#L10-12

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 1 +
 11 files changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index a4bdd87d0729f..d3d6f34b66fb0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -59,6 +59,7 @@ leds {
 
 		led-0 {
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 74160cf891885..a83ffbef22a7b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -47,6 +47,7 @@ led-0 {
 		led-1 {
 			function = LED_FUNCTION_STATUS;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 046dbe3290178..ef434c23fe85c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -35,6 +35,7 @@ leds {
 		led-0 {
 			function = LED_FUNCTION_STATUS;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index b5b253f04cdf5..9e7212b70e3f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -46,6 +46,7 @@ leds {
 		led-1 {
 			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			function = LED_FUNCTION_ACTIVITY;
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 6224d72813e59..3ec108bcf89a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -47,6 +47,7 @@ led-0 {
 			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
 			function = LED_FUNCTION_HEARTBEAT;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
 			pinctrl-0 = <&user_led2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 729e38b9f620e..140582f8e1034 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -23,6 +23,7 @@ led_user: led-0 {
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 			function = LED_FUNCTION_HEARTBEAT;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
 			pinctrl-0 = <&led_user_en>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 44cfdfeed6681..e6c18df0fa582 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -47,6 +47,7 @@ led_user: led-0 {
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 			function = LED_FUNCTION_HEARTBEAT;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
 			pinctrl-0 = <&led_user_en>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 7023dc326d0e8..99d3a8be8f18c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -59,6 +59,7 @@ power-led {
 
 		user-led {
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
index e5c474e4d02a6..8c4a4270f9f93 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
@@ -30,6 +30,7 @@ leds {
 		led_rgb_b {
 			function = LED_FUNCTION_STATUS;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
index 0dd90c744380b..87e9d4b86dad4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -33,6 +33,7 @@ leds {
 		led_rgb_b {
 			function = LED_FUNCTION_STATUS;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 217538ed12df8..46c81e796b100 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -54,6 +54,7 @@ leds {
 
 		io-led {
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
