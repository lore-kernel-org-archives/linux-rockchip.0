Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09BB6ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 16:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yfwJi3yPeq1G8oWmbRmS1eiLthJAZ4s6nB16eihLO7U=; b=Bw6tAKZWwkneCH
	UyZ/T4l2/G727hLB3XImjLThngAjX/BJ7zeaAhCVMU554vr2kt1rkLEJ+hwpudRi8/pUtpYbh9lR9
	KbMtYaoBb71osbBffzYYfr8mYguvGBNGAv9xr9AUx47mIBB9APlf1CWrsfkLjoveGumQ0b6P/hm+8
	D+E3/1fthkDlq3nANdQlT8Z/N4HPdv6ANiy+oskvPOhqeeZHMyPv5BK4/U276BZ3L0K9Fk5pvg72G
	C34R7hqCKwH1oNuUJkVg0fE+CjBz+voD47GjV2CTEux3qCIoya4HRGkhWJlpj32QVMlhHcH6+EmRS
	RKc+/eBQ6S0laTLLhlQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbJt-00FKlT-HD; Tue, 06 Sep 2022 16:21:01 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVav3-00F4gu-W0; Tue, 06 Sep 2022 15:55:23 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
	by mxout2.routing.net (Postfix) with ESMTP id 3ABDA60520;
	Tue,  6 Sep 2022 15:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1662479715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=05qAv3+kzwP+MA6jrSst4cVE8khLvvO8AtxdZyV1xHg=;
	b=w1LUvgHIvuZqub5JMVyOhesBJ34do/8HPKYLMHc2WBEeSJcz2YlttSJYkRCoyJEmNusPyL
	Ndi+NaaD8pptu3d7YQykdV15GcUhTN3d1xo5RjPOS6F0p7c2tgHlGE/5qsP1aNsLEUncHA
	fTZstosgTK/2bGLomHFOZddDebyboAA=
Received: from frank-G5.. (fttx-pool-80.245.76.100.bambit.de [80.245.76.100])
	by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 6B6C44062A;
	Tue,  6 Sep 2022 15:55:14 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add regulator suffix to BPI-R2-Pro
Date: Tue,  6 Sep 2022 17:55:03 +0200
Message-Id: <20220906155503.10971-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mail-ID: bb3abd82-9478-4ed1-9b0f-28cf6dd03c43
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_085522_260343_B1B7A271 
X-CRM114-Status: UNSURE (   9.45  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add -regulator suffix to regulator names on Banana Pi R2 Pro board as
discussed on Mailinglist

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
https://patchwork.kernel.org/project/linux-rockchip/patch/20220825193836.54262-6-linux@fw-web.de/
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 7a8d55a898f5..432469697544 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -46,7 +46,7 @@ green_led: led-1 {
 		};
 	};
 
-	dc_12v: dc-12v {
+	dc_12v: dc-12v-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "dc_12v";
 		regulator-always-on;
@@ -66,7 +66,7 @@ hdmi_con_in: endpoint {
 		};
 	};
 
-	vcc3v3_sys: vcc3v3-sys {
+	vcc3v3_sys: vcc3v3-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
 		regulator-always-on;
@@ -76,7 +76,7 @@ vcc3v3_sys: vcc3v3-sys {
 		vin-supply = <&dc_12v>;
 	};
 
-	vcc5v0_sys: vcc5v0-sys {
+	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
 		regulator-always-on;
@@ -146,7 +146,7 @@ vcc3v3_ngff: vcc3v3-ngff-regulator {
 		vin-supply = <&vcc3v3_pi6c_05>;
 	};
 
-	vcc5v0_usb: vcc5v0_usb {
+	vcc5v0_usb: vcc5v0_usb-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
 		regulator-always-on;
@@ -156,7 +156,7 @@ vcc5v0_usb: vcc5v0_usb {
 		vin-supply = <&dc_12v>;
 	};
 
-	vcc5v0_usb_host: vcc5v0-usb-host {
+	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
@@ -168,7 +168,7 @@ vcc5v0_usb_host: vcc5v0-usb-host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
-	vcc5v0_usb_otg: vcc5v0-usb-otg {
+	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
