Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFDBFC64ED8
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 19:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkj4h1IltxzElxVudqONVovIISgWKsZMKKpftqV0/qE=; b=hcBEXAtkmxoNw8
	pQmHfQvcCxjf226UBRPZKHtZ0KQ46T0ZPIBEJOmPnzPaiaSgAQpkAMj/JhtBBWjVlenZYjWbig7Hu
	QUw4EKkXnrFZ8ffgXvnva1/2ARuJDw1SSFB5s+t9Ksk9a7auIaWfB+vS+bM6tgYqHpwtLjyX02U6K
	ogntFc8wO912nnL3GVr5XbGNHxMiJ3i0FDJoYQY2d46NbKsaK+9sCJK9r6GInL03qrLleqLGk4kBT
	AcdcSrlczutls8WbBZf9UchlW2y0gOSwKSZqssHPqyC6mEDtx+2p/tQjhTs0OYVi2SwgY6c0X1L/F
	ugdTB6eDO17/AGmW4TLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHZc-0009cn-8I; Thu, 23 Feb 2023 19:48:12 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHZC-0009Q2-G5; Thu, 23 Feb 2023 19:47:48 +0000
Received: by mail-ed1-x52d.google.com with SMTP id ec43so45830231edb.8;
        Thu, 23 Feb 2023 11:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yadxrE4Oi6362uAbjCkMqmMGfuKu+jwzcv2bmX3xdcY=;
        b=nKiKQFgIhORwGiAI6wNsrgoE4ibYtSRg7XRmZXtJCtZIapV48jDhcXVAlXQuzEL30f
         5ghbQHT4YBE61KIf55N0grRUNo9lED/54yupPcIh9yI175UNrSqYJrwemCRl7eTXniOU
         Tvp5p/qpM0cQoNqaJSTlaXMe/F7LeF7Z9r9lLr6uAlTbjCQa7MYDtkVzDyggb8oybw2w
         zH5vtIXNg11Jk9jxRGanUD/y7mSRxQQc809U8nO8ueJM+67H5qZSzXfJyDpL8h6eezkb
         RkHHL3IUK51DFe55LbBZ8cUpBdAmSRT37/N+tpskI2cAcb36cHFB616JIlyAKdhfgDrt
         f1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yadxrE4Oi6362uAbjCkMqmMGfuKu+jwzcv2bmX3xdcY=;
        b=budL9azKywmWBMktQHa7EwuKVY4JBl5NY4z/yzq+sbnOre2D6Ylpk9fiRCLmPBjBxx
         Ji2Af5fY/6bPeU7z+p+Znmxs+hyK/9RwBfwcpFVoYKyZc1LpHQ1d+IIxISNThQhRQ4jb
         UlgTn08mEs84YiLKZJWGwTirSwCAxr4AcWSj5argMIg1tG8NvPy5Bzft6FbOgOMtXZdN
         YgWKXq1NCdAPm1cu4kL3OwKjKMHOEF9bUkhLuiZ5FJ5mLeliBzpMPYLS9bR733Qp6+ZT
         U/lWjfKjTeQIVqJD+Kc14910ePBtm4lkRf03VdBXgfXR/zwckb3VrU8eZBscQ3dU3CWw
         lzjQ==
X-Gm-Message-State: AO0yUKW+jgBASQI/KnflzXue+umlQHyBB9yCQsoCIRqLSSmQsRmUiQjJ
	HJyx9K9hJh8jOb08bCxTlWs=
X-Google-Smtp-Source: AK7set+u5kBtAza2JytZk+3U8tXBjNHfyeOJ9V/4eGMKbFZFOASfcZjDXSq2LSxTJ2FUkFvkHSLXew==
X-Received: by 2002:aa7:cc8c:0:b0:4ad:6064:76c5 with SMTP id p12-20020aa7cc8c000000b004ad606476c5mr11978120edt.11.1677181665159;
        Thu, 23 Feb 2023 11:47:45 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id l17-20020a50c111000000b004af7191fe35sm638322edf.22.2023.02.23.11.47.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 11:47:44 -0800 (PST)
Message-ID: <3efde582-a2b5-f025-2082-a6d35dd782a0@gmail.com>
Date: Thu, 23 Feb 2023 20:47:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 5/7] arm64: dts: rockchip: add rockchip,gpio-controller
 property to gpio nodes
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
Content-Language: en-US
In-Reply-To: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_114746_672596_B199634C 
X-CRM114-Status: UNSURE (   8.81  )
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

Add a rockchip,gpio-controller property to Rockchip gpio nodes to be
independent from aliases and probe order for our bank id.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi    | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi  | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi  | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi  | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi  | 5 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi  | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 5 +++++
 7 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4f6959eb5..64f63e462 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1387,6 +1387,7 @@
 			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
 			gpio-controller;
+			rockchip,gpio-controller = <0>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1399,6 +1400,7 @@
 			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
 			gpio-controller;
+			rockchip,gpio-controller = <1>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1411,6 +1413,7 @@
 			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
 			gpio-controller;
+			rockchip,gpio-controller = <2>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1423,6 +1426,7 @@
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
 			gpio-controller;
+			rockchip,gpio-controller = <3>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index dd228a256..e8d15ee53 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -798,6 +798,7 @@
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
 			gpio-controller;
+			rockchip,gpio-controller = <0>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -809,6 +810,7 @@
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
 			gpio-controller;
+			rockchip,gpio-controller = <1>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -820,6 +822,7 @@
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
 			gpio-controller;
+			rockchip,gpio-controller = <2>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -831,6 +834,7 @@
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
 			gpio-controller;
+			rockchip,gpio-controller = <3>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -842,6 +846,7 @@
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>;
 			gpio-controller;
+			rockchip,gpio-controller = <4>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 6d7a7bf72..0a068499c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1051,6 +1051,7 @@
 			clocks = <&cru PCLK_GPIO0>;

 			gpio-controller;
+			rockchip,gpio-controller = <0>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1064,6 +1065,7 @@
 			clocks = <&cru PCLK_GPIO1>;

 			gpio-controller;
+			rockchip,gpio-controller = <1>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1077,6 +1079,7 @@
 			clocks = <&cru PCLK_GPIO2>;

 			gpio-controller;
+			rockchip,gpio-controller = <2>;
 			#gpio-cells = <2>;

 			interrupt-controller;
@@ -1090,6 +1093,7 @@
 			clocks = <&cru PCLK_GPIO3>;

 			gpio-controller;
+			rockchip,gpio-controller = <3>;
 			#gpio-cells = <2>;

 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a4c5aaf1f..b89536940 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -984,6 +984,7 @@
 			interrupts = <GIC_SPI 0x51 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			rockchip,gpio-controller = <0>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -997,6 +998,7 @@
 			interrupts = <GIC_SPI 0x52 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			rockchip,gpio-controller = <1>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -1010,6 +1012,7 @@
 			interrupts = <GIC_SPI 0x53 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			rockchip,gpio-controller = <2>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -1023,6 +1026,7 @@
 			interrupts = <GIC_SPI 0x54 IRQ_TYPE_LEVEL_HIGH>;

 			gpio-controller;
+			rockchip,gpio-controller = <3>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 1881b4b71..19b052e20 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2091,6 +2091,7 @@
 			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			rockchip,gpio-controller = <0>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2104,6 +2105,7 @@
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			rockchip,gpio-controller = <1>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2117,6 +2119,7 @@
 			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			rockchip,gpio-controller = <2>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2130,6 +2133,7 @@
 			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			rockchip,gpio-controller = <3>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
@@ -2143,6 +2147,7 @@
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH 0>;

 			gpio-controller;
+			rockchip,gpio-controller = <4>;
 			#gpio-cells = <0x2>;

 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index eed0059a6..db4925fbf 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1808,6 +1808,7 @@
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
 			gpio-controller;
+			rockchip,gpio-controller = <0>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1819,6 +1820,7 @@
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
 			gpio-controller;
+			rockchip,gpio-controller = <1>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1830,6 +1832,7 @@
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
 			gpio-controller;
+			rockchip,gpio-controller = <2>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1841,6 +1844,7 @@
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
 			gpio-controller;
+			rockchip,gpio-controller = <3>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1852,6 +1856,7 @@
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
 			gpio-controller;
+			rockchip,gpio-controller = <4>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 005cde61b..057f8be0d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1645,6 +1645,7 @@
 			clocks = <&cru PCLK_GPIO0>, <&cru DBCLK_GPIO0>;
 			gpio-controller;
 			gpio-ranges = <&pinctrl 0 0 32>;
+			rockchip,gpio-controller = <0>;
 			interrupt-controller;
 			#gpio-cells = <2>;
 			#interrupt-cells = <2>;
@@ -1657,6 +1658,7 @@
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
 			gpio-controller;
 			gpio-ranges = <&pinctrl 0 32 32>;
+			rockchip,gpio-controller = <1>;
 			interrupt-controller;
 			#gpio-cells = <2>;
 			#interrupt-cells = <2>;
@@ -1669,6 +1671,7 @@
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
 			gpio-controller;
 			gpio-ranges = <&pinctrl 0 64 32>;
+			rockchip,gpio-controller = <2>;
 			interrupt-controller;
 			#gpio-cells = <2>;
 			#interrupt-cells = <2>;
@@ -1681,6 +1684,7 @@
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
 			gpio-controller;
 			gpio-ranges = <&pinctrl 0 96 32>;
+			rockchip,gpio-controller = <3>;
 			interrupt-controller;
 			#gpio-cells = <2>;
 			#interrupt-cells = <2>;
@@ -1693,6 +1697,7 @@
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
 			gpio-controller;
 			gpio-ranges = <&pinctrl 0 128 32>;
+			rockchip,gpio-controller = <4>;
 			interrupt-controller;
 			#gpio-cells = <2>;
 			#interrupt-cells = <2>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
