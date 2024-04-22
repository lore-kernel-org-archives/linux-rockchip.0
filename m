Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5266FC10F1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 16:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zO2ZWJecAPNP9yV4fpxQ8UToNwDoE8vwkXn4feR4Uuo=; b=SfynkzNTiGSAX1
	sFgENYVmHaEeAe9Xrt9fUPRynhjWJi05WoED6feUxrHxwnJcczIlDf3PV7Idduzd6RGbtfL7VrB4U
	qOUt+wtEfawuqKivwNsiP2KFwjXTLdlQFiH9j3FVtNBL5qaQr3+clEYXHbYnpxNRNMX+JuttyMGna
	YScqqI454oEAoXKnyQh8wcIgiezQhf8Vifb3A0M5xPtEA/1++WzXGM/2yKW3GY9GRJ0kXXlkFZumw
	CWopt1HhkB1xJs6h9HKmQSUZ7HlMia6A//+iGIix2I+lcnu4YadUMKoM/RBxPpXWvtUZS93oDK1Mz
	pUijTs6HNIw7z5l2AJhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywi1-0000000EJsB-2B48;
	Mon, 22 Apr 2024 16:40:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywhw-0000000EJnh-1QuX;
	Mon, 22 Apr 2024 16:39:57 +0000
Received: from i5e861d85.versanet.de ([94.134.29.133] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rywhu-0004gq-B1; Mon, 22 Apr 2024 18:39:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: add usb-id extcon on rk3588 tiger
Date: Mon, 22 Apr 2024 18:39:50 +0200
Message-Id: <20240422163951.2604273-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240422163951.2604273-1-heiko@sntech.de>
References: <20240422163951.2604273-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_093956_419615_56FDDACE 
X-CRM114-Status: GOOD (  11.58  )
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

The Q7 standard specifies a usb-id pin on the connector to distiuish
between host and device mode. Model this via the usb-id extcon binding.

While the pin is part of the Q7 standard, so part of the module, the
extcon stays disabled in the som dtsi and will only be enabled in a
baseboard using it.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 4984e36a8c2d..cafb40283882 100644
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
