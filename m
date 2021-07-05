Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7496CC07E95
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 01:04:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E60E6117A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 01:04:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E60E6117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DLNzFan3aDrsb6MnaTuBM0dtxJ9rQGgAqv0ICxqi/Tw=; b=JoD/s59zErGTsk
	hgMSIDDrk6aTTgIrjMHqq531Unjs5I8VzCvKFJD8qmglkk4QUxvr/Exxk0LwU4Vi2jb/cgJoDKpUC
	q/tsvgLoiUZWZzjZAd5pm16ooAnR9UqK124zB3BDwmkh9/cOpRhRA8kN1dD9azgD/EbbtvVIjqUz/
	BhMm9KNhiUWqkLLv9ODJwikgE6nm8D85PEnie0rcGJd/J2YycD8NG2rnVkwYTLoRenjBTofQ1CRPF
	Q4vMocZHC7m8vqhCXy5inn9f3GRrv3CKi3mjTQrO/SPJWoN8Ae8rc3JrxHGeEjZlj65MqMhHCfGZK
	fIN9W+G+ZDSQ/U37tqTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0D2V-007SBo-SM; Mon, 05 Jul 2021 01:04:47 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0D2I-007SAl-Mv; Mon, 05 Jul 2021 01:04:36 +0000
Received: by mail-pj1-x102f.google.com with SMTP id ie21so8981313pjb.0;
 Sun, 04 Jul 2021 18:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tJI8cf6MEgzfn9kv+L7amo59Zwxb26bgVCPvt3CmbyY=;
 b=YxTe0Rdt0ap+JTaqAFMlJdHYtYYF6jirRrj6lD85bRQYgIo95cF0+1QqLl/pY9IBML
 QgYtRj5gOsXh/LJ+ifxQYKNzkSAoaSUtoJ42eW3JXoFiRGRgdAREBj7C5p2melgxpp3a
 JQshyC70o2MgHNHnuB9ZX37CKDjF/vyHURttvbl2SReotuu2PI6uqVJqHZ+3W2+kG8sf
 56PrNQ/cBAo1fhrEgUOZ4GP2Z0ODDH5b7GIxKmYP+peI5LfkbioOlSBhbspKQZu5knKP
 BoqWuQDFpXjsOAS+FH+LruWu+pw4J9xMb68M5CvzrixYDZPwsbLCEsM7J2ZUCuuajcRt
 OMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tJI8cf6MEgzfn9kv+L7amo59Zwxb26bgVCPvt3CmbyY=;
 b=BBY7fE38GbWbLoPVwAG9cVzyNRxURWmLtZr5oc0NV8lASEmuk2Pr+YRgqMHk8/2jG7
 Q5G9rpsT7jBfz9vtmnfMUCrXFHL3zPoarpLovQumEZBGv0oc1iFWU5JwAM20CMSipZ8b
 bPI0XzsyA5StJAa2zMl744EXhxI+dzheqGII1uOw3rn1i3pYMxo8FJn02fu5PMc0WLqD
 fXK8r5fPh5QUkiSO0MDseoiEvVzT36ajyR35LCM1eq0UuxYwm3SV/vGY4r9iwLYZX6LD
 +EUeU8BI9xkC3Ly26bAIjbdGElaUsbTJt800SUEitoNwRlWwglBu/RGVprZ4IT3xvwzS
 gLOg==
X-Gm-Message-State: AOAM532w1GB7H1HqTa1z4y8ctOSiiz+Wcza4UAIVQjLLuh2d1zjCQOtL
 UIyBSboTrMi0E4TFcNYgkcbpP506GFG1qmMG
X-Google-Smtp-Source: ABdhPJx7+i9WRNlYppdik4Czyxz1lq7oC1lMjvaYVhQaAtMil5PTrCCthJlCVFQ0j1Z0lEMWmPBYAA==
X-Received: by 2002:a17:90a:5142:: with SMTP id
 k2mr12427196pjm.234.1625447073427; 
 Sun, 04 Jul 2021 18:04:33 -0700 (PDT)
Received: from MacBook-Pro.lan (li1891-139.members.linode.com.
 [172.105.237.139])
 by smtp.gmail.com with ESMTPSA id u7sm11505988pgl.30.2021.07.04.18.04.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 04 Jul 2021 18:04:33 -0700 (PDT)
From: xiaobo <peterwillcn@gmail.com>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	jagan@amarulasolutions.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 xiaobo <peterwillcn@gmail.com>, Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: r4s: add i2c2 read eeprom for mac addr
 and fix voltage layout.
Date: Mon,  5 Jul 2021 09:04:24 +0800
Message-Id: <20210705010424.72269-1-peterwillcn@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_180434_814994_03627B06 
X-CRM114-Status: GOOD (  10.14  )
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

1. add i2c2 read eeprom for mac addr
2. fix voltage layout.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: xiaobo <peterwillcn@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +-
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 138 ++++++++++--------
 2 files changed, 78 insertions(+), 62 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index c3e00c0e2db7..6973141cb7a3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -9,7 +9,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
@@ -36,6 +35,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-r4s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index fa5809887643..4dc6a80e8494 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -1,15 +1,13 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * FriendlyElec NanoPC-T4 board device tree source
+ * Copyright (c) 2016 Fuzhou Rockchip Electronics Co., Ltd
  *
- * Copyright (c) 2020 FriendlyElec Computer Tech. Co., Ltd.
+ * Copyright (c) 2018 FriendlyElec Computer Tech. Co., Ltd.
  * (http://www.friendlyarm.com)
  *
  * Copyright (c) 2018 Collabora Ltd.
- *
- * Copyright (c) 2020 Jensen Huang <jensenhuang@friendlyarm.com>
- * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
- * Copyright (c) 2021 Tianling Shen <cnsztl@gmail.com>
+ * Copyright (c) 2019 Arm Ltd.
+ * Copyright (C) 2020 Xiaobo <peterwillcn@gmail.com>
  */
 
 /dts-v1/;
@@ -19,48 +17,59 @@ / {
 	model = "FriendlyElec NanoPi R4S";
 	compatible = "friendlyarm,nanopi-r4s", "rockchip,rk3399";
 
-	/delete-node/ display-subsystem;
-
-	gpio-leds {
-		pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
-
-		/delete-node/ led-0;
-
-		lan_led: led-lan {
-			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
-			label = "green:lan";
-		};
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
 
-		sys_led: led-sys {
-			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
-			label = "red:sys";
-			default-state = "on";
-		};
+	/delete-node/ display-subsystem;
 
-		wan_led: led-wan {
-			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
-			label = "green:wan";
-		};
+	vcc1v8_s3: vcc1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcc1v8_s3";
+		vin-supply = <&vcc_1v8>;
 	};
 
-	gpio-keys {
-		pinctrl-0 = <&reset_button_pin>;
+	vcc3v0_sd: vcc3v0-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0_pwr_h>;
+		regulator-always-on;
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		regulator-name = "vcc3v0_sd";
+		vin-supply = <&vcc3v3_sys>;
+	};
 
-		/delete-node/ power;
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc3v3_sys";
+	};
 
-		reset {
-			debounce-interval = <50>;
-			gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
-			label = "reset";
-			linux,code = <KEY_RESTART>;
-		};
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0_sys";
+		vin-supply = <&vdd_5v>;
 	};
 
 	vdd_5v: vdd-5v {
 		compatible = "regulator-fixed";
-		regulator-name = "vdd_5v";
 		regulator-always-on;
 		regulator-boot-on;
+		regulator-name = "vdd_5v";
 	};
 };
 
@@ -68,40 +77,51 @@ &emmc_phy {
 	status = "disabled";
 };
 
+&fusb0 {
+	status = "disabled";
+};
+
+&i2c2 {
+	eeprom@51 {
+		compatible = "microchip,24c02", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		read-only;
+	};
+};
+
 &i2c4 {
 	status = "disabled";
 };
 
-&pcie0 {
-	max-link-speed = <1>;
-	num-lanes = <1>;
-	vpcie3v3-supply = <&vcc3v3_sys>;
+&leds {
+	lan_led: led-1 {
+		gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
+		label = "green:lan";
+	};
+
+	wan_led: led-2 {
+		gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+		label = "green:wan";
+	};
 };
 
 &pinctrl {
 	gpio-leds {
-		/delete-node/ status-led-pin;
-
 		lan_led_pin: lan-led-pin {
 			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		sys_led_pin: sys-led-pin {
-			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		wan_led_pin: wan-led-pin {
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+};
 
-	rockchip-key {
-		/delete-node/ power-key;
-
-		reset_button_pin: reset-button-pin {
-			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
+&pcie0 {
+	max-link-speed = <1>;
+	num-lanes = <1>;
+	vpcie3v3-supply = <&vcc3v3_sys>;
 };
 
 &sdhci {
@@ -112,6 +132,10 @@ &sdio0 {
 	status = "disabled";
 };
 
+&sdmmc {
+	host-index-min = <1>;
+};
+
 &u2phy0_host {
 	phy-supply = <&vdd_5v>;
 };
@@ -120,14 +144,6 @@ &u2phy1_host {
 	status = "disabled";
 };
 
-&uart0 {
-	status = "disabled";
-};
-
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-
-&vcc3v3_sys {
-	vin-supply = <&vcc5v0_sys>;
-};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
