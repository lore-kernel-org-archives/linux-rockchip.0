Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0525C43217
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 22:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++fQ8p7PDQJM8crXqFABrGPb0sHiLwCyJmkSfjU3g2w=; b=J+bAQtIKw7sdya
	6L+mS1XICXMb3DJzV4m5RKBqTlHXLPFduRZttjirG1uGB7rDVjIT9+ke+sZeOHxEeFSAzlYvpNKEW
	jfYIOYreVENe3WqOBs2nFADFCoFYqWVRATmPtRkRym/RpQ92UHDg32+KJqNb4OC7ynLrCf1Q5JsA6
	3EBu4PCuOPh1fMb4iip2+AJ2LfoXfDrTUOrhIH6/Vlstmpd9iR5S2UqZgQdEDnnkQhzy4M2qtyKDo
	kyjccDx8KCHXsUBKwuX7dsL0ypCOXF5TL5SHLVFilpr+Vk4sC1qSXfo0w+zsTvViUTWqojgRLMbnR
	xsOzyTf5Y05Ecm17gjuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmwB-000Adb-Ck; Thu, 17 Nov 2022 22:00:47 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmvn-000AHK-4G; Thu, 17 Nov 2022 22:00:27 +0000
Received: by mail-lj1-x22e.google.com with SMTP id c25so4487602ljr.8;
        Thu, 17 Nov 2022 14:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chpLDI1QSiEujTU6BUSwWuhdcchu9pHjD9dEecC+fDc=;
        b=XSjmsV3QjMn5m4+Ldh/Pq/Yc7duQLeqCpP0XNupnEkdGDmc5mcYs2uzbpixBiTyhVG
         lvkFANGCRjhfDY86W5/uvOAI7Xq/QO9nu0H5K4SNvQ8mp0jZCE1vG9f6dC+xzVdK7xKV
         7HdMTxDH8B6zhmRfoxprLmQL2Xau0iNHaeNAuBeLlI5+twJYKMYWeyUevEabueahbc84
         Rml65yU1/rukKMcvu6g/xe9GUSiv08zpOqVQVnyHLFdliKt5ztiwcas+09SCtc3S+47f
         yIHEdgGUyI7k6Ri3vExT4M9JOgmy8gfy2/WI+4yI9akMl9mikFvkaCeNoSVglU6d7p9C
         uj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=chpLDI1QSiEujTU6BUSwWuhdcchu9pHjD9dEecC+fDc=;
        b=l0atsP/iK4aT1DItzX2mshm7J9BecrCUmtlwm6wYT5Rh+uwEua4nSKuOBgoBXwlQ3a
         p8GEG4DpOcnr23og8+nIupg05u953ZniSIRQSvYHC1iNuutgh2gjghbjTsAenVrI3fiE
         w1LafppBsE8hS+zxJ6l+bVDBtqMhve0UPMILvyPDoGHs/7nbafId+Dr3F4lDmO8YgIu4
         ++JYykNMXbANWzGiO7eb67+Ui36VNiEmHAKxYVA1bo6lj2AVZFKgbBplJmrmO+WpClZ0
         I+19cai3W7poL012K4VX8vM9mKT5HFmutdLTVuKowRhiiPIuc2aIIPvYnjKkBoQYIzTW
         IoRQ==
X-Gm-Message-State: ANoB5plP/O6hpRkV0nK1H/VbBl7GBKrXgNHHr0LmnE8MrHde+vfheKVB
	3Tx7jmkQiFpLGhB6Q66JO37iY0aLDQ3LtQ==
X-Google-Smtp-Source: AA0mqf7zDLZleLNB5PN0DlFw9DkCeK96LZnIfSVYdSIhI9QSIE2hFoapXd+j7ucV8Wh4+B43T+LTjg==
X-Received: by 2002:a2e:bc2a:0:b0:277:13a5:806f with SMTP id b42-20020a2ebc2a000000b0027713a5806fmr1611095ljf.144.1668722408200;
        Thu, 17 Nov 2022 14:00:08 -0800 (PST)
Received: from localhost.localdomain (79.191.9.185.ipv4.supernova.orange.pl. [79.191.9.185])
        by smtp.gmail.com with ESMTPSA id q29-20020ac25a1d000000b00497aa190523sm342985lfn.248.2022.11.17.14.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 14:00:07 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/5] arm64: dts: rockchip: Add Odroid Go Advance Black Edition
Date: Thu, 17 Nov 2022 22:59:52 +0100
Message-Id: <20221117215954.4114202-4-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117215954.4114202-1-maccraft123mc@gmail.com>
References: <20221117215954.4114202-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_140023_210882_768DCCA5 
X-CRM114-Status: GOOD (  13.60  )
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

This device is a minor revision of the origin Odroid Go Advance, with
added two more buttons and a WiFi card

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3326-odroid-go2-v11.dts    | 156 ++++++++++++++++++
 2 files changed, 157 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8c15593c0ca4..12446f531d29 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
new file mode 100644
index 000000000000..139c898e590e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Hardkernel Co., Ltd
+ * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
+ * Copyright (c) 2022 Maya Matuszczyk <maccraft123mc@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3326-odroid-go.dtsi"
+
+/ {
+	model = "ODROID-GO Advance Black Edition";
+	compatible = "hardkernel,rk3326-odroid-go2-v11", "rockchip,rk3326";
+
+	aliases {
+		mmc1 = &sdio;
+	};
+
+	analog_sticks: adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&saradc 1>,
+			      <&saradc 2>;
+		poll-interval = <60>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <10>;
+			abs-fuzz = <10>;
+			abs-range = <172 772>;
+			linux,code = <ABS_X>;
+			};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <10>;
+			abs-fuzz = <10>;
+			abs-range = <278 815>;
+			linux,code = <ABS_Y>;
+		};
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <180000>;
+		voltage-max-design-microvolt = <4100000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4046950 100>, <4001920 95>, <3967900 90>, <3919950 85>,
+					<3888450 80>, <3861850 75>, <3831540 70>, <3799130 65>,
+					<3768190 60>, <3745650 55>, <3726610 50>, <3711630 45>,
+					<3696720 40>, <3685660 35>, <3674950 30>, <3663050 25>,
+					<3649470 20>, <3635260 15>, <3616920 10>, <3592440 5>,
+					<3574170 0>;
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_pwrseq_pins>;
+		reset-gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&builtin_gamepad {
+	button-sw20 {
+		gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+		label = "TOP-LEFT 2";
+		linux,code = <BTN_TL2>;
+	};
+	button-sw21 {
+		gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
+		label = "TOP-RIGHT 2";
+		linux,code = <BTN_TR2>;
+	};
+};
+
+&internal_display {
+	compatible = "elida,kd35t133";
+};
+
+&rk817 {
+	regulators {
+		vcc_wifi: LDO_REG9 {
+			regulator-name = "vcc_wifi";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <3300000>;
+			};
+		};
+	};
+};
+
+&rk817_charger {
+	monitored-battery = <&battery>;
+};
+
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	non-removable;
+	vmmc-supply = <&vcc_wifi>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	esp8089: wifi@1 {
+		compatible = "esp,esp8089";
+		reg = <1>;
+	};
+};
+
+&pinctrl {
+	btns {
+		btn_pins: btn-pins {
+			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
+					<3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
+					<3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	wifi {
+		wifi_pwrseq_pins: wifi-pwrseq-pins {
+			rockchip,pins = <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>,
+					<3 RK_PB6 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+	};
+};
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
