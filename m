Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D97C27C77
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 20:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNPwTHW4b1xkJnvZJTJWpQ4IvoWJVdFFZT4wtLNrP68=; b=lRDdxd5s/W6XcI
	8f7ZrD27g4Vr903dT6qh/kVazQu14JJOc55KBDJKCXi5qPRNoFcF2XTICNzFYYkUXwlFIWX3T9Vmf
	iifrSL4/wFwNf2RN+cj6Anp2ht+LF9EnE5FTZ9q56EXy2l6hvYYE7Pv8A4iHAncJyel8L0iUZWljs
	nacEQePkgllWnw5YX0B0sy6vsV6B+lXBBXBSF+XtJ9/JMePJKeKEq71293DsoNTnY0VdseSEb12UG
	VINfqI+N/zCbLyFTsBycPep8TSbyXzsz2bHIjFm7rR6QsdcV2/rJkfoPnJII89wHIqkeIHhyOKd49
	BrhcYHzBzmZ6YKMzQSFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUzF-0000000E6EW-1auH;
	Wed, 12 Jun 2024 20:54:29 +0000
Received: from shout11.mail.de ([2001:868:100:600::f153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUz9-0000000E6Bl-17dc;
	Wed, 12 Jun 2024 20:54:24 +0000
Received: from shout01.mail.de (unknown [10.0.120.221])
	by shout11.mail.de (Postfix) with ESMTPS id 55537240CA1;
	Wed, 12 Jun 2024 22:54:19 +0200 (CEST)
Received: from postfix02.mail.de (postfix02.bt.mail.de [10.0.121.126])
	by shout01.mail.de (Postfix) with ESMTP id 3A2572405B9;
	Wed, 12 Jun 2024 22:54:19 +0200 (CEST)
Received: from smtp01.mail.de (smtp01.bt.mail.de [10.0.121.211])
	by postfix02.mail.de (Postfix) with ESMTP id 160ABA00E2;
	Wed, 12 Jun 2024 22:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718225659;
	bh=VCtcBjloeq2TIukMSshtT2aha3mHch2VVQdqj442tJI=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=G9umbXzZXXiTuADQjt/FVnCK5JxcQmZjRtkKNWKUeDiizAAs/1ppi3W6uzJo6JKCG
	 f8HDwt46AePF1tax0vYik1sVnDJ+hXzhJAEIlDCvUjaCFwqSYYpqXMxHxRZF72DwXu
	 B1emLH7BK1KMvie06ds4LV+zs9Mw9B3tQepKKoz4RzddFIOJ1+UV7ifAen881hTnED
	 FUXzFNkd0qqeveIqEoIQM6MNZxPe7ZFeS/hIHGFd54JuEYRRBVnds3ub4hiTeohm0B
	 Q6JnUXGbYp5FdSX7WYpgtLiCFzWFoZkloOQ/jGtt8EH426jW2CXzOsEj9o1Ee05HJC
	 +YuKw6QCC87xA==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 9B129240A39;
	Wed, 12 Jun 2024 22:54:18 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: rockchip: Improve LEDs on NanoPi R6C/R6S
Date: Wed, 12 Jun 2024 22:48:12 +0200
Message-ID: <20240612205056.397204-4-seb-dev@mail.de>
In-Reply-To: <20240612205056.397204-1-seb-dev@mail.de>
References: <20240612205056.397204-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 6197
X-purgate-ID: 154282::1718225658-FE5BF670-7FE753F2/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_135423_499244_AEF0AE1E 
X-CRM114-Status: GOOD (  15.88  )
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

Move led-3 node into NanoPi R6C/R6S's source files since they have
different functionalities on each board: On the R6S this LED is used
to signal LAN2 link up, while on the R6C this LED does not have a
pre-defined purpose.

In addition to that:
    - Remove deprecated label property
    - Add color and function properties
    - Add linux,default-trigger to trigger on Ethernet link

Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
---

DT validation doesn't like the 'linux,default-trigger = "stmmac-0:01:link"'
properties, since "*:link" is not a valid value according to
[Documentation/devicetree/bindings/leds/common.yaml]. These LEDs do
have the specific purpose to show if an Ethernet link is up though.
There is one LED for each Ethernet port and they are labeled WAN and
LAN.
Using the 'linux,default-trigger' like this does work perfectly fine
with this solution. I could not find another way to achieve this. Please
let me know if there is a better way.
Maybe it would also be valid to add an entry to the DT bindings file to
allow "*:link" as a value for 'linux,default-trigger'?

The same problem also applies to the NanoPi R5C/R5S which also has
these LEDs to show Ethernet link up, although in their current DT
these LEDs are simply not functional.

---
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  | 32 +++++++------------
 .../boot/dts/rockchip/rk3588s-nanopi-r6c.dts  | 22 ++++++++++---
 .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 26 +++++++++++++--
 3 files changed, 54 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 8b90bae28302..69d0f1f2349b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -52,7 +53,8 @@ leds {
 		compatible = "gpio-leds";
 
 		sys_led: led-0 {
-			label = "sys_led";
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
@@ -60,24 +62,22 @@ sys_led: led-0 {
 		};
 
 		wan_led: led-1 {
-			label = "wan_led";
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WAN;
 			gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "stmmac-0:01:link";
 			pinctrl-names = "default";
 			pinctrl-0 = <&wan_led_pin>;
 		};
 
 		lan1_led: led-2 {
-			label = "lan1_led";
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
 			gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "r8169-3-3100:00:link";
 			pinctrl-names = "default";
 			pinctrl-0 = <&lan1_led_pin>;
 		};
-
-		lan2_led: led-3 {
-			gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&lan2_led_pin>;
-		};
 	};
 
 	vcc_5v0: regulator-vcc-5v0 {
@@ -328,23 +328,15 @@ key1_pin: key1-pin {
 
 	gpio-leds {
 		sys_led_pin: sys-led-pin {
-			rockchip,pins =
-				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		wan_led_pin: wan-led-pin {
-			rockchip,pins =
-				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		lan1_led_pin: lan1-led-pin {
-			rockchip,pins =
-				<1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		lan2_led_pin: lan2-led-pin {
-			rockchip,pins =
-				<1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
index 24dcd3e07ea7..d1b6aa033abc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
@@ -8,6 +8,18 @@ / {
 	model = "FriendlyElec NanoPi R6C";
 	compatible = "friendlyarm,nanopi-r6c", "rockchip,rk3588s";
 
+	leds {
+		compatible = "gpio-leds";
+
+		led1_led: led-3 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = "led1";
+			gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&led1_led_pin>;
+		};
+	};
+
 	/* MP2143DJ power switch (U9536 in schematics) */
 	vcc3v3_pcie: regulator-vcc3v3-pcie {
 		compatible = "regulator-fixed";
@@ -24,16 +36,18 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 	};
 };
 
-&lan2_led {
-	label = "user_led";
-};
-
 /* M.2 M-Key socket */
 &pcie2x1l2 {
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 };
 
 &pinctrl {
+	gpio-leds {
+		led1_led_pin: led1-led-pin {
+			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie20x1_2_con_pwren: pcie20x1-2-con-pwren {
 			rockchip,pins = <3 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
index d24110b6cf5d..09afbc0a2581 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
@@ -7,13 +7,35 @@
 / {
 	model = "FriendlyElec NanoPi R6S";
 	compatible = "friendlyarm,nanopi-r6s", "rockchip,rk3588s";
+
+	leds {
+		compatible = "gpio-leds";
+
+		lan2_led: led-3 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
+			function-enumerator = <2>;
+			gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "r8169-4-4100:00:link";
+			pinctrl-names = "default";
+			pinctrl-0 = <&lan2_led_pin>;
+		};
+	};
 };
 
-&lan2_led {
-	label = "lan2_led";
+&lan1_led {
+	function-enumerator = <1>;
 };
 
 /* RTL8125BG Ethernet */
 &pcie2x1l2 {
 	vpcie3v3-supply = <&vcc_3v3_s3>;
 };
+
+&pinctrl {
+	gpio-leds {
+		lan2_led_pin: lan2-led-pin {
+			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
