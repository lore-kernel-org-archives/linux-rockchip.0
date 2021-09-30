Return-Path: <SRS0=3LcM=OU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C4F3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 09:53:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49A7461528
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 09:53:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 49A7461528
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h65KSfVJNFJC5B26dsH4L+Y3MAVXHmv4ViHN+JkB9t4=; b=RS8Gv5hrYf4NyP
	PnsbtmW1geVYqPrh4zSuJOEhZi1NcehbAqnmhutLk2viIKRMsBh7G7Jpz0mefuYbIil3LhD3BpqRZ
	PMybJpuZGmD1dktdDYgWbUWSUD4J3VXenWRulI4jUq1wMo7tutR9K6842CrmssrkAiCkiboKjdyPl
	kWBCHsYwnN0kZACrgdu9OSxzAi1nn2TyqYYfk4VCXPyk2xpOQiVMVHEFCOcNqJkqRZIFMP/wbBVhC
	x+TR4F1jHzDwWQxs2jUp5d7SMqbOy2sHHiYTbYaV2Ap3INJxSBAFlx4Y+MT3Zl93JfVq0CaeL5snV
	LRgaEz/jXQhE0bR23VMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVsko-00DeKC-VD; Thu, 30 Sep 2021 09:53:27 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVsjy-00De1m-Ks; Thu, 30 Sep 2021 09:52:36 +0000
Received: by mail-ed1-x533.google.com with SMTP id b26so20057863edt.0;
 Thu, 30 Sep 2021 02:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eI8x4lEdPrGoCperdQ6+LrFf+4E3JzVwQkUarKSobfo=;
 b=V6y+6rhS1a3YnPZr/DT4rY+7PiVvXjSxvjsTPSw4WomHExIZytzXppXxEokI9c/xkJ
 zUsQ5OaFyQ2kiwxSXf4GfZWaIEe4IrbYqGH3eo/Q+UwJNCAxsepgt9NKEJFWyvlCW3Nf
 vi05jmxxwKBr15IZQTLrvyu3uETfz8WVa1Zqn35C+ktwASnhioKMRIVBuQgvwijPlVJP
 MeW4vhN+BrjmjQyJ/+22oEFUj8136pbkU7mUB95nF+Sz08UMiXdlE/TBsxDfb2Pwk3eP
 ZseySPjIZsMZLJAmegA7v5VLZaM7jogW0huqGofux132mhvBwvKgx64WnTP3bTafrlTV
 HrMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eI8x4lEdPrGoCperdQ6+LrFf+4E3JzVwQkUarKSobfo=;
 b=XYjw+GFMsa9CKX4pmckb7ZnstgC0SBrjvKdhh29/d+0VMmabuAfDofORltUIOEPuw/
 4mR147Qudx5gBupXwLYHVQCqL/6PcBYfCskNWsNi6EvlC7Y3xGKMdYk1WHt5OC2l9Uva
 zLdon5W4KSGyfQggz7/i7x/oX8z+vPMb0+jKzhNQrwgMfJg/X8ncU9X+4r3cgT58Bzz8
 Shy+aDFhpJKqscDKMGKKGZmS9Nx39Eam6xpcrHUdgDuwWKk1dVHLeL0EmtNrT67yjkGB
 nXI2v76+MB2oBhrE3tA2D23zN04qxHZBbBaSHCjpWUkZJjbw/D8gpvGm4gNS3R8TDwsE
 li4w==
X-Gm-Message-State: AOAM532ra2vc35p2ewNwIVhrb63GPaUBdhLkCVuNvpDJhLgK4wopjuNI
 GabISeFzbM6wc/hsQvoqRaY=
X-Google-Smtp-Source: ABdhPJxsHHhaQ9IXICXkUdDTjmE14p8m8sQrI3Ob4TGaMY9NXBT4EqDSwEWNsBv4vaIuZBDGccpITw==
X-Received: by 2002:a17:906:2706:: with SMTP id
 z6mr5644188ejc.551.1632995552900; 
 Thu, 30 Sep 2021 02:52:32 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p14sm1181548ejn.65.2021.09.30.02.52.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 02:52:32 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] ARM: dts: rockchip: change gpio nodenames
Date: Thu, 30 Sep 2021 11:52:24 +0200
Message-Id: <20210930095225.9718-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210930095225.9718-1-jbx6244@gmail.com>
References: <20210930095225.9718-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_025234_712078_6D058F2F 
X-CRM114-Status: GOOD (  11.46  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Currently all gpio nodenames are sort of identical to there label.
Nodenames should be of a generic type, so change them all.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi  |  6 +++---
 arch/arm/boot/dts/rk3066a.dtsi | 12 ++++++------
 arch/arm/boot/dts/rk3188.dtsi  |  8 ++++----
 arch/arm/boot/dts/rk322x.dtsi  |  8 ++++----
 arch/arm/boot/dts/rk3288.dtsi  | 18 +++++++++---------
 arch/arm/boot/dts/rv1108.dtsi  |  8 ++++----
 6 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index ffa9bc7ed..9d2d44381 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -575,7 +575,7 @@
 		#size-cells = <1>;
 		ranges;
 
-		gpio0: gpio0@2007c000 {
+		gpio0: gpio@2007c000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2007c000 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
@@ -588,7 +588,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@20080000 {
+		gpio1: gpio@20080000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
@@ -601,7 +601,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@20084000 {
+		gpio2: gpio@20084000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20084000 0x100>;
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index ae4055428..6688a1a3b 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -273,7 +273,7 @@
 		#size-cells = <1>;
 		ranges;
 
-		gpio0: gpio0@20034000 {
+		gpio0: gpio@20034000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20034000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
@@ -286,7 +286,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@2003c000 {
+		gpio1: gpio@2003c000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003c000 0x100>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
@@ -299,7 +299,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@2003e000 {
+		gpio2: gpio@2003e000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003e000 0x100>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
@@ -312,7 +312,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@20080000 {
+		gpio3: gpio@20080000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
@@ -325,7 +325,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio4: gpio4@20084000 {
+		gpio4: gpio@20084000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20084000 0x100>;
 			interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
@@ -338,7 +338,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio6: gpio6@2000a000 {
+		gpio6: gpio@2000a000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2000a000 0x100>;
 			interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2c606494b..3e5786e07 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -223,7 +223,7 @@
 		#size-cells = <1>;
 		ranges;
 
-		gpio0: gpio0@2000a000 {
+		gpio0: gpio@2000a000 {
 			compatible = "rockchip,rk3188-gpio-bank0";
 			reg = <0x2000a000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
@@ -236,7 +236,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@2003c000 {
+		gpio1: gpio@2003c000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003c000 0x100>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
@@ -249,7 +249,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@2003e000 {
+		gpio2: gpio@2003e000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003e000 0x100>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
@@ -262,7 +262,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@20080000 {
+		gpio3: gpio@20080000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 75af99c76..3e36cec36 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -946,7 +946,7 @@
 		#size-cells = <1>;
 		ranges;
 
-		gpio0: gpio0@11110000 {
+		gpio0: gpio@11110000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11110000 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
@@ -959,7 +959,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@11120000 {
+		gpio1: gpio@11120000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11120000 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
@@ -972,7 +972,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@11130000 {
+		gpio2: gpio@11130000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11130000 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
@@ -985,7 +985,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@11140000 {
+		gpio3: gpio@11140000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11140000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 4dcdcf17c..096f5bb22 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1422,7 +1422,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff750000 {
+		gpio0: gpio@ff750000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff750000 0x0 0x100>;
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
@@ -1435,7 +1435,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@ff780000 {
+		gpio1: gpio@ff780000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
@@ -1448,7 +1448,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@ff790000 {
+		gpio2: gpio@ff790000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
@@ -1461,7 +1461,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@ff7a0000 {
+		gpio3: gpio@ff7a0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7a0000 0x0 0x100>;
 			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
@@ -1474,7 +1474,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio4: gpio4@ff7b0000 {
+		gpio4: gpio@ff7b0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7b0000 0x0 0x100>;
 			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
@@ -1487,7 +1487,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio5: gpio5@ff7c0000 {
+		gpio5: gpio@ff7c0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7c0000 0x0 0x100>;
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
@@ -1500,7 +1500,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio6: gpio6@ff7d0000 {
+		gpio6: gpio@ff7d0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7d0000 0x0 0x100>;
 			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
@@ -1513,7 +1513,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio7: gpio7@ff7e0000 {
+		gpio7: gpio@ff7e0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7e0000 0x0 0x100>;
 			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
@@ -1526,7 +1526,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio8: gpio8@ff7f0000 {
+		gpio8: gpio@ff7f0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7f0000 0x0 0x100>;
 			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 24d56849a..db7166ed8 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -600,7 +600,7 @@
 		#size-cells = <1>;
 		ranges;
 
-		gpio0: gpio0@20030000 {
+		gpio0: gpio@20030000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20030000 0x100>;
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
@@ -613,7 +613,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@10310000 {
+		gpio1: gpio@10310000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x10310000 0x100>;
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
@@ -626,7 +626,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@10320000 {
+		gpio2: gpio@10320000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x10320000 0x100>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
@@ -639,7 +639,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@10330000 {
+		gpio3: gpio@10330000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x10330000 0x100>;
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
