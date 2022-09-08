Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCD1CC38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 03:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qAjJYfXVEliQ0c6pHYTBz3TgwPhHbtCjySJVgCNqbU=; b=0CBW14g19D6LGI
	3wZnfsWhmDV/Bv6pjoDNAHE+ymt+W/qFgdWHr5pJikoy5utjPqbPePbr5AxZRvO7zIv49NrZiXH9h
	fWbzCbdWmY5eYT25R+NL9HXvXQFBvgj0aY4E+VlmfUxdrXidNwaeMePEcVZ77k1tYt8QsrJ9HRUEY
	kQWrSsa9Snm9c/faquodEVtPjE+tRzEllDNxwECfP/znZnQCn7+ixEv9Xd7OVXHbPTVlCotF3lNJP
	69rWPDsy6QIp4X20FxAuM8JvRHT+B+d5MZTh6SciYkosMHeSgyfzwKRc0gGLf/HgeDCGZO8EfMM2i
	28YW1+EfQoVi48yGHGlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW845-00F4sj-Kh; Thu, 08 Sep 2022 03:18:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW844-00F4rK-FG; Thu, 08 Sep 2022 03:18:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=oYNTCimbQOPv9CxALCsyhVqVO29Sos/H3TvVWlbOb30=; b=dKKPO09pCeziz4d6ju6vTOtk2R
	AJPdnrbjPf2CkhDB0bjJ2Ta8WWmVPV3D0EjZMtXaI3WF7YlhyqY9Mh0MeVxLRqZ9W0KihgVWc0XFf
	RgEGJ5yNS1U/Ce6/FR4HGs8mzg0GbpnHoVU2nYq7qyq4Pg3cBkm1KYbtKIoHIXhZ/V3wsiv+lVHQ3
	bnszeU0OkASnV7FKlIrvSVETxqYK/HZG3eC33nURMS6XD/qPDyFrPaYW/TCSm3MtU7SUJGDPloqgA
	BBXaHmScGNiQOOJWXDxq764jP8D+xHMfnwxzBF4SqvokFpvfkQyzDUCDXBKwRz9Ym2TBpswu9m3yg
	tQVMRX9g==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW83y-00BzTx-Rz; Thu, 08 Sep 2022 03:18:52 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 2883I37e015758;
	Thu, 8 Sep 2022 12:18:04 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: add LEDs for ROCK 4C+
Date: Thu,  8 Sep 2022 03:17:26 +0000
Message-Id: <20220908031726.1307105-2-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220908031726.1307105-1-naoki@radxa.com>
References: <20220908031726.1307105-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_041847_655884_595C4CAA 
X-CRM114-Status: UNSURE (   8.47  )
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

add support for user LEDs on Radxa ROCK 4C+ board.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
v2:
 - fix led node label

 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index a1c4727acfcd..d7051b5d4904 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -6,6 +6,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/leds/common.h>
 #include "rk3399.dtsi"
 #include "rk3399-t-opp.dtsi"
 
@@ -38,6 +39,28 @@ clkin_gmac: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&user_led1 &user_led2>;
+
+		/* USER_LED1 */
+		led-0 {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "default-on";
+		};
+
+		/* USER_LED2 */
+		led-1 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -404,6 +427,7 @@ &i2s2 {
 
 &io_domains {
 	bt656-supply = <&vcc_3v0>;
+	audio-supply = <&vcca_1v8>;
 	gpio1830-supply = <&vcc_3v0>;
 	sdmmc-supply = <&vccio_sd>;
 	status = "okay";
@@ -424,6 +448,16 @@ bt_wake_l: bt-wake-l {
 		};
 	};
 
+	leds {
+		user_led1: user-led1 {
+			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		user_led2: user-led2 {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
