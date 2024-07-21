Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1B5AC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 17:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgMR74wJ5bOuzlr7BbOrbWLg44hT5VbrHofGSNH8Vuk=; b=aGyOQ/hyEc0yE3
	SDiB2kcHO9ZyS/NxGbttZPumLCiObGGbqtf4ySWmsKjdhs1bG+sfNucNFnkrZKOEYTabDf4OevLxv
	4NitqSGjQMjnFhXGusy/y+Br0wIQzqgaPSQIP4E6JIlbB4ZSbBC2bduI9TMg5YS+JZ5vU0Z80/kjY
	njjs6Fiyun/KXptVqAFIyH0lIfqeakWFNX75SZiHXusbb6oi5QhF4lUwIybyCSJ6dgrdcTwZPtCYs
	wefg0wJMEDXf46YAOwQKClBbpVSp5w7xtOZBQ45MlWmAUYOmI6OVPHJ0qIx8h8PP9KaBaGm7AVfwu
	mEIzt/EH4oU2R1LHok+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVaZ5-00000007GhD-2ko1;
	Sun, 21 Jul 2024 17:41:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVaX3-00000007Ft7-11rT;
	Sun, 21 Jul 2024 17:39:38 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVaV2-00075D-5S; Sun, 21 Jul 2024 19:37:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/14] arm64: dts: rockchip: add gpio-keys to Qnap-TS433
Date: Sun, 21 Jul 2024 19:37:19 +0200
Message-Id: <20240721173723.919961-11-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240721173723.919961-1-heiko@sntech.de>
References: <20240721173723.919961-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_103937_306392_3A9C416F 
X-CRM114-Status: GOOD (  12.32  )
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

The TS433 has 3 buttons, power and copy in the front as well as a reset
pinhole button on the back. The power-button is connected to the embedded
controller while the other two buttons are just gpio connected.

Add the gpio-keys definition for the two buttons we can handle right now.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 02fa46beb6371..c593a9c2313a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/gpio/gpio.h>
 #include "rk3568.dtsi"
@@ -23,6 +24,24 @@ chosen: chosen {
 		stdout-path = "serial2:115200n8";
 	};
 
+	keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&copy_button_pin>, <&reset_button_pin>;
+		pinctrl-names = "default";
+
+		key-copy {
+			label = "copy";
+			gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_COPY>;
+		};
+
+		key-reset {
+			label = "reset";
+			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -199,6 +218,16 @@ &pcie3x2 {
 };
 
 &pinctrl {
+	keys {
+		copy_button_pin: copy-button-pin {
+			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		reset_button_pin: reset-button-pin {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	leds {
 		hdd1_led_pin: hdd1-led-pin {
 			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
