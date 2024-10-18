Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF3A6D3DEA2
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 17:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=joZSdE1wnjkwxf91bnLn51yzUp5fZSe+sHbTNf0GkkE=; b=COSeqi63yCoFmJ
	xwlCzdqh9Y42kmWcamSnUMdlZmzGv+jOcWmrpCeZ0EpEOVoDdIyrReLtHmX84635f3mfBne3KIrAm
	11FCpq/nQSgZMJnLsH5N0PgvcAe6u/3zr8d4wc7qin/JqBAa+VwSiUYPNY/7BwICEoA7eKRSS749y
	PqOoIBrxE3+FeXmJt5EH9/azwZUweo3t0fIfzLm6CFWKtfTcrlfUGU2XAp2+ZaPPvJUFYCmuojS36
	t1udcsgZJE3m7SLN6KqQpBxQ6JtblbjmLSIT800cNy0Sd67eC2TF38bn9nMQqVKMB4d5rAK1KJdAd
	ZOIttKOnFUBeKw8ieGSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1qjp-00000001U5Y-0Rqa;
	Fri, 18 Oct 2024 17:26:09 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1qiK-00000001TfV-2hdw;
	Fri, 18 Oct 2024 17:24:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729272274;
	bh=fWTUGUbvtxGgdUl3mI+I8UiYVV3ELG6T2ASGw2R93Dg=;
	h=From:To:Cc:Subject:Date:From;
	b=jtLQakgatYLOAtYpLqyRV51Un6cbN7cvmnh4hy+F2b3cHB9kxk0IyDIwBX+rR+3+J
	 h2o198viNsa0rHJIEWTtm4clJuQKpe4eTherydBqnz0caYTDV82UAiNnEuWV1hRDcq
	 oj5pjUBOyzAceB8biQ90QdaF2rAd1iT2zYyVXeVbEHFAUdLR9Ls80SW3cKVhezsFDF
	 p2BY4MberRL5alzfJTILUlG0e9K9N9cTvUXIcwdHreWvPBa7Iqd1jjsxipQgqlWR0B
	 GPWvgXNWWGI+xlmjc/sP1KxtrVuUUuvqiCoctEtN+UQWLxPP5NYThGlmoZdEllFTl8
	 lyzR8GC3QScuQ==
Received: from jupiter.universe (dyndsl-091-248-211-226.ewe-ip-backbone.de [91.248.211.226])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0451217E367D;
	Fri, 18 Oct 2024 19:24:34 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9A6764800EA; Fri, 18 Oct 2024 19:24:33 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: add WLAN controller
Date: Fri, 18 Oct 2024 19:24:21 +0200
Message-ID: <20241018172432.53182-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_102436_885525_F577FFBF 
X-CRM114-Status: GOOD (  11.20  )
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

The RK3588 EVB1 has an onboard AP6275P WLAN/BT module. This adds
support for the WLAN side, which is connected to the second
PCIe bus. The Bluetooth side is connected to UART and handled
separately.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index df44dbc394ca..f55ab8f59d65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -237,12 +237,48 @@ vcc5v0_usb: vcc5v0-usb-regulator {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_usbdcin>;
 	};
+
+	vccio_wl: vccio-wl {
+		compatible = "regulator-fixed";
+		regulator-name = "wlan-vddio";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_1v8_s0>;
+	};
+
+	vcc3v3_pciewl_vbat: vcc3v3-pciewl-vbat {
+		compatible = "regulator-fixed";
+		regulator-name = "wlan-vbat";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_3v3_s0>;
+	};
+
+	vcc3v3_wlan: vcc3v3-wlan {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_pwren>;
+		regulator-name = "wlan-en";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vcc3v3_pciewl_vbat>;
+	};
 };
 
 &combphy0_ps {
 	status = "okay";
 };
 
+&combphy1_ps {
+	status = "okay";
+};
+
 &combphy2_psu {
 	status = "okay";
 };
@@ -408,6 +444,30 @@ rgmii_phy: ethernet-phy@1 {
 	};
 };
 
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>, <&pcie2_0_wake>, <&pcie2_0_clkreq>, <&wifi_host_wake_irq>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_wlan>;
+	status = "okay";
+
+	pcie@0,0 {
+		reg = <0x200000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		device_type = "pci";
+		bus-range = <0x20 0x2f>;
+
+		wifi: wifi@0,0 {
+			compatible = "pci14e4,449d";
+			reg = <0x210000 0 0 0 0>;
+			clocks = <&hym8563>;
+			clock-names = "lpo";
+		};
+	};
+};
+
 &pcie2x1l1 {
 	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
@@ -462,6 +522,18 @@ hym8563_int: hym8563-int {
 	};
 
 	pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie2_0_wake: pcie2-0-wake {
+			rockchip,pins = <4 RK_PA4 4 &pcfg_pull_none>;
+		};
+
+		pcie2_0_clkreq: pcie2-0-clkreq {
+			rockchip,pins = <4 RK_PA3 4 &pcfg_pull_none>;
+		};
+
 		pcie2_1_rst: pcie2-1-rst {
 			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -492,6 +564,16 @@ usbc0_int: usbc0-int {
 			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
+
+	wlan {
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		wifi_pwren: wifi-pwren {
+			rockchip,pins = <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &pwm2 {
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
