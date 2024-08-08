Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F8A5C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 09:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrH6g3g4V/Yn55AzbGr1YMhy0Vqfjd1+XP0BcvFBq6M=; b=3+vf3dPYKXl7Gx
	OE4VXvuGlW5aItFG+14tt+gjQAH6DI1TW9JdC/o5giSWUHGRLCJ/oH+pQKCZZNhAB54OwfAGq5xn5
	mYRKVacuLOTj0JqrflkCo1WVw51oBJNapl2NtSU2dFc7+Fc/movQpyma5NYvHe3soD9CbT1831MRL
	jzkBrZMEy0f4ZzRJJ6m+3qWnsqFQdT3gOSOrOeh3lUZMsOnhVGUpKQm8Z2hNumYjXjUmmkgqeIp8J
	0Up66AqR++PdgpCQDoBguImx2sitljDJnBYhLjLAngHn3PXWeqNzk8aSUQf1Wb45B4SN+r7vj0qz/
	Q8pzmg2igmkInTbH5rdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbb-00000007kL2-1nhA;
	Thu, 08 Aug 2024 09:38:47 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbQ-00000007kEQ-46a9
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 09:38:41 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE6030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 05/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa CM3 IO
Date: Thu,  8 Aug 2024 18:38:03 +0900
Message-ID: <20240808093808.1740-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_023837_251804_2AB63010 
X-CRM114-Status: UNSURE (   8.98  )
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
- add default-state for led-1
- change function for led-0 from STATUS to HEARTBEAT
- change trigger for led-0 from "timer" to "heartbeat"
- change trigger for led-1 from "heartbeat" to "timer"

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 3ae24e39450a..f9033d9d17f8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -44,10 +44,11 @@ leds {
 		compatible = "gpio-leds";
 
 		led-1 {
-			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			function = LED_FUNCTION_ACTIVITY;
-			linux,default-trigger = "heartbeat";
+			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
 			pinctrl-names = "default";
 			pinctrl-0 = <&pi_nled_activity>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 45de2630bb50..81783d748707 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -18,11 +18,11 @@ leds {
 		compatible = "gpio-leds";
 
 		led-0 {
-			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 			color = <LED_COLOR_ID_GREEN>;
-			function = LED_FUNCTION_STATUS;
-			linux,default-trigger = "timer";
 			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
 			pinctrl-0 = <&user_led2>;
 		};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
