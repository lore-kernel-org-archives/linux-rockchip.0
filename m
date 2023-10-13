Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB8ACCDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 18:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10qezKaTM3ndHy3SEt9Q/QaEvT8ErjsD0GfuCRMpLYo=; b=I9UPSITkHXzAFs
	fKLegxnVyQq53WybFX4WBC4pFWl340QXGT8Klb0e8S3wgKV6VTi0RL+rBVyPthSJqHB0kLYaEP8VL
	ieG47tPNnLqwVI7fuhWSLXwN70n7D2cCFZxPlti/dnpB1Q+6Jrn8Uu0BZukUsCg13mexMq6pw/hfg
	gD+hZOZ1WyxAG5nlIqyJoeE1SZUt5iTZ/jR6G4EB1UDU+Stv8MI/s8tQfgxoUK81iv/N6lTtfD3P/
	mhchxKFAJMvSWRRHY5ooyqRKCRt5RLR5bdx/j8UH+RH2NTnhi5621xQ9mpc1rBm3uHQhb1xfWFPCW
	hVkS5AY/A/yRgFFjjVDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4Q-0043y8-10;
	Fri, 13 Oct 2023 18:39:34 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4L-0043vq-1Z
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 18:39:31 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3add37de892so1431952b6e.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Oct 2023 11:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222368; x=1697827168; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=taQ7vAEpEsyYFLFUuiwGBIsz4PkgF1SnWSyqumrI0Hg=;
        b=MeEvMJNG2IlFmMy2hvsJA3a3YkkiGbRry/e4ICFVwNG6/WCuFJxtzEw9nF7bHXuSLZ
         HBQlymQwCHZ+yUwzK6wSyz9GhCSK9dz95jAxKEl+dfWF7xQZ8Kaz19gUUD4c2HtmqQjb
         TlhDAr361qoQJR5fJ6U3R+p5F/FX0R3LM7Hzngew8eadTgRlZdfCFGdecgwirKS35PIO
         5Gu4vI1BermJxyG3qGR/PVOHwtqfLFfm6MiQ+54J8vPF+3b6B9Mm0aLSF7E6NxJKZsiR
         IZNF9wkm11dpP0FBm9xxerTbkgpeLM1apAfuqOkwX0Gv3JyiQ8EaVU2olYqyVyALrG5K
         pWgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222368; x=1697827168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=taQ7vAEpEsyYFLFUuiwGBIsz4PkgF1SnWSyqumrI0Hg=;
        b=olziGQ7QvsLLtFyXLWRTAl0MaSsyItRr4aQRwnWWLciYVS/mvrEDHE2eoGvieWVu8c
         JNJaiqdY9Dz5kpZBcCT8/wutKbz2NwAaAZN3lW5RRHlGVOPzBFa2uvFowgrQGWn+HtiS
         9QG3AGDNijdvQlH+MPObRRdB3JPuQg8UPM/zRjIXQ08v84WnTqICI0Q28fV10va7WK8R
         NvLuGeIKFBI/AWMLumDWusjK/2vLK77OFSpppCHHuaZPgxcLqBO0zBwFl0wP1o6C9K69
         3FjUf0wN+xGDep/rYiv0q5GZY+pPmx7zOo+AduSQRHDzuJa7NS49kf8RALcImsIpxGEY
         YhNg==
X-Gm-Message-State: AOJu0Ywy8qAQTO51ZHjwjEfoylBHVXGBkG6kG8Z5fqPkOQiScF2PYK7L
	tmt6kPMuzi684S9B3yM/Pi3n6rdplaw=
X-Google-Smtp-Source: AGHT+IEOHRMzzwdVAGQ57P+LsaY7TAEk+aijWm2eVqpD+nW1THPcnfl7PoK9r88Yvpx6L8xVpVn8yg==
X-Received: by 2002:aca:220e:0:b0:3af:26e3:92e with SMTP id b14-20020aca220e000000b003af26e3092emr23790520oic.28.1697222368552;
        Fri, 13 Oct 2023 11:39:28 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: add support for Powkiddy RGB30
Date: Fri, 13 Oct 2023 13:39:18 -0500
Message-Id: <20231013183918.225666-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_113929_522907_D317961F 
X-CRM114-Status: GOOD (  16.07  )
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

The Powkiddy RGB30 is a portable game device based on the Rockchip
RK3566 SoC. It has GPIO buttons on the face and sides for input, stereo
speakers, a 720x720 4 inch DSI display, a USB-C host port and a USB-C
peripheral port, dual SD card slots, WiFi, Bluetooth, and 1GB of RAM.

Working/Tested:
- SDMMC
- UART (for debugging)
- Buttons
- Charging/battery/PMIC
- Speaker/Headphones
- USB
- WiFi
- Bluetooth
- Display (at 59.04hz)

Not Working/TODO:
- Display does not resume from suspend properly. I'm working with the
  manufacturer to resolve this.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 152 ++++++++++++++++++
 2 files changed, 153 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index e7728007fd1b..3f01b429a3aa 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -77,6 +77,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
new file mode 100644
index 000000000000..c7828c99a1bb
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -0,0 +1,152 @@
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
+	model = "RGB30";
+	compatible = "powkiddy,rgb30", "rockchip,rk3566";
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
+	/*
+	 * Channels reversed for speakers. Headphones automatically switch via hardware when
+	 * detected with no ability to control output in software. Headphones appear to be mono
+	 * (each output channel receives all audio). No microphone support on 3.5mm jack.
+	 */
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rk817_ext";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphones";
+		simple-audio-card,routing =
+			"Headphones", "HPOL",
+			"Headphones", "HPOR";
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+	};
+};
+
+/delete-node/ &adc_keys;
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <108000000>;
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
+ * Device has 2 red LEDs instead of an amber and a red. Relabel LEDs as
+ * red_led0 and red_led1.
+ */
+/delete-node/ &{/pwm-leds/led-1};
+/delete-node/ &{/pwm-leds/led-2};
+
+&leds {
+	red_led0: led-1 {
+		color = <LED_COLOR_ID_RED>;
+		function = LED_FUNCTION_CHARGING;
+		max-brightness = <255>;
+		pwms = <&pwm7 0 25000 0>;
+	};
+
+	red_led1: led-2 {
+		color = <LED_COLOR_ID_RED>;
+		default-state = "off";
+		function = LED_FUNCTION_STATUS;
+		max-brightness = <255>;
+		pwms = <&pwm0 0 25000 0>;
+	};
+};
+
+&panel {
+	compatible = "powkiddy,rgb30-panel";
+	vcc-supply = <&vcc3v3_lcd0_n>;
+	iovcc-supply = <&vcc3v3_lcd0_n>;
+	/delete-property/ vdd-supply;
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
+/delete-node/ &vibrator;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
