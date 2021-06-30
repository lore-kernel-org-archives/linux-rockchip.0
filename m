Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C33C11F68
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 203E0610FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 203E0610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltciSXQu0fqVkxhPb6QLC5840uV+POgL2/ZlePS/Xas=; b=xiQBr5Fiu20dkt
	YnysmgnrshoBnZHLtVlD3g6w8SmDxPWWTq9UkYuoAOYcUVkpZxQKZWe7jbXmGwFtQMTO2OiTxWS/v
	9Lsj+I7f3J/c1omClSs749erJaOBpNtEDTRvMShfpwg7fAABL7jRYLQHEOZDGi/hXyKXWGYVfBBWF
	u9REdISamTpbdudRnEF1qEe8kqYn9s1TVNzKomTbdTYkXWh2m0IPJ8wNnPAqIcfog1kku7+ZYnEc1
	t8QrUeisDe4HIsPWpt2L+Ayuw3BkeN0Lm+EtRiQjxTYgbQZfUhV2VnZ6YM8EmBA4yOy8HBRsqLmlS
	04prKUje4fQvltpDb7Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyczU-00Eikk-66; Wed, 30 Jun 2021 16:23:08 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyczQ-00Eiig-Fw
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 16:23:06 +0000
Received: by mail-ed1-x533.google.com with SMTP id i24so4106829edx.4
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 09:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ImCadOvxGk22F0RgEo5nEWdUPMhxQXOtAOx1JLHydKk=;
 b=SB70tob6VokE91/ie78NOAPnQGCbcew6xvlGzY3+OyML20ZHRHTLBmUadWaS0TNhAg
 crIquahRtgySXvtM+EE5t56wnSw0/oI3bHrusDPjU/w+hQd3N8ryUv2Z9AcAg1KvAVQQ
 br1FWXTFGPF5J0GMxAeinzVvSWuCOJQgrTdyw1sAlbe67cdxlS/Ksn1O5OUto6s9gfEh
 oZZeKckHLIOoqS3M/8tsMCCMZAMwPQFfpXq4sj/1wrS9F7nM6+KUGKdlPKmKHQ6gEeAi
 Zy1GVMWLvka8bpfmV7DPr6OA9xT40fkI607E77gxXf6D2anBepoHcUw+9dWkKzKTVh7D
 eKRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ImCadOvxGk22F0RgEo5nEWdUPMhxQXOtAOx1JLHydKk=;
 b=mEnP1obYyo8GZDXlc/QChP/JB6owAH1HjATbvYk3aQ9ZfCNEsebhTHjIIsmoImSJop
 uRtyq/qbX5wB6Q1u+LgzH47o2N/k2kBdMIdkUXjcZdESJPsj1uw3ZRXFiIQo2ynHrY3P
 fWUmuP7cYyAzD4ajG4bnS+Z2DizhF7HN8T/7NLkQ6E4T8UHdPdLpMSy9RjbFDDyv9wVN
 eHa7eGVDAgV7amDaehwPRpOVU//b2Bwu99+3Pm5ade//wQdix5EM7tv7EFnp4jCdkKeC
 Y09Re6dxEjROQnZR4xAzcVEN6ClZT8de0uTBnoOn+gD1hNRnX/eAeo/r/uyW/2Be8EGT
 oCcA==
X-Gm-Message-State: AOAM530BeJHiAWnIFWiyNSb46zpYcomHjvh5txFFAo3HpCNTDYLne+WT
 /UKg+KJ5WdPvyHHuZJvEtzQ=
X-Google-Smtp-Source: ABdhPJxNkh8f0Yi06uby5l4Szmi99QEWqYsVRKs8rftdcXmmizrAuUm2VmuuPhsD6OvAxN1X83tkJg==
X-Received: by 2002:aa7:d48f:: with SMTP id b15mr15050323edr.7.1625070182061; 
 Wed, 30 Jun 2021 09:23:02 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm13091168edt.67.2021.06.30.09.23.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Jun 2021 09:23:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
Subject: [RFC PATCH v1 1/6] arm: dts: rockchip: update rk3328.dtsi
Date: Wed, 30 Jun 2021 18:22:46 +0200
Message-Id: <20210630162251.7378-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210630162251.7378-1-jbx6244@gmail.com>
References: <20210630162251.7378-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_092304_578237_3F9DEF7A 
X-CRM114-Status: GOOD (  12.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In the Linux DT the file rk3328.dtsi has recently had
some updates. Update this for U-boot as well.
The rk3328 usb3 port has now support in the Linux DT.
Rename node names ending on 'gpio' to 'pin' or 'pins'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/dts/rk3328-evb.dts                |   2 +-
 arch/arm/dts/rk3328-nanopi-r2s-u-boot.dtsi |   2 +-
 arch/arm/dts/rk3328-nanopi-r2s.dts         |   2 +-
 arch/arm/dts/rk3328-roc-cc-u-boot.dtsi     |   2 +-
 arch/arm/dts/rk3328-roc-cc.dts             |   2 +-
 arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi  |   2 +-
 arch/arm/dts/rk3328-rock-pi-e.dts          |   2 +-
 arch/arm/dts/rk3328-rock64-u-boot.dtsi     |   2 +-
 arch/arm/dts/rk3328-rock64.dts             |   2 +-
 arch/arm/dts/rk3328.dtsi                   | 109 +++++++++++++++++------------
 10 files changed, 72 insertions(+), 55 deletions(-)

diff --git a/arch/arm/dts/rk3328-evb.dts b/arch/arm/dts/rk3328-evb.dts
index 6abc6f4a86..a0000d072c 100644
--- a/arch/arm/dts/rk3328-evb.dts
+++ b/arch/arm/dts/rk3328-evb.dts
@@ -41,7 +41,7 @@
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 30 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
 		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
diff --git a/arch/arm/dts/rk3328-nanopi-r2s-u-boot.dtsi b/arch/arm/dts/rk3328-nanopi-r2s-u-boot.dtsi
index 9e2ced1541..8db5e55af6 100644
--- a/arch/arm/dts/rk3328-nanopi-r2s-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-nanopi-r2s-u-boot.dtsi
@@ -20,7 +20,7 @@
 	u-boot,dm-spl;
 };
 
-&sdmmc0m1_gpio {
+&sdmmc0m1_pin {
 	u-boot,dm-spl;
 };
 
diff --git a/arch/arm/dts/rk3328-nanopi-r2s.dts b/arch/arm/dts/rk3328-nanopi-r2s.dts
index 5445c5cb3d..b1e45c01a9 100644
--- a/arch/arm/dts/rk3328-nanopi-r2s.dts
+++ b/arch/arm/dts/rk3328-nanopi-r2s.dts
@@ -79,7 +79,7 @@
 	vcc_sd: sdmmc-regulator {
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
-		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
 		pinctrl-names = "default";
 		regulator-name = "vcc_sd";
 		regulator-boot-on;
diff --git a/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi b/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi
index 08806dfc0f..20a62134a0 100644
--- a/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi
@@ -40,7 +40,7 @@
 	u-boot,dm-spl;
 };
 
-&sdmmc0m1_gpio {
+&sdmmc0m1_pin {
 	u-boot,dm-spl;
 };
 
diff --git a/arch/arm/dts/rk3328-roc-cc.dts b/arch/arm/dts/rk3328-roc-cc.dts
index 8d553c9218..8dc4c57fbb 100644
--- a/arch/arm/dts/rk3328-roc-cc.dts
+++ b/arch/arm/dts/rk3328-roc-cc.dts
@@ -34,7 +34,7 @@
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
 		regulator-boot-on;
 		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi b/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
index 4fc055eacb..0b1a42c49f 100644
--- a/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
@@ -37,7 +37,7 @@
 	u-boot,dm-spl;
 };
 
-&sdmmc0m1_gpio {
+&sdmmc0m1_pin {
 	u-boot,dm-spl;
 };
 
diff --git a/arch/arm/dts/rk3328-rock-pi-e.dts b/arch/arm/dts/rk3328-rock-pi-e.dts
index 4b9f9a8248..57e36ec609 100644
--- a/arch/arm/dts/rk3328-rock-pi-e.dts
+++ b/arch/arm/dts/rk3328-rock-pi-e.dts
@@ -25,7 +25,7 @@
 	compatible = "regulator-fixed";
 	gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0m1_gpio>;
+	pinctrl-0 = <&sdmmc0m1_pin>;
 	regulator-name = "vcc_sd";
 	regulator-always-on;
 	regulator-boot-on;
diff --git a/arch/arm/dts/rk3328-rock64-u-boot.dtsi b/arch/arm/dts/rk3328-rock64-u-boot.dtsi
index 2af32aea05..3c3b1370e3 100644
--- a/arch/arm/dts/rk3328-rock64-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-rock64-u-boot.dtsi
@@ -40,7 +40,7 @@
 	u-boot,dm-spl;
 };
 
-&sdmmc0m1_gpio {
+&sdmmc0m1_pin {
 	u-boot,dm-spl;
 };
 
diff --git a/arch/arm/dts/rk3328-rock64.dts b/arch/arm/dts/rk3328-rock64.dts
index ebf3eb222e..7a78255f52 100644
--- a/arch/arm/dts/rk3328-rock64.dts
+++ b/arch/arm/dts/rk3328-rock64.dts
@@ -25,7 +25,7 @@
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
 		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
diff --git a/arch/arm/dts/rk3328.dtsi b/arch/arm/dts/rk3328.dtsi
index 945387e579..95c7c70ca0 100644
--- a/arch/arm/dts/rk3328.dtsi
+++ b/arch/arm/dts/rk3328.dtsi
@@ -142,23 +142,6 @@
 		};
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		dmac: dmac@ff1f0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff1f0000 0x0 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru ACLK_DMAC>;
-			clock-names = "apb_pclk";
-			#dma-cells = <1>;
-		};
-	};
-
 	analog_sound: analog-sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,format = "i2s";
@@ -305,7 +288,7 @@
 			status = "disabled";
 		};
 
-		grf_gpio: grf-gpio {
+		grf_gpio: gpio {
 			compatible = "rockchip,rk3328-grf-gpio";
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -317,15 +300,18 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			pd_hevc@RK3328_PD_HEVC {
+			power-domain@RK3328_PD_HEVC {
 				reg = <RK3328_PD_HEVC>;
+				#power-domain-cells = <0>;
 			};
-			pd_video@RK3328_PD_VIDEO {
+			power-domain@RK3328_PD_VIDEO {
 				reg = <RK3328_PD_VIDEO>;
+				#power-domain-cells = <0>;
 			};
-			pd_vpu@RK3328_PD_VPU {
+			power-domain@RK3328_PD_VPU {
 				reg = <RK3328_PD_VPU>;
 				clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+				#power-domain-cells = <0>;
 			};
 		};
 
@@ -452,7 +438,7 @@
 	};
 
 	wdt: watchdog@ff1a0000 {
-		compatible = "snps,dw-wdt";
+		compatible = "rockchip,rk3328-wdt", "snps,dw-wdt";
 		reg = <0x0 0xff1a0000 0x0 0x100>;
 		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_WDT>;
@@ -503,6 +489,17 @@
 		status = "disabled";
 	};
 
+	dmac: dmac@ff1f0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff1f0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC>;
+		clock-names = "apb_pclk";
+		#dma-cells = <1>;
+	};
+
 	thermal-zones {
 		soc_thermal: soc-thermal {
 			polling-delay-passive = <20>;
@@ -552,9 +549,9 @@
 		clocks = <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
 		clock-names = "tsadc", "apb_pclk";
 		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&otp_gpio>;
+		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
-		pinctrl-2 = <&otp_gpio>;
+		pinctrl-2 = <&otp_pin>;
 		resets = <&cru SRST_TSADC>;
 		reset-names = "tsadc-apb";
 		rockchip,grf = <&grf>;
@@ -822,7 +819,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy: usb2-phy@100 {
+		u2phy: usb2phy@100 {
 			compatible = "rockchip,rk3328-usb2phy";
 			reg = <0x100 0x10>;
 			clocks = <&xin24m>;
@@ -922,11 +919,12 @@
 			      "mac_clk_tx", "clk_mac_ref",
 			      "aclk_mac", "pclk_mac",
 			      "clk_macphy";
-		resets = <&cru SRST_GMAC2PHY_A>, <&cru SRST_MACPHY>;
-		reset-names = "stmmaceth", "mac-phy";
+		resets = <&cru SRST_GMAC2PHY_A>;
+		reset-names = "stmmaceth";
 		phy-mode = "rmii";
 		phy-handle = <&phy>;
 		snps,txpbl = <0x4>;
+		clock_in_out = "output";
 		status = "disabled";
 
 		mdio {
@@ -934,7 +932,7 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			phy: phy@0 {
+			phy: ethernet-phy@0 {
 				compatible = "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22";
 				reg = <0>;
 				clocks = <&cru SCLK_MAC2PHY_OUT>;
@@ -991,6 +989,25 @@
 		status = "disabled";
 	};
 
+	usbdrd3: usb@ff600000 {
+		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
+		reg = <0x0 0xff600000 0x0 0x100000>;
+		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_USB3OTG_REF>, <&cru SCLK_USB3OTG_SUSPEND>,
+			 <&cru ACLK_USB3OTG>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "otg";
+		phy_type = "utmi_wide";
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis_enblslpm_quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis_u2_susphy_quirk;
+		snps,dis_u3_susphy_quirk;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@ff811000 {
 		compatible = "arm,gic-400";
 		#interrupt-cells = <3>;
@@ -1163,7 +1180,7 @@
 				rockchip,pins = <0 RK_PA5 2 &pcfg_pull_none>,
 						<0 RK_PA6 2 &pcfg_pull_none>;
 			};
-			i2c3_gpio: i2c3-gpio {
+			i2c3_pins: i2c3-pins {
 				rockchip,pins =
 					<0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>,
 					<0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -1234,7 +1251,7 @@
 		};
 
 		tsadc {
-			otp_gpio: otp-gpio {
+			otp_pin: otp-pin {
 				rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 
@@ -1245,8 +1262,8 @@
 
 		uart0 {
 			uart0_xfer: uart0-xfer {
-				rockchip,pins = <1 RK_PB1 1 &pcfg_pull_up>,
-						<1 RK_PB0 1 &pcfg_pull_none>;
+				rockchip,pins = <1 RK_PB1 1 &pcfg_pull_none>,
+						<1 RK_PB0 1 &pcfg_pull_up>;
 			};
 
 			uart0_cts: uart0-cts {
@@ -1257,15 +1274,15 @@
 				rockchip,pins = <1 RK_PB2 1 &pcfg_pull_none>;
 			};
 
-			uart0_rts_gpio: uart0-rts-gpio {
+			uart0_rts_pin: uart0-rts-pin {
 				rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
 
 		uart1 {
 			uart1_xfer: uart1-xfer {
-				rockchip,pins = <3 RK_PA4 4 &pcfg_pull_up>,
-						<3 RK_PA6 4 &pcfg_pull_none>;
+				rockchip,pins = <3 RK_PA4 4 &pcfg_pull_none>,
+						<3 RK_PA6 4 &pcfg_pull_up>;
 			};
 
 			uart1_cts: uart1-cts {
@@ -1276,22 +1293,22 @@
 				rockchip,pins = <3 RK_PA5 4 &pcfg_pull_none>;
 			};
 
-			uart1_rts_gpio: uart1-rts-gpio {
+			uart1_rts_pin: uart1-rts-pin {
 				rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
 
 		uart2-0 {
 			uart2m0_xfer: uart2m0-xfer {
-				rockchip,pins = <1 RK_PA0 2 &pcfg_pull_up>,
-						<1 RK_PA1 2 &pcfg_pull_none>;
+				rockchip,pins = <1 RK_PA0 2 &pcfg_pull_none>,
+						<1 RK_PA1 2 &pcfg_pull_up>;
 			};
 		};
 
 		uart2-1 {
 			uart2m1_xfer: uart2m1-xfer {
-				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_up>,
-						<2 RK_PA1 1 &pcfg_pull_none>;
+				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_none>,
+						<2 RK_PA1 1 &pcfg_pull_up>;
 			};
 		};
 
@@ -1502,7 +1519,7 @@
 				rockchip,pins = <2 RK_PA7 1 &pcfg_pull_up_4ma>;
 			};
 
-			sdmmc0m0_gpio: sdmmc0m0-gpio {
+			sdmmc0m0_pin: sdmmc0m0-pin {
 				rockchip,pins = <2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up_4ma>;
 			};
 		};
@@ -1512,7 +1529,7 @@
 				rockchip,pins = <0 RK_PD6 3 &pcfg_pull_up_4ma>;
 			};
 
-			sdmmc0m1_gpio: sdmmc0m1-gpio {
+			sdmmc0m1_pin: sdmmc0m1-pin {
 				rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up_4ma>;
 			};
 		};
@@ -1545,7 +1562,7 @@
 						<1 RK_PA3 1 &pcfg_pull_up_8ma>;
 			};
 
-			sdmmc0_gpio: sdmmc0-gpio {
+			sdmmc0_pins: sdmmc0-pins {
 				rockchip,pins =
 					<1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
 					<1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
@@ -1587,7 +1604,7 @@
 					<3 RK_PA7 3 &pcfg_pull_up_4ma>;
 			};
 
-			sdmmc0ext_gpio: sdmmc0ext-gpio {
+			sdmmc0ext_pins: sdmmc0ext-pins {
 				rockchip,pins =
 					<3 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
 					<3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
@@ -1632,7 +1649,7 @@
 						<1 RK_PC1 1 &pcfg_pull_up_8ma>;
 			};
 
-			sdmmc1_gpio: sdmmc1-gpio {
+			sdmmc1_pins: sdmmc1-pins {
 				rockchip,pins =
 					<1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
 					<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
@@ -1826,7 +1843,7 @@
 			tsadc_int: tsadc-int {
 				rockchip,pins = <2 RK_PB5 2 &pcfg_pull_none>;
 			};
-			tsadc_gpio: tsadc-gpio {
+			tsadc_pin: tsadc-pin {
 				rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
