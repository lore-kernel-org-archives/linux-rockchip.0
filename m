Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13EB6C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Oct 2022 17:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkIxCGGVUoe4vuE3oOA1rKfasnarlnVhwsO6t3wA/7A=; b=aa/Kxb3xteHNvl
	LNqICGD/el+cMlXA7A1TfdCXx+xhj9DMOa5PiXAfdRYUQMBpXl1YM8UjOXWKGBADb1iI+zFYSlF1v
	141uwAM5qVNXTA4ycMz/Oo4ExXuRNF3cYQa+4LokyaX/fBEGO0DNg7kpESdS8PdwMeNDlkBhF1C4y
	G2qFXSXOZZSN30vBbFJeh4eqA/UWsI+MTkZy8hOoJGquUqDcn5yaHY+GxJACrBH5Vj0sGT9OA+jUM
	KrcMAtmFtexbV6HaQx9PlHSlsyInamDD74jlHAPiCC34qbN5X+reQoWMr0Daa+7SOrayJxBYmUPhB
	NrMovI8KecH4Lp5GUh6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogUwl-004GFO-Eu; Thu, 06 Oct 2022 17:46:11 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogUwR-004G2U-ML; Thu, 06 Oct 2022 17:45:53 +0000
Received: by mail-ej1-x636.google.com with SMTP id q9so1683600ejd.0;
        Thu, 06 Oct 2022 10:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUBxrKTn0KBwv2ASstftMeX0Vji5z3CD2huvTjfWSDU=;
        b=dYaoh64eNVlgTzO+tH3Sg7fglmg+SIV+LynGlJE3o9wkZmP5YFBH7S14+1C0srDyhV
         5mAEPqkx50lVoW5Jp6WoRa8d1+tryJG+CcZGxdFiS5YlwTMzEgN3XE4E1T3lWyBs5Dj8
         lCEDjB1MNEvLE/GqvJ0nmrUJEld+sSRYLvIy9tJZF5fBlBV+h8O80t+bTuWRXH+sGVaG
         wPjQmyeAGAn0kbfqBzRItQQkSGwMlOTmr8jETLsguoAJ8EVq5T7daGeWxLioYjTu7S3f
         NJX3wJtSqTYMyTL1vqWSpngau2PyYHKO85EH8d0NQDLzNRxWTNAdS2NIa6h2FKyPSJ+3
         hb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uUBxrKTn0KBwv2ASstftMeX0Vji5z3CD2huvTjfWSDU=;
        b=euLEOWV+vBACW73Icb8LlZ+R+X5k2YNnXwPgaOJbPvlbgrHJkWOfydizLbIFwGYhRA
         FsnUzxSt6qTqcXRpSAbu9+fyWt46qu2Sw/hpqBDe5npyQkTfJ0msHWqGfLY7T97yS1gB
         zG+CwBEX8/Tvc5MLW+V+0Nv3B6nQyZEKbY3huQlxgbAQ05OLoGyxTeMfeSCPD9YNGwmH
         jH+Rrh0SYou+XzQ0X61whbFHEeeCaz6Qn1SkWVhaPtwz09eS3FD9m3apfed6FXgB9Gr6
         bPuxxa9h1uoJKeDHivYosjXneVm747+qGrd+9esNn0kxDETDx6ZRNmgAFn2kuTg1d9i+
         sFpA==
X-Gm-Message-State: ACrzQf317l4EtUqP5Vt8QEZGe3mQMqUv7tVCeZdV4upMmmaYRAiVEO4G
	cBxJAAIoXtoKO+zNfL+6gKg=
X-Google-Smtp-Source: AMsMyM4FsSy1bxT4XpwbN4WMINq4F7M3sFFHUL4e//iYrzg4ByLlQijA6u7kO+62OoEbYby247thxA==
X-Received: by 2002:a17:906:ef8f:b0:77e:44be:790 with SMTP id ze15-20020a170906ef8f00b0077e44be0790mr818930ejb.409.1665078348056;
        Thu, 06 Oct 2022 10:45:48 -0700 (PDT)
Received: from localhost.localdomain (83.24.77.202.ipv4.supernova.orange.pl. [83.24.77.202])
        by smtp.gmail.com with ESMTPSA id w23-20020aa7cb57000000b00452878cba5bsm6105035edt.97.2022.10.06.10.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 10:45:47 -0700 (PDT)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: macroalpha@hotmail.com,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Add devicetree for Odroid Go Advance Black Edition
Date: Thu,  6 Oct 2022 19:45:19 +0200
Message-Id: <20221006174519.46161-3-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221006174519.46161-1-maccraft123mc@gmail.com>
References: <20221006174519.46161-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_104551_760566_8CD45452 
X-CRM114-Status: GOOD (  13.92  )
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

This device is a revision of Odroid Go Advance, with added wifi card on
sdio interface and two trigger buttons.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3326-odroid-go2-v11.dts    | 104 ++++++++++++++++++
 2 files changed, 105 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ef79a672804a..9fdbe7e83fc8 100644
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
index 000000000000..da48d070d9af
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
@@ -0,0 +1,104 @@
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
+	gpio-keys {
+		button-sw20 {
+			gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+			label = "TOP-LEFT 2";
+			linux,code = <BTN_TL2>;
+		};
+		button-sw21 {
+			gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
+			label = "TOP-RIGHT 2";
+			linux,code = <BTN_TR2>;
+		};
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
2.38.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
