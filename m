Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E12F4CA0EE6
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 08:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDLqbZTYKRaC1HrJxI3mKXmDIgOBMbAzpiZ1xjW8DT4=; b=UESV0DD5Kasl4J
	f16zvzzJmra9t7ue4E6cRCsMOuSRdzIXsXdNodFUV0nTIXhAXs0Giw5Dsxh82jKyXY4V+NJsXhiCw
	WKka4VyaEDF8HeB8vaeoemsSJvCAdSp1ehbJ5+c732gsOmCBHcvZT/il7nVKlZB6BlbGZAdVgC8sb
	ly1d8U3BdOZpqek2JprxG19sE7QkYa0LRE7ZBV8XTCjL+WhCrAU2HXUnq5btL0Tf5TjKNlPCaU4Ud
	/DNuU5sNZ31Fw+bghHX+Zr/ssojCb4+m3c35/gfOyKaZLGCSJ4MiC1d+sOoH2I9dF1xRG7ZZyIPZZ
	Kp8q35GfmGwsYzOI50oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unBxr-00000004HIv-2zKK;
	Sat, 16 Aug 2025 08:08:35 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unBv9-00000004H5l-00GF;
	Sat, 16 Aug 2025 08:05:48 +0000
Received: from localhost.localdomain (unknown [119.122.212.9])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1f93a30d1;
	Sat, 16 Aug 2025 16:00:43 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: rockchip: update pinctrl names for Radxa E52C
Date: Sat, 16 Aug 2025 16:00:30 +0800
Message-Id: <20250816080030.183931-4-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250816080030.183931-1-amadeus@jmu.edu.cn>
References: <20250816080030.183931-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a98b1e52efb03a2kunm56d2169525b758
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZShgZVhlITR4fTR4ZHR9CSlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVCWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_010547_203008_EEFFBE18 
X-CRM114-Status: UNSURE (   8.11  )
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

Updated the pinctrl names of the user key and power LED according
to the schematic. Also updated the nodenames of other pinctrls.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
index 4a3ae95f122f..f93b129a0032 100644
--- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
@@ -42,7 +42,7 @@ button-0 {
 	keys-1 {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
-		pinctrl-0 = <&btn_0>;
+		pinctrl-0 = <&pwm15_ir_m1>;
 
 		button-1 {
 			label = "User";
@@ -55,7 +55,7 @@ button-1 {
 	leds-0 {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&led_0>;
+		pinctrl-0 = <&power_led>;
 
 		led-0 {
 			color = <LED_COLOR_ID_GREEN>;
@@ -306,13 +306,13 @@ &pcie2x1l2 {
 
 &pinctrl {
 	keys {
-		btn_0: button-0 {
+		pwm15_ir_m1: pwm15-ir-m1 {
 			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	leds {
-		led_0: led-0 {
+		power_led: power-led {
 			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -328,19 +328,19 @@ pcie20x1_2_perstn_m0: pcie-2 {
 	};
 
 	regulators {
-		vcc_5v0_pwren_h: regulator-5v0-1 {
+		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	rtc {
-		rtc_int_l: rtc-0 {
+		rtc_int_l: rtc-int-l {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	usb {
-		usb_otg_pwren_h: regulator-5v0-0 {
+		usb_otg_pwren_h: usb-otg-pwren-h {
 			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
