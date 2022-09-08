Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2634C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 03:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SjyYghYWSuljokW7oEv4Vme1neBxDvlzmxd5wnF5cyA=; b=hVv7nYoQpAAWkE
	agKSpAnVmsPA2d828Cbnr1rykShDTKb9at7+tX0hlA3odOa/fBGPLUGbFM2WRrQNwNkh4yKfLASMC
	zL1Mdk4knl5ukEfDMD7d6QEz9CRUn4VNE7L9bpBONzlHyxCkHry68CHkQtOGlyPckO3DN2yM4WhYY
	lj+ozgG7wur7ucgxG1zU2c++K0cKg/oLj/TNmOZlFGcVN6pK0g2sLg5FJA09u+odxu+aRgogbi3VL
	ur8YgmYqgYQT9wfsZ97jEjBu1K/aJF4FCblGEbHExwpUQI4hGuRaDw03V3fk7PdXLGo2O4WQgOaqi
	EeTrKTnI8pY3JqhusVfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW845-00F4sf-BQ; Thu, 08 Sep 2022 03:18:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW844-00F4rJ-FG; Thu, 08 Sep 2022 03:18:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=QUDGHjRW6NGuEmSyfug5xpaBWkhmVXUMqFH3PSwcEpQ=; b=qfhnzKfeBExki6JzgegSIv1+Ro
	u1hapTMerqMPBaiNMs7BPvvwcYbJfXPYjVN/DIMKyvWPMzH2CdOGZN+i7GSbYYp0e5CZ7UNzkTy8o
	eE86+hLvvHdqFlSDnHDWaS5BSNv+b4KUumMyDAd9We/8lmffI0o3RbLcRuKUiBU0LOcXF1S2EnRVb
	R6B8rNZ2a8K8Ap9XFDm7S5P3vcSIh4Z+sq8Mt0Of+9AJjdgLaIf8xLGW2obERgJZFkM0lkxIE05kJ
	/srcpiq0DQSTwZS2Vg7Wfl/WA8qkLPRtT2nY+CuHc5N9jfyHINyFJyzZctTNvY4hjstQYu5eorYKl
	lFi9Yuzg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW83y-00BzTy-Ry; Thu, 08 Sep 2022 03:18:52 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 2883I37d015758;
	Thu, 8 Sep 2022 12:18:04 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+
Date: Thu,  8 Sep 2022 03:17:25 +0000
Message-Id: <20220908031726.1307105-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_041847_519194_5A25B1F7 
X-CRM114-Status: UNSURE (   8.18  )
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

only user_led2 (blue) is supported.

user_led1 (green) is not connected to any gpio so it cannot be
controlled.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
v2:
 - fix led node label

 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 401e1ae9d944..6464a6729729 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 #include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
@@ -27,6 +28,20 @@ clkin_gmac: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&user_led2>;
+
+		/* USER_LED2 */
+		led-0 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk808 1>;
@@ -553,6 +568,12 @@ hp_int: hp-int {
 		};
 	};
 
+	leds {
+		user_led2: user-led2 {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
