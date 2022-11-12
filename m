Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EC93C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51LJOz/8XkWRRHhtr8H4NRkPcy+SZvF5YDtW2MjRkO0=; b=IFaNwALzx2ZB1P
	NcgXh8IKxbqerDX+n7p9EJS85+OxKdSmg9kiObvhxxqEFlCOmIcYyUYCTlvWQRDf+38zcYEano7+S
	ATzFBffexoMU+26bk3dGtgD6M1y9+2TTFZG1iX1bETGDeYUnVU/nX2XQeziE50wqkL+jyDv2QtGYM
	QcSj1/7hvaEO/sUvJR4zeepbwtWsreD029433JDpMnlry8MJUWSftOXlU+BxZl6eXBa8G8mpJWfG8
	D72lYoYkRdkt3+1uUYcTI5cIE+BnDRdM039azW5V0cGw1VLTqaKji/fu6y+lt8cF04MHDBo3Jqc6M
	b4cnARR+iZCwgccDe4vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrMd-0061Px-CQ; Sat, 12 Nov 2022 14:20:07 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrLd-0060h6-6e; Sat, 12 Nov 2022 14:19:07 +0000
Received: by mail-ed1-x534.google.com with SMTP id e13so2303965edj.7;
        Sat, 12 Nov 2022 06:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFDaqGJ45XvPbPmyYrVRCHPTuzVkjaLszKXtT07fVNg=;
        b=KOFc8v7rCg+klvjjrpO3YKUbNAsqNMPichlUCPfZl1xAWoMR74Xj0HjbaC6tLjoAiR
         RSVRIr14SW6hZLCHEbuc3WtVRFqGLT2I6MPYTi+//yP0dy70BTl5sdgBT4ttPqIsKRip
         HCxiebju41uoIbejMh9R5OrFc7g41Ta+UTyWgD4G5o7X2OWUt2YTTfpQSIr+gs1veSx1
         Rya2fMjia+4PcV9Ay0Duh7zbNRTnHHIKkmY6McXjQXnYwqYFXQhdmfLMb+b6fRqB0DnV
         Cbg69OD9nFz3tL6c716seUtd8T8qmB/1IqyQFj5pwoZeW7XCjLcvJg+wXlfTOgqSx9zu
         ecjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFDaqGJ45XvPbPmyYrVRCHPTuzVkjaLszKXtT07fVNg=;
        b=D4c7VIFELKeKE8n7O2bB8B+/YL7SLT3NyCgJX3EDmDQwjtM7mpcXV43FBHnyJZXxis
         Ds2AWLMz7xCVEbSywHCYSqiWNIjZ089tvVHRBOBXpyvb7hBcNIDiIzwtqocbWrlHQlXR
         dbg/Md9vbEQ0F2bTJb/l0brhiBtxV4n8q5d7BKSNUT8hpZpdC2ncWwEXmv5VNnM8MBe4
         OdlIyFNVCL6D2jZt5ABXXF7wpLxASp6Qn8b46TbkHsLnqCvMvHDuWSUYiUOXy/7mhU5C
         daNVUPSGIGHJdlZaXYZVn33J/4RyEldghn9EAT3M7vmra/lpsEiVj8IqF4lUOWoOEPMo
         9k2g==
X-Gm-Message-State: ANoB5pkMkEqFFvqvz6BT/vebfFhy4UoqUP26mcVQpBZmK1dA2pFe23Nx
	QyJtT4p8CksvNUywCHSERtg=
X-Google-Smtp-Source: AA0mqf4bB8gQS3ToJQ+Sy3+AXgIasU2V7hyiLRWh4o5TBUYtKeZEfQuZDzrGhPfhVol15B/DUIDw3Q==
X-Received: by 2002:aa7:db85:0:b0:463:f3a:32ce with SMTP id u5-20020aa7db85000000b004630f3a32cemr5488298edt.366.1668262743959;
        Sat, 12 Nov 2022 06:19:03 -0800 (PST)
Received: from localhost.localdomain (83.31.120.236.ipv4.supernova.orange.pl. [83.31.120.236])
        by smtp.gmail.com with ESMTPSA id g21-20020a50ee15000000b004677b1b1a70sm1050148eds.61.2022.11.12.06.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:19:03 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: rockchip: Add Odroid Go Super
Date: Sat, 12 Nov 2022 15:18:40 +0100
Message-Id: <20221112141840.516224-5-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112141840.516224-1-maccraft123mc@gmail.com>
References: <20221112141840.516224-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_061905_293505_42004D8D 
X-CRM114-Status: GOOD (  14.36  )
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
