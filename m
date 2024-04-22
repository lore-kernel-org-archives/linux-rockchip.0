Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A60CC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 16:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dE5Ccw1Gmd2Pqo7e5CCUAFQ8hdIlU2smd5RV4i/RnVg=; b=uCwvJst/95PyDc
	Xe3YPsX3jTLsE2PpGmFw9WKcYZICnxypOqeg3OSNE87932NUrv1+hMrTZGPMwOAfEpb3oOr3sXids
	FgpN7tWKw21IkEEOyY7PMv24HH33piZhwc01G/SSK3Uo0AOFU2qEj2SO3xHYfjiLfEPN328FQLA9e
	KStti3UlgKvW/bZUmvVuWlWaqXWsujDu1gGKtZnM9d+cm782T13c9kwIT73/kCdDjSctB+4/62twS
	MkOyAy7ejNObKdzGlmQRKDoHomtRBg/yTSFaCXOFyOADwjANf9nMxF5pjPQFQORam7kJUt/XQBB2g
	Am9chv3UBYG5GXOSiw5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywi4-0000000EJv5-3meJ;
	Mon, 22 Apr 2024 16:40:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywhw-0000000EJnn-1RQv;
	Mon, 22 Apr 2024 16:39:58 +0000
Received: from i5e861d85.versanet.de ([94.134.29.133] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rywhu-0004gq-MA; Mon, 22 Apr 2024 18:39:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou
Date: Mon, 22 Apr 2024 18:39:51 +0200
Message-Id: <20240422163951.2604273-4-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240422163951.2604273-1-heiko@sntech.de>
References: <20240422163951.2604273-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_093956_436928_BDACA97D 
X-CRM114-Status: GOOD (  12.65  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Apart from the host-only usb3 controller (host2) the rk3588 also provides
two dual-role controllers. On the Tiger-Haikou combination these are
connected to the lower usb3-host port in host-only mode and the micro-usb3
port for dual-role operation.

Add the necessary controllers, phys to the Tiger-Haikou board and enable
the usb-id extcon.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 2aa43e7430e5..52695b6c113a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -113,6 +113,16 @@ vcc5v0_baseboard: vcc5v0-baseboard-regulator {
 		vin-supply = <&dc_12v>;
 	};
 
+	vcc5v0_otg: vcc5v0-otg-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&otg_vbus_drv>;
+		regulator-name = "vcc5v0_otg";
+		regulator-always-on;
+	};
+
 	vcc5v0_usb: vcc5v0-usb-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
@@ -137,6 +147,10 @@ &combphy2_psu {
 	status = "okay";
 };
 
+&extcon_usb3 {
+	status = "okay";
+};
+
 &gmac0 {
 	status = "okay";
 };
@@ -199,6 +213,13 @@ haikou_keys_pin: haikou-keys-pin {
 				<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
+
+	usb2 {
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins =
+			  <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &sdmmc {
@@ -214,6 +235,23 @@ &sdmmc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	phy-supply = <&vcc5v0_otg>;
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -236,6 +274,13 @@ &uart2 {
 
 &uart5 {
 	rts-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_HIGH>;
+};
+
+&usbdp_phy0 {
+	status = "okay";
+};
+
+&usbdp_phy1 {
 	status = "okay";
 };
 
@@ -249,6 +294,19 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+/* host0_xhci on Q7_USB_P1, usb3-otg port */
+&usb_host0_xhci {
+	dr_mode = "otg";
+	extcon = <&extcon_usb3>;
+	status = "okay";
+};
+
+/* host1_xhci on Q7_USB_P0, lower usb3 port */
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 /* host1 on Q7_USB_P3, usb2 port */
 &usb_host1_ehci {
 	status = "okay";
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
