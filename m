Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C6DC43217
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A63zJ7xO3EMdO/tegzPrQJKifu9WRwtl6qQLJ063RYg=; b=U5cbgqZ3m90nBf
	oVOqP5BcjgvmYqEF4skl+FoQT2Tur3w+ieRaMJu5F9aBjRh5vIBVrlV5AH0Aeau0r4hpcG0TVLsLV
	/zlxwCwCV2IL/m3DtZ3iQi0/uIdDXvPcFNt+qcX7tq+uEJhRJU43BLz1BavNFgxJYkV3FMMtbJRha
	ID62LBZOEEBEvlrAqgij60yq1gbw+1DH2SIMLE2BcuuhR7F3+4Z5eS1KqefPH7UJsDHgfdRgUjdDc
	XvrdajegwTyOWqGwez9c3TpSVJINvQTbLE0uLL8mo0wABu2Ly6zJ3TV3csovYqP4LSB+wDKE7YiHH
	o/e0LMpbDLbAu7TcBSUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouych-00CfvJ-JX; Tue, 15 Nov 2022 16:17:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouycd-00Cfq8-8R
	for linux-rockchip@lists.infradead.org; Tue, 15 Nov 2022 16:17:18 +0000
Received: from jupiter.universe (dyndsl-095-033-156-109.ewe-ip-backbone.de [95.33.156.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B5D4D6602A7B;
	Tue, 15 Nov 2022 16:17:09 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668529029;
	bh=e6pRKRo8MjPUo3NHLtjwZjyFH+jaquGOG7QWt4qB9qc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Mjhlhw50jyeeOkbkP/qVKKe8oO9bLIDpSobZgUPQkaYy84e1rEdynOQfDmMoquC4x
	 N3YuNEjSxy+N4btgK+nLsTqK9qEp4pIu/sShu8yAd4TNLMX63kwLm6Jx+ybwU4IomZ
	 HLutLdkCxF9mD7lT5nyZPrOTvbpT2tdvZxEGm7PK/o9pylMNR0qUoPkhUjeypPnhyJ
	 voookoTF551XPYTgLYTNWoF7gRFvQKP6cQ8LrbAfZMpyYIOuW73MhngZWfFR3x8K5t
	 IuoyYwFPbl+iNeOVolbeYjyKGcXFOnPACCmiiIUriHaU+q7AgCHYtY52Jpurxzlqfm
	 fQIewne5uEoBw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6A73C48014D; Tue, 15 Nov 2022 17:17:07 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv2 4/5] arm64: dts: rockchip: Add rk3588-evb1 board
Date: Tue, 15 Nov 2022 17:17:01 +0100
Message-Id: <20221115161702.163057-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221115161702.163057-1-sebastian.reichel@collabora.com>
References: <20221115161702.163057-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_081715_590347_D19F046C 
X-CRM114-Status: GOOD (  15.17  )
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

From: Kever Yang <kever.yang@rock-chips.com>

Add board file for the RK3588 evaluation board. While the hardware
offers plenty of peripherals and connectivity this basic implementation
just handles things required to successfully boot Linux from eMMC,
connect via UART or Ethernet.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
[rebase, update commit message, use EVB1 for SoC bringup]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 156 ++++++++++++++++++
 3 files changed, 162 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..4230881371fa 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -739,6 +739,11 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3588 Evaluation board
+        items:
+          - const: rockchip,rk3588-evb1-v10
+          - const: rockchip,rk3588
+
 additionalProperties: true
 
 ...
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8c15593c0ca4..12ed53de11eb 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -72,3 +72,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
new file mode 100644
index 000000000000..38413517f2eb
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "rk3588.dtsi"
+
+/ {
+	model = "Rockchip RK3588 EVB1 V10 Board";
+	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	vcc12v_dcin: regulator-vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <
+			  0  20  20  21  21  22  22  23
+			 23  24  24  25  25  26  26  27
+			 27  28  28  29  29  30  30  31
+			 31  32  32  33  33  34  34  35
+			 35  36  36  37  37  38  38  39
+			 40  41  42  43  44  45  46  47
+			 48  49  50  51  52  53  54  55
+			 56  57  58  59  60  61  62  63
+			 64  65  66  67  68  69  70  71
+			 72  73  74  75  76  77  78  79
+			 80  81  82  83  84  85  86  87
+			 88  89  90  91  92  93  94  95
+			 96  97  98  99 100 101 102 103
+			104 105 106 107 108 109 110 111
+			112 113 114 115 116 117 118 119
+			120 121 122 123 124 125 126 127
+			128 129 130 131 132 133 134 135
+			136 137 138 139 140 141 142 143
+			144 145 146 147 148 149 150 151
+			152 153 154 155 156 157 158 159
+			160 161 162 163 164 165 166 167
+			168 169 170 171 172 173 174 175
+			176 177 178 179 180 181 182 183
+			184 185 186 187 188 189 190 191
+			192 193 194 195 196 197 198 199
+			200 201 202 203 204 205 206 207
+			208 209 210 211 212 213 214 215
+			216 217 218 219 220 221 222 223
+			224 225 226 227 228 229 230 231
+			232 233 234 235 236 237 238 239
+			240 241 242 243 244 245 246 247
+			248 249 250 251 252 253 254 255
+		>;
+		default-brightness-level = <200>;
+
+		pwms = <&pwm2 0 25000 0>;
+		power-supply = <&vcc12v_dcin>;
+	};
+};
+
+&gmac0 {
+	phy-mode = "rgmii-rxid";
+	clock_in_out = "output";
+
+	snps,reset-gpio = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+
+	tx_delay = <0x43>;
+	rx_delay = <0x00>;
+
+	phy-handle = <&rgmii_phy>;
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy: phy@1 {
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
+
+&i2c2 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD4 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
