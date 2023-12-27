Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A464EC46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 18:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ji8FTT8zE7ikXziu+M7aEvku5xCVFKEb8x8IoOawZJI=; b=sASQZGVfukHtCG
	HWGm8lMo5oc9oEU9LuABCoUmJOcNZo0XWzX/zXiRGEI+VC0wvCB0l28GYPvcWpOBNxXa1f2/7bMGd
	cRtLEHbOUkH3cfE/RP6lKI+X+QZECLxzimxgiI0gi3wQQiPcAdr0Y9oQW5FKje+B7Mgy1f3xO5wov
	8Jt97MlmGr2TBuYKs/xItQqloGhwRgrlYVl5s1+bcCLrQlpoYBEX+/OYH8nmU0x3mMs73QeQTM3oV
	yH49gNiB/JnoUbrsk4PJ2he5vu/EINSO+Rcp6ZcVZNTZ5C6UlI15k46VyrgmoSwAm09ystezwvWTi
	lAvHVWXIFS9FJhx6XxGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIYia-00FJv3-0i;
	Wed, 27 Dec 2023 18:33:24 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIYiV-00FJtq-2y;
	Wed, 27 Dec 2023 18:33:22 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50e5a9bcec9so6582063e87.3;
        Wed, 27 Dec 2023 10:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703701994; x=1704306794; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YcB4NJ++6ivEoEqudtqQR5JbTA38RP1iyGIjkEFmlyM=;
        b=m0V0+AKPDoYv0RElyq9pnEZSK9vRykE9NhGmHwuzyjhJovkBu3ZgFkc/3I+H4mavqZ
         dVKHILWXCDmTQ7hZifIGSdOBA6jdOT7aC75Y0PVHPfw6vLDTeGEzCErT9UhDv1GtGkTn
         NC3M9n3QTY6Fm+c8N9eHDSsDbGEnX4GnWbhxeew3rAUYjWD/1YhRmzqzsMhFXqrrpXOm
         lnW8SgkNIcs8x36Zsz+lASzEp79O4m4PBKAsvs3sShiirXptuxTEuZO9jPC+lVDNLAmX
         ePsAcBhJoi0wR1ycCO80LyhXWCxrN4F0mPvqXtCaofHk7Rc4lVNRm0EzebTHCcD1SHWX
         0wbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703701994; x=1704306794;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YcB4NJ++6ivEoEqudtqQR5JbTA38RP1iyGIjkEFmlyM=;
        b=bmyzpMUDBM3F/cU5MXt5u11TZXOYG81np2XyYfzGIbkUGBC93L0019oBEK633ufcKX
         wMsm9SIf2DkS7fZfPtRT9PZ0uaBOpXehVXsDY8Z4IAycK52V058MVx/2dtRB6yrO9/6g
         wWzkhiocXd4UmbOHaEtPhBpPgmCDFH1l6yAkt2GvSaHza4p0VFAaim8BtN4pl9V9gs55
         Tkvd8zkwtyN5xCboPsB20lOY4HCjxer/Oyu+jSjvvRLFa5llGdKg+eM1mNDwOv9s4LyT
         CcapOtD4SU33xoNX2QMzlx4283pT+Aj/1Y7vwYZdys/ErUYHaZC37x4UHvnAC3k0q2Gk
         Lvcw==
X-Gm-Message-State: AOJu0Yw7yFWb4lq3f1o0U6E2emRw+z/D6lH3QKU5BXfuxiJK4HOX91OV
	++d4QKHmdIaFJdGMmOIFxtw=
X-Google-Smtp-Source: AGHT+IFSNsBKPUr/NhV+zV1c306HqKssI4Rth1kOS8IiF405rbm7OZgCXi2lAoe7ncNyy2RtxZX9bA==
X-Received: by 2002:ac2:5eda:0:b0:50e:7b04:7bc9 with SMTP id d26-20020ac25eda000000b0050e7b047bc9mr1864156lfq.23.1703701993432;
        Wed, 27 Dec 2023 10:33:13 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090791cf00b00a1db76f99c8sm6816319ejz.93.2023.12.27.10.33.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Dec 2023 10:33:12 -0800 (PST)
Message-ID: <cf46c685-bf4b-63b5-0373-dd0ba70e9700@gmail.com>
Date: Wed, 27 Dec 2023 19:33:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 1/2] ARM: dts: rockchip: add gpio-ranges property to gpio
 nodes
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, kever.yang@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_103319_983450_A96DC58F 
X-CRM114-Status: GOOD (  10.15  )
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

Add a gpio-ranges property to Rockchip gpio nodes similar to
rk356x/rk3588 to be independent from aliases and probe order.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---

Changed V3:
  reword
  rebase to new Rockchip directory
  remove unknown properties
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi  | 3 +++
 arch/arm/boot/dts/rockchip/rk3066a.dtsi | 6 ++++++
 arch/arm/boot/dts/rockchip/rk3128.dtsi  | 4 ++++
 arch/arm/boot/dts/rockchip/rk3188.dtsi  | 4 ++++
 arch/arm/boot/dts/rockchip/rk322x.dtsi  | 4 ++++
 arch/arm/boot/dts/rockchip/rk3288.dtsi  | 9 +++++++++
 arch/arm/boot/dts/rockchip/rv1108.dtsi  | 4 ++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi  | 5 +++++
 8 files changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 2b00109bea6a..6e5028b6dbfa 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -593,6 +593,7 @@ gpio0: gpio@2007c000 {
 			clocks = <&cru PCLK_GPIO0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -606,6 +607,7 @@ gpio1: gpio@20080000 {
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -619,6 +621,7 @@ gpio2: gpio@20084000 {
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
index 30139f21de64..a4962b6b3f4c 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
@@ -285,6 +285,7 @@ gpio0: gpio@20034000 {
 			clocks = <&cru PCLK_GPIO0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -298,6 +299,7 @@ gpio1: gpio@2003c000 {
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -311,6 +313,7 @@ gpio2: gpio@2003e000 {
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -324,6 +327,7 @@ gpio3: gpio@20080000 {
 			clocks = <&cru PCLK_GPIO3>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -337,6 +341,7 @@ gpio4: gpio@20084000 {
 			clocks = <&cru PCLK_GPIO4>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -350,6 +355,7 @@ gpio6: gpio@2000a000 {
 			clocks = <&cru PCLK_GPIO6>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 192 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index e2264c40b924..d66fcf12032e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -712,6 +712,7 @@ gpio0: gpio@2007c000 {
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -723,6 +724,7 @@ gpio1: gpio@20080000 {
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -734,6 +736,7 @@ gpio2: gpio@20084000 {
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -745,6 +748,7 @@ gpio3: gpio@20088000 {
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
diff --git a/arch/arm/boot/dts/rockchip/rk3188.dtsi b/arch/arm/boot/dts/rockchip/rk3188.dtsi
index 44b54af0bbf9..6677e4a10e5d 100644
--- a/arch/arm/boot/dts/rockchip/rk3188.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3188.dtsi
@@ -231,6 +231,7 @@ gpio0: gpio@2000a000 {
 			clocks = <&cru PCLK_GPIO0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -244,6 +245,7 @@ gpio1: gpio@2003c000 {
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -257,6 +259,7 @@ gpio2: gpio@2003e000 {
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -270,6 +273,7 @@ gpio3: gpio@20080000 {
 			clocks = <&cru PCLK_GPIO3>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index 831561fc1814..0d4f9957b99b 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -959,6 +959,7 @@ gpio0: gpio@11110000 {
 			clocks = <&cru PCLK_GPIO0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -972,6 +973,7 @@ gpio1: gpio@11120000 {
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -985,6 +987,7 @@ gpio2: gpio@11130000 {
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -998,6 +1001,7 @@ gpio3: gpio@11140000 {
 			clocks = <&cru PCLK_GPIO3>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index ead343dc3df1..c5550aae4ed8 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -1461,6 +1461,7 @@ gpio0: gpio@ff750000 {
 			clocks = <&cru PCLK_GPIO0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1474,6 +1475,7 @@ gpio1: gpio@ff780000 {
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1487,6 +1489,7 @@ gpio2: gpio@ff790000 {
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1500,6 +1503,7 @@ gpio3: gpio@ff7a0000 {
 			clocks = <&cru PCLK_GPIO3>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1513,6 +1517,7 @@ gpio4: gpio@ff7b0000 {
 			clocks = <&cru PCLK_GPIO4>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1526,6 +1531,7 @@ gpio5: gpio@ff7c0000 {
 			clocks = <&cru PCLK_GPIO5>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 160 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1539,6 +1545,7 @@ gpio6: gpio@ff7d0000 {
 			clocks = <&cru PCLK_GPIO6>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 192 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1552,6 +1559,7 @@ gpio7: gpio@ff7e0000 {
 			clocks = <&cru PCLK_GPIO7>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 224 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1565,6 +1573,7 @@ gpio8: gpio@ff7f0000 {
 			clocks = <&cru PCLK_GPIO8>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 256 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm/boot/dts/rockchip/rv1108.dtsi b/arch/arm/boot/dts/rockchip/rv1108.dtsi
index abf3006f0a84..d12b97ee7588 100644
--- a/arch/arm/boot/dts/rockchip/rv1108.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1108.dtsi
@@ -602,6 +602,7 @@ gpio0: gpio@20030000 {
 			clocks = <&cru PCLK_GPIO0_PMU>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -615,6 +616,7 @@ gpio1: gpio@10310000 {
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -628,6 +630,7 @@ gpio2: gpio@10320000 {
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -641,6 +644,7 @@ gpio3: gpio@10330000 {
 			clocks = <&cru PCLK_GPIO3>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index bb603cae13df..71d091af6395 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -569,6 +569,7 @@ gpio0: gpio@ff460000 {
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -580,6 +581,7 @@ gpio1: gpio@ff620000 {
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -591,6 +593,7 @@ gpio2: gpio@ff630000 {
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -602,6 +605,7 @@ gpio3: gpio@ff640000 {
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -613,6 +617,7 @@ gpio4: gpio@ff650000 {
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
