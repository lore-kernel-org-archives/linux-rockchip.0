Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58C27C5B552
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 22:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bMN+B5mNidLbK2dAWZVFC9njBM7cvuRgdQLY9yd3I4=; b=IdfqdWYV+DrHHq
	LWGVM/7zuvnldhg7OAU5O+wfEmIl+lBDtdZcGSm4QaIL/kIwLkzsMTtvE65Cwgu2dSBKPIsYnAX23
	MuXvSt7hW1A7wWnQ8LZWSgnRp4h7BhF//FQ5Pq9sIFn9xaCvI8YFw0JSPV98HNgJi+DmehcaGyQyQ
	EpeYlQcHw/Bx2Y6D1qMGotRSUtajJk5Qhz3MqTfdM+qHnT0MbPWFrijhi+d4NnO0sqBtMBUFGDUsY
	+SKX/ywraLAJwVnvrkBYnpwsIo5Ho/URkdRGUfMiUzaNercGuVVJFqrw6XSqMGj2JIsn25d8G38V7
	IVqQc5bPBZLun6crQDxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKP9F-0000000EFWJ-05RG;
	Wed, 28 May 2025 22:21:21 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKP6W-0000000EF8Y-2gcl
	for linux-rockchip@lists.infradead.org;
	Wed, 28 May 2025 22:18:35 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-7376dd56f8fso238762b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 28 May 2025 15:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748470712; x=1749075512; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zCiLjriu6eNKGmo02lwUhcTPnLY+tJxl9X0S8ytmR7g=;
        b=Bn8sFy1mAhI2fxA/cyTD+aKXmX2LYagTXzanML6s1P9cb1jCe2aHcXF14FtXVtK/vd
         9v1VCfVj0tK9lzWbkrxrKc+kXfZijCZSUnMMvgqx7TVqWAN7h747T+gVUcXAb9QIxeTK
         9VriJ6lF2S2XKKNnsBmvTgzBXWrno49h88Pi9E5zArEPuvT89Yx7teIC5jwM34kFoyy3
         koG66Z24u18kllAvc1TVK72dfb+FcSl//ryJ/ZkiObvpbKV7wXviJ8gujXHO+mbmUmRu
         +9PNLmVkMN5ATXVF5DC4yuDN9cOF+QjMJ3yzRHfyrV8UAhss/DK+hiXwrvdQ5mM24iqN
         eTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748470712; x=1749075512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zCiLjriu6eNKGmo02lwUhcTPnLY+tJxl9X0S8ytmR7g=;
        b=cfF5L5A1n4ElMyAe3XDG9orICRI1BVMonJFns1zgmlyQOx2m0KBNPMDsopu1SgY9cp
         Wvpy8zdVlPW7wtlZJO2toyU0j92IyLPMVeBwZzb1Mh2xaaB5Myr6ojPEwAbJN+l14ZZx
         lfiWYoc71M8+0l5XPuWQsAspWxl68wUtv3fh/63fBMKThqIAGWXO8DIMNmD7MEk07zO5
         m/ADT1jJ231VXN++rviwdUdg7TlWGV029lISUzenJsBNQEzNG6a/uO0z9XOYoeWXW8bp
         NBq18Pml8pv/8NdO7YJ40AS3JzHVa0KWZvNZ16QNjeDr8KUKrArtkFsFda1ebfxOwZ+q
         gYuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUddoXzC+G7qD6wJA0AwnKQ8tbDfyp0kdQ3m/T3xvhcZ9FvM8ABc4zVRvHxKpXvKKepgIuGpkManadFWX5hDA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyA7uCeQcXkksal/icv06Gr8aPg9JhxKw5p4wlTUzrCarm5fLK3
	NEg6lKtZPP0Wf6WUM5hZwd4oeYgAwDKh0ZenQSOhHLkfgxghk6QAb4p3
X-Gm-Gg: ASbGnctNUXLn03IpYLUtjG+YcSi1Ky6sFyKzqopvDWHVuWp4yKXF3eC+8NJ1a6FDudW
	GlaCPDQLi2uz8MBle7wO4MKcw0T050kRbJgrXJUBrcKwvnu4RuXP3S3xHyj7/xw6lSg69lvCRvw
	OKzaeRww+idJENCodHcDCvj+5PKluksoPNTBJ4ZHhV18GvYqnQCL98o/yOrTo5//uWelPiK4NQP
	8/By3aiQNU1PV3b41XvG+hxtwQqci1K59L+dBQwmbu2Y10DMOY/Wp2eP/sREGC7xNwEdnrxLLj/
	4aunAy7yXlEu4RXpWPEZ4jGXgYzJ5+UiHQUw+FkGOSDHa+e9lZVim87KcWMS989MjQ==
X-Google-Smtp-Source: AGHT+IE/92darp9RSRYQNumGk+P+BoJ3eElhSyaMFH30Cpxz8CP/2zlblPMCvwPhIjoncjLZm+Hybw==
X-Received: by 2002:a05:6a20:439e:b0:218:c01:ddce with SMTP id adf61e73a8af0-2188c3b4625mr31533430637.40.1748470711762;
        Wed, 28 May 2025 15:18:31 -0700 (PDT)
Received: from localhost.localdomain ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afff71fbsm81015b3a.165.2025.05.28.15.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 15:18:31 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Steve deRosier <derosier@cal-sierra.com>,
	Joseph Kogut <joseph.kogut@gmail.com>
Subject: [PATCH v3 2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
Date: Wed, 28 May 2025 15:18:22 -0700
Message-ID: <20250528221823.2974653-3-joseph.kogut@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250528221823.2974653-1-joseph.kogut@gmail.com>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_151832_677480_2F73DA53 
X-CRM114-Status: GOOD (  12.58  )
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

Add initial support for the Radxa Compute Module 5 (CM5).

Specification:
- Rockchip RK3588
- Up to 32 GB LPDDR4X
- Up to 128 GB eMMC
- 1x HDMI TX up to 8k@60 hz
- 1x eDP TX up to 4k@60 hz
- Gigabit Ethernet PHY

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 156 ++++++++++++++++++
 1 file changed, 156 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
new file mode 100644
index 000000000000..d7946fe2bb4e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2025 Joseph Kogut <joseph.kogut@gmail.com>
+ */
+
+/*
+ * CM5 data sheet
+ * https://dl.radxa.com/cm5/v2210/radxa_cm5_v2210_schematic.pdf
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
+
+/ {
+	compatible = "radxa,cm5", "rockchip,rk3588s";
+
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+		mmc2 = &sdio;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_sys: led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-id";
+	phy-supply = <&vcc_3v3_s0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus
+		     &gmac1_clkinout>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&hdmi0 {
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m2_xfer>;
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8602";
+		reg = <0x43>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+	};
+};
+
+&pd_gpu {
+	domain-supply = <&vdd_gpu_s0>;
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
+	mmc-hs200-1_8v;
+	status = "okay";
+};
+
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
