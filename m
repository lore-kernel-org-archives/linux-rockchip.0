Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2056D735EC
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2XMUJriqIcLlrUdBIaTs3IURKyOgLPkM8Ewps+M+nM=; b=4npL3JcJ/5pLIT
	BXboMaAa+HQ8QA4mETNsxIg9zjQIvxQxyjx8YvIjo5LHWNzkWSvEHuh2YHUj30c8OMI5/lbUmPtxT
	CRz4zXQqzHRvddyDyJdKdZQtBT38rsXRQ1CLvdKnn7q9CYWn7uy7Xxadc/YYoim+TfsmPk8I2/Pef
	S3d7c7G+fJKJyrFjjfySKX8wo6E3Uu8aCW3vHEqfRpONhdQFD/TyxenCkiQKS8LxtcsswzzjcRyoJ
	8K5uOQtAwe6W9+bnOBNKWX31rP2jFAYWZZ3BtTWPKYIaoEj7C7NN+t6kCxe/f23zvIgV3idJhUaQU
	S97nlOYSxYVaZ/C2ky6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBYB-00000001B91-0Ecv;
	Sat, 30 Nov 2024 00:41:31 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBY4-00000001B5r-3tlE
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:41:29 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BI024368;
	Sat, 30 Nov 2024 09:41:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 4/6] arm64: dts: rockchip: convert leds node to "pwm-led" for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:55 +0000
Message-ID: <20241130004057.7432-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004057.7432-1-naoki@radxa.com>
References: <20241130004057.7432-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164125_177060_7CDA8B9E 
X-CRM114-Status: UNSURE (   7.94  )
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

convert heartbeat LED to use "pwm-led" to control birghtness.
also, define default-state = "on" to match with U-Boot.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 22 +++++++++----------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 95f2f4dbf12d..7c8359fe712a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -50,15 +50,15 @@ hdmi0_con_in: endpoint {
 	};
 
 	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_rgb_b>;
+		compatible = "pwm-leds";
 
-		led_rgb_b {
-			function = LED_FUNCTION_STATUS;
+		led-0 {
 			color = <LED_COLOR_ID_BLUE>;
-			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
 			linux,default-trigger = "heartbeat";
+			pwms = <&pwm0 0 1000000 0>;
+			max-brightness = <255>;
 		};
 	};
 
@@ -413,12 +413,6 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	leds {
-		led_rgb_b: led-rgb-b {
-			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	sound {
 		hp_detect: hp-detect {
 			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -456,6 +450,10 @@ usb_host_pwren_h: usb-host-pwren-h {
 	};
 };
 
+&pwm0 {
+	status = "okay";
+};
+
 &pwm1 {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
