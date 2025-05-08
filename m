Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64978C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 16:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AiE+GMq49HULE51iBfnWkda3Wa9w3IDXbK57zQ5SGc=; b=ZdpLL4usNMKftK
	j1p3v99Q/NEf1Mx4QvAUIBgwOa7F2viFs3Ngycj4WT5BSEOXubcTnOfg0Ahs1v2b4cSXTMpnUauan
	lpaShNozQ+wYd4Pjn3Df/WVeyrmNkHvHzXsnTHe/jZJWe9A10ysT/qL7wJAOzLiGxFvXZz1tz28iq
	5Bo/j6dCZokI9YKSdv7QlTgp8Cls9o5s5oJcsHaab+fwEQsJ/ITXQtZy71dpM0972rvwG4c96ff/1
	tj+TKNAA2jji0jE+DWfdqvKRHijGhf+KxJGjiTedLH90/ww0L8OyROPKzgYEmV8a01kUvEXqycG2J
	0Bp+hLpoUaKWDTcE7HAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD3m0-00000001Elg-3A0C;
	Thu, 08 May 2025 16:07:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD2tG-000000014dZ-1mOX;
	Thu, 08 May 2025 15:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=v6Lj3OAwwGDjaJkTxr/XS365aD/k3hFs5qcq4+YYQ/k=; b=znn8OgGbdaC154+C8vhI9MKwYX
	olq81jiDghVLyEbBYFNKGPVT6ChEzuizdstYVMOwQoo6VcS/smYBzzW8v6OBpGahzvAUbLcrFLz0P
	Em2IuekeFfLNTBwR4sws22Sr2ZxWdtynRh6MbFCPCL25APaOs6qrwOaj8QQXTqDMvUAg3Cb3Rq4ig
	gbz5QrImXjcvP3zwmX6tSzM6JguFAgS3ifHnhT8aSqv2Z0Xh04ZgN/jFQ5ZD2vJ3Zf6aRZ1h5gLx5
	fSql2Tpb2lNRcxrIudBP6mw//VKwk1+b266qQNgcEQYfq/BH1icAy3r0DKBzJsy71uKUi5Sjn/4Qj
	7Rywv23A==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD2tE-0005fP-OE; Thu, 08 May 2025 17:10:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/6] arm64: dts: rockchip: move reset to dedicated eth-phy node on ringneck
Date: Thu,  8 May 2025 17:09:51 +0200
Message-ID: <20250508150955.1897702-3-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250508150955.1897702-1-heiko@sntech.de>
References: <20250508150955.1897702-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_081026_482935_703B91C2 
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

Using snps,reset-* properties to handle the ethernet-phy resets is
deprecated and instead a real phy node should be used.

Move the Ringneck phy-reset properties to such a node

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../boot/dts/rockchip/px30-ringneck.dtsi      | 22 ++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index 142244d52706..ab232e5c7ad6 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -83,9 +83,7 @@ &emmc {
 
 /* On-module TI DP83825I PHY but no connector, enable in carrierboard */
 &gmac {
-	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 50000 50000>;
+	phy-handle = <&dp83825>;
 	phy-supply = <&vcc_3v3>;
 	clock_in_out = "output";
 };
@@ -344,6 +342,18 @@ &io_domains {
 	status = "okay";
 };
 
+&mdio {
+	dp83825: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&phy_rst>;
+		reset-assert-us = <50000>;
+		reset-deassert-us = <50000>;
+		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	};
+};
+
 &pinctrl {
 	emmc {
 		emmc_reset: emmc-reset {
@@ -351,6 +361,12 @@ emmc_reset: emmc-reset {
 		};
 	};
 
+	ethernet {
+		phy_rst: phy-rst {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		module_led_pin: module-led-pin {
 			rockchip,pins = <1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
