Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D9BC52D71
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 09:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuBsdeVG6KPIaq/vpl8o7Cn7meFIbUS3zL8zcf0kB+I=; b=Bu35sA8K32nNH1
	m8C7YOrPcBr/jIbR7uSQg6DyxUtZd16wINLYl0I0Htt42oBxTkzoXX5LC9cwiVOdBneTMzKdGwU1d
	kMKMR216vTsWJYDnBy2BsEjcw2mjxAbDY1NFGMRhkhB3REKw+F9QvQtDu20h2qr34cR3jqRFjdJn+
	AD2DO0dpOExREHZ8DqzRTbNnuNG5BdNA6hCJKIRISVkDi50KPDfF88R5e+j1YAu6fh+C/RVP21zDk
	XO1ME0FF+lCZDssGAoQlzoMWBpE9p88F8f/WEiXLqBKcR6iB69rwioq1jdwyNAzKGS/kbRTB2fbkc
	2/tXDx11zz5ehJKWHbvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbc-00000007kLx-1gzo;
	Thu, 08 Aug 2024 09:38:48 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbR-00000007kFK-3Pwt
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 09:38:42 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE8030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 07/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa E25
Date: Thu,  8 Aug 2024 18:38:05 +0900
Message-ID: <20240808093808.1740-8-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_023838_091273_C773FC0E 
X-CRM114-Status: UNSURE (   8.44  )
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

- sort properties
- add default-state
- add function for multi-led
- remove redundant parameters from pwms

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 7 ++++---
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 45b03dcbbad4..b287d9cca6f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -20,9 +20,10 @@ gpio-leds {
 		compatible = "gpio-leds";
 
 		led_user: led-0 {
-			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
-			function = LED_FUNCTION_HEARTBEAT;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
 			pinctrl-0 = <&led_user_en>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..4b5203c0037a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -16,21 +16,22 @@ pwm-leds {
 
 		multi-led {
 			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_ACTIVITY;
 			max-brightness = <255>;
 
 			led-red {
 				color = <LED_COLOR_ID_RED>;
-				pwms = <&pwm1 0 1000000 0>;
+				pwms = <&pwm1 0 1000000>;
 			};
 
 			led-green {
 				color = <LED_COLOR_ID_GREEN>;
-				pwms = <&pwm2 0 1000000 0>;
+				pwms = <&pwm2 0 1000000>;
 			};
 
 			led-blue {
 				color = <LED_COLOR_ID_BLUE>;
-				pwms = <&pwm12 0 1000000 0>;
+				pwms = <&pwm12 0 1000000>;
 			};
 		};
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
