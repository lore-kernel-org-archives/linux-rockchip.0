Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29A32C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51LJOz/8XkWRRHhtr8H4NRkPcy+SZvF5YDtW2MjRkO0=; b=w8VjSywS+SmrYN
	4GrWHL2hbosdTxq3Lz9/k+Fum70qkjiaS3EnScBORt2GkY5pEtCyZFQO1gUkQXmdWChWpG3jAZRw1
	sMpb1t+8bGjXVNOxpEDWlX28acaeGQszNcMQXNmzgWAS+amunuA0Q6ZzBAldogfSQZzJ/XrfXho5P
	Wu/AJZZGpYwVcnS+IMYuLNNdJGxWkxVuXpHmGnFw4ucJVJI+qe0zVXuDr4TvMsECMVXxaGkga3zTK
	Qc0XCcGyUQfLy8D+oUofejQdkezlmgzVqaxwzyomVbWpmkk5i21e/K4ZO6PHcrajwB76dqitj7njw
	TAFZGGLD6BLw1qhgxcmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrb1-0065c4-4P; Sat, 12 Nov 2022 14:34:59 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otraX-0065Pf-U9; Sat, 12 Nov 2022 14:34:35 +0000
Received: by mail-ej1-x62e.google.com with SMTP id m22so18477096eji.10;
        Sat, 12 Nov 2022 06:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFDaqGJ45XvPbPmyYrVRCHPTuzVkjaLszKXtT07fVNg=;
        b=q4FTqursgEAMMWr4fE9wWAV3lLm8GGHfci7pSrQrQZpj5euPkTEdNk0X4bRP6P3y0i
         6TFa04G2jLQfEeXyNiO9eZcIEM82+z/3YEspDzyr9nhlqj+RgAQVYExoOq/EWVqe5Uh2
         zB1v0wvDGIiiTQW7DwZ4WMtwKJs2zIETtqRgMK+VRw0tJhXQZYRiqqANN+3kH+tZmaew
         9/8cc3HPul7RzGGbuVOVdAuVEYWjmUQqA9qxbl5haV48/IWq4X9rtsmQBZPU33M2ZdZN
         mv7L6vV8ATEpnse2sCvgTZmpX+ltYkPUDJF60c6PB9uBqCjzRz4Gp6Rnqk4sVFdaV7sl
         fj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFDaqGJ45XvPbPmyYrVRCHPTuzVkjaLszKXtT07fVNg=;
        b=UC1JxowZ2zVWX2Mv1BgVaxnXC/+Ggav/u31t7sYUz79xOxxP0Hi1tsrdS4vgaLVjvz
         rbllVF70cip04/FsWqffEJ5lFdlDUyRwLkeS4vWjrQAFuoiIFI6doeWZvPZwmRGZKCRv
         UHSJLen3WzJWZHzAAAMM1PXaWjzSOteNy24HIltwlN85FrsCcGNU316FidVcZ9hzMVFI
         qmluO9n82lN7/mfQKE06WmLFUo5wZwx2QKTwU4MjD+xtB1MuenMzkSSzk6lUMNy6qmxf
         GwdFG0k+0ew3MOBwbQp0/vQmjMT0CbYDXaEWTUPa5uYJE0gaprzhoWbkiVGIDuCgCtgZ
         LE9w==
X-Gm-Message-State: ANoB5pl6V08e0t0stCFLFLtULNXri7hYT6BhxZ02jlT5oZKHfS30UJwI
	LKsZnsXRVPt+f4QxMhrWL7HNiVU7EgExMGps
X-Google-Smtp-Source: AA0mqf6kKaZssmvDUB34wbKkBSIN2/QVfiUFZ7H2nRRuZ574HnFCkLXqLRizM3zSPK3xnFnthGtwtg==
X-Received: by 2002:a17:906:e0e:b0:78e:302f:41fb with SMTP id l14-20020a1709060e0e00b0078e302f41fbmr5429906eji.423.1668263668453;
        Sat, 12 Nov 2022 06:34:28 -0800 (PST)
Received: from localhost.localdomain (83.31.120.236.ipv4.supernova.orange.pl. [83.31.120.236])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0077a11b79b9bsm1974668ejf.133.2022.11.12.06.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:34:28 -0800 (PST)
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
Subject: [PATCH v3 4/5] arm64: dts: rockchip: Add Odroid Go Super
Date: Sat, 12 Nov 2022 15:34:10 +0100
Message-Id: <20221112143411.517906-5-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112143411.517906-1-maccraft123mc@gmail.com>
References: <20221112143411.517906-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_063434_191927_643E8C21 
X-CRM114-Status: GOOD (  14.11  )
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

This device is another revision of Odroid Go Advance, with added two
volume buttons, a second analog stick and a bigger screen that isn't yet
supported in the Mainline Kernel.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3326-odroid-go3.dts   | 161 ++++++++++++++++++
 2 files changed, 162 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 12446f531d29..142c83d2e5aa 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
new file mode 100644
index 000000000000..4b6c896d8abd
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
@@ -0,0 +1,161 @@
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
+	model = "ODROID-GO Super";
+	compatible = "hardkernel,rk3326-odroid-go3", "rockchip,rk3326";
+
+	joystick_mux_controller: mux-controller {
+		status = "okay";
+		compatible = "gpio-mux";
+		pinctrl = <&mux_en_pins>;
+		#mux-control-cells = <0>;
+
+		mux-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>,
+			    <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	};
+
+	joystick_mux: adc-mux {
+		status = "okay";
+		compatible = "io-channel-mux";
+		io-channels = <&saradc 1>;
+		io-channel-names = "parent";
+		#io-channel-cells = <1>;
+
+		mux-controls = <&joystick_mux_controller>;
+
+		channels = "0", "1", "2", "3";
+	};
+
+	analog_sticks: adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&joystick_mux 0>,
+			      <&joystick_mux 1>,
+			      <&joystick_mux 2>,
+			      <&joystick_mux 3>;
+		poll-interval = <60>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <10>;
+			abs-fuzz = <10>;
+			abs-range = <180 800>;
+			linux,code = <ABS_X>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <10>;
+			abs-fuzz = <10>;
+			abs-range = <180 800>;
+			linux,code = <ABS_RX>;
+		};
+		axis@2 {
+			reg = <2>;
+			abs-flat = <10>;
+			abs-fuzz = <10>;
+			abs-range = <180 800>;
+			linux,code = <ABS_Y>;
+		};
+
+		axis@3 {
+			reg = <3>;
+			abs-flat = <10>;
+			abs-fuzz = <10>;
+			abs-range = <180 800>;
+			linux,code = <ABS_RY>;
+		};
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <4000000>;
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
+};
+
+&builtin_gamepad {
+	button-sw19 {
+		gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_LOW>;
+		label = "SELECT";
+		linux,code = <BTN_SELECT>;
+	};
+	/* note that TR2 and TL2 are swapped */
+	button-sw20 {
+		gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+		label = "TOP-RIGHT 2";
+		linux,code = <BTN_TR2>;
+	};
+	button-sw21 {
+		gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
+		label = "TOP-LEFT 2";
+		linux,code = <BTN_TL2>;
+	};
+	button-sw22 {
+		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		label = "START";
+		linux,code = <BTN_START>;
+	};
+};
+
+&internal_display {
+	status = "disabled";
+};
+
+&rk817_charger {
+	monitored-battery = <&battery>;
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
+					<3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>,
+					<3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
+					<3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
+					<3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+	joystick {
+		mux_en_pins: mux-pins {
+			rockchip,pins = <3 RK_PB5 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+	};
+};
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
