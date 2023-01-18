Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5993BC32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 12:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwizKDsiIRRMogSAu+F38rII+q7nOu2RVkPkCrHDOlw=; b=oMzqGBJvYyaQ2z
	GZ5WofN7uhC9TImR2IuMEK7qfoJ5cDpT/fSbkHu6/fHyi2oLOhdNPoau0M8IDMflzBxDB6umYYR2D
	xRHCN5NBiYHCWxFC63++k/iR7shmxm7L0GI1bAfB6uQ+E3qYLqrOve9kaZWDCES3Yi6DWo/bYj+Jo
	WoyXfTogMOOlaRDQHy0vGZIqxN+CM1Tis6750+JPAuxBDyBPiUL3UkAGdF6eMzEHO5INAj9vQqyj8
	P0oUp8JC/Uf5lVr2DTixBA63jb2bJKNIk/beUKEz0R8TzQyBlqyST+46dPT1Qlyq7cmVi4ppCnu6H
	w5hpIt+MyEGf2Pr6ZeOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI7Lg-000iaI-9C; Wed, 18 Jan 2023 12:15:24 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI7LO-000iQe-DI; Wed, 18 Jan 2023 12:15:08 +0000
Received: by mail-ej1-x631.google.com with SMTP id v6so39747350ejg.6;
        Wed, 18 Jan 2023 04:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gEm5pfEFxLU82heBKI27UAFcsZk4bHDY3wzooSXrcko=;
        b=VaFHPja+bPQ5/gm1MJ2pBOe+AJxl9fP51w3flhiEtvNn+z7klWeMihJ3F4LhurbmIz
         yhPRLCjCd0Fb9XnBOunXGr+ljgkoTC4aGXj2nvDKlG5uHf1B2ndiDzSjpSNf+/D85qct
         22P5GEXeV4k9BwwwUqcl5SAFGfXkutYeF4/DX27j6hvDgeQlT+eDCk6KbisRsgWtZdrb
         aylEKrJT3HjBYFrtYGKKLH7h8dEeUUnHqkuEKVOu+tP7Mbrw5PZ6aOJYMobD58ctCWJB
         bEZL7GrP+Sxlf5VfQkbLjd5QTc1/WMa3AOiB+58zYyMThmol6M+/JOWERSD6aL9hjgUx
         5YtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gEm5pfEFxLU82heBKI27UAFcsZk4bHDY3wzooSXrcko=;
        b=vYI5dFWo9TCuV19/Bf7ziqjQcCynd+La35z2tbCrY/64XgYw4W+VJrqvj4ZWUsM1r9
         xwQELhiYqaI4+VcvNVUlm5IR8QiVw7mkt+aO/DLBz4gaS1aYN4zf2HS2hj+rWWTYm41d
         KwZu/7BIZAJvuiRDF2fRCjtxZXpMO0v9chv//PlWdNfYiTu3xG9QrEJCYGbzNbym3vm8
         XIm2/m9wqjpIakbLkDQtkyBgE2fj90xawijUfBa+uhENAhCK8kCu6BqSPGQxTj69erHg
         iVLwqXiEfnRvIyLWqsaLIMsjsxKYjmjY7yXfhMx3lJX3aqdKUqrKbb73iJTONdIaSPRL
         D47g==
X-Gm-Message-State: AFqh2krsrGHxvVrNjjaeygCiobRyjtZ5O8BWkTjumCMAq3cQl83BrUsp
	fRQnOq6npmqn+6oXbSsFXFQ=
X-Google-Smtp-Source: AMrXdXuR92gcbp4hn7cE2LekysEtufuYMovpGlHBXJlIchtwkyTzi+t6R6oiE/mgZZnpPVX+vy2pWg==
X-Received: by 2002:a17:906:eb8e:b0:871:6b9d:dbc with SMTP id mh14-20020a170906eb8e00b008716b9d0dbcmr6731822ejb.21.1674044102576;
        Wed, 18 Jan 2023 04:15:02 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906c31800b0086dee4e5555sm5251042ejz.87.2023.01.18.04.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 04:15:02 -0800 (PST)
Message-ID: <8bf935cf-8f99-d30e-e92c-bff58da0018c@gmail.com>
Date: Wed, 18 Jan 2023 13:15:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/4] ARM: dts: rockchip: replace compatible gpio nodes
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu
References: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
Content-Language: en-US
In-Reply-To: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_041506_500799_05A30A65 
X-CRM114-Status: GOOD (  10.35  )
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

Currently all Rockchip gpio nodes have the same compatible.
Replace all the compatibles in gpio nodes to be able to
give them a consistent ID independent from probe order or alias.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi            |  6 +++---
 arch/arm/boot/dts/rk3066a.dtsi           | 12 ++++++------
 arch/arm/boot/dts/rk3128.dtsi            |  8 ++++----
 arch/arm/boot/dts/rk3188.dtsi            |  6 +++---
 arch/arm/boot/dts/rk322x.dtsi            |  8 ++++----
 arch/arm/boot/dts/rk3288.dtsi            | 18 +++++++++---------
 arch/arm/boot/dts/rv1108.dtsi            |  8 ++++----
 arch/arm/boot/dts/rv1126.dtsi            | 10 +++++-----
 arch/arm64/boot/dts/rockchip/px30.dtsi   |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3328.dtsi |  8 ++++----
 10 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 78686fc72..6b1fe6054 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -576,7 +576,7 @@
 		ranges;

 		gpio0: gpio@2007c000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3036-gpio-bank";
 			reg = <0x2007c000 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -589,7 +589,7 @@
 		};

 		gpio1: gpio@20080000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3036-gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -602,7 +602,7 @@
 		};

 		gpio2: gpio@20084000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3036-gpio-bank";
 			reg = <0x20084000 0x100>;
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index de9915d94..59cdc2893 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -274,7 +274,7 @@
 		ranges;

 		gpio0: gpio@20034000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3066a-gpio-bank";
 			reg = <0x20034000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -287,7 +287,7 @@
 		};

 		gpio1: gpio@2003c000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3066a-gpio-bank";
 			reg = <0x2003c000 0x100>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -300,7 +300,7 @@
 		};

 		gpio2: gpio@2003e000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3066a-gpio-bank";
 			reg = <0x2003e000 0x100>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -313,7 +313,7 @@
 		};

 		gpio3: gpio@20080000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3066a-gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
@@ -326,7 +326,7 @@
 		};

 		gpio4: gpio@20084000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3066a-gpio-bank";
 			reg = <0x20084000 0x100>;
 			interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>;
@@ -339,7 +339,7 @@
 		};

 		gpio6: gpio@2000a000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3066a-gpio-bank";
 			reg = <0x2000a000 0x100>;
 			interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO6>;
diff --git a/arch/arm/boot/dts/rk3128.dtsi b/arch/arm/boot/dts/rk3128.dtsi
index b63bd4ad3..384230279 100644
--- a/arch/arm/boot/dts/rk3128.dtsi
+++ b/arch/arm/boot/dts/rk3128.dtsi
@@ -471,7 +471,7 @@
 		ranges;

 		gpio0: gpio@2007c000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3128-gpio-bank";
 			reg = <0x2007c000 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -482,7 +482,7 @@
 		};

 		gpio1: gpio@20080000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3128-gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -493,7 +493,7 @@
 		};

 		gpio2: gpio@20084000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3128-gpio-bank";
 			reg = <0x20084000 0x100>;
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -504,7 +504,7 @@
 		};

 		gpio3: gpio@20088000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3128-gpio-bank";
 			reg = <0x20088000 0x100>;
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 44b54af0b..09540d779 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -238,7 +238,7 @@
 		};

 		gpio1: gpio@2003c000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3188-gpio-bank";
 			reg = <0x2003c000 0x100>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -251,7 +251,7 @@
 		};

 		gpio2: gpio@2003e000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3188-gpio-bank";
 			reg = <0x2003e000 0x100>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -264,7 +264,7 @@
 		};

 		gpio3: gpio@20080000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3188-gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index ffc16d6b9..c1a6bab37 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -949,7 +949,7 @@
 		ranges;

 		gpio0: gpio@11110000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3228-gpio-bank";
 			reg = <0x11110000 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -962,7 +962,7 @@
 		};

 		gpio1: gpio@11120000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3228-gpio-bank";
 			reg = <0x11120000 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -975,7 +975,7 @@
 		};

 		gpio2: gpio@11130000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3228-gpio-bank";
 			reg = <0x11130000 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -988,7 +988,7 @@
 		};

 		gpio3: gpio@11140000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3228-gpio-bank";
 			reg = <0x11140000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 2ca76b69a..ad2ea13c6 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1425,7 +1425,7 @@
 		ranges;

 		gpio0: gpio@ff750000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff750000 0x0 0x100>;
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -1438,7 +1438,7 @@
 		};

 		gpio1: gpio@ff780000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -1451,7 +1451,7 @@
 		};

 		gpio2: gpio@ff790000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -1464,7 +1464,7 @@
 		};

 		gpio3: gpio@ff7a0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff7a0000 0x0 0x100>;
 			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
@@ -1477,7 +1477,7 @@
 		};

 		gpio4: gpio@ff7b0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff7b0000 0x0 0x100>;
 			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>;
@@ -1490,7 +1490,7 @@
 		};

 		gpio5: gpio@ff7c0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff7c0000 0x0 0x100>;
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO5>;
@@ -1503,7 +1503,7 @@
 		};

 		gpio6: gpio@ff7d0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff7d0000 0x0 0x100>;
 			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO6>;
@@ -1516,7 +1516,7 @@
 		};

 		gpio7: gpio@ff7e0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff7e0000 0x0 0x100>;
 			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO7>;
@@ -1529,7 +1529,7 @@
 		};

 		gpio8: gpio@ff7f0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3288-gpio-bank";
 			reg = <0x0 0xff7f0000 0x0 0x100>;
 			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO8>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index abf3006f0..2b459506e 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -596,7 +596,7 @@
 		ranges;

 		gpio0: gpio@20030000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1108-gpio-bank";
 			reg = <0x20030000 0x100>;
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0_PMU>;
@@ -609,7 +609,7 @@
 		};

 		gpio1: gpio@10310000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1108-gpio-bank";
 			reg = <0x10310000 0x100>;
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -622,7 +622,7 @@
 		};

 		gpio2: gpio@10320000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1108-gpio-bank";
 			reg = <0x10320000 0x100>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -635,7 +635,7 @@
 		};

 		gpio3: gpio@10330000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1108-gpio-bank";
 			reg = <0x10330000 0x100>;
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
index 1f07d0a4f..d30deb73e 100644
--- a/arch/arm/boot/dts/rv1126.dtsi
+++ b/arch/arm/boot/dts/rv1126.dtsi
@@ -428,7 +428,7 @@
 		ranges;

 		gpio0: gpio@ff460000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1126-gpio-bank";
 			reg = <0xff460000 0x100>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
@@ -439,7 +439,7 @@
 		};

 		gpio1: gpio@ff620000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1126-gpio-bank";
 			reg = <0xff620000 0x100>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
@@ -450,7 +450,7 @@
 		};

 		gpio2: gpio@ff630000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1126-gpio-bank";
 			reg = <0xff630000 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
@@ -461,7 +461,7 @@
 		};

 		gpio3: gpio@ff640000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1126-gpio-bank";
 			reg = <0xff640000 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
@@ -472,7 +472,7 @@
 		};

 		gpio4: gpio@ff650000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rv1126-gpio-bank";
 			reg = <0xff650000 0x100>;
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4f6959eb5..6c7a6817c 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1382,7 +1382,7 @@
 		ranges;

 		gpio0: gpio@ff040000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank";
 			reg = <0x0 0xff040000 0x0 0x100>;
 			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
@@ -1394,7 +1394,7 @@
 		};

 		gpio1: gpio@ff250000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -1406,7 +1406,7 @@
 		};

 		gpio2: gpio@ff260000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -1418,7 +1418,7 @@
 		};

 		gpio3: gpio@ff270000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank";
 			reg = <0x0 0xff270000 0x0 0x100>;
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 6d7a7bf72..868e5e6b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1045,7 +1045,7 @@
 		ranges;

 		gpio0: gpio@ff210000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank";
 			reg = <0x0 0xff210000 0x0 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -1058,7 +1058,7 @@
 		};

 		gpio1: gpio@ff220000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -1071,7 +1071,7 @@
 		};

 		gpio2: gpio@ff230000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -1084,7 +1084,7 @@
 		};

 		gpio3: gpio@ff240000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
