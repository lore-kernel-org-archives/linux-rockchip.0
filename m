Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFE3CECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 12:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+4BTL3Dn3X1FIDzfUBNn9nynruy9rzIz2HJwdFQlB3s=; b=xHi1khBMORcFqn
	AYEf+cSeqFSJGMUCqGcDYFHRur+QE3Rqf8GSdatr161k8g1HrCH3V5yS76RnV/lo0LfhZq7xQCnFP
	OI3hMRv2M9FqgbKWXiYcemmr9c0Qg68HvtZxCgsFcjhSKgPrxXTatMDIMFrotdmsN8BNg+2GimMq4
	mjeZdPTuJN/SzyFeaT90IiutPkAcw+KoqMVlbU5mEs+SHCbLg6GWj/0YReZvBbt3sOM00Ozpm2nLQ
	TxLmAGU1VhGKvfdr5leEtWHt4OPXwvklo1/vOjkQ6M1a4pc6dRueDHLMwVfd23XcLXNMDQoY6uHms
	O+hDNnH8GXVdIYDtGZBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAux-00DQIg-IT; Fri, 16 Sep 2022 12:58:03 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAuh-00DQAi-1n; Fri, 16 Sep 2022 12:57:50 +0000
Received: by mail-ej1-x62c.google.com with SMTP id 13so20262496ejn.3;
        Fri, 16 Sep 2022 05:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date;
        bh=FPivNq8LA76OgVX/HGykbL4ESvdAU89Ntka6IiSXkYo=;
        b=HBsACQgSMQBsakYq42c1Lv38FfOXxMq3p+Z6+hRYfwC7oBr1VXDysFxw+nQ5o3PjZ7
         gY9Ck3X3axZHsWb+BFwrSxw8Nx6uv9wC3V81WM4GFJvIawxUyLIGqEnid9LsQZEIxPKU
         lhC1CtR6hoJNqZOW2P6ybCltWZB5Hq1k3aWs8YR5KeL8m8BfflQLz5d89z7nX4EXDZkw
         6T5a8vyxE5xrZ3+KlOLXI0iUm2929EeY+OCuJf0l7Rsw7Bn8+fZ8bOskIyTWvQMD08n5
         MNFcj+m4IUGPgZ4/Az5dJSUczOFL/bmglIHi28fo8YZF6eNcwuqhF/ur9RuSd2ympMDW
         I5WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FPivNq8LA76OgVX/HGykbL4ESvdAU89Ntka6IiSXkYo=;
        b=AruL1pKPF360HLYKdRbTunhADdnma/tgmJoVgUFt3SILl6ANX18w9jO3sZs5oJMscL
         UYOfPRiGin/wsQh9u3JOxbbGJOYRS0BojnATdbC9suvUitUqof0QcAKrccYAUU8fOrDI
         VckIsQrZnUeSx0iTxHCpla8TxKBh958QQ4BEH+JSqGvXvWFVRhZLjFI9Bjl9qHiwKFEF
         JSZAOS8f6azaNC/onAjh7mLV7u1Q1igWB5ztIu8uZQpjvCLk8PK9wJSmgk44EgK6hBIz
         rGqkT1l3B3ikXqJ3cQe1RzjYdRl1lJ0YCcVrnqLpZhgtcCAiHFXECzcviTgsN603bloK
         QArQ==
X-Gm-Message-State: ACrzQf1fdDBt8GVj+Z1zsNfLqfdY7+gexRN3t7p9y9re5v75fZeYeYRI
	Qp6ofkPGG8683mpcY4m3fJA=
X-Google-Smtp-Source: AMsMyM5Zuin/kS49IbfvTjiXKhRSfJApkxZsCrk6nGuqKkHN3aUGrpD6bFwOyOA77ua6yBoWvmRacA==
X-Received: by 2002:a17:907:2da6:b0:730:8b30:e517 with SMTP id gt38-20020a1709072da600b007308b30e517mr3410476ejc.291.1663333063044;
        Fri, 16 Sep 2022 05:57:43 -0700 (PDT)
Received: from lab.hqhome163.com ([194.183.10.152])
        by smtp.gmail.com with ESMTPSA id x6-20020a05640226c600b00445c0ab272fsm13719661edd.29.2022.09.16.05.57.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 05:57:42 -0700 (PDT)
Date: Fri, 16 Sep 2022 12:52:55 +0000
From: Alessandro Carminati <alessandro.carminati@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: rockchip: k3566-quartz64-a: fix names
 entries, refactor
Message-ID: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_055747_166186_A63D63FE 
X-CRM114-Status: GOOD (  15.46  )
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

Fix esisting "No underscores in node names" general rule, and prepare for
new board versions.

Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  2 +-
 ...-quartz64-a.dts => rk3566-quartz64-a.dtsi} | 27 ++++++++-----------
 .../dts/rockchip/rk3566-quartz64-a.usb3.dts   |  9 +++++++
 3 files changed, 21 insertions(+), 17 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3566-quartz64-a.dts => rk3566-quartz64-a.dtsi} (97%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.usb3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ef79a672804a..97ec6c156346 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -59,7 +59,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.usb3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
similarity index 97%
rename from arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
rename to arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
index d943559b157c..ac3da5b2c1b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
@@ -28,7 +28,7 @@ gmac1_clkin: external-gmac1-clock {
 		#clock-cells = <0>;
 	};
 
-	fan: gpio_fan {
+	fan: fan {
 		compatible = "gpio-fan";
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
 		gpio-fan,speed-map = <0    0
@@ -38,7 +38,7 @@ fan: gpio_fan {
 		#cooling-cells = <2>;
 	};
 
-	hdmi-con {
+	hdmi-connector {
 		compatible = "hdmi-connector";
 		type = "a";
 
@@ -116,7 +116,7 @@ simple-audio-card,codec {
 		};
 	};
 
-	vcc12v_dcin: vcc12v_dcin {
+	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
 		regulator-always-on;
@@ -139,7 +139,7 @@ vbus: vbus {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
-	vcc3v3_pcie_p: vcc3v3-pcie-p-regulator {
+	vcc3v3_pcie_p: vcc3v3-p {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
@@ -151,7 +151,7 @@ vcc3v3_pcie_p: vcc3v3-pcie-p-regulator {
 		vin-supply = <&vcc_3v3>;
 	};
 
-	vcc5v0_usb: vcc5v0_usb {
+	vcc5v0_usb: vcc5v0-usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
 		regulator-always-on;
@@ -165,7 +165,7 @@ vcc5v0_usb: vcc5v0_usb {
 	 * the host ports are sourced from vcc5v0_usb
 	 * the otg port is sourced from vcc5v0_midu
 	 */
-	vcc5v0_usb20_host: vcc5v0_usb20_host {
+	vcc5v0_usb20_host: vcc5v0-usb20-host {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -177,7 +177,7 @@ vcc5v0_usb20_host: vcc5v0_usb20_host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
-	vcc5v0_usb20_otg: vcc5v0_usb20_otg {
+	vcc5v0_usb20_otg: vcc5v0-usb20-otg {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -187,7 +187,7 @@ vcc5v0_usb20_otg: vcc5v0_usb20_otg {
 		vin-supply = <&dcdc_boost>;
 	};
 
-	vcc3v3_sd: vcc3v3_sd {
+	vcc3v3_sd: vcc3v3-sd {
 		compatible = "regulator-fixed";
 		enable-active-low;
 		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
@@ -201,7 +201,7 @@ vcc3v3_sd: vcc3v3_sd {
 	};
 
 	/* sourced from vbus and vcc_bat+ via rk817 sw5 */
-	vcc_sys: vcc_sys {
+	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
 		regulator-always-on;
@@ -212,7 +212,7 @@ vcc_sys: vcc_sys {
 	};
 
 	/* sourced from vcc_sys, sdio module operates internally at 3.3v */
-	vcc_wl: vcc_wl {
+	vcc_wl: vcc-wl {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_wl";
 		regulator-always-on;
@@ -249,7 +249,7 @@ &cpu3 {
 
 &cpu_thermal {
 	trips {
-		cpu_hot: cpu_hot {
+		cpu_hot: cpu-hot {
 			temperature = <55000>;
 			hysteresis = <2000>;
 			type = "active";
@@ -788,11 +788,6 @@ &usb_host0_xhci {
 	status = "okay";
 };
 
-/* usb3 controller is muxed with sata1 */
-&usb_host1_xhci {
-	status = "okay";
-};
-
 &usb2phy0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.usb3.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.usb3.dts
new file mode 100644
index 000000000000..1739c00ea9e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.usb3.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3566-quartz64-a.dtsi"
+
+&usb_host1_xhci {
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
