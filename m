Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B826DE6FE49
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 21:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4wQPbnAlJMtSYvELGj9xLx2VDXi7cQaSnPgOE+UDbI=; b=04VV46cr71u5NX
	0fXrS+3DCgKIJmLcuTcygAudcL7bcpxCiXR/NdEi3d9KUtpENyDkFKfGusp101Kxx2kye3f1bigDk
	EKx7RoVCxnweKJkZmI8NCiEv8cijE7aeHJko+T/bJB+wwOnmyEtvs2VJU5dd7yUi0/A8HUwmvTfcO
	hyfppTReqeU6MnENmJMMq9yIIQ1kR0P/lWD36SHGCSFBsJvefdPVZwxGZuoAaLPLIfMmJSMx2JSB1
	C06c+iwxEvMxT+uZNcjF8cONRVt4mN/YO7DfOxi6qzNr/oBtdsMBuoUrJ1LkkgxKKdWvSk5xn6g2i
	h20fZeuG48L08DqOmlpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPGI-0000000HUIJ-3BnB;
	Sun, 08 Sep 2024 21:15:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPAM-0000000HSyk-2veB;
	Sun, 08 Sep 2024 21:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=q1jpFbe8UJlfuFdvluwPG8fKnNdFZmBXVzuyZQAcBU0=; b=2uWcj+fSeC3gcEwnxueXgjo0si
	Z3hkjgc4JZ0ZdQi6FYCFmDU1+Nv/5yQK7ScViFakuhTZu+D2GzRMq0vg0xBtkw3tc/II49bUcg3df
	6f09+FSg4iDFa9dRssvhusUL3rsmNNEi/AUUj6EE0B9jsJtBUU2HfgUvff1l17LxvlnxQf2E1G8WN
	ZuJy3/T1KNISHP21A27l86XKZNYErHsyPPNsSYBILehyY34QrpWVKw+spe1kyq5K0HnUHLF8muwAQ
	ovVnCMHuVElR3a8PJzSN+Gaz/xlZ/K72xbZz8dx/L78piG/xDHe52h6YHTKEqwZKTD+fsqIAMRsSD
	rQcD5sNA==;
Received: from i5e8616cc.versanet.de ([94.134.22.204] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snPA7-0003s9-U9; Sun, 08 Sep 2024 23:09:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org,
	jikos@kernel.org,
	jic23@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com,
	bentiss@kernel.org,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-leds@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v8 9/9] arm64: dts: rockchip: set hdd led labels on qnap-ts433
Date: Sun,  8 Sep 2024 23:08:03 +0200
Message-ID: <20240908210803.3339919-10-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240908210803.3339919-1-heiko@sntech.de>
References: <20240908210803.3339919-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_140950_748698_458EB125 
X-CRM114-Status: GOOD (  11.62  )
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
