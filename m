Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A1D0C7115A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 22:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEZ3xRqAEpTDgNEFadm9XYbVEO5sniSz8CMfHIK/V8c=; b=kzR1wZAQU3pQm0
	iCyhLfJ+QEIahPgjL+V1djCt9KXP47zXqrpYedJk3EYLSAl/6Snjnr3k9OhyjM8JqMpqlpGPEfKP3
	XxcM12j/eePl5DjNU1NyhIky2bBo2Hw7+O2kLvjK8uVfMnmUMcrhDXQ4hElknymfI1F1MuFslwPsH
	osxACG/DHmwI0s6+PJYEzSNMrKKeZGZkgSZHor9gSkTKSpKB4VmNIlADik9r31BQeVoazOeE1U2TL
	pDpmU06m0LC0LmUAmKxbBMtSIrMeEfeBwSddsboSXURDx+5GPT5X1CNUKzQdTsOs+mek2+PVMjYzS
	8DGeCZbem30y+FnankWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uReXi-00000008UNC-2es0;
	Tue, 17 Jun 2025 22:12:34 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uReXf-00000008ULg-2VpA
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 22:12:32 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2363e973db1so1165535ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 15:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750198351; x=1750803151; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SSAwLiv169Pgv9iGc8xTMLJMCRfaJi/jc1tTODDUNXQ=;
        b=IPEwm/6+kEHR28Su5lfDJ7HSF8hzboHt9oHs7zltYlLtqFa0ivp7uReuTwZwsJ0ZU6
         8UWM+W54aYBgzgT8mLDJ7DG8qxO6YJNB/LVWqZLtrdcYvhew/RZs6q5ncnc/OaJJeFM6
         OzGv8feybtcT9GoGWaVzkAdz2t/rNWIwjsLf41T4HnR1ydNuEDi3m0l245d1+4PrsUKo
         IhWuKN9Z7+euXlRl2Ron/MxCUBjof50AqnOJQ3C40yX11p7yG5dJAA+4NrQ2ckoDvAkl
         kHdvNVPNiXE/Q7CNw7jkCTnFDsi5qUI+1aNI926rrRJrzygMVn2GGnngc+gfzl9gSp2+
         o/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750198351; x=1750803151;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SSAwLiv169Pgv9iGc8xTMLJMCRfaJi/jc1tTODDUNXQ=;
        b=b57v3gzL8m5vvmTNutIq3lP5tt+NKD/qKjrH7wboME7NkPKjT9JslpESzkM+dHVRtW
         3GSoPeEl9R0KRkB8X9O3JAwvwfMiifRr7PCUlyhVhqvuX7BYK+iP2utHPh8mHPWt6Ado
         Z0IUka8a5p5euQosyfkmOIe2+Ic0/u+tSpKHkx9XK2ndVBfHFUxet3ZvU8o+nxYg1Ddb
         vYttIcwWPx0lb3HC9jyAAzJsPd8rmCQYhUVlaUInlu5WJT2MPQgLydgq5fbiMTzTk2lD
         hEvfY7OUkzm05WMGL/MsFk5376CrjnIcuymfC8nvy24id+JkDOWuZHGq5hUZw7xU4Wg7
         Ca6g==
X-Forwarded-Encrypted: i=1; AJvYcCUJnbkiF30tWFleaJI5C2He3agMnBI65soL05bjCDvBZ2uuWHN3xfGhohWXt7mYlUPITYtumIRcI1vAcZgeWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHNQA/phFYoupDlF5f+Ia9C+cUfFHlcIxBWpvcwOV66Q1kW0SU
	emXM82ZgtB1YCmF4IdPvBXknAMUOu0AWeH8FmSzhLlMUWErfEVBjlLuW
X-Gm-Gg: ASbGncug5jrzE4dQeACciu/7H9UfVj5U8z8APmZAHseFu8b8sSyEWvS94MN/ll66MKA
	A9plJmxmxYhw37l1RaL+Et1czTkutshyO0aQ6uABOdD7+toOlI1naJLDzP8P5O3yFgBBBfaz/Ah
	lQBwisrsvg/h3Bs11NQ+rL6WdqGHZV4s2PZt2fqanEH4i+MQCQBbKsh9lxXbRAxc8lp9pKpYjF7
	0QoKSF4UeiB2N5cBcsRWDh3jWWRBoksasm1+uzzX5Fy+ZA1bfefabrS8TwrOS0Y/V7xzxWfh+xY
	Q4zPqUmilJrYK1YKlhHXys+BSuBZjs6lxYM6KqrltZsSiRXsRhTzdTRTXVga1g==
X-Google-Smtp-Source: AGHT+IGSBat5Awpb3N8too0zVfUcZWGcDL1zGBWVl236KVi6rOnzDQmx1jh0YLkVAbzlzUqKZyFymw==
X-Received: by 2002:a17:902:d548:b0:234:325:500b with SMTP id d9443c01a7336-237c20f843amr3332005ad.22.1750198350834;
        Tue, 17 Jun 2025 15:12:30 -0700 (PDT)
Received: from wash.local ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781c7sm85862635ad.128.2025.06.17.15.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 15:12:30 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Tue, 17 Jun 2025 15:12:00 -0700
Subject: [PATCH v5 2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
MIME-Version: 1.0
Message-Id: <20250617-rk3588s-cm5-io-dts-upstream-v5-2-8d96854a5bbd@gmail.com>
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
In-Reply-To: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jimmy Hon <honyuenkwun@gmail.com>
Cc: Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Joseph Kogut <joseph.kogut@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_151231_642914_2BD9AE76 
X-CRM114-Status: GOOD (  10.72  )
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

Add initial support for the Radxa Compute Module 5 (CM5). The CM5 uses a
proprietary connector.

Specification:
- Rockchip RK3588
- Up to 32 GB LPDDR4X
- Up to 128 GB eMMC
- 1x HDMI TX up to 8k@60 hz
- 1x eDP TX up to 4k@60 hz
- Gigabit Ethernet PHY

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 135 +++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..6410ea5255dc783e5d24677853ccf1c78008e834
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
@@ -0,0 +1,135 @@
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
+		mmc0 = &sdhci;
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
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
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
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
