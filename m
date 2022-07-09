Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC6DC43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUMhW0qqZ8BIDPjJareA8fNAK+Ff96P4yxgmYX+ONnk=; b=kyBl+xWYMfIEzW
	ARSo+Sg2DJtT1wJ0BR0cpUIxD+mHE6BbRVtJNl5N6bM7HOVzc+aMV2YIFlZAdccNxriL+KNpqxy/8
	p60E2N3wIn4GaxgNTdS2K2T+Ehm0md4A7X2s6ZfgvPSaCaxHAJP1aetc7wv1ktUjPGNsWbtG1dphY
	beVBnFLyMdk5D9dlP9ELPsObCG2+0ieIRVY6CazAnX0IieuVv8MpkUKHfNaKAZTuk/jjNu6XAZmHb
	6/YbpHRMi1xyouyR+dyGJnIg+mvU8ydLliH4y25z5hulEaBjkbMRZFDf1/mHR/4KWM1uCFg+O3YHI
	XbCylLjH7S6eMP+XcUSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFXS-008yNV-0w; Sat, 09 Jul 2022 18:50:46 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFXO-008yLc-JX
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:50:44 +0000
Received: by mail-ed1-x52e.google.com with SMTP id y4so2007690edc.4
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=W9c333fKA26PHT2pd+vucW/7aQRSmKeoE8liiIrT20U=;
        b=P6po+N2LQ0zzTXYaSbNdd1XVTpk7QZ8tjCytKi2MBvzflq08rYaVD1id0f1VYqPu3u
         0uXx9THClHeXLu5YsjJ8BfsY+rAf7CInE8j+urN6WuSJumvLYGx5upmWyz+8BsACBx1V
         5C+ciyOdewYPZJru3Qgk5R+p5IlVpoxZHkXqkNpuB2C9ahgXNKce3N0dClrjCyjICgVU
         2KX4i2c+6bIWCHvsNz2idaWG8SWkePuhtm6mdloQQVwGzuIAKNlgIlHIKxvPmW8ZUQV2
         fGgfGTDf9+ZuIuviUDt+AKeEVpHb7blNIskr68qxuiC4sxkewKrCHuUEYHgD3rQYFSrP
         tuoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=W9c333fKA26PHT2pd+vucW/7aQRSmKeoE8liiIrT20U=;
        b=MiEKESlcZtIDmfmLqwHYgJqUEutYjDTUuHfRYE813vBZhuLvcpJ4kIoogUVS01YwJa
         RznO5khmzlSfEEtRz+eLRSTWeMr+F7H9p2yotQgNg7W/sox42jNrxKU3eCMw/Jq2K1vz
         CBvixQMcaLk1Wme7E9mhDkHhH+Pax/C+tgAd1fM/kghfKSERXXpySgc36AY3kKFx4z3I
         1LgMyTytBMVMZtKnK/0iUfb4ajuAtq4FbrHhSrTCLfsUq+UdXXI3rBuBkEf7Ufgp20tN
         OBMw779Qa4erkzh2u8UAUnKoB58K/1OvW3Hu49cOftiZAh42Uk3W7qq3/0Hge93cSiOl
         bh/w==
X-Gm-Message-State: AJIora96zHjFaUi405LA6eozw8uIlNqt7S+C9B7qtEVYjKO7SGrsbDkO
	xe6OjWzm+p3EOy7lbFgLksU=
X-Google-Smtp-Source: AGRyM1sZHL3123U0ydmHD3edMBaobKIr+XQHXwNveaI+1MNeU6kHyuTaBFCsIsjye5Hx+ZvO7J2ljw==
X-Received: by 2002:a05:6402:3487:b0:435:b0d2:606e with SMTP id v7-20020a056402348700b00435b0d2606emr13766418edc.66.1657392640520;
        Sat, 09 Jul 2022 11:50:40 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id e2-20020a056402088200b0042dcbc3f302sm1390939edy.36.2022.07.09.11.50.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:50:40 -0700 (PDT)
Message-ID: <d7b03b5d-6df1-85f1-e505-c6f9acdf7ae7@gmail.com>
Date: Sat, 9 Jul 2022 20:50:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 09/11] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 Linux
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_115042_676960_C30B751D 
X-CRM114-Status: GOOD (  11.28  )
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
