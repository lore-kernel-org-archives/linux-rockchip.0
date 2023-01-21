Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DA9EC004D4
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jan 2023 11:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLxvxEugc4EIuwbQKG5z/RJ8OQ8wIZUU2sm8oolDQlc=; b=Yex0JVfsBD7/+z
	z4hmEXMi814+eBgbjGgfiuCEBoVwAizR5Cmmh914P9ADN6AjXoGEMclpFYlwUaotc06Fvp4qQN7ee
	cOThA1l3JUyi43d7Vww+vHiI71Jb7yLIgw9zTrlczVi2yczBdHIMhvo/GQNqWrOKBpgilFc1RIABz
	qGjpdc8QDozls0Zn8/PFyBPdfj/k/1f47sizsScRLSV7oIG7pWmOmyWgCLbK7yVLZpRqyGm019WyB
	0vSv1rQMjykhxiDh/6toqF/Nb+0loUBcAfxOmDR4UNplNdV+7BSds/wRqUNmazcJlnpmSgGyGGQGp
	e5LVDx/m4QJdG9pTN9Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBm3-00DkV1-Jq; Sat, 21 Jan 2023 11:11:03 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBl7-00Djp3-B2; Sat, 21 Jan 2023 11:10:07 +0000
Received: by mail-ed1-x530.google.com with SMTP id y19so9520297edc.2;
        Sat, 21 Jan 2023 03:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vLSqOnQH7tAVXPlFrrq1kds1lScFb1J3lJpWMqJJ15U=;
        b=HCjOC37bEyBiNZ7bgPhOwTeWmyrVjSWlRUYSWjmys3KmRcDC5dQk5wTp1nnYkK9zLZ
         9NucluJnYrNYXa+P6NW3aUzl2jDEqTHZJ+UvniaD62RiDOd/nCD7EIB2LuoIImp3i19N
         /zyFFmAGUcSK3lMN9/19TNhFn5m0n0iULXCQ415cuwZb9lPd15ZKZ4CMsl6uapqrFY9p
         XGk3kki1Fxy++E49n1oTw1eS6b1Wo6exfOpxre1BTXf/8kjd20MEVQcRzLMeM+Ea+RKK
         aJbQjzBVDFNL6yI8tXGSrS2kf7be9m6s/eYVPQ/TUjwSIHnlZ/96M3N7rAkpF2OWok5o
         sbMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vLSqOnQH7tAVXPlFrrq1kds1lScFb1J3lJpWMqJJ15U=;
        b=e3BxxuWciyw2qCMpU8N5NCjUOM5AZw2KEbW7E9shsmEsv7ktP+xPlKc5pCKywvqHDt
         7ZtPDx/yr4SaeSdHBpbWJLYr8EXNPG5YHX7GSdt2XCDOkgDob0J85CpHSbDQIVtqanU/
         jXGiWPcU+oAwPSD0GGCSiWmf1o8JROMFXLvWX0E9D/B3fL7e8xiWTeFuIDV93xeZLkCL
         98WLbwLPOv4wNAZ5rtFrrJnWOjAwng2q/mMA8u7oi93tu73XcX5kYaaIvvraTZHAiiAQ
         hS4r0eGAW8gdgNTyCFppbGCdW+sBTkZYppoS3COQ1xb8MYOdUj/0jDIKtZfFS9R1GWOu
         1I1w==
X-Gm-Message-State: AFqh2kp5FIQkctw4X6HjeHNqCfd97lFJGWtp0kEAF7DASr9B5MlC1Yfj
	yRWro3xMCJy03ItMhKkBN5c1pGxqYVE=
X-Google-Smtp-Source: AMrXdXtYuA4UjveMnfxfd9xHqJjaF76MVLRWRKshHz33wh/9z7HuVX7pcowtmhCPo5TXUHuRy7i13A==
X-Received: by 2002:a05:6402:f07:b0:493:b55d:d7f2 with SMTP id i7-20020a0564020f0700b00493b55dd7f2mr22053870eda.14.1674299404856;
        Sat, 21 Jan 2023 03:10:04 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id kv23-20020a17090778d700b008699bacc03csm11898900ejc.14.2023.01.21.03.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 03:10:04 -0800 (PST)
Message-ID: <0266aabd-2991-2958-ab1e-55f58ab14461@gmail.com>
Date: Sat, 21 Jan 2023 12:10:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 8/8] ARM: dts: rockchip: rk3066a: move gpio nodes to root
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
X-CRM114-CacheID: sfid-20230121_031005_461775_C17327DC 
X-CRM114-Status: UNSURE (   9.83  )
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

The relation between gpio and pinctrl is now described
by the gpio-ranges property. Move rk3066a gpio nodes to root.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 159 +++++++++++++++------------------
 1 file changed, 72 insertions(+), 87 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 4d7cf6f1b..ac329cf14 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -217,6 +217,18 @@
 				       <150000000>, <75000000>;
 	};

+	gpio6: gpio@2000a000 {
+		compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
+		reg = <0x2000a000 0x100>;
+		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_GPIO6>;
+		gpio-controller;
+		gpio-ranges = <&pinctrl 0 192 32>;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
 	timer2: timer@2000e000 {
 		compatible = "snps,dw-apb-timer";
 		reg = <0x2000e000 0x100>;
@@ -238,6 +250,18 @@
 		};
 	};

+	gpio0: gpio@20034000 {
+		compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
+		reg = <0x20034000 0x100>;
+		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_GPIO0>;
+		gpio-controller;
+		gpio-ranges = <&pinctrl 0 0 32>;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
 	timer0: timer@20038000 {
 		compatible = "snps,dw-apb-timer";
 		reg = <0x20038000 0x100>;
@@ -254,6 +278,30 @@
 		clock-names = "timer", "pclk";
 	};

+	gpio1: gpio@2003c000 {
+		compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
+		reg = <0x2003c000 0x100>;
+		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_GPIO1>;
+		gpio-controller;
+		gpio-ranges = <&pinctrl 0 32 32>;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
+	gpio2: gpio@2003e000 {
+		compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
+		reg = <0x2003e000 0x100>;
+		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_GPIO2>;
+		gpio-controller;
+		gpio-ranges = <&pinctrl 0 64 32>;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
 	tsadc: tsadc@20060000 {
 		compatible = "rockchip,rk3066-tsadc";
 		reg = <0x20060000 0x100>;
@@ -266,96 +314,33 @@
 		status = "disabled";
 	};

+	gpio3: gpio@20080000 {
+		compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
+		reg = <0x20080000 0x100>;
+		interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_GPIO3>;
+		gpio-controller;
+		gpio-ranges = <&pinctrl 0 96 32>;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
+	gpio4: gpio@20084000 {
+		compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
+		reg = <0x20084000 0x100>;
+		interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_GPIO4>;
+		gpio-controller;
+		gpio-ranges = <&pinctrl 0 128 32>;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3066a-pinctrl";
 		rockchip,grf = <&grf>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		gpio0: gpio@20034000 {
-			compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
-			reg = <0x20034000 0x100>;
-			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO0>;
-
-			gpio-controller;
-			gpio-ranges = <&pinctrl 0 0 32>;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		gpio1: gpio@2003c000 {
-			compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
-			reg = <0x2003c000 0x100>;
-			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO1>;
-
-			gpio-controller;
-			gpio-ranges = <&pinctrl 0 32 32>;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		gpio2: gpio@2003e000 {
-			compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
-			reg = <0x2003e000 0x100>;
-			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO2>;
-
-			gpio-controller;
-			gpio-ranges = <&pinctrl 0 64 32>;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		gpio3: gpio@20080000 {
-			compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
-			reg = <0x20080000 0x100>;
-			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO3>;
-
-			gpio-controller;
-			gpio-ranges = <&pinctrl 0 96 32>;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		gpio4: gpio@20084000 {
-			compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
-			reg = <0x20084000 0x100>;
-			interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO4>;
-
-			gpio-controller;
-			gpio-ranges = <&pinctrl 0 128 32>;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		gpio6: gpio@2000a000 {
-			compatible = "rockchip,rk3066a-gpio-bank", "rockchip,gpio-bank";
-			reg = <0x2000a000 0x100>;
-			interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO6>;
-
-			gpio-controller;
-			gpio-ranges = <&pinctrl 0 192 32>;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};

 		pcfg_pull_default: pcfg-pull-default {
 			bias-pull-pin-default;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
