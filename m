Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8BABECAA2C
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 19:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wa201J0EvxHDswX0b+S1peZwh3VzcUE9geXft8Nxdb0=; b=np5Izr4IJ23nBE
	fbJOmxZ5W65yOP4KFSKralh78EhCf8sXV2BIITPnwO4DoFUa42ahab2vhunE/IdhM92avREQ0jXqb
	X5sP2JGn777WbkQr9UnxQvZmubEX9r+BXiuEQ7xxEbVVUGzFECL+9sLulxhIkWXXeaoTY2vujfXWz
	odYbof+cUG8vmuX1KeqUkBOK5kvlCHKhmlXKNLYaNXoPZyVD7ZXbTlfbPcteKLmwatXN8DYYwvItZ
	eiNHJ6gA6YB862rlJB6zzelMDKJXr/8HOYNSidEIotPWL/lTZHFbwKARL3msECRDynd1TguVaX3f9
	Ni6tpFv/erAGoLjQS3jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIiT-002nBF-P1; Thu, 25 Aug 2022 19:40:37 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIgx-002mH2-Uq; Thu, 25 Aug 2022 19:39:06 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
	by mxout3.routing.net (Postfix) with ESMTP id CD4306261C;
	Thu, 25 Aug 2022 19:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1661456340;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PQynK8vX4UUco6n9XqG4i+p2gcsTMBlSQC8hGYn+Bbs=;
	b=XbMt58BWU+895QhiTJkCR40/1m/ipzkqSYsu9wA2ZD3UsbVYzIJkAJD5AeG6oHz5EA8b1/
	0tvUEwTUfyrao/+sZ7DAg9lBXQA1r+3wyJMCLfUJQxGvo/xCYNjuz6bZHPXfmLpoDY/UdB
	XCTjx3885mWOd0njZy70egPBqjMcGMk=
Received: from frank-G5.. (fttx-pool-80.245.75.185.bambit.de [80.245.75.185])
	by mxbox1.masterlogin.de (Postfix) with ESMTPSA id E8B4140353;
	Thu, 25 Aug 2022 19:38:59 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/5] arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
Date: Thu, 25 Aug 2022 21:38:36 +0200
Message-Id: <20220825193836.54262-6-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220825193836.54262-1-linux@fw-web.de>
References: <20220825193836.54262-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: e310ba6b-b5fd-4900-87e7-e545edccfe8a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_123904_308896_B12C15DC 
X-CRM114-Status: GOOD (  13.19  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add Nodes to Bananapi-R2-Pro board to support PCIe v3 and
set PCIe related regulators to always on.

Suggested-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v5:
- rebase on 6.0-rc1
- add pinctrl for pcie
- fix ngff pwr_en_h gpio for hw ref 1.1

v4:
- change u8 lane-map to u32 data-lanes

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
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 93d383b8be87..40b90c052634 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -86,6 +86,66 @@ vcc5v0_sys: vcc5v0-sys {
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
+		pinctrl-names = "default";
+		pinctrl-0 = <&minipcie_enable_h>;
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
+		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ngffpcie_enable_h>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc3v3_pi6c_05>;
+	};
+
 	vcc5v0_usb: vcc5v0_usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
@@ -513,6 +573,32 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie30phy {
+	data-lanes = <1 2>;
+	phy-supply = <&vcc3v3_pi6c_05>;
+	status = "okay";
+};
+
+&pcie3x1 {
+	/* M.2 slot */
+	num-lanes = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&ngffpcie_reset_h>;
+	reset-gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_ngff>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	/* mPCIe slot */
+	num-lanes = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&minipcie_reset_h>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_minipcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	leds {
 		blue_led_pin: blue-led-pin {
@@ -529,6 +615,24 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	pcie {
+		minipcie_enable_h: minipcie-enable-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
+		};
+
+		ngffpcie_enable_h: ngffpcie-enable-h {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
+		};
+
+		minipcie_reset_h: minipcie-reset-h {
+			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
+		};
+
+		ngffpcie_reset_h: ngffpcie-reset-h {
+			rockchip,pins = <3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
+		};
+	};
+
 	pmic {
 		pmic_int: pmic_int {
 			rockchip,pins =
@@ -708,6 +812,19 @@ &usb2phy0_otg {
 	status = "okay";
 };
 
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
+
 &vop {
 	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
 	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
