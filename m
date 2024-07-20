Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 631E9C3DA59
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jul 2024 21:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ci4fQaQMw7uiFFeIYL9eMo+zAei4qEKTjZNPeaqyR2c=; b=1PJgwkCjoPf2et
	CF4/M9PXiMlXzr4OU4ayDOkVnZ45YefGIiylwM4OxEdu/tHOv5yjx9ty9WPGcfQXX2sxQOfj1yV0D
	G90kI6CbHqptG4YgLZzpNhCU55eW5ASw/yKuPFv0K9/d5CUKoiC6SuCfB1zkNLlFG+k430pEJRGSc
	zVYAWUuLK+auelNIXs6r6sZ3B/qiVL9xijWRtCiuJqyi353pOahzIdGNf11EmoYbkwqzFYwQRLK/l
	wjZZqIeikctpzqUkm6OzBF1X2RAQejx1rjWNAAnhI9/jgV3pPEOnGCzOEK4++cFS9k0ezG4OMU52e
	myvWe8vaBBXtydt17Uow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHNt-00000005gbP-1M32;
	Sat, 20 Jul 2024 21:12:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHMB-00000005fvr-0Ixw;
	Sat, 20 Jul 2024 21:11:08 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVHKE-00061D-4I; Sat, 20 Jul 2024 23:09:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] arm64: dts: rockchip: add hdd leds to Qnap-TS433
Date: Sat, 20 Jul 2024 23:08:56 +0200
Message-Id: <20240720210856.778014-11-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240720210856.778014-1-heiko@sntech.de>
References: <20240720210856.778014-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_141107_156411_926C9448 
X-CRM114-Status: GOOD (  10.60  )
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

Add the 4 gpio-controlled LEDs to the Qnap-TS433.

They are meant for individual disk activitivy, but I haven't found a
way for how to connect them to their individual sata slot yet.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index c05433ca7dda4..d36467c2baf02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/gpio/gpio.h>
 #include "rk3568.dtsi"
 
@@ -22,6 +23,46 @@ chosen: chosen {
 		stdout-path = "serial2:115200n8";
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		led_hdd1: led-0 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DISK;
+			gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "disk-activity";
+			pinctrl-names = "default";
+			pinctrl-0 = <&hdd1_led_pin>;
+		};
+
+		led_hdd2: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DISK;
+			gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "disk-activity";
+			pinctrl-names = "default";
+			pinctrl-0 = <&hdd2_led_pin>;
+		};
+
+		led_hdd3: led-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DISK;
+			gpios = <&gpio1 RK_PD7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "disk-activity";
+			pinctrl-names = "default";
+			pinctrl-0 = <&hdd3_led_pin>;
+		};
+
+		led_hdd4: led-3 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DISK;
+			gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "disk-activity";
+			pinctrl-names = "default";
+			pinctrl-0 = <&hdd4_led_pin>;
+		};
+	};
+
 	dc_12v: regulator-dc-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "dc_12v";
@@ -158,6 +199,24 @@ &pcie3x2 {
 };
 
 &pinctrl {
+	leds {
+		hdd1_led_pin: hdd1-led-pin {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		hdd2_led_pin: hdd2-led-pin {
+			rockchip,pins = <1 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		hdd3_led_pin: hdd3-led-pin {
+			rockchip,pins = <1 RK_PD7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		hdd4_led_pin: hdd4_led-pin {
+			rockchip,pins = <2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	usb {
 		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
