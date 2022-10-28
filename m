Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9927BC38A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 18:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jL+7UYFGPBLfSNAu9/7UYHrfFeMRLqiceg//TWwjpFg=; b=hiVE+ZqdBaXke0
	uaONm00g94LmexdmqrOXXeOR1DnmlTwx2x6cYaCMATV1awey77FPpSnPFD8zUfiaR0s1p5pGk3zTB
	4CV4e9P2U1z+GfTGDfGBajKal8CWRiy6pA2p9zQhEGAUrYyAl3Q0jEj5aqlB52HkD02aMZckglzhV
	jE+OGFRO5dbOmFMtEuBBgpc+eQ8BFkTCdEHd/rJdDKINzI2qJ4mLfit//TGudzRDDhiuZ/vKT2SOH
	oAVOhFTVyt6mZzNtq/UY/HbEfS12HPyAhVDCdW84Cq75ej2Cy08ym9VUk4rqSxQzhkukJ/3gaOy+/
	b2x61j4M9ClXoGUKKI8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHz-001g1R-9T; Fri, 28 Oct 2022 18:41:07 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHt-001fwZ-SH
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 18:41:04 +0000
Received: by mail-ot1-x333.google.com with SMTP id m5-20020a9d73c5000000b0066738ce4f12so3441770otk.12
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 11:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LouHoam5+iRmoNrs0ELN6FfFkIBlxC8hLZUylAnx03Q=;
        b=DEfdzGsqha24l5CIOBo7L83b55r7SOUC8AqH09wuIIMfGhVsbwLUkFn6ew4WMxDzsb
         iIDdRsICxnCOqj+aaJ1FGfJdjTDiMnH3W0vg8MaUUTG76+Han+VjrghfLklLCbic21Gy
         p9kRcr5dsTg6W5DID7zyuWFdUYElKAI/ijGufwyMnhkB4YHAXx+BoP19RiEWh529euoo
         qwsNrpM40wsG7uExmtpalZTkScOt7BD1O6jROxfsOJQh9Ti5VgV+odx1XlKFW3+wHeVL
         S3PZyWxIyNVGJpKrxwfNQzscWOb76qwgXRl+Ae14YhXWr346EVWhPj1CqKpDpEizkmN5
         TOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LouHoam5+iRmoNrs0ELN6FfFkIBlxC8hLZUylAnx03Q=;
        b=OSS2jIcaTNQqZZIUwrqcKRAvMF4YNYhmxVEaeaJWelWR0eE5So9Z68n4ynlX14b4lh
         raJneFwKJpCWwwyFNwpad3DeZo/+x9evhiWNt/fdnTv6rMRbWSShSdJ3+cqLqYm4rccM
         iKCHomqpSS8JO/K323STJzerxXNUnduA61Vnj7LvPWnge+5tx4VgUUyHF4hcO5zaY5Mt
         30yAF8iaLSltiMkRtKPcIFSNaBFhYKTfxfZ8V2ZtEkHIiMAEryVDLbqX2A6E25vaOlRj
         x2s1oqNx9z4jfF2PiLFn+0vKf+JAj8FC3uRkPO9gnlJlydqcqRj9D6XKtxi/LbJHLupH
         U7Qg==
X-Gm-Message-State: ACrzQf0Ju7guHoZpV9k8SvsksgLY9rVLNhjew2IFa0Z7tba5284q5y2D
	USz5XwdTVssStEsYECMeQ3U=
X-Google-Smtp-Source: AMsMyM6PEBOe02jFPFWDKDCe1KyxZmNUoIslBcpcXVXblcUzzg1NkAGwzgQGlsME076X40Tg6jnwfQ==
X-Received: by 2002:a9d:368:0:b0:66a:ec25:62cc with SMTP id 95-20020a9d0368000000b0066aec2562ccmr368944otv.220.1666982457325;
        Fri, 28 Oct 2022 11:40:57 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:56 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	michael.riesch@wolfvision.net,
	frattaroli.nicolas@gmail.com,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: add Anbernic RG353V and RG353VS
Date: Fri, 28 Oct 2022 13:40:43 -0500
Message-Id: <20221028184045.13113-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_114101_949729_4E55EB77 
X-CRM114-Status: GOOD (  18.24  )
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

Anbernic RG353V and RG353VS are both RK3566 based handheld gaming devices
from Anbernic.

They are functionally very similar to the RG353P with the following
distinct differences:
 - The battery size of the RG353V and RG353VS is 3200mAh instead of
   3500mAh.
 - The audio uses the PMIC's internal amplifier for a mono speaker
   instead of an external amplifier with stereo speakers.
 - The GPIOs for the R1 and R2 buttons are switched.

As for the differences between the RG353V and RG353VS, they are as
follows:
 - The RG353VS has no touchscreen on i2c2.
 - The RG353VS has no eMMC.
 - The RG353VS has 1GB of RAM instead of 2GB.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   |  83 +++++++------
 .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 114 ++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353vs.dts  |  87 +++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  |  60 +++++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  51 ++++++++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  46 -------
 7 files changed, 358 insertions(+), 85 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8c15593c0ca4..a1f38acb8dfa 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -62,6 +62,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 7a20e2d6876a..80716b2ebd29 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include "rk3566-anbernic-rgxx3.dtsi"
+#include "rk3566-anbernic-rg353x.dtsi"
 
 / {
 	model = "RG353P";
@@ -18,26 +18,47 @@ aliases {
 		mmc3 = &sdmmc2;
 	};
 
-	backlight: backlight {
-		compatible = "pwm-backlight";
-		power-supply = <&vcc_sys>;
-		pwms = <&pwm4 0 25000 0>;
-	};
-};
+	/* Channels reversed for both headphones and speakers. */
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rk817_ext";
+		simple-audio-card,aux-devs = <&spk_amp>;
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
+			"Internal Speakers", "Speaker Amp OUTL",
+			"Internal Speakers", "Speaker Amp OUTR",
+			"Speaker Amp INL", "HPOL",
+			"Speaker Amp INR", "HPOR";
+		simple-audio-card,pin-switches = "Internal Speakers";
 
-&gpio_keys_control {
-	button-a {
-		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
-		label = "EAST";
-		linux,code = <BTN_EAST>;
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
 	};
 
-	button-left {
-		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
-		label = "DPAD-LEFT";
-		linux,code = <BTN_DPAD_LEFT>;
+	spk_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&spk_amp_enable_h>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Speaker Amp";
 	};
+};
 
+&gpio_keys_control {
 	button-r1 {
 		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
 		label = "TR";
@@ -49,27 +70,6 @@ button-r2 {
 		label = "TR2";
 		linux,code = <BTN_TR2>;
 	};
-
-	button-right {
-		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
-		label = "DPAD-RIGHT";
-		linux,code = <BTN_DPAD_RIGHT>;
-	};
-
-	button-y {
-		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
-		label = "WEST";
-		linux,code = <BTN_WEST>;
-	};
-};
-
-&i2c0 {
-	/* This hardware is physically present but unused. */
-	power-monitor@62 {
-		compatible = "cellwise,cw2015";
-		reg = <0x62>;
-		status = "disabled";
-	};
 };
 
 &i2c2 {
@@ -78,8 +78,13 @@ &i2c2 {
 	status = "okay";
 };
 
-&pwm4 {
-	status = "okay";
+&pinctrl {
+	audio-amplifier {
+		spk_amp_enable_h: spk-amp-enable-h {
+			rockchip,pins =
+				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &sdhci {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
new file mode 100644
index 000000000000..885234a023e1
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -0,0 +1,114 @@
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
+	model = "RG353V";
+	compatible = "anbernic,rg353v", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdhci;
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
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
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
+&i2c2 {
+	pintctrl-names = "default";
+	pinctrl-0 = <&i2c2m1_xfer>;
+	status = "okay";
+};
+
+&pinctrl {
+	touch {
+		touch_rst: touch-rst {
+			rockchip,pins =
+				<4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
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
+&sdhci {
+	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>, <&emmc_datastrobe>, <&emmc_rstnout>;
+	pinctrl-names = "default";
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
new file mode 100644
index 000000000000..a7dc462fe21f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
@@ -0,0 +1,87 @@
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
+	model = "RG353VS";
+	compatible = "anbernic,rg353vs", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdmmc1;
+		mmc2 = &sdmmc2;
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3151000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
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
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
new file mode 100644
index 000000000000..65a80d1f6d91
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rgxx3.dtsi"
+
+/ {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&vcc_sys>;
+		pwms = <&pwm4 0 25000 0>;
+	};
+};
+
+&cru {
+	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <1200000000>, <200000000>, <241500000>;
+};
+
+&gpio_keys_control {
+	button-a {
+		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
+		label = "EAST";
+		linux,code = <BTN_EAST>;
+	};
+
+	button-left {
+		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
+		label = "DPAD-LEFT";
+		linux,code = <BTN_DPAD_LEFT>;
+	};
+
+	button-right {
+		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
+		label = "DPAD-RIGHT";
+		linux,code = <BTN_DPAD_RIGHT>;
+	};
+
+	button-y {
+		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
+		label = "WEST";
+		linux,code = <BTN_WEST>;
+	};
+};
+
+&i2c0 {
+	/* This hardware is physically present but unused. */
+	power-monitor@62 {
+		compatible = "cellwise,cw2015";
+		reg = <0x62>;
+		status = "disabled";
+	};
+};
+
+&pwm4 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 3dc01549a5b4..c56c290f0d87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -29,6 +29,50 @@ gpio_spi: spi {
 		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <0>;
 	};
+
+	/* Channels reversed for both headphones and speakers. */
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rk817_ext";
+		simple-audio-card,aux-devs = <&spk_amp>;
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
+			"Internal Speakers", "Speaker Amp OUTL",
+			"Internal Speakers", "Speaker Amp OUTR",
+			"Speaker Amp INL", "HPOL",
+			"Speaker Amp INR", "HPOR";
+		simple-audio-card,pin-switches = "Internal Speakers";
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
+	spk_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&spk_amp_enable_h>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Speaker Amp";
+	};
+};
+
+&cru {
+	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
 };
 
 &gpio_keys_control {
@@ -76,6 +120,13 @@ button-y {
 };
 
 &pinctrl {
+	audio-amplifier {
+		spk_amp_enable_h: spk-amp-enable-h {
+			rockchip,pins =
+				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-spi {
 		spi_pins: spi-pins {
 			rockchip,pins =
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 2b455143b86d..010c6a77a9da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -217,37 +217,6 @@ red_led: led-2 {
 		};
 	};
 
-	/* Channels reversed for both headphones and speakers. */
-	sound {
-		compatible = "simple-audio-card";
-		simple-audio-card,name = "anbernic_rk817";
-		simple-audio-card,aux-devs = <&spk_amp>;
-		simple-audio-card,format = "i2s";
-		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
-		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,widgets =
-			"Microphone", "Mic Jack",
-			"Headphone", "Headphones",
-			"Speaker", "Internal Speakers";
-		simple-audio-card,routing =
-			"MICL", "Mic Jack",
-			"Headphones", "HPOL",
-			"Headphones", "HPOR",
-			"Internal Speakers", "Speaker Amp OUTL",
-			"Internal Speakers", "Speaker Amp OUTR",
-			"Speaker Amp INL", "HPOL",
-			"Speaker Amp INR", "HPOR";
-		simple-audio-card,pin-switches = "Internal Speakers";
-
-		simple-audio-card,codec {
-			sound-dai = <&rk817>;
-		};
-
-		simple-audio-card,cpu {
-			sound-dai = <&i2s1_8ch>;
-		};
-	};
-
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk817 1>;
@@ -258,14 +227,6 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
 	};
 
-	spk_amp: audio-amplifier {
-		compatible = "simple-audio-amplifier";
-		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
-		pinctrl-0 = <&spk_amp_enable_h>;
-		pinctrl-names = "default";
-		sound-name-prefix = "Speaker Amp";
-	};
-
 	vcc3v3_lcd0_n: regulator-vcc3v3-lcd0 {
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
@@ -607,13 +568,6 @@ &i2s1m0_sdi0
 };
 
 &pinctrl {
-	audio-amplifier {
-		spk_amp_enable_h: spk-amp-enable-h {
-			rockchip,pins =
-				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	gpio-btns {
 		btn_pins_ctrl: btn-pins-ctrl {
 			rockchip,pins =
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
