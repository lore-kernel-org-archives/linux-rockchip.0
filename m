Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F13EAC27C76
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jan 2023 11:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rui0A+Sm1f3Zb9MAXvZlAXRleGHUI+gKOcaDaeVcPvg=; b=QWsgqEuoZ9iXGN
	sPijldk1k02fAx5UsZPitKmj1SaowzhSnDJx+ke/oCr1tk52dnrTGAIfO75oFGPN9Wx3xhILxy1mu
	oYxmcDM/wp0E8sl6Sx9kWgcZscIYXvfpXb9VQB6Rv/vX5B/vLuLzJtlG9l/oODC2MpfOPXUbvktl/
	9QA1VmhFfJNhU5cG6qYkedws5lZx4CGpEpIWXip6hUY1hn6iKHOrVj0eyAnnztdAx0toUAnJjVGMY
	+LHJj7iWFSz6rfWBwMglB8dOmtJMKw24gQq/bhAMS0V4SYBcssZZY/QT04gb8vloa7tT3VU+TFFQz
	aKDNI5Yhc+fT+lmfgVKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBlf-00DkI2-Ls; Sat, 21 Jan 2023 11:10:39 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBks-00Djp3-Cf; Sat, 21 Jan 2023 11:09:52 +0000
Received: by mail-ed1-x530.google.com with SMTP id y19so9519671edc.2;
        Sat, 21 Jan 2023 03:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3iu2iOdfP6HqP+r0sK433TKAtjSOjlwjP5eXttNDkFc=;
        b=dhKoHN93BVjCcfrukNwnimP47OOcnkTdnlosfDNwMDXsHJ7zRL0SrCR0bXQJwkweXG
         ZnELRm7U4yQNW/on4653mfLoKent676SzXe7sVMMjE0NDVQmqkEyBqn3SUFKQfGDU3/R
         WJnGUf3DOv9RODImJvYDkxLK38wxynjPNlihuPe4J7zX/NmMQkxfJQdamAoijwZ4aOwL
         rOfkjosmg7skMqqBSMwvSPYg2y1BNqZq1AgwOSuaQjC3N9vIymy5KfiQioUv5Y+8k7+p
         27ENVjeQjJzWQUq+IEJzMnWSdVeUAnBdrgGW0IXPbk6ChoS/Zk+cjGC5/U9MUr508xbc
         HPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3iu2iOdfP6HqP+r0sK433TKAtjSOjlwjP5eXttNDkFc=;
        b=7QVzjUL43xyCZnC8AU2u3jKSC0VM3R7uUq5zsI1+zPcbTiOlgEEOT5ja9lQgVNwoZl
         nFd15ZYHUcDZExyblw1tjEuOv5xDjrPibFFk4PIMiVMxVyO8+Aftb3I6JmORlGlrqFHe
         EuWJYHOwpq5YaY+wHAObVhCEmbMgZRAenNQ8yH1LxdTxloaA3XVdotFVcG72BAld7i9M
         e2GiVn84rzBzMWJcR2BQwe/9+USjbexVGhsaMXtjnhTzIru/VpYwxSbpZunVA1XrO2AJ
         7UXiVsi6nRvVKj9joVI8nw24o3PeD+aHCc95nY+w9vpSS2xrvunwWzHELlfXI/KMin7N
         4QxA==
X-Gm-Message-State: AFqh2ko/1yxOtzcxqSgBP3T7WbBJZ2e8TO+G+g6VXAX8FgIQm1snXI20
	otwtSJtgnug3andj1SOcA0ZxJdJrKw0=
X-Google-Smtp-Source: AMrXdXv1YK3xxjMAd8qsX/+Aa9oRBo6Grf5aDNciyQLEF+CVxIC5jp4sTTfuPm2hWQOzcfyOBjMMcg==
X-Received: by 2002:aa7:dcd0:0:b0:49e:c9f4:1e5b with SMTP id w16-20020aa7dcd0000000b0049ec9f41e5bmr5088085edu.7.1674299384708;
        Sat, 21 Jan 2023 03:09:44 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id fg11-20020a056402548b00b004873927780bsm18304030edb.20.2023.01.21.03.09.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 03:09:44 -0800 (PST)
Message-ID: <f2b52912-b6ea-5f5f-7c5b-de68225a9b3b@gmail.com>
Date: Sat, 21 Jan 2023 12:09:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 7/8] arm64: dts: rockchip: replace compatible gpio nodes
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
Content-Language: en-US
In-Reply-To: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_030950_515567_5D8CDA95 
X-CRM114-Status: UNSURE (   9.53  )
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

Currently all Rockchip gpio nodes have the same compatible.
Compatible strings should be SoC related.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi    |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3308.dtsi  | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3328.dtsi  |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3368.dtsi  |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi  | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk356x.dtsi  | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 10 +++++-----
 7 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 9fcc0d0f3..5f8886623 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1382,7 +1382,7 @@
 		ranges;

 		gpio0: gpio@ff040000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff040000 0x0 0x100>;
 			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
@@ -1395,7 +1395,7 @@
 		};

 		gpio1: gpio@ff250000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -1408,7 +1408,7 @@
 		};

 		gpio2: gpio@ff260000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -1421,7 +1421,7 @@
 		};

 		gpio3: gpio@ff270000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,px30-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff270000 0x0 0x100>;
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 38976f413..1e5742441 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -793,7 +793,7 @@
 		ranges;

 		gpio0: gpio@ff220000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3308-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -805,7 +805,7 @@
 		};

 		gpio1: gpio@ff230000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3308-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -817,7 +817,7 @@
 		};

 		gpio2: gpio@ff240000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3308-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -829,7 +829,7 @@
 		};

 		gpio3: gpio@ff250000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3308-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
@@ -841,7 +841,7 @@
 		};

 		gpio4: gpio@ff260000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3308-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7ba695728..b99bef14f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1045,7 +1045,7 @@
 		ranges;

 		gpio0: gpio@ff210000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff210000 0x0 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -1059,7 +1059,7 @@
 		};

 		gpio1: gpio@ff220000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -1073,7 +1073,7 @@
 		};

 		gpio2: gpio@ff230000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -1087,7 +1087,7 @@
 		};

 		gpio3: gpio@ff240000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3328-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 5a008ed18..1ece57343 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -978,7 +978,7 @@
 		ranges;

 		gpio0: gpio@ff750000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3368-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff750000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO0>;
 			interrupts = <GIC_SPI 0x51 IRQ_TYPE_LEVEL_HIGH>;
@@ -992,7 +992,7 @@
 		};

 		gpio1: gpio@ff780000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3368-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO1>;
 			interrupts = <GIC_SPI 0x52 IRQ_TYPE_LEVEL_HIGH>;
@@ -1006,7 +1006,7 @@
 		};

 		gpio2: gpio@ff790000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3368-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO2>;
 			interrupts = <GIC_SPI 0x53 IRQ_TYPE_LEVEL_HIGH>;
@@ -1020,7 +1020,7 @@
 		};

 		gpio3: gpio@ff7a0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3368-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff7a0000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO3>;
 			interrupts = <GIC_SPI 0x54 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 7eb96fcc6..e60917fff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2085,7 +2085,7 @@
 		ranges;

 		gpio0: gpio@ff720000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3399-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff720000 0x0 0x100>;
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
 			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2099,7 +2099,7 @@
 		};

 		gpio1: gpio@ff730000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3399-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff730000 0x0 0x100>;
 			clocks = <&pmucru PCLK_GPIO1_PMU>;
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2113,7 +2113,7 @@
 		};

 		gpio2: gpio@ff780000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3399-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO2>;
 			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2127,7 +2127,7 @@
 		};

 		gpio3: gpio@ff788000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3399-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff788000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO3>;
 			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2141,7 +2141,7 @@
 		};

 		gpio4: gpio@ff790000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3399-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO4>;
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH 0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 870b4d9c6..892afccfd 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1803,7 +1803,7 @@
 		ranges;

 		gpio0: gpio@fdd60000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3568-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfdd60000 0x0 0x100>;
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
@@ -1815,7 +1815,7 @@
 		};

 		gpio1: gpio@fe740000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3568-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfe740000 0x0 0x100>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
@@ -1827,7 +1827,7 @@
 		};

 		gpio2: gpio@fe750000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3568-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfe750000 0x0 0x100>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
@@ -1839,7 +1839,7 @@
 		};

 		gpio3: gpio@fe760000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3568-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfe760000 0x0 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
@@ -1851,7 +1851,7 @@
 		};

 		gpio4: gpio@fe770000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3568-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfe770000 0x0 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 005cde61b..09bd4a508 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1639,7 +1639,7 @@
 		#size-cells = <2>;

 		gpio0: gpio@fd8a0000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfd8a0000 0x0 0x100>;
 			interrupts = <GIC_SPI 277 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO0>, <&cru DBCLK_GPIO0>;
@@ -1651,7 +1651,7 @@
 		};

 		gpio1: gpio@fec20000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfec20000 0x0 0x100>;
 			interrupts = <GIC_SPI 278 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
@@ -1663,7 +1663,7 @@
 		};

 		gpio2: gpio@fec30000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfec30000 0x0 0x100>;
 			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
@@ -1675,7 +1675,7 @@
 		};

 		gpio3: gpio@fec40000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfec40000 0x0 0x100>;
 			interrupts = <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
@@ -1687,7 +1687,7 @@
 		};

 		gpio4: gpio@fec50000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfec50000 0x0 0x100>;
 			interrupts = <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
