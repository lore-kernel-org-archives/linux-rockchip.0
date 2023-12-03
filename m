Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB28C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctvMFAphHwUPDMDb33mRn/EcsxOzg9HoHe5cS/QcxAY=; b=S+BwzRsBaWJMMO
	Tlg3m5XtalNYGoNXE6ldPiTGHg82V0ehtA1ITSNQnAZZ+9p5PYF/stSKLs8099akkjx9kLhnEGODp
	t0ucfq4vTJ53mRuXRkVPw3dFvQZSeJt/NdxR52gXKSSuDlT37SemX+98tTY4QRz97lchoSH4YV3dh
	+hPHUvk+mKijAQIRNro3V1JvtLq3R/lbC3lLJuDoHcEIpe/R+qw97FyuqfUXZyo5oDQuWO7rTznuL
	whvokNev/i6gu3ZYkgQQEFZfFrSsuUm/QMKqffnclNAJBRdmJETiLrTJDniYC/DRC2HPEdaD5t8vp
	hCdUy7XxfNGNbkZtwxMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmr-00H0dB-2k;
	Sun, 03 Dec 2023 12:41:30 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lml-00H0Xm-0m;
	Sun, 03 Dec 2023 12:41:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 990A15C013C;
	Sun,  3 Dec 2023 07:41:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 03 Dec 2023 07:41:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607282; x=
	1701693682; bh=9+hC1msmuoDUNCx0KcpmZ9Y/95iX0XIDzdKjKwCxdWc=; b=u
	FEHsrWtj63G/FtN5mr0dAcXwMHABsfr2i+WCqwD10TgZjtVk7x7eW3JwXRB2a2fT
	VHA1ejvozZyNgKkbcO/uMWW8QwiJJGwFeKHQNSVJjTa6yIf4/HjunTRQ+CIZ6NN/
	m6YjCtQYWfKkDxmlgmGqEghmaCtySMYcfqnvZDGCU6ICKs8nj97BXMkvvXca6x38
	rHr2+rZ+CHaqCfb1KF/hWQFNFR+CkAnHvIczJA3+gfyzwM1vCccipIZ4TmbrJDEz
	1A9DGR/GJfIbXxOtRGQNI1urJxsVLJNwQodnEci9BVCtY2JSJFZPd2a27O57JHp4
	KBOgDprtAmdFoErRKX17A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607282; x=
	1701693682; bh=9+hC1msmuoDUNCx0KcpmZ9Y/95iX0XIDzdKjKwCxdWc=; b=I
	685fUUogK1rYNjQbl3hdxoycx4RKwaEYhfzg/ZKT3v8hS26tcJQ6xk/PBKHbIayz
	IWULwDPpO/INxunBk6iu/eWoOa216VsSw7Vkv0JV30oUouOCFhLpdBZw2ssq8RLp
	YbQD0Sp07lhDF8wqbsrPFT3/DUYwWwTyKioyTUqw11lyu6rZACRIvssQXlXGW3mX
	vmgLvWkOUIbAPrsMmQMxeVwD4LFkL/wVQ7WjUnnGrTZc23kLDeyyUjRXCEGhSAIE
	S6D6F9QA90OxZ/F1/xsM5MAdyapQ9TnOE1x94AzuXYMTzFN8b11LBMxR1XVxoZ3q
	91Tt5PcbtPIjIkVxmX/Vw==
X-ME-Sender: <xms:cndsZW4jc1tJgN-dKVNTThtvxzrkgk05FjnIstxCnGOafzBWbI8fIw>
    <xme:cndsZf4FObdAu8haadCjm2dIxi5rRjJPMHsPYV1C5eXY-LuCsrlXqMrykqmCsAEp6
    aea4ZeE0A>
X-ME-Received: <xmr:cndsZVcZMgC7qPKspYn3H6a5yeLSjUo6PmiRMM87xAmJXHKj-MyBJMcC4AvythaMRroG7869hsaereDhAJwMsmmq9KkpVYdjN-U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:cndsZTJgMCvYwY5b7e_AlAaIP4uwH0lltwuDE2qZQTGiT987wTXA-Q>
    <xmx:cndsZaKlYSAQfOe5j1a68cnsqSK70MZ7Df5QeH1VaSeCpTgUI7QJIQ>
    <xmx:cndsZUyuoTJUm88k2Qz4ZVZbTG_FDqnmKbOZPm43ZwD9vfoP1DSJyA>
    <xmx:cndsZboLCOHys0nSEz8zLERXlK9Lzf4n2q_oweVebhYgNyOQcuqomQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:41:17 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:41:14 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>
Subject: [PATCH v3 7/8] ARM: dts: Add Sonoff iHost Smart Home Hub
Date: Sun,  3 Dec 2023 23:40:03 +1100
Message-Id: <20231203124004.2676174-8-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044123_514158_9CCDD3E7 
X-CRM114-Status: GOOD (  16.91  )
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

Sonoff iHost is gateway device designed to provide a Smart Home Hub,
it is based on Rockchip RV1126. There is also a version with 2GB RAM
based off the RV1109 dual core SoC.

Features:
- Rockchip RV1126
- 4GB DDR4
- 8GB eMMC
- microSD slot
- RMII Ethernet PHY
- 1x USB 2.0 Host
- 1x USB 2.0 OTG
- Realtek RTL8723DS WiFi/BT
- EFR32MG21 Silabs Zigbee radio
- Speaker/Microphone

This patch adds the initial device tree for this device, it is largely
based off the device trees for mainline Edgeble Neu2 and downstream
Rockchip rv1126-evb-v13 configs. It has been adapted with relevant
peripheral and GPIO pins for the iHost.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

Changes in v3:
- Move ethernet alias from rv1126.dtsi to board dtsi

Changes in v2:
- Address review comments from Heiko
- Split out rv1109.dtsi to new patch

 arch/arm/boot/dts/rockchip/Makefile           |   2 +
 .../boot/dts/rockchip/rv1109-sonoff-ihost.dts |  13 +
 .../boot/dts/rockchip/rv1126-sonoff-ihost.dts |  13 +
 .../dts/rockchip/rv1126-sonoff-ihost.dtsi     | 408 ++++++++++++++++++
 4 files changed, 436 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-sonoff-ihost.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 0f46e18fe275..4d4533d6f407 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -2,7 +2,9 @@
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1109-sonoff-ihost.dtb \
 	rv1126-edgeble-neu2-io.dtb \
+	rv1126-sonoff-ihost.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1109-sonoff-ihost.dts b/arch/arm/boot/dts/rockchip/rv1109-sonoff-ihost.dts
new file mode 100644
index 000000000000..3bfdb00ac8e1
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1109-sonoff-ihost.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+#include "rv1109.dtsi"
+#include "rv1126-sonoff-ihost.dtsi"
+
+/ {
+	model = "Sonoff iHost 2G";
+	compatible = "itead,sonoff-ihost", "rockchip,rv1109";
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dts b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dts
new file mode 100644
index 000000000000..106d1e42f285
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-sonoff-ihost.dtsi"
+
+/ {
+	model = "Sonoff iHost 4G";
+	compatible = "itead,sonoff-ihost", "rockchip,rv1126";
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
new file mode 100644
index 000000000000..543b4ec8d244
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
@@ -0,0 +1,408 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	aliases {
+		ethernet0 = &gmac;
+		mmc0 = &emmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	sdio_pwrseq: pwrseq-sdio {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk &emmc_rstnout>;
+	rockchip,default-sample-phase = <90>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc_buck5>;
+		vcc6-supply = <&vcc_buck5>;
+		vcc7-supply = <&vcc5v0_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+
+		regulators {
+			vdd_npu_vepu: DCDC_REG1 {
+				regulator-name = "vdd_npu_vepu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc3v3_sys: DCDC_REG4 {
+				regulator-name = "vcc3v3_sys";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_buck5: DCDC_REG5 {
+				regulator-name = "vcc_buck5";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2200000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2200000>;
+				};
+			};
+
+			vcc_0v8: LDO_REG1 {
+				regulator-name = "vcc_0v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_pmu: LDO_REG2 {
+				regulator-name = "vcc1v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd0v8_pmu: LDO_REG3 {
+				regulator-name = "vcc0v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <800000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG4 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_dovdd: LDO_REG5 {
+				regulator-name = "vcc_dovdd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_dvdd: LDO_REG6 {
+				regulator-name = "vcc_dvdd";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_avdd: LDO_REG7 {
+				regulator-name = "vcc_avdd";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG8 {
+				regulator-name = "vccio_sd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: LDO_REG9 {
+				regulator-name = "vcc3v3_sd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_5v0: SWITCH_REG1 {
+				regulator-name = "vcc_5v0";
+			};
+
+			vcc_3v3: SWITCH_REG2 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	pcf8563: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "xin32k";
+	};
+};
+
+&gmac {
+	assigned-clocks = <&cru CLK_GMAC_SRC_M1>, <&cru CLK_GMAC_SRC>,
+			  <&cru CLK_GMAC_TX_RX>;
+	assigned-clock-parents = <&cru CLK_GMAC_RGMII_M1>, <&cru CLK_GMAC_SRC_M1>,
+				 <&cru RMII_MODE_CLK>;
+	assigned-clock-rates = <0>, <50000000>;
+	clock_in_out = "output";
+	phy-handle = <&phy>;
+	phy-mode = "rmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_miim &rgmiim1_rxer &rgmiim1_bus2 &rgmiim1_mclkinout>;
+	status = "okay";
+};
+
+&mdio {
+	phy: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy_rst>;
+		reset-active-low;
+		reset-assert-us = <50000>;
+		reset-deassert-us = <10000>;
+		reset-gpios = <&gpio2 RK_PA6 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	ethernet {
+		eth_phy_rst: eth-phy-rst {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+	bt {
+		bt_enable: bt-enable {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_dev: bt-wake-dev {
+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio0-supply = <&vcc1v8_pmu>;
+	pmuio1-supply = <&vcc3v3_sys>;
+	vccio1-supply = <&vcc_1v8>;
+	vccio2-supply = <&vccio_sd>;
+	vccio3-supply = <&vcc_1v8>;
+	vccio4-supply = <&vcc_dovdd>;
+	vccio5-supply = <&vcc_1v8>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_dovdd>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	max-frequency = <100000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sys>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4 &sdmmc0_det>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_ctsn &uart0_rtsn>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723ds-bt";
+		device-wake-gpios = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>; /* BT_WAKE */
+		enable-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>; /* BT_RST */
+		host-wake-gpios = <&gpio1 RK_PC5 GPIO_ACTIVE_HIGH>; /* BT_WAKE_HOST */
+		max-speed = <2000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_enable>, <&bt_wake_dev>, <&bt_wake_host>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3m2_xfer>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4m2_xfer>;
+	status = "okay";
+};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
