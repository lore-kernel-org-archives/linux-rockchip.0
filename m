Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 459B0C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 19:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xZeMd4418fs54dGsk3eiiDF4qi/u93Ke+PkSribvKM=; b=3AD2nIR6NATsUy
	8LLLOHCvJrISxYzYd4tyGud0MvvQIPJM6s36fqvQuyibk+iAsJSx8UZkmACDLMWCQrD+N2SprNH6k
	1nDE9ZcYuJmHW6kIrUKCvhMiJrp10ZIeAxbX60HFuehcYigUdqNEadpkCTyrrUrSpgGQvXiMPzTmQ
	K2dfTANMDWzUooPpyWOj8NQJMoqj7sXrUOGDstvUjoAodJBes3nv9XjWenoUGNV1GCwTqU2i2TH9T
	Gtl3ZtCc8y5KxTg5Y1v4JdPJGfBURLvHyhNYRIE9x9PkKun0ZJxK7JaYwJ6mDpaxWw+/sdJVNi75s
	2s/PLuduP558RbLHbUtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHbB-000AOG-Uu; Thu, 23 Feb 2023 19:49:49 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHao-000ACB-3G; Thu, 23 Feb 2023 19:49:28 +0000
Received: by mail-ed1-x52f.google.com with SMTP id cq23so46095364edb.1;
        Thu, 23 Feb 2023 11:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9pV1IC1jd/IBK1Fjz++cEke1O/tppLH0207DIhcUS/4=;
        b=LpE6Hek8dQZBGiToPo14TwoaSQhpotj/OfcdCHTFCFCz/O9zs1ELYDoIMBZn1UMDPG
         i1kImHzL1yNO6LK1AQpzTO8f0jqNs7ATJdkAl9UAGr+CM8y4NEKNDQHfQMjklYsQgdUG
         VbgQ9Dr+3GLqgaqKBYyycex1co8/NqhmgsZLznV1viw+2wJaPWLDG+I4qezbz8LvBakE
         QnjiVhSoKQb1mDPSyQqcmLPmYUY5jepFNV5wgRSZN5b9VdRhFc3oDstnvnPm6Wr+NMBx
         o25s0I0yGYuPiPi88OnIZWHxqnv6JahYTuqrpuVLQJNoitT1OkmlA0Esgx6d7uTtWgOE
         LPsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9pV1IC1jd/IBK1Fjz++cEke1O/tppLH0207DIhcUS/4=;
        b=2suMUtw5esCTtWudPYyIyBIBwR2wgJM+rza7khfkWWzqHNtKrkb79tT42AIAVroEMj
         s+Nq2Q15LG2ZrrJ0SBfl/KXgcdQ3r5DDFnbhbNzdwPaJmBjh0Qg+VPo8pBrn0iQXDoCk
         LLwdpvuHzJkZ8T0b6oe70nrZZn5Z9cu7En4HqGtbI1hIMvb5aPDmSQDH0s6V2tjf6AjJ
         Mze5zqtFZU5OQVBll9aMyYT+yId6I3nph/l+SinKCBteQzJuO6nmREqdW9qYdfTzaQQT
         7o+bSH+BqcVVEheDbdZua/reAfHbL+PHaZ3Bs0A29er0oz9tarPCiLkfG91+RekRT0sb
         TjFg==
X-Gm-Message-State: AO0yUKUW5z1QCy0nQI12m5lFZ4JSi4R48HEM21iFnURt2mAaBLZruSUc
	3RSLenRWnM0B9WSADP+ioMg=
X-Google-Smtp-Source: AK7set8KA6V7NcCE/6P1ebnyCuROhQF10I1y9LKqC26PR5FCPxBmjkCoQEv13NFyAZkctmBt6LKROg==
X-Received: by 2002:a17:906:58c6:b0:8ea:825:a5db with SMTP id e6-20020a17090658c600b008ea0825a5dbmr7954208ejs.76.1677181764728;
        Thu, 23 Feb 2023 11:49:24 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id z12-20020a1709064e0c00b008c405ebc32esm7002322eju.28.2023.02.23.11.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 11:49:24 -0800 (PST)
Message-ID: <e8a44637-40dd-e1f5-4ece-0b77e3a3baea@gmail.com>
Date: Thu, 23 Feb 2023 20:49:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 7/7] arm64: dts: rockchip: replace compatible gpio nodes
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
Content-Language: en-US
In-Reply-To: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_114926_275073_A420A50E 
X-CRM114-Status: UNSURE (   9.16  )
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
index 64f63e462..a129b3e07 100644
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
index e8d15ee53..c5344fa5c 100644
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
index 0a068499c..b9185cffb 100644
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
index b89536940..729e1eed5 100644
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
index 19b052e20..b88a4fe25 100644
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
index db4925fbf..e25894958 100644
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
index 057f8be0d..be28b2978 100644
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
@@ -1652,7 +1652,7 @@
 		};

 		gpio1: gpio@fec20000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfec20000 0x0 0x100>;
 			interrupts = <GIC_SPI 278 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
@@ -1665,7 +1665,7 @@
 		};

 		gpio2: gpio@fec30000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfec30000 0x0 0x100>;
 			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
@@ -1678,7 +1678,7 @@
 		};

 		gpio3: gpio@fec40000 {
-			compatible = "rockchip,gpio-bank";
+			compatible = "rockchip,rk3588-gpio-bank", "rockchip,gpio-bank";
 			reg = <0x0 0xfec40000 0x0 0x100>;
 			interrupts = <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
@@ -1691,7 +1691,7 @@
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
