Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3877BC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 21:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNz3p7sE7QbdOyIXrumpqebLahkdbSoDH882sncMCGE=; b=J0AzKBqx3PpzXD
	ESVWsGuS0z96DGonNH6YLxNWd5Ehm3tCDOu8rmufuD8bzmYPAIrPSrWFDYULAmvbc7+IMDLwNtaj3
	FJC8wxW1CWUCFSEnyYhKhS68Mlcl0mLgfg5Uxssyu0hYs6DhzxfHVgsyI1aXwB/qBXDEYfn/IQgoy
	aRDAL/1OJe9qEO8B83vZn95M9Paad6lR5GPG87K2zMyaE0RkoWzIZlGDFgcO7BOy/SWxOaRhDeQCr
	B8L526T6eFNWrowWypddRc0MQr8HEiMvxskIJEdRxQINLfke0ZBll0ZlbK56QiDmGSZYZnrvh61Wa
	RVMB52Tvivy74nwO8Hcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxYv6-00000003iJ6-1gET;
	Thu, 18 Apr 2024 21:03:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxYuv-00000003iCU-0ofb;
	Thu, 18 Apr 2024 21:03:40 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxYut-0002jJ-6o; Thu, 18 Apr 2024 23:03:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/2] arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou
Date: Thu, 18 Apr 2024 23:03:32 +0200
Message-Id: <20240418210332.2394871-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240418210332.2394871-1-heiko@sntech.de>
References: <20240418210332.2394871-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_140337_438538_F51F0370 
X-CRM114-Status: GOOD (  13.59  )
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

Add the necessary controllers, phys and usb-id extcon to the Tiger-Haikou
board. The Q7 standard defines the pin as usb-id, but it will only ever
get used if the baseboard actually provides an OTG port. So the extcon
stays disabled in the dtsi and only gets enabled in the haikou dts.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 58 +++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 15 +++++
 2 files changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 214f8258af68..d6e30d5697bd 100644
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
@@ -237,6 +275,13 @@ &uart2 {
 
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
 
@@ -250,6 +295,19 @@ &usb_host0_ohci {
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
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 72fe696b0034..95b7d7784a37 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -23,6 +23,14 @@ emmc_pwrseq: emmc-pwrseq {
 		reset-gpios = <&gpio2 RK_PA3 GPIO_ACTIVE_HIGH>;
 	};
 
+	extcon_usb3: extcon-usb3 {
+		compatible = "linux,extcon-usb-gpio";
+		id-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb3_id>;
+		status = "disabled";
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -327,6 +335,13 @@ module_led_pin: module-led-pin {
 			rockchip,pins = <1 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb3 {
+		usb3_id: usb3-id {
+			rockchip,pins =
+			  <3 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &saradc {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
