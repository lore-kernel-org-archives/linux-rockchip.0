Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C46CDB482
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 16:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrLkHOB25LCCSiIxttMDpj+GRZhhJunkFVyHhlq16/s=; b=VpLPh3vngKfIsF
	emMiqC6GNrd+MIm4KB8OLJURMVmJ0Ma5JYDTlnqvC7kVuKx++yIlU9GhxhqAmUoNlQ4Kq2fQxbgJr
	VOs9eScxX0L4crh75M2dWxUe9YzoKZ2CeMBGQeSP5PHsM+62oU3wUUStscRxEfebbo5WBW0QSsnkW
	/i+7mjUkv7a4Cigt0HT9DDI8cNGsRK1t52rSOD9xz+4WrKBGjq4e+h0qpIz39S61iie3wR9LfRhS+
	5KJrJ/TTe+4n0C941OHAjDwvEncSMCvvhNmoFiIpZBrTX2il2ICIUFgxZhcCK2RSdw7Yz9/+S31fk
	n4tE3nmsewwNuY4kxpLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9GD-00FAEh-34;
	Wed, 18 Oct 2023 16:19:05 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G8-00FAA7-1g
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 16:19:02 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3af957bd7e9so4469891b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 09:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697645938; x=1698250738; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cncp6Vqz2tNKyeMpBE+MzO1YFnQJcaDwVPsn6h2VtJs=;
        b=J6g+YZbNCQ3Wkk2WVAY+sDuDCyTlRntTs0P2aSOwB3FK6qf325T/3yc4dtufMkOsPg
         24miKVsEG2P0SsVXAFXlEpj69e3tlYbdUp3IrwC+Jdgxqou9AaDUKgmg9TqotKYbULWT
         lKnwDnw9z0E38KE+kJsD7b6F9rqEMFqSrzXwhfpsNmapZFe0WMCoBX21zzfQs1klxtqQ
         34ws+8PrKzI55pW91Q+dsn6pCMQsEzekXo4La7gEUrs34WZJUMpJLM5kwdMAIPrJV6SK
         VoBBhwVfssBEwD4kkWyUQ9LxZq/EPODKMT5iOtsauydr3pkUBUY2gG1Xw+6QBZyaCbjw
         g+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697645938; x=1698250738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cncp6Vqz2tNKyeMpBE+MzO1YFnQJcaDwVPsn6h2VtJs=;
        b=IH2EgMJit91T2kmXczVhPDeoOUWuLGtwUOg7OwMhyUjU+XhLhigcQ2hJ7j2mw5W9Nf
         pKkWwi7nHPUFVxa3oV8G65gAen2dRZokxlTSYpPTvML2lV3Z+Oc7LZz5TiNkAINg6laF
         9sE3M8gUrUNFcveIw7icAze4Ugt3AySOErbBYGmGOZZdHz++uBlus3dDmLCXMD0LFQQB
         KK75qiscrC4e5Wao5pz78ugqsShnOxa5hQPE4xVO2ryAZ4Jw0vWkdQeRqpf2AmiGbSc1
         KUSDaPsIZVmfLdsljS6bFqk0MaeBieHR/yLUvl9RvbyVTVDq9NWt0wnjIxSKQOGQV722
         0vig==
X-Gm-Message-State: AOJu0YyPoUp4HwruivGu0DvfzQ2TtxGBhCOaf7aoCvHjf+MEtG2eGTOD
	khWcrZZgTP+JI7gGq+RGJHfyUEy9qBc=
X-Google-Smtp-Source: AGHT+IE/YzedQcbGDsoYXAmqsp/sqSQwZYk7tpz3fGbIapByB8nFBl2o/e0043FsZ2iRLZAQsAXZaQ==
X-Received: by 2002:aca:1112:0:b0:3af:983a:8129 with SMTP id 18-20020aca1112000000b003af983a8129mr6150694oir.53.1697645938112;
        Wed, 18 Oct 2023 09:18:58 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id db14-20020a056808408e00b003afe584ed4fsm697390oib.42.2023.10.18.09.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 09:18:57 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: add Powkiddy RK2023
Date: Wed, 18 Oct 2023 11:18:48 -0500
Message-Id: <20231018161848.346947-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018161848.346947-1-macroalpha82@gmail.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_091900_560079_B11AF476 
X-CRM114-Status: GOOD (  15.73  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023. The Powkiddy RK2023 is a handheld
gaming device with a 3.5 inch screen powered by the Rockchip RK3566
SoC. The device is almost identical to the Anbernic RG353P except it
lacks eMMC, a function button, a touch screen, no UART headers on the
board, and the panel has slightly different timings.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 161 ++++++++++++++++++
 2 files changed, 162 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 3f01b429a3aa..9ef64cfb8392 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
new file mode 100644
index 000000000000..5740412f6b2b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -0,0 +1,161 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rg353x.dtsi"
+
+/ {
+	model = "RK2023";
+	compatible = "powkiddy,rk2023", "rockchip,rk3566";
+
+	aliases {
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3151000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4250000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4172000 100>, <4092000 95>, <4035000 90>, <3990000 85>,
+					<3939000 80>, <3895000 75>, <3852000 70>, <3807000 65>,
+					<3762000 60>, <3713000 55>, <3672000 50>, <3647000 45>,
+					<3629000 40>, <3613000 35>, <3598000 30>, <3578000 25>,
+					<3550000 20>, <3519000 15>, <3479000 10>, <3438000 5>,
+					<3400000 0>;
+	};
+
+	/* Channels reversed for headphones. */
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rk817_int";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Internal Speakers";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Internal Speakers", "SPKO";
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+	};
+
+};
+
+/delete-node/ &adc_keys;
+
+&chosen {
+	/delete-property/ stdout-path;
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			  <200000000>, <115200000>;
+};
+
+&gpio_keys_control {
+	button-r1 {
+		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		label = "TR";
+		linux,code = <BTN_TR>;
+	};
+
+	button-r2 {
+		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		label = "TR2";
+		linux,code = <BTN_TR2>;
+	};
+};
+
+/delete-node/ &{/i2c@fdd40000/regulator@40};
+
+&i2c0 {
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+/*
+ * Device has 2 controllable LEDs (a red and a green) along with a red
+ * LED that cannot be controlled and is always on when device is
+ * powered.
+ */
+
+/delete-node/ &{/pwm-leds/led-2};
+
+&leds {
+	green_led: led-0 {
+		color = <LED_COLOR_ID_GREEN>;
+		function = LED_FUNCTION_STATUS;
+		max-brightness = <255>;
+		pwms = <&pwm6 0 25000 0>;
+	};
+
+	red_led: led-1 {
+		color = <LED_COLOR_ID_RED>;
+		function = LED_FUNCTION_CHARGING;
+		max-brightness = <255>;
+		pwms = <&pwm7 0 25000 0>;
+	};
+
+};
+
+&panel {
+	compatible = "powkiddy,rk2023-panel", "newvision,nv3051d";
+};
+
+&pwm5 {
+	status = "disabled";
+};
+
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
+
+/* There is no UART header visible on the board for this device. */
+&uart2 {
+	status = "disabled";
+};
+
+/delete-node/ &vibrator;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
