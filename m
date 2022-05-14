Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FADFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 12:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PomnJ/4xDubtW+pHqRjAm9Q1WIXsV2AwprJYFd4TOqc=; b=jYw5uE89z7ezvg
	c/P/uq9oZ16n54R2ZiMAkxgPS7AQRZth9AzYDXoyL3HC58y/IIA0YvZl/FZrCcsJ/BTeSIFRktZdH
	8cOhyA1EPOlnlp/MJkjwlft4keDyshcO+DpPR+mL6XOjuErpAm3UqNNHFkfKbw0Y4kHlPEWsdtKn8
	mwaS18BjIGwqVt6HjP7j4hBT7/tL3D6ezyMMb1ZlnQrKoyGhjv6yoP+llYe3NlY2Pn4Sot40xP8Bh
	AhzJUMCpb8GcLCCcmXb6Y5SrIluOR0D4/iZ2gUct/4haGoZ1T1vedEPHpLkqn2QVDLndvV82i0LIc
	J95r2GM9HTDXH+doJEjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npqSL-001LnJ-VT; Sat, 14 May 2022 12:01:10 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npqRL-001LFn-8d; Sat, 14 May 2022 12:00:09 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout4.routing.net (Postfix) with ESMTP id 812C41012C4;
 Sat, 14 May 2022 12:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1652529600;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R1iKpFJztxIvimr5HKEKJzhie/gJm0tJviBrqgPMha8=;
 b=xAk2rCfGwRHOwk+k32G5T+WjQm0v4hoywVEz1tsYLGFNMjnoya9HWx1q4Lt306v/Vf75JW
 i5Zr6kk3Y3UZ2Rk8NeDHk6Jh+vwSdbsYMcxpsPFVwgKnymipp8Wjmr+XBlWV7NNGyK91HI
 x+v4zjS+NdWqZLTKd4zS4pFnUdLm3C4=
Received: from localhost.localdomain (fttx-pool-217.61.148.252.bambit.de
 [217.61.148.252])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 9A1FC360502;
 Sat, 14 May 2022 11:59:59 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC v3 5/5] arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
Date: Sat, 14 May 2022 13:59:46 +0200
Message-Id: <20220514115946.8858-6-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220514115946.8858-1-linux@fw-web.de>
References: <20220514115946.8858-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 090e248d-fa9b-43c5-9787-98c61156afdf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_050007_638851_683A39C0 
X-CRM114-Status: GOOD (  12.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

Add Nodes to Bananapi-R2-Pro board to support PCIe v3 and
set PCIe related regulators to always on.

Suggested-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v3:
- squash lane-map over bifurcation property
- add comment which slot is M2 and which one if mPCIe
- fixes from Peter:
  - drop regulator-always-on/regulator-boot-on from regulators
  - increase startup-delay-us for regulators
  - set phy-mode on PCIe3-phy
  - add num-lanes to PCIe overrides
  - add usb node for to PCIe/m2
  - move lane-map from PCIe controller to PCIe-phy

v2:
- underscores in nodenames
- rockchip,bifurcation to vendor unspecific bifurcation
- fix trailing space
---
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 2700fb18a3bc..8b3b774a9dac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -74,6 +74,62 @@ vcc5v0_sys: vcc5v0-sys {
 		vin-supply = <&dc_12v>;
 	};
 
+	pcie30_avdd0v9: pcie30-avdd0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	/* pi6c pcie clock generator feeds both ports */
+	vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <200000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
+	vcc3v3_minipcie: vcc3v3-minipcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_minipcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc3v3_pi6c_05>;
+	};
+
+	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
+	vcc3v3_ngff: vcc3v3-ngff-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_ngff";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio4 RK_PC1 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc3v3_pi6c_05>;
+	};
+
 	vbus: vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus";
@@ -411,6 +467,27 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie30phy {
+	lane-map = /bits/ 8 <1 2>;
+	status = "okay";
+};
+
+&pcie3x1 {
+	/* M.2 slot */
+	num-lanes = <1>;
+	reset-gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_ngff>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	/* mPCIe slot */
+	num-lanes = <1>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_minipcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	leds {
 		blue_led_pin: blue-led-pin {
@@ -597,3 +674,16 @@ &usb2phy0_otg {
 	phy-supply = <&vcc5v0_usb_otg>;
 	status = "okay";
 };
+
+&usb2phy1 {
+	/* USB for PCIe/M2 */
+	status = "okay";
+};
+
+&usb2phy1_host {
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
