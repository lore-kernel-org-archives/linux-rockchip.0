Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 775DBC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNr33hNHWqVgiNefDqdrgBuZd9oTnOgLx294C3UKcpU=; b=CaSEHE64+WUXvT
	Zc+tPGJqUvte4bXOrjnbQ3u2Gda4zlAzRCppNSiewGT2p8mPobAcOnC52MskkMwFo6o5mmP9KXEpX
	iXB8Nuc72bbRx04Jw8VxOQhNp8sjTyyKcc+NnP3JNV0+7v9YMpwP0BrBfR73nGZNLpdtkweUqp+ET
	78uOeCKZtqGheYE9fcHQd71nKCyUTo+p9xIn5YAUV6kqFCe8YuAvWKUTIGsfVT87GbTX99PpCAJmR
	bo7W4fFFUSJ4wSr9hO9USHAriMOz2QGzzoenly1N/1MKxjTeHG4ROcFl4UAbTN2iCOcn7LClBmpvN
	oE5sUw4Cvj2bHHGsd16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wmq-000000017VL-2LAl;
	Tue, 21 May 2024 21:12:44 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wm4-0000000170U-3Hlk
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:12:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325892; bh=e2XmCYKg+DEbJTHFYQfWLLGn67ZCrbca5etc71lmhE0=;
 b=a2QKBYdf73bmZZFxbhFtjbLuBJKDBig6R3CJ0GyooYRCq7pi9l24NR+ICoNEQ2Z/aLTX5H343
 ObHT1orjHzKCipicUScyVQ1J9nlKNw6Bc5LaNSCf9/XsqnRoYn6qMS5ChZK6gCOP83K2KwBOMSg
 BHc3Tm0JaKuZmvRtI5/sH0hUIPAISkEQg9Iu+DykYNpIUllPofVi+m2r7jE2i995T0/lM0owL2m
 p61H71yX8ZGejkoJHA4rllkECedTsAHwajM5T4J97syteBuOYCFWK4/IX5SVrsDNYt33oL5OdNl
 ecTWyiPQf7DztzUL2DyPZgHHcp+fqFZ0lgBH981oKqMg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sjoerd Simons <sjoerd@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 13/13] arm64: dts: rockchip: rk3308-rock-pi-s: Update WIFi/BT related nodes
Date: Tue, 21 May 2024 21:10:16 +0000
Message-ID: <20240521211029.1236094-14-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d0e018b6b0c828344af8f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141157_670010_C5ED6F1D 
X-CRM114-Status: GOOD (  10.18  )
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

Update WiFi SDIO and BT UART related props to better reflect details
about the optional onboard RTL8723DS WiFi/BT module.

Also correct the compatible used for bluetooth to match the WiFi/BT
module used on the board.

Fixes: bc3753aed81f ("arm64: dts: rockchip: rock-pi-s add more peripherals")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 40 +++++++++++++++++--
 1 file changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index 5c702f00b27f..62d18ca769a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -17,6 +17,7 @@ aliases {
 		ethernet0 = &gmac;
 		mmc0 = &emmc;
 		mmc1 = &sdmmc;
+		mmc2 = &sdio;
 	};
 
 	chosen {
@@ -245,6 +246,20 @@ &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
 
+	bluetooth {
+		bt_reg_on: bt-reg-on {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		host_wake_bt: host-wake-bt {
+			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gmac {
 		mac_rst: mac-rst {
 			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -294,11 +309,24 @@ &sdio {
 	cap-sd-highspeed;
 	cap-sdio-irq;
 	keep-power-in-suspend;
-	max-frequency = <1000000>;
+	max-frequency = <100000000>;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
+
+	rtl8723ds: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake>;
+	};
 };
 
 &sdmmc {
@@ -330,12 +358,16 @@ &uart0 {
 };
 
 &uart4 {
+	uart-has-rtscts;
 	status = "okay";
 
 	bluetooth {
-		compatible = "realtek,rtl8723bs-bt";
-		device-wake-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		compatible = "realtek,rtl8723ds-bt";
+		device-wake-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on &bt_wake_host &host_wake_bt>;
 	};
 };
 
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
