Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A69ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 05:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oUnV+OLatdWUri/yPUi++s/ufuTrkiJGghmDns8zTN0=; b=xW1INCZYnJ4TQ9
	jyZsULTYqfLBctmdI+2XXSqkhzPgNEIH4aVh7vDAlRp34HZ6lhAKDDHv5+4iQrPw9aUdYKO3mtfcX
	fXOhj8fKuKXddE/jbVPRocpl6TXcE7xZbjeAVfaVhzyks49GrKwjIATo2LyyZbCYSMoGLKpW/h4UY
	rTzUB1d6INqbFTc/dYoPcobQXT1+MpQy8Z9x54Ym9mv6XCOYZvn9gmecV3frXpm00oXkthS+xYCkb
	4ISNnqAaeYs6hsks0XOXn/VSJggrEQjUy/UwtNGveJWPHU0xN3Fs+3o+oT95VuMQitguLbYf5dxac
	Dgbg3yqXlpvq9XdxHtCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVnDj-002e6V-QC; Wed, 07 Sep 2022 05:03:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVnDi-002e5d-HS; Wed, 07 Sep 2022 05:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=YhoyrrWwQbmJFUBYZUEYhSMTg1WvCIUIpvZ+ktEocRw=; b=g3Gh1OVgFiI+qPrs//QUjssI+p
	aKm3rUDQ82jztGhbYTaiIrm8GZSI/AtOuR5Ci4p0/sP/j2eKetcpX8bxg8dfOf2+d3iW5GQU3xuRM
	xV6AUR0vGkqMvEdvGPqoaNPz5K/C31hhkf5cPmLtUicfWAeXQdMaaIXQkeOgBBLORNdwg3OMzcVbE
	1VsaOM3x9dcalfc0aPchwme24+mkYFjqz1RLzRkh9tyMU0YFRob/0bT7O8z60ojz71IuKveIb24jw
	Hy35ZyclBbBjdZNNzUEJH+Yo8WtSU153D9exWu00b1AMsy1JvnPnZdXq/e2md/wn1ZW6TyOooAtHz
	2DjNpTpA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVnDb-00B4hH-0Z; Wed, 07 Sep 2022 05:03:26 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 28752YYE010356;
	Wed, 7 Sep 2022 14:02:35 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+
Date: Wed,  7 Sep 2022 04:59:24 +0000
Message-Id: <20220907045925.1284785-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_060319_564022_B26AF52E 
X-CRM114-Status: UNSURE (   7.40  )
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
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 401e1ae9d944..49126560b30b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 #include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
@@ -27,6 +28,19 @@ clkin_gmac: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&user_led2>;
+
+		user_led2 {
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
@@ -553,6 +567,12 @@ hp_int: hp-int {
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
