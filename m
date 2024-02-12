Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56230C48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 20:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODBHjwvukeZG+7nTZWgPjOHitjovCW8PGHJmP8pfLCo=; b=Tux85FQt7VVrzG
	xsMCQ6ZKqqXydLnfz78SzNPzoX+VJia97xE1M+C/sit84et2u/vYqygmnVgH1Vu+uQ9CYh/qFNRP1
	ZnDh6sQrRrEAyOoMMMAv0UnXoiS2zkgoDJa/kSvBZnh2S7DNT5R+RLR6ur3PRXjq+7+e6sVJ5UfLn
	TyIjYbevQpqWKHcFCO+EuNflfT5wVjI35biCK7kysifnD16mekIbdqibZ2V5M9iKiNGIDHmZOkfoc
	s/qfCXy6Z7UVryRLkfnCo09vEEf7dZzqUNUQ88B6VoDdolAxH+ihgg4GmY55loKZn6Im7mqfINBgj
	pFvK1Tiiddm6NMdRalNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZcTa-00000006oJ0-3Du1;
	Mon, 12 Feb 2024 20:00:26 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNU-00000006g56-1cRc
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:05 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5961a2726aaso2303713eaf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763803; x=1708368603; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U+Zsk6HBC5/Pag8q1TO8vPoQmQRPTUSpwHWT3Y8NpYM=;
        b=muYxdFqMFsWvwzxU0OPBMxiBvTylgdbXLEdTvd6UtoqgddvhdnZM4y5zx1IM/DxJuu
         pI/Q9xo/nuFGreIL2MvXjeN+0SZP3n3R/T8bOcvL+JEb2AtpuMIegK0JOlHr3deS5ARx
         cBDxWHq4jaeVe+lBz8L6idxtuxb2pkjv7nltoHuH7N3W5JXc43aTGFdvOYpagMVqm5IR
         Ryuw/haDZ3fXFV0RKFwGdA/lrYYBSsQRbDJWu6YTVdW6LHyMl+kPUSJXkgA9a6ua0ATo
         KKwIYLQO/eQM3ONsnGe2KPevuxB2wzI8Z+QlXuBJqZTwA8MObZpya56lawoAbcuanSE7
         IFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763803; x=1708368603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U+Zsk6HBC5/Pag8q1TO8vPoQmQRPTUSpwHWT3Y8NpYM=;
        b=F86beriKUoHCv5lt+KjCULDDG4fl/+4neqECLFCjEWEoSHv2psrMpAgAnlK/yGK/F6
         ZhEt6yWk4wnTbkhJmI6fHEqrCbieVW58qaWCyZHthNHwqzYF4HZNL8J4BOtsFgE+IoVP
         X1cIfXvAAj0euo6DDNYxogSoqT8Ga/rFNPQqyq2z/rxYD/4MFIpFu1ehrhnp3WqDyNRl
         XXHZVsvK+fVxn8BIeIs9VHi0t8W6PWGthtjYIlIWHptz29f9pFlZpvPVbHR+5P+bQ/Uo
         2XdDoeFA4ju8zQu77yuREtrO/N2/3a0FbW18Gi5XdYkDGBOqIH+Xw8X7f0m4F/M9NrXj
         lRhg==
X-Gm-Message-State: AOJu0YzBinCpSMCM1YVTzh43dWU6HPQ8tTY9KV9NlZMqnUHKnrSzU5IK
	5/SfK0cxznJ7hn+HvvVKklCpElbfhiGTh8WwcvZcAptoAb5jTKue/7OufIMc
X-Google-Smtp-Source: AGHT+IF2GtLHuizmdNtPctob4UCqvZ0KarbccbJZkSF7dyb21zuVDYoLXsv8+3H2OR5F+vrRXpMP7w==
X-Received: by 2002:a4a:d283:0:b0:59a:e43f:f209 with SMTP id h3-20020a4ad283000000b0059ae43ff209mr5458362oos.9.1707763803015;
        Mon, 12 Feb 2024 10:50:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWkcxxpuI7IaKTDaMNEyKIuCQFx+EcAU6C17eWvs29APm+/yndvP422Msq0A74VjkoeOUbqBWNE9QDMySfBvBPprHJkR8bvckjfRer6slxaVMN2IxXpXtcV6oxy5Y1kAL68GdfuZDxJVgdJfwVGKE4zic9H54ehSUzDlgvCudEqpzWZof9uTI9gvZrTp8DZo62wVSLhhpFVGfPi0kpman5aMJGUaDjJl/v46z8VtFx1liYQwed3353f8eKYhP1Xh+vE/gDNqm4UesDeDJG33KPO+y06GUMlXg4R/Yh0PEXCgKGGuEuVHZ3LUYQqXvIU+Mv6zsF8jHJo+o417O8up4w5Na96uCLGx8uI0gpOc20mC8yQzw9nttZp4OeMM9IhBy4wZHUGhFqtgssenBcRs55QqN+6clXb0ky3xCDwBFQEwUnNyGxFGwjOC/dUsfan8hTSBb6MUhfkcleCXXedhD5Qu67T8Yup6DJtfn0CI6oCTx26Zvo8B/LipsDyCwA3HKh/Z5fFvL+6oskSZlUxcI7MvLula5K3D+Deco9EXJsk81i/E3Jq0X352tDZ
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:02 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 7/7] arm64: dts: rockchip: Add Powkiddy RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:50 -0600
Message-Id: <20240212184950.52210-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105004_465151_EC79243C 
X-CRM114-Status: GOOD (  14.20  )
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

Add support for the Powkiddy RGB10MAX3. The Powkiddy RGB10MAX3 is a
handheld gaming device with a 720p 5.0 inch screen powered by the
Rockchip RK3566 SoC. It includes a Realtek 8723ds WiFi/BT module, 2 ADC
joysticks powered by a 4-way muxed ADC channel, and several GPIO
face buttons. There are 2 SDMMC slots (sdmmc1 and sdmmc3), 3 pwm
controlled LEDs, and the device includes 1GB of RAM.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3566-powkiddy-rgb10max3.dts    | 87 +++++++++++++++++++
 2 files changed, 88 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a7b30e11beaf..3c4f87e4db61 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb10max3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-x55.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts
new file mode 100644
index 000000000000..fd1a01744a25
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-powkiddy-rk2023.dtsi"
+
+/ {
+	model = "Powkiddy RGB10MAX3";
+	compatible = "powkiddy,rgb10max3", "rockchip,rk3566";
+};
+
+&bluetooth {
+	compatible = "realtek,rtl8723ds-bt";
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <126400000>;
+};
+
+&dsi0 {
+	panel: panel@0 {
+		compatible = "powkiddy,rgb10max3-panel";
+		reg = <0>;
+		backlight = <&backlight>;
+		iovcc-supply = <&vcc3v3_lcd0_n>;
+		pinctrl-0 = <&lcd_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		rotation = <270>;
+		vcc-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&green_led {
+	default-state = "on";
+	function = LED_FUNCTION_POWER;
+};
+
+&i2c0 {
+	vdd_cpu: regulator@40 {
+		compatible = "fcs,fan53555";
+		reg = <0x40>;
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
+&leds {
+	amber_led: led-2 {
+		color = <LED_COLOR_ID_AMBER>;
+		function = LED_FUNCTION_CHARGING;
+		max-brightness = <255>;
+		pwms = <&pwm0 0 25000 0>;
+	};
+};
+
+&pwm0 {
+	pinctrl-0 = <&pwm0m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&red_led {
+	default-state = "off";
+	function = LED_FUNCTION_STATUS;
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
