Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0870C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 18:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8sKWYgFYlN5+LhGrlWI+cblGoNdKHfayQS5HwS2gxo=; b=CiYE09CU23vfyl
	vDZuTV8CTHKhQ1NAJc/eWVQT3twk7+kUJovsH/LZ7LD5fhUNZ+0Wo7ZlFQaGQTgZUcyqThnsDQdeg
	Qy1V7NYPEFTwLae6k9dfQ6v1sgrjsNa4LLq2hyRoxdR35+zt/KdYIUgZw+9GT5GtjJ16geQDr5qmy
	z7qJngmOkJQOqmPJrFXDkgg/QPg35foQiYRS5EnxaKaGwzvyJOXCIAiRxpTwGmjCBolDZ03kT3ePe
	OgBGAQRsiK6255sHvc6wghDTM1MATdq8PJOyPsuKqjLxT40jQXac6xu3tsn8AO2AJpnrAdzHvdEFr
	+zDDyUm7qJ7ZKUjyqvvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIYkH-00FK8I-14;
	Wed, 27 Dec 2023 18:35:09 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIYkD-00FK7B-2F;
	Wed, 27 Dec 2023 18:35:07 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50e72e3d435so2840098e87.2;
        Wed, 27 Dec 2023 10:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703702102; x=1704306902; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uXclIxtXqPFsxy0XcvgnkjbTaVqZ7ItIisfYtSYDS1c=;
        b=gWhMF96+0TF4lQ2CvFtVN3lnB92xJR0K0SprNmGDLRhEreqMXoYSO/JgpXR8pGmfOy
         iMGyN1WcP4QaXaGb7HGPmvEkpHo3Gdsx4sQhwLQO/GQVNa7lhhfIMf8ErA8mCCKPVJpB
         Q7TcuW5zU+5OOY8WRaJFz3x3IfnNWUY3IBTLu2hzwpDpYJJySMvmPbeeB4xsL+RMxoOF
         qILVB5o7gtvoyXaVD/6xhMoGP34mqKxktc/XjqaAsh1UNHjriF2pfYmO/Wa2EM4734Fq
         OEa6RJ+EIil9brwYbg92rmMBLB+BtVADoGUKU+gBojYJYr5dyef2q5XdHUiBRX8HbzQi
         4MlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703702102; x=1704306902;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uXclIxtXqPFsxy0XcvgnkjbTaVqZ7ItIisfYtSYDS1c=;
        b=lpiiPPYIRXavsImUWI6iUlF5Pc3QaxREktagcOOFrVyEEPw7JkBYJS1qCN2P1mlUbd
         zfy/e//7Zx0pwHvCbXivdzv9zuFjuKWAxEv9buS9DqRzDR/4S3i/K0HzAyXIkHibWLQP
         iAj/VZlMKE0mSz38svXXokPpVl4dk3OCdqt/qK0UhZF3UJ5t332IOqu0x0M4h+mjcxWn
         4aczeoGe2tZLomj/cLKuWxb66RzmF2T23WnL9CYtlKiyS3d8JX8quT0TBygu13r5kwAJ
         5QOHNNzDScusXD5xEyikKkiyB/MMzGi8sqA92yule7q43eSxRYZOKx7265s+hLKFdhdz
         csCw==
X-Gm-Message-State: AOJu0YzRRL27jmkRgYnLwcWDdxt5aVSIRsj4HNicdExVzTpI2waTNqxI
	SmWQZvlywSrKpRBpzE+ycwg=
X-Google-Smtp-Source: AGHT+IH/k14PlGDeotzMdGS8xHWTW9jDPbn5jpOPQlVxRngTKRtmbxvDSi/JGWhXBWofq4h2p8TNbg==
X-Received: by 2002:a05:6512:b19:b0:50e:8487:1ec9 with SMTP id w25-20020a0565120b1900b0050e84871ec9mr797767lfu.39.1703702101347;
        Wed, 27 Dec 2023 10:35:01 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id fv14-20020a170907508e00b00a269f8e8869sm6731515ejc.128.2023.12.27.10.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Dec 2023 10:35:00 -0800 (PST)
Message-ID: <e5214570-0948-ad57-a68f-d4d9a5d23b78@gmail.com>
Date: Wed, 27 Dec 2023 19:34:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 2/2] arm64: dts: rockchip: add gpio-ranges property to gpio
 nodes
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, kever.yang@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cf46c685-bf4b-63b5-0373-dd0ba70e9700@gmail.com>
Content-Language: en-US
In-Reply-To: <cf46c685-bf4b-63b5-0373-dd0ba70e9700@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_103505_762626_A6869825 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
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
  remove rk356x part
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 5 +++++
 5 files changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index d0905515399b..27d045296388 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1394,6 +1394,7 @@ gpio0: gpio@ff040000 {
 			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1406,6 +1407,7 @@ gpio1: gpio@ff250000 {
 			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1418,6 +1420,7 @@ gpio2: gpio@ff260000 {
 			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1430,6 +1433,7 @@ gpio3: gpio@ff270000 {
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index cfc0a87b5195..09fda512c101 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -804,6 +804,7 @@ gpio0: gpio@ff220000 {
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -815,6 +816,7 @@ gpio1: gpio@ff230000 {
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -826,6 +828,7 @@ gpio2: gpio@ff240000 {
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -837,6 +840,7 @@ gpio3: gpio@ff250000 {
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -848,6 +852,7 @@ gpio4: gpio@ff260000 {
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index fb5dcf6e9327..2cead2e85c07 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1058,6 +1058,7 @@ gpio0: gpio@ff210000 {
 			clocks = <&cru PCLK_GPIO0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1071,6 +1072,7 @@ gpio1: gpio@ff220000 {
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1084,6 +1086,7 @@ gpio2: gpio@ff230000 {
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1097,6 +1100,7 @@ gpio3: gpio@ff240000 {
 			clocks = <&cru PCLK_GPIO3>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 62af0cb94839..2a017c862263 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -987,6 +987,7 @@ gpio0: gpio@ff750000 {
 			interrupts = <GIC_SPI 0x51 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -1000,6 +1001,7 @@ gpio1: gpio@ff780000 {
 			interrupts = <GIC_SPI 0x52 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -1013,6 +1015,7 @@ gpio2: gpio@ff790000 {
 			interrupts = <GIC_SPI 0x53 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -1026,6 +1029,7 @@ gpio3: gpio@ff7a0000 {
 			interrupts = <GIC_SPI 0x54 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 6e12c5a920ca..206f7d54d4d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2138,6 +2138,7 @@ gpio0: gpio@ff720000 {
 			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2151,6 +2152,7 @@ gpio1: gpio@ff730000 {
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2164,6 +2166,7 @@ gpio2: gpio@ff780000 {
 			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2177,6 +2180,7 @@ gpio3: gpio@ff788000 {
 			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2190,6 +2194,7 @@ gpio4: gpio@ff790000 {
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
