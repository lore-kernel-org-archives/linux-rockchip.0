Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE91E77180
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 06:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wpSBTR1bq77cFSMD+xKgyOpDYEvpsjRU5y+iEAJ0Pu4=; b=maFpnnHMs17ewr
	PoHISeIlug/e9qdxpFdVsxVZRIWaQ3K0TPcTP/+SqWStK//q5aBz/BktJ4z+AlgV3FusnqRS5x5s5
	XyAM9ouprBBiuHcyoQVAZr8dKqvCARjfXoKg0w4nw60lm9xNqWNQCEur1eRHKYxhqTuY04U/ND2XI
	s8/vfo91NUSYwWSn011+B6aggYTWbmhmmgv8r1db/oFnosbxOxakGvP/gc0Vtf9vSjitDUr91blxc
	JUBW/mN+9ozmqx5crQtTA6bD9X3Ew4ygBYYJtry8tidSm06AMEVnOqIFv/f13F11rdzo1PMiQyKSr
	9bVBC8flhvXYtXMw/weQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGH7-0000000DwPq-3tSW;
	Wed, 11 Dec 2024 06:32:45 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGH5-0000000DwP6-01ZX
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 06:32:45 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BB6WS27006193;
	Wed, 11 Dec 2024 15:32:28 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2] arm64: dts: rockchip: Convert blue LED to "pwd-leds" for Radxa ROCK 5A/5C
Date: Wed, 11 Dec 2024 06:32:22 +0000
Message-ID: <20241211063222.57904-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_223243_258245_30B65FFB 
X-CRM114-Status: UNSURE (   9.59  )
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

The pin connected to the blue LED, GPIO3_D5, is not only a GPIO but
also has a PWM function. Using PWM, the user can change the brightness
of the LED.

Convert blue LED from "gpio-leds" to "pwm-leds" and enable related PWM.

Acked-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
---
Changes in v2:
- Reword commit message
---
 .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 ++++++++++++-------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
index d0b9513d56a7..d72314d917da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
@@ -46,7 +46,7 @@ hdmi0_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
+		pinctrl-0 = <&led_pin>;
 
 		led-0 {
 			color = <LED_COLOR_ID_GREEN>;
@@ -54,14 +54,6 @@ led-0 {
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
 		};
-
-		led-1 {
-			color = <LED_COLOR_ID_BLUE>;
-			default-state = "on";
-			function = LED_FUNCTION_STATUS;
-			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
 	};
 
 	fan: pwm-fan {
@@ -72,6 +64,19 @@ fan: pwm-fan {
 		pwms = <&pwm3 0 60000 0>;
 	};
 
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		led-1 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			pwms = <&pwm11 0 1000000 0>;
+			max-brightness = <255>;
+		};
+	};
+
 	vbus_typec: regulator-vbus-typec {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus_typec";
@@ -422,9 +427,8 @@ &pcie2x1l2 {
 
 &pinctrl {
 	leds {
-		led_pins: led-pins {
-			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
-					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		led_pin: led-pin {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
@@ -467,6 +471,12 @@ &pwm3 {
 	status = "okay";
 };
 
+&pwm11 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm11m3_pins>;
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
