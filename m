Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E80C48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 22:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIeOUP350vI542iJAZNE/Q9C0OIkb4JbcQNJfzNiZDk=; b=ZSKr4S7Mzh6VLc
	rFCCpmpQkqF8rU8ry/G1n9beQXcshRSaLqhnnRBjQa9JZPyyuyuqjwLzXJ6+u0AbEWaI9uK4oRQTJ
	srN/ucqjlJjAL3uVpXWtFzPNQB8bUjx7a74tMqXW+PF02NRq7BbKP0qkkj0Axi2WUXpUsWwcmSSAY
	dLhmBleXD8azGbAWOrXr+gx2YytmRbasOC4DXLvRYkf8BRdLzifqmlJ/hDPdVb43fh850RSWddthF
	cgg+5QWpSF6HVimDgWBl0saxt/D6LrSdRN4zkU8uf8xCt8mVzz/ogEEcuq0GoJiRFMx32Vu7uW8uD
	U59R29mzfugo2T88BCCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCF7-0000000CPhP-1iUe;
	Mon, 19 Feb 2024 22:36:09 +0000
Received: from forward500b.mail.yandex.net ([178.154.239.144])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCEN-0000000CP8L-2pXC;
	Mon, 19 Feb 2024 22:35:26 +0000
Received: from mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:3285:0:640:fd1e:0])
	by forward500b.mail.yandex.net (Yandex) with ESMTPS id E7FB260FA0;
	Tue, 20 Feb 2024 01:35:19 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id bYZIDNh7RSw0-9nfYeG6M;
	Tue, 20 Feb 2024 01:35:18 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1708382119; bh=4esHHPB8QRrp0Iemcf6FHGQ6BZdQ9YtoicpK0U4GrhM=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=XO02EO3ZIyNk2n+j94csTnSD72YDrZtTmKwAN3Kjo8JS7bEIeneV4MehIV7ObDD7J
	 1PpZdTVrI80RsISeBTo/QUSFy2oDxY63Y7/ivDgnv+aXstdFnkfyjuQW5XXQM0WhZH
	 ML+av7TcBA+YT/DcWbIIAYYYeqygpbfY7j5QZadk=
Authentication-Results: mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH 5/9] arm64: dts: rockchip: Add ir receiver and leds to Khadas Edge 2
Date: Tue, 20 Feb 2024 01:34:21 +0300
Message-ID: <335629f57e593e20418a4a55a1e662505640cbde.1708381247.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
References: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_143523_967895_72AEEAE7 
X-CRM114-Status: GOOD (  11.83  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Khadas Edge 2 exposes IR receiver pins as same as TF card via EXTIO. The
IR receiver is connected to MCU and SoC.

The board also has 2 PWM RGB leds. One is controlled by MCU and the
other is controlled by SoC. This commit adds support for the led
controlled by SoC using pwm-leds.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index ea7f1bb7c908..5a3b52e62dce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/leds/common.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -19,6 +20,47 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_receiver_pin>;
+	};
+
+	leds {
+		compatible = "pwm-leds";
+
+		red_led: led-0 {
+			label = "red_led";
+			linux,default-trigger = "none";
+			default-state = "off";
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_RED>;
+			max-brightness = <255>;
+			pwms = <&pwm11 0 25000 0>;
+		};
+
+		green_led: led-1 {
+			label = "green_led";
+			linux,default-trigger = "default-on";
+			default-state = "on";
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_GREEN>;
+			max-brightness = <255>;
+			pwms = <&pwm14 0 25000 0>;
+		};
+
+		blue_led: led-2 {
+			label = "blue_led";
+			linux,default-trigger = "none";
+			default-state = "off";
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_BLUE>;
+			max-brightness = <255>;
+			pwms = <&pwm15 0 25000 0>;
+		};
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -181,6 +223,12 @@ vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	ir-receiver {
+		ir_receiver_pin: ir-receiver-pin {
+			rockchip,pins = <1  RK_PA7  RK_FUNC_GPIO  &pcfg_pull_none>;
+		};
+	};
 };
 
 &pcie2x1l2 {
@@ -191,6 +239,24 @@ &pcie2x1l2 {
 	status = "okay";
 };
 
+&pwm11 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm11m1_pins>;
+	status = "okay";
+};
+
+&pwm14 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm14m1_pins>;
+	status = "okay";
+};
+
+&pwm15 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm15m1_pins>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.43.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
