Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8BEFC5321E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 20:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4wQPbnAlJMtSYvELGj9xLx2VDXi7cQaSnPgOE+UDbI=; b=esWa61psT1hBVL
	/PO3NszL1A1oJ29fQe9mCn3IrDLlzx57GsB+XyScsxz8fiVN/WFbj+AoK4CimYj1LfUtFbKaXqANz
	33NISudQC//64f6EPqbvibQ4nJw9ZO2Fp4B1wbM6Q9W/tQserpOnAAVFD8wxwIqQTwY2iWFZtOL8k
	INyPslQo4pueMtjOhrmOa05ON20XIteYg6tBFPDROgA4iO73uRF16DqyfKa0wZGXFgAeqdomFIOaS
	ckmhTa1SCt0NLez6ag3Yrz7nIBz2ik56emzD+7f6dDs4sG01JeqoNjsCbROjPyL+zIJ3lOO51NVZN
	VVronRed6wOui7sYNcCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siJy8-000000052Dc-3ozw;
	Sun, 25 Aug 2024 20:36:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siJux-000000051HO-28B5;
	Sun, 25 Aug 2024 20:32:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=q1jpFbe8UJlfuFdvluwPG8fKnNdFZmBXVzuyZQAcBU0=; b=yJfQ/ZYiGjXfIVii5sEup1e3oT
	YoLOHgiUbggO1eXEczvmIWxBeHgK2DavbeoG4HWaUqbd/yKwGL8sYArl25mjYWmG2UyiTLzQuw5nQ
	WEUsXg9adhpxTTYG81NFZWAMd38HhRRxyJrAlCxXMPOZfYMEqGEdHRy3dEwFrXEDuB/BxyedDQqpU
	V3rnk+YDqoJN86IpKRAhNQvSkBeJJf9yAsehJVv71Ye2xwI6Zbz1zPgMz6DADAsL2IFzp8f0z56Vf
	ufG5jrRVEkGe1ij3dl+nir8fu5NomR279+5wg90IkMiuBDBZSsbS3rDNT4GjHWrfqy5ZLN2DTVIZZ
	R3rbk+BQ==;
Received: from i53875a40.versanet.de ([83.135.90.64] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1siJun-0001cM-E0; Sun, 25 Aug 2024 22:32:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	heiko@sntech.de,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v6 7/7] arm64: dts: rockchip: set hdd led labels on qnap-ts433
Date: Sun, 25 Aug 2024 22:32:35 +0200
Message-ID: <20240825203235.1122198-8-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240825203235.1122198-1-heiko@sntech.de>
References: <20240825203235.1122198-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_133255_758651_A68B91E9 
X-CRM114-Status: GOOD (  11.51  )
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

The automatically generated names for the LEDs from color and function
do not match nicely for the 4 hdds, so set them manually per the label
property to also match the LEDs generated from the MCU.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 4bc5f5691d45..7bd32d230ad2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -50,6 +50,7 @@ led-0 {
 			color = <LED_COLOR_ID_GREEN>;
 			function = LED_FUNCTION_DISK;
 			gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
+			label = "hdd1:green:disk";
 			linux,default-trigger = "disk-activity";
 			pinctrl-names = "default";
 			pinctrl-0 = <&hdd1_led_pin>;
@@ -59,6 +60,7 @@ led-1 {
 			color = <LED_COLOR_ID_GREEN>;
 			function = LED_FUNCTION_DISK;
 			gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
+			label = "hdd2:green:disk";
 			linux,default-trigger = "disk-activity";
 			pinctrl-names = "default";
 			pinctrl-0 = <&hdd2_led_pin>;
@@ -68,6 +70,7 @@ led-2 {
 			color = <LED_COLOR_ID_GREEN>;
 			function = LED_FUNCTION_DISK;
 			gpios = <&gpio1 RK_PD7 GPIO_ACTIVE_LOW>;
+			label = "hdd3:green:disk";
 			linux,default-trigger = "disk-activity";
 			pinctrl-names = "default";
 			pinctrl-0 = <&hdd3_led_pin>;
@@ -77,6 +80,7 @@ led-3 {
 			color = <LED_COLOR_ID_GREEN>;
 			function = LED_FUNCTION_DISK;
 			gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "hdd4:green:disk";
 			linux,default-trigger = "disk-activity";
 			pinctrl-names = "default";
 			pinctrl-0 = <&hdd4_led_pin>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
