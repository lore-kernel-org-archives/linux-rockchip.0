Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E99F9D735EB
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5Cs9NbTg796vV8Llo7ud0o7wVYoN25XGoGUA2lKEOs=; b=CrTLN/dScQ+wtH
	+JM2jRlKyjNhhdMPBufQD3Ur8T2nEw7bxwFWEKrmXwaPqbBLG29zCztx4PoEA+rgMNUlUdUIfF7t9
	TP2sW4M0RXEJzMkVw69Dk2O2dVg4TESxOroDt2emYj9Tf2eqUKRMV3ibQnA/cg82s+0be5lRtA2h+
	S9MsnL6QMX/Y//nXovnwah75YxfmjWqHW3fBJV/8VUYriAl/qLiMptVFpCNG0mkAPcpyJsr/BrV5u
	jnw81HPU1X7beoKO9i+3Wmdfu438+Ht4qZPzwYPm7MVb4wR0+1ZyKSexziOnJfW2n9TEkZvSQWTxw
	b8SWqe4xIv8ZZ9xh930g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBg3-00000001BnV-2wd6;
	Sat, 30 Nov 2024 00:49:39 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBg0-00000001Bku-1TFE
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:49:38 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0nQ2P024394;
	Sat, 30 Nov 2024 09:49:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 4/4] arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:49:20 +0000
Message-ID: <20241130004920.7505-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004920.7505-1-naoki@radxa.com>
References: <20241130004920.7505-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164936_665425_BA47EEA5 
X-CRM114-Status: UNSURE (   7.76  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

no functional change is intended.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index fb39629c13c6..e3b2d62427b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -138,7 +138,7 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 	vcc5v_usb: regulator-vcc5v-usb {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&usb_host_pwren_h>;
 		regulator-name = "vcc5v_usb";
@@ -293,7 +293,7 @@ regulator-state-mem {
 &i2c6 {
 	status = "okay";
 
-	hym8563: rtc@51 {
+	rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
@@ -309,7 +309,7 @@ hym8563: rtc@51 {
 &i2c7 {
 	status = "okay";
 
-	es8316: audio-codec@11 {
+	audio-codec@11 {
 		compatible = "everest,es8316";
 		reg = <0x11>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
@@ -471,7 +471,6 @@ &sdhci {
 };
 
 &sdio {
-	max-frequency = <200000000>;
 	bus-width = <4>;
 	cap-sdio-irq;
 	disable-wp;
@@ -481,9 +480,6 @@ &sdio {
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdiom0_pins>;
-	sd-uhs-sdr12;
-	sd-uhs-sdr25;
-	sd-uhs-sdr50;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_wf>;
 	vqmmc-supply = <&vcc_1v8_s3>;
@@ -492,7 +488,6 @@ &sdio {
 };
 
 &sdmmc {
-	max-frequency = <200000000>;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
@@ -530,7 +525,7 @@ &spi2 {
 
 	pmic@0 {
 		compatible = "rockchip,rk806";
-		reg = <0x0>;
+		reg = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-parent = <&gpio0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
