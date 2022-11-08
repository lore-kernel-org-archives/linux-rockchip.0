Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF31FC43219
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9Y18oGfTbrAewYPD2nmYj/QB6B8OIMTP8UXlceLt/4=; b=IDpPT5KI6g4ML6
	eSot9aoFWCzjILlnc+f5ZDqqV7QFPqjAbmkMLxcfC65cpEdn6t2RODoKf8CpLi0d1uQvjMjBvpAhB
	8iK2mj7B31B49rbJ0bXc8x8C8uSuBQPwffa1tU9+upAxXx8mPHIdGDwxRPfzkbSdgyBy0t3kJ6dRz
	zme0n0AHic0mJu/mi7X7uj89r3PiQ5WVn3Erykjm2OcA6Rq7RRgHJSApwOSA7nNWUXwF6byS+yv7U
	/iBGT91kf8/Zuh/Rx4NG1CSpwAYDpA5D0Te/Y3I6GarZxZGCufMN8K0X53G05kfrB+mOJSOxTfCR/
	TOOE1SVDy3OnQYsi6FvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSBz-006zA2-G6; Tue, 08 Nov 2022 17:15:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSBu-006z7h-3v
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 17:15:16 +0000
Received: from jupiter.universe (dyndsl-095-033-156-208.ewe-ip-backbone.de [95.33.156.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F40CC66029A5;
	Tue,  8 Nov 2022 17:15:09 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667927710;
	bh=bjkHIC8gfk2bE/lvWEQPJd3CwZp3t4CM7K07FKbR+sQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=i9Tk4PJ5ADg0+sjwssYbrRvsKMJI8UInSOfIR4xO/RIonl//L02hO0L+Cshn9rlmO
	 HXEftX9rcN9c0GdyuDyfP0FJSv3zkbb5LM6xKG6J+5+kIMVR2Y4Ezh5/NaeEgsf2hA
	 KU9nBfQ3mbwteR+4D05B200YH3fiX7wINtO73grODNhN/juDYyn0xrDAoH0TCzEJ9H
	 m9UDNGwTKQwdzcuCDcpjWUALh6Cl3ODhrWIOTtrDmtS0pwpbuRqM2OQNxVhHbxWnE+
	 9CdQvV3uAmEXh+aTe5sK1ud0tAjLsKYyKwCj3XwI8sQw08moIXP+2h9CYM5kcU8d4z
	 Y2PhXZzuYoZsg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1A8CC480088; Tue,  8 Nov 2022 18:15:05 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: Add rock-5a board
Date: Tue,  8 Nov 2022 18:15:00 +0100
Message-Id: <20221108171500.99599-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221108171500.99599-1-sebastian.reichel@collabora.com>
References: <20221108171500.99599-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_091514_353986_C9A65F0C 
X-CRM114-Status: GOOD (  15.24  )
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

Add board file for the RK3588s Rock 5A board. While the hardware
offers plenty of peripherals and connectivity this basic implementation
just handles things required to access eMMC, UART and Ethernet (i.e.
enough to successfully boot Linux).

Tested-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 63 +++++++++++++++++++
 3 files changed, 69 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4230881371fa..6bff4c42d815 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -744,6 +744,11 @@ properties:
           - const: rockchip,rk3588-evb1-v10
           - const: rockchip,rk3588
 
+      - description: Radxa Rock 5A
+        items:
+          - const: radxa,rock-5a
+          - const: rockchip,rk3588s
+
 additionalProperties: true
 
 ...
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 12ed53de11eb..31fa55750a0f 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -73,3 +73,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
new file mode 100644
index 000000000000..25387a000341
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "rk3588s.dtsi"
+
+/ {
+	model = "Radxa Rock 5A Board";
+	compatible = "radxa,rock-5a", "rockchip,rk3588s";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&gmac1 {
+	phy-mode = "rgmii-rxid";
+	clock_in_out = "output";
+
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+
+	tx_delay = <0x3a>;
+	rx_delay = <0x3e>;
+
+	phy-handle = <&rgmii_phy1>;
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy1: phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		#phy-cells = <0>;
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
