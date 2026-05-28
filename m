Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD15CD6E4C
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 May 2026 23:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zgxvm2wQxHvie2IEHWkX9nZKWQMsqN7lxyBX9eQRtY=; b=WAfLieteZJ8mc6
	dPVGjryKpWYDUUxQkpKSDu+36dQ9aXqHyxqgdCnOT9OvuSjkU8uPhZNkoFJsm7hFbLb61stMN1/yN
	my529K65DD8yYF1lgXpJViHrwKNblnv22bWdvg5bgkG2wcaTEQ5/1jqy/czIN/7FQOnebxR+Ow8Hr
	nqC2jB23J9VReK2hC0qPClgB8uSBHsYbltFECtDvbe4GtTFf+jY96wjPIBJ+XQr/gsn9Cs12Cxofg
	hTQh0/ns0jlHJblAbi9WXGqa/kscKn90v8BRrUQzPM6NvWRyUdx2b41f/Di1ifptMAk2Gabwf0BaT
	V9IqOQiYGWKO0Jqmx9Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSk5W-00000006WgY-0LCt;
	Thu, 28 May 2026 23:24:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSk5N-00000006Wbs-2wUS;
	Thu, 28 May 2026 23:24:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=riwqpIc/BJQ8B4CkbSd+6uS23zDTy4cQCG9vwCchFO4=; b=KeOt7vobk1jsLoGeeEi9DdY1Gb
	pgOTxR13Sx/Rsl8uvxIgHiUHAW6ulmh6oOXOwzxDcc2tBGWa5Uzp4wtQruJCH1c32ZmA9lJIIKPhz
	FCPcjcwJGmzipDPyZAvZ4CtQEuS8eiJx2yBqLanSfg32/Xc8sjt8zW37Lg3Pn8NJsg+zEQ8QPLrCc
	Rjk3l99HHpYKSYZw+zfgRNV7lutOJIwQO9bj0geqbc9+kN15WNq7edMNYxjH1GXduz3WnatXhuGLW
	mM7K2HaN7XT3knDw12Mm37FFYD1R6EC50sb5g//QyKoCosTzNKMx4MHtuZktnzRkk/aONEkhuVtMd
	gEvK6fEw==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	amadeus@jmu.edu.cn,
	jonas@kwiboo.se
Subject: [PATCH v3 2/5] arm64: dts: rockchip: Enable USB 2.0 ports on Radxa E20C
Date: Fri, 29 May 2026 01:23:55 +0200
Message-ID: <20260528232358.4054610-3-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260528232358.4054610-1-heiko@sntech.de>
References: <20260528232358.4054610-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_162421_817461_1636411F 
X-CRM114-Status: GOOD (  11.97  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The Radxa E20C has one USB2.0 Type-A HOST port and one USB2.0 Type-C OTG
port.

Add support for using the USB 2.0 ports on Radxa E20C.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index b32452756155..f872b8d20ebc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -134,6 +134,18 @@ vcc5v0_sys: regulator-5v0-vcc-sys {
 		regulator-max-microvolt = <5000000>;
 	};
 
+	vcc5v0_usb20: regulator-5v0-vcc-usb20 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_en>;
+		regulator-name = "vcc5v0_usb20";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vccio_sd: regulator-vccio-sd {
 		compatible = "regulator-gpio";
 		gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
@@ -273,6 +285,12 @@ sdmmc_vol_ctrl_h: sdmmc-vol-ctrl-h {
 			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		usb_host_en: usb-host-en {
+			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm1 {
@@ -320,3 +338,45 @@ &uart0 {
 	pinctrl-0 = <&uart0m0_xfer>;
 	status = "okay";
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+/*
+ * The usb controller can only work in peripheral mode, as it is
+ * connected to one of the ports of an outward-facing usb hub.
+ *
+ * type_c-port (hub-input)
+ *          |
+ *       usb-hub
+ *     |         |
+ * uart-usb   usb-host0
+ *     |
+ *   uart0
+ */
+&usb_host0_xhci {
+	dr_mode = "peripheral";
+	extcon = <&usb2phy>;
+	maximum-speed = "high-speed";
+	phys = <&usb2phy_otg>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usb2phy {
+	status = "okay";
+};
+
+&usb2phy_host {
+	phy-supply = <&vcc5v0_usb20>;
+	status = "okay";
+};
+
+&usb2phy_otg {
+	status = "okay";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
