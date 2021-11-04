Return-Path: <SRS0=Uz4W=PX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78FFC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Nov 2021 07:53:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D168611C3
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Nov 2021 07:53:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7D168611C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bB/39nO2rwNj3MjYg1UbOF98iGNrSZlHvP3uWrTWmh4=; b=3A4ozGbCshTc+E
	kXGyKyfAxqeQRnbUX+TwjVrP3sJhX5v2rtNWY7LpgFo+dkL1/w77ycS7KHlZBQH5HbbEK4Gx6+d8t
	UApSXINGbAJJx/aiMZc5h7SBqNc/A6P0Fm7HWNm5wylkQWXjGUshkapudqFygzWTF73yKK14chdjM
	vkHlm+doEEOavKj71xuICnnzWTTCkN+JGq2SwiOPjXQt66QuIhpRSjtfEJryfE4uDnGtsvQU73tIa
	7AlM5rT4cTRvwuZ0GD4bihbL+RnFQlfqOs7vbO6MGN8kjF+jUOKPmP1KlbklBgQF5UZp6iFPHKE7U
	zamNFun+26R+ED1ajo0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miXZK-008FBi-J4; Thu, 04 Nov 2021 07:53:54 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miXZ7-008F9D-OH; Thu, 04 Nov 2021 07:53:43 +0000
Received: by mail-pf1-x436.google.com with SMTP id h74so5088487pfe.0;
 Thu, 04 Nov 2021 00:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KFt8vOR5PcOQxZqEaXiJAr36Fhw+XePEv/9I5/7P28k=;
 b=mB8ABYX0Z87neudHf96FuvP9XWcGFr64ZLdauSeHEY/FG2m3oTmzt9/x8kDiGx+vWg
 ZczVX/UWVZ8AOgIaaZO24huSL+czCD973pexG1ahj0hOfwEF+eKVr6ojPildW70olzcX
 xjKReMggJfbgwNm4RVFlxm7Llk+FfWbV1JwtfNGekq6+BJlQvgf52WsGGNhRwf4Eeeui
 m8Mf31tR8tvFdJTN7aYfnor9QzUGSrpFGI5Ib5jsK4blDBRbwU/fbhvcvYgtBPW5Sd2j
 e3N0Xzlwp6FDHETF0PpXES9OIPuErFRrH1CLe9R+H0UyNiD7WaSTcu4Xi0erKxIJcQFl
 gW4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KFt8vOR5PcOQxZqEaXiJAr36Fhw+XePEv/9I5/7P28k=;
 b=cqs8MGX+T/rzT02qRAzVA/ARdeFWz3gv29KV70NAUpvIFeC4BAkqDlJb5MXWCHZy1F
 VF/gkVv84q7rE4o6rsHWWbaBMGMrufScudNqirAGSwmznHZ+edDvUNIh6bwCaZaZhbM+
 RjXL2tuCQcniMzD9MYsT8LoOjz+RCfwBO54PJPsmAyrq8nntzGdRy11M6Ig5dzyMRi3k
 crWRztRYZLypNHCRkjdMkk85ZNwzVoYQROQnaxyJ+wA9D+hLKERMVjks/gbQzF9bIZSu
 1+jVgu4Cacy3j3wcfHN+YvhNSAspTzOKlToR/bYVUBJY7LQ/8OeT8GyaJ8pgpaU+vyDL
 D4pQ==
X-Gm-Message-State: AOAM530Rxm2IV4J4f23c/QBKAF5GNWr7GiJpLeidlFpHSv0wXIKn7XKC
 XGCAhsCYMkufAWNyCCT/VAE=
X-Google-Smtp-Source: ABdhPJz6fl/WOzPmL6SEqZJTfIDxVheThEdA5y4VvVpiQSvpOSKSu2blFah3LAF2+vNEMR1umDn/ug==
X-Received: by 2002:a65:648b:: with SMTP id e11mr37566650pgv.138.1636012420252; 
 Thu, 04 Nov 2021 00:53:40 -0700 (PDT)
Received: from localhost.localdomain ([103.161.98.162])
 by smtp.gmail.com with ESMTPSA id nv5sm3769627pjb.10.2021.11.04.00.53.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 00:53:39 -0700 (PDT)
From: Akash Gajjar <gajjar04akash@gmail.com>
To: heiko@sntech.de
Cc: Akash Gajjar <gajjar04akash@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Levin Du <djw@t-chip.com.cn>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Alex Bee <knaerzche@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Liang Chen <cl@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add rock pi s dts support
Date: Thu,  4 Nov 2021 13:22:24 +0530
Message-Id: <20211104075234.8020-1-gajjar04akash@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_005341_863154_65002362 
X-CRM114-Status: GOOD (  15.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Rock pi s is RK3308 SBC from radxa. Rock pi s has a,
- 256MB/512MB DDR3 RAM
- micro sd, sd nand flash (optional on board 1/2/4/8Gb)
- 100MB ethernet, PoE (optional)
- onboard RTL8723DS 802.11 b/g/n wifi + Bluetooth 4.0 Module
- 26-pin expansion header
- USB2.0 Type-A HOST x1
- USB Type-C DC 5V Power Supply
- 2 LEDS, 2 Keys

This patch enables
- console on UART-2
- nand flash
- sd card
- 100Mbps ethernet
- USB2.0

Signed-off-by: Akash Gajjar <gajjar04akash@gmail.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 208 ++++++++++++++++++
 3 files changed, 214 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4aed16176434..69072db24cd6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -515,6 +515,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi S
+	items:
+          - const: radxa,rockpis
+          - const: rockchip,rk3308
+
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 479906f3ad7b..c852bfb35387 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
new file mode 100644
index 000000000000..0a8736de3fb3
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <gajjar04akash@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3308.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi S";
+	compatible = "radxa,rockpis", "rockchip,rk3308";
+
+	aliases {
+		ethernet0 = &gmac;
+		mmc0 = &sdmmc;
+		mmc1 = &emmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&green_led_gio>, <&heartbeat_led_gpio>;
+
+		green-led {
+			label = "rockpis:green:power";
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+			default-state = "on";
+		};
+
+		blue-led {
+			label = "rockpis:blue:user";
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vdd_core: vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_core";
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-init-microvolt = <1015000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_log: vdd-log {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_ddr: vcc-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_1v8: vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_io: vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_otg: vcc5v0-otg {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_otg";
+		regulator-always-on;
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&otg_vbus_drv>;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_core>;
+};
+
+&emmc {
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&gmac {
+	phy-supply = <&vcc_io>;
+	clock_in_out = "input";
+	snps,reset-gpio = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_32k>;
+
+	leds {
+		green_led_gio: green-led-gpio {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		heartbeat_led_gpio: heartbeat-led-gpio {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <300>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_xfer &uart4_rts &uart4_cts>;
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+
+	u2phy_host: host-port {
+		status = "okay";
+	};
+};
+
+&usb_host_ehci {
+	status = "okay";
+};
+
+&usb_host_ohci {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
