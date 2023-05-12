Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7893FC77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 16:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7PyVOhQWBkFHcW5mdD/sfYd8VF4TtMd6TRk2abN2hQ=; b=mnC+ngkGV5In2N
	fciJAbyko1DWUbzrLsoTRZDrzCxMvtw9sxbDZ88Psww7zubEeQ2pq2/5Ux5b7wAL5/e5R5K8GiHpV
	dAFM3eqi9KORAmisNfeEu6PgG4rzihCrPrN564JxX7V/n1qZWQiUSM5TxA4bd6imF40b0A0iaBblD
	2rATtdpK9eHflWSDtdaO6NMEooHtRIpiSppzQ25363nBDH2QX82JpHne7Tl3h+HbkVCfSpCP4/QOi
	asFTW0+LY9MHPy18XgXhaq+IgmqPTWgV61bUYAJaNy2zDexj10HQH75ZQxbjGRjBArzlv7V0lcsr0
	3FgqxpMC9g+q9VK/WqHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVVq-00CTNa-0S;
	Fri, 12 May 2023 16:20:58 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVVl-00CTLc-1z
	for linux-rockchip@lists.infradead.org;
	Fri, 12 May 2023 16:20:55 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-55a2cb9788dso147655047b3.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 May 2023 09:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683908451; x=1686500451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D2NnSEfiECS0R/9biIKytrX+R5CKXIV8VpcC5EKpZd4=;
        b=K3GPb+w4vrWFvyJ6LUeLJrBNJcBr5r1J+qGmFaBbYANdYX8epk0batUbcc9kYMoDRb
         tasCgTseyRwY7UNKFmRV+rUctMh1kYC16hwHqi0LyseLnGRB/fruZ+cs3z7WhympdnMY
         w6HQybEffapiOmd0PpfTlyFQwuQlRQbyA7rAZoFStia+ULJYIJxDCjo+eONzw4Pw+YPi
         Yhr93YHXLkwKAqkNux1MjudNaLmnga7oqE9QaYS1lghwSYrSU0y700gg3Pfd6kfYa28t
         bu9ZgUlusy8d1KAVeHoiNLj7pBcB4HMhAs2mhr2dJcIQXKJ9HPcDR3ZgNoQB9oEqWE/y
         QSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683908451; x=1686500451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D2NnSEfiECS0R/9biIKytrX+R5CKXIV8VpcC5EKpZd4=;
        b=av2E9mp4e2NqCmaVY4uWPTSZToQw+kwhQrB4IH9h4lnR3qgKDdZAItf+1oVl8Gqf7F
         l0EZxaXauz0HSLFiQW0drsheIvS4jf/8mteg7ldpWnN1BmPC2fc+2tpkERurGBk2scWI
         LtcuNt1Ctu0DZUW0c0fcPPMz8PIKHgxtT4P3uS8LEY58OxsDbwo5eTTAyN/hg6Hdr9t7
         Jx9bInDaQsHzNeSNv5IbIZ7TLQptn1viA5A1+aIeanLgbc3Bi62cRxwV8IQS2gd4Oj7r
         c2YnWRt44uq/ejVoc9mUxEZ9noO1nTWzctsvvmQ7iw5Wf81V6cBl5Ah9xDN/NWde1Cli
         kSnw==
X-Gm-Message-State: AC+VfDxnUgWT5VV5AGUiTVD3/faibDcXhgSO3NIKGY2pGOdbya6Rg+r6
	JDKNtmcm7mcU+fXoBeRAW7rArTVaOQEOLg==
X-Google-Smtp-Source: ACHHUZ7+CwWV/lIfXnYCWNDCUf+7EbLB2+oeCTEf1ELI/RYWyb5a4nR+pJ2t+r1uQZa5LZCJcfKW/A==
X-Received: by 2002:a0d:f1c3:0:b0:55d:aff9:fbbb with SMTP id a186-20020a0df1c3000000b0055daff9fbbbmr27273127ywf.28.1683908450939;
        Fri, 12 May 2023 09:20:50 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s19-20020a257713000000b00ba71e594cafsm340129ybc.62.2023.05.12.09.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 09:20:50 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: add Anbernic RG353PS
Date: Fri, 12 May 2023 11:20:39 -0500
Message-Id: <20230512162039.31132-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230512162039.31132-1-macroalpha82@gmail.com>
References: <20230512162039.31132-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_092053_650791_A8961B5F 
X-CRM114-Status: GOOD (  15.32  )
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

Add support for the Anbernic RG353PS. This device is identical in form
factor to the RG353P and has the following hardware differences:
 - No touchscreen is present on i2c2 (or at all).
 - Only contains 1GB of RAM.
 - Has no eMMC.
 - Only appears to ship with the 2nd revision of the display panel.

Note that the display panel has been added to the st7703 panel driver
in a separate commit series.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-anbernic-rg353ps.dts  | 116 ++++++++++++++++++
 2 files changed, 117 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 2d585bbb8f3a..b6f7158c4552 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -69,6 +69,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353ps.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
new file mode 100644
index 000000000000..b211973e36c2
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
@@ -0,0 +1,116 @@
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
+	model = "RG353PS";
+	compatible = "anbernic,rg353ps", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdmmc1;
+		mmc2 = &sdmmc2;
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3472000>;
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
+&gpio_keys_control {
+	button-r1 {
+		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		label = "TR";
+		linux,code = <BTN_TR>;
+	};
+
+	button-r2 {
+		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		label = "TR2";
+		linux,code = <BTN_TR2>;
+	};
+};
+
+&panel {
+	compatible = "anbernic,rg353v-panel-v2";
+	iovcc-supply = <&vcc3v3_lcd0_n>;
+	vcc-supply = <&vcc3v3_lcd0_n>;
+	/delete-property/ vdd-supply;
+};
+
+&pinctrl {
+	audio-amplifier {
+		spk_amp_enable_h: spk-amp-enable-h {
+			rockchip,pins =
+				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
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
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
