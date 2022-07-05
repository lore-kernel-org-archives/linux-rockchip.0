Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C40CEC43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 13:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvKB0uLhu5q/5f0L/o6WTmdFsdb2NdNesZMSJ+GER54=; b=zGF1kQWaDqWUSi
	0rcsvmGzzijA9/ruPdDi+HHdlmHUwt6f+s3Npk5PvriEweFVGlT+Z4EskC+MQMfYpXinQpqCndoPH
	O68O6Jnys6yjBAtwkVpSOC8o4QokB5Q2DkHyOhPrEk/n1KMuJ8tYKUROS4TgSOEM53h3j3q1VdGK/
	CtoubmZAWFY1S4Au3P4q9xBWgkB6NhbUF8tZT153veWV7cBzTep4K+5B9OaogQMx9tvEJc5Uvja+3
	mckShKTWaymcqrZjbVD8gd56OxtcyqDzs0oyBnnW3sGLSFnkG+pxv4lVM5kS81uF9Nv3qxmbPwIUi
	UU6wqaDDZJe4lfySivCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEc-000LYM-IR; Tue, 05 Jul 2022 13:04:58 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEY-000LLE-7u
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 13:04:55 +0000
Received: by mail-ej1-x62d.google.com with SMTP id o25so21537662ejm.3
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 06:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:references
         :content-language:in-reply-to:content-transfer-encoding;
        bh=aqu6Y/3+x6nEsAoLh3o9pU85d8clRgzQlLwxdiHK3Rs=;
        b=Lcx04JVp1A6lozQ3rsDvuvDIiP210EtAls4/k3JDb+6kwCEp7tS0ucSd5h5/1e3MSI
         mlc/vzAQN8Wl0qhRX6J5NtsVGtwo4m0XrZ6zM8+7/YD9VydQKL1nSh31u5FwjgTjTQeD
         xrTjewaY/eIal/fjokyWc4Eqz+TzAUE73pz1VYrtRMQdniCVDbu6dnnhLF9FAxOfIP1I
         LiuqzPNpVtkYqdjCfFQQFpSCmY4faW73eBohwM5eq+sHwShzDNFZVF6IQWjTt2Jkr01Q
         cAzyowCwBFRDSJfIhVjZ53eyVqF7o1IErGPtlYYNq/0mFUe+Ki2fsvtP0dsya6qLxZIf
         9MEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=aqu6Y/3+x6nEsAoLh3o9pU85d8clRgzQlLwxdiHK3Rs=;
        b=6oGEG0vRXzIduhsSieQPV7y97xiMsi1HYBnEupYFY/Rhxllwr4dlf7Nfv4dtd06rd6
         1AI/XnoYaiC5zD2IzmaLK/mCxG6zl5prJIQ9GdG1ysvKg2jz1ldryS4Qu8GXCbypT9r2
         B14NNA5o5BQ4dBdf7EPAFARO/AH4/syKugzFQAMHNVsXpdkT2boHwq/I0aX9mH6C1iGi
         tBQ4eK+Ldy2/GWVuvg8UYqteCq/9UX1rNZTuYjNTvO4KRFHlsfEOE3HNiMaR9nOU9K0v
         z1rKOwb2fWJkdZVUOQfaJ/is2mh3HZcHYRviwglVTAN5DZ3fqm1mzi4v1U2nRW5xE3LN
         zJAQ==
X-Gm-Message-State: AJIora/+PcIqNoJQzyOpPNwAXnR02HUwTgLqnzPKrqP5uzWe7NwuIVeg
	LM7TDrKRF7hyv6qUbJgGUSw=
X-Google-Smtp-Source: AGRyM1sWcmocQujdixSNyf9YYXtb/LLsElfYSNy22vIPweSks/f58SpJUB7twDD+VZyGI1IOSGEJ/w==
X-Received: by 2002:a17:907:2895:b0:72a:ed50:f0e8 with SMTP id em21-20020a170907289500b0072aed50f0e8mr1246090ejc.392.1657026293702;
        Tue, 05 Jul 2022 06:04:53 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id w2-20020a50fa82000000b0043a64eee322sm4091094edr.28.2022.07.05.06.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 06:04:53 -0700 (PDT)
Message-ID: <e705ee9a-f80b-7035-cb1a-a0f242357103@gmail.com>
Date: Tue, 5 Jul 2022 15:04:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 4/6] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 Linux
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@vrull.eu>, xypron.glpk@gmx.de,
 U-Boot-Denx <u-boot@lists.denx.de>, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>, jon.lin@rock-chips.com,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 miquel.raynal@bootlin.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com
References: <20220701094304.1846-1-jbx6244@yandex.com>
Content-Language: en-US
In-Reply-To: <20220701094304.1846-1-jbx6244@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_060454_324889_CE1F1FE6 
X-CRM114-Status: GOOD (  11.76  )
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

From: Johan Jonker <jbx6244@gmail.com>

Sync rk3066/rk3188 DT files from Linux.
This is the state as of v5.18 in Linux +
nfc node for MK808 rk3066a.
CRU nodes now have a clock property.
To prefend dtoc errors a fixed clock must also be
included for tpl/spl in the rk3xxx-u-boot.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/dts/rk3066a-mk808.dts    | 18 ++++++++++++++++++
 arch/arm/dts/rk3066a.dtsi         |  3 ++-
 arch/arm/dts/rk3188-radxarock.dts |  3 +--
 arch/arm/dts/rk3188.dtsi          | 24 +++++++++++++++---------
 arch/arm/dts/rk3xxx-u-boot.dtsi   |  4 ++++
 5 files changed, 40 insertions(+), 12 deletions(-)

diff --git a/arch/arm/dts/rk3066a-mk808.dts b/arch/arm/dts/rk3066a-mk808.dts
index 667d57a4..cfa318a5 100644
--- a/arch/arm/dts/rk3066a-mk808.dts
+++ b/arch/arm/dts/rk3066a-mk808.dts
@@ -160,6 +160,24 @@
 	status = "okay";
 };
 
+&nfc {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+		label = "rk-nand";
+		nand-bus-width = <8>;
+		nand-ecc-mode = "hw";
+		nand-ecc-step-size = <1024>;
+		nand-ecc-strength = <40>;
+		nand-is-boot-medium;
+		rockchip,boot-blks = <8>;
+		rockchip,boot-ecc-strength = <24>;
+	};
+};
+
 &pinctrl {
 	usb-host {
 		host_drv: host-drv {
diff --git a/arch/arm/dts/rk3066a.dtsi b/arch/arm/dts/rk3066a.dtsi
index c25b9695..de9915d9 100644
--- a/arch/arm/dts/rk3066a.dtsi
+++ b/arch/arm/dts/rk3066a.dtsi
@@ -202,8 +202,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3066a-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 		assigned-clocks = <&cru PLL_CPLL>, <&cru PLL_GPLL>,
diff --git a/arch/arm/dts/rk3188-radxarock.dts b/arch/arm/dts/rk3188-radxarock.dts
index e7138a4a..a9ed3cd2 100644
--- a/arch/arm/dts/rk3188-radxarock.dts
+++ b/arch/arm/dts/rk3188-radxarock.dts
@@ -6,7 +6,6 @@
 /dts-v1/;
 #include <dt-bindings/input/input.h>
 #include "rk3188.dtsi"
-#include "rk3188-radxarock-u-boot.dtsi"
 
 / {
 	model = "Radxa Rock";
@@ -25,7 +24,7 @@
 		compatible = "gpio-keys";
 		autorepeat;
 
-		power {
+		key-power {
 			gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
 			label = "GPIO Key Power";
diff --git a/arch/arm/dts/rk3188.dtsi b/arch/arm/dts/rk3188.dtsi
index 9a80f83a..cdd4a0bd 100644
--- a/arch/arm/dts/rk3188.dtsi
+++ b/arch/arm/dts/rk3188.dtsi
@@ -54,7 +54,7 @@
 		};
 	};
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -195,8 +195,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3188-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
@@ -223,7 +224,7 @@
 		#size-cells = <1>;
 		ranges;
 
-		gpio0: gpio0@2000a000 {
+		gpio0: gpio@2000a000 {
 			compatible = "rockchip,rk3188-gpio-bank0";
 			reg = <0x2000a000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
@@ -236,7 +237,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@2003c000 {
+		gpio1: gpio@2003c000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003c000 0x100>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
@@ -249,7 +250,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@2003e000 {
+		gpio2: gpio@2003e000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003e000 0x100>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
@@ -262,7 +263,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@20080000 {
+		gpio3: gpio@20080000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
@@ -275,15 +276,15 @@
 			#interrupt-cells = <2>;
 		};
 
-		pcfg_pull_up: pcfg_pull_up {
+		pcfg_pull_up: pcfg-pull-up {
 			bias-pull-up;
 		};
 
-		pcfg_pull_down: pcfg_pull_down {
+		pcfg_pull_down: pcfg-pull-down {
 			bias-pull-down;
 		};
 
-		pcfg_pull_none: pcfg_pull_none {
+		pcfg_pull_none: pcfg-pull-none {
 			bias-disable;
 		};
 
@@ -641,6 +642,11 @@
 &grf {
 	compatible = "rockchip,rk3188-grf", "syscon", "simple-mfd";
 
+	io_domains: io-domains {
+		compatible = "rockchip,rk3188-io-voltage-domain";
+		status = "disabled";
+	};
+
 	usbphy: usbphy {
 		compatible = "rockchip,rk3188-usb-phy";
 		#address-cells = <1>;
diff --git a/arch/arm/dts/rk3xxx-u-boot.dtsi b/arch/arm/dts/rk3xxx-u-boot.dtsi
index e67432fb..c77d1fae 100644
--- a/arch/arm/dts/rk3xxx-u-boot.dtsi
+++ b/arch/arm/dts/rk3xxx-u-boot.dtsi
@@ -33,3 +33,7 @@
 &uart2 {
 	clock-frequency = <24000000>;
 };
+
+&xin24m {
+	u-boot,dm-pre-reloc;
+};
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
