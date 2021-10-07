Return-Path: <SRS0=t2gw=O3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 443BAC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:41:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0EAB660ED7
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:41:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0EAB660ED7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/f9JHBFXHikSXUVM8JkIyuEPXZRYndqlzwUkkX9VxPk=; b=G5BVtGue5etVEX
	RtnRhsMYijj1/sbxCRcQVfUlfLzBpAx5kQ3dm/FurhGM8ghur+cf+GYpDUvytuvPpbdK3Q1Zaco3q
	lw+Om9G/rac5CKz5oGOB+SjONRexytCkJ/C+HJIR7Mg4DTYrUkq4EHc7mM6VK99TViT9e4IE+CFMH
	YKlPuSYIicwFJM4KYzI3Y4zHAsatFp5bm4akciI/SQQM0SR//qzu/NwV2r9RL/CGCYAaUFpXt0XL3
	i+R8sAOOaTMyCoc76MtyJpHs59oj63MNd9zSjjL1onA5s/EsnMSI+8BAlRnftKeOlro4OuBk1mAL+
	RLcmCdCv0MCyGiiM6VSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYUa6-00028y-5j; Thu, 07 Oct 2021 14:41:10 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYUZa-0001v5-Sh; Thu, 07 Oct 2021 14:40:40 +0000
Received: by mail-ed1-x52a.google.com with SMTP id g10so23511284edj.1;
 Thu, 07 Oct 2021 07:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4fHOScNcCFsZmikDQcNcQQNB0p5GRDb7IlwtypKc8sw=;
 b=Be+NODpBkVchFwQSiBtLXkTSLmVpbF4ZnEVcopoCoPDyQ5JNzG1U5AVAULQplxQp96
 8HS1gGx/xh8e4IjxIsnIZqoOsNvZ+Z2OF7RMqSH8dRuzEeasIySI+kMim2/KiQoQM3qz
 quoXT42EnvSGjAJFwcNZ/I4BjjyuTJxr1kJmF+x9G1oPfml+o7HoxMGpDekFKOdmpZI4
 jwvKIDVKuwJLyO0hYB3u4lYTcJLOO2HX5p7yrtQyZXYO29DVLuDQ9Unt5izN+2Eo3x/f
 5uxLl8fsrhWP65Da0FnZWQc+x2TOh7aYAKcdJ1ZuSuBaCW6H+6SNeskFS2P1cKZBQkCX
 vOSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4fHOScNcCFsZmikDQcNcQQNB0p5GRDb7IlwtypKc8sw=;
 b=8KYBsYZVJ9CpDSy0J1Q+Qm1UaRqYrIGj3Sj+8A+7wwb1ziz4H4kUq1A7SYY2eISs+4
 zcuD4wKhzlHvY/WhqCXHa4mEZUL8SVg79Mw0g4cg6A3QrCLpRLjUlogU0qsRR2EyjAQt
 gX/FEOoLJCyUNEYU99c1onR2SNZ0kit17cLV20inu8Mm0q//AuAh77cud+9z3gNAwVns
 IE0qzE2XbHeGbmbEsvJPvF2erFD8yAqnFNgTZezNnmM7Be9WxXzPJrCxpfvIuDuEGyqG
 2Aj4iI6xsD4CW/C9a7muVodwVA9ZjWCZrQlwL8W12lyz1rnbcYHETbhc1GXxHCDyV03r
 POGA==
X-Gm-Message-State: AOAM533J8bGjonS8M7MdJ5ExgQ15lLIzlv23i7QdGqhi8n1IG73njEbx
 tGWVagP9+YetZI+0ESJXBZY=
X-Google-Smtp-Source: ABdhPJwGqQ/Q2npScyIooUkehMQZskJS/NtMKzKuhaxglwg1BQ/zhWzkgQZ18BCwWI+CgIs2SjATLQ==
X-Received: by 2002:a50:9d44:: with SMTP id j4mr6899339edk.173.1633617629774; 
 Thu, 07 Oct 2021 07:40:29 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 21sm10086523ejv.54.2021.10.07.07.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Oct 2021 07:40:29 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: rockchip: change gpio nodenames
Date: Thu,  7 Oct 2021 16:40:19 +0200
Message-Id: <20211007144019.7461-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007144019.7461-1-jbx6244@gmail.com>
References: <20211007144019.7461-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_074038_962692_42434A67 
X-CRM114-Status: GOOD (  11.56  )
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
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3328.dtsi |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3368.dtsi |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 +++++-----
 5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 64f643145..17a64c3f0 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1297,7 +1297,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff040000 {
+		gpio0: gpio@ff040000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff040000 0x0 0x100>;
 			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
@@ -1309,7 +1309,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@ff250000 {
+		gpio1: gpio@ff250000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
@@ -1321,7 +1321,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@ff260000 {
+		gpio2: gpio@ff260000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
@@ -1333,7 +1333,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@ff270000 {
+		gpio3: gpio@ff270000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff270000 0x0 0x100>;
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ce6f4a28d..cec6d179b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -790,7 +790,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff220000 {
+		gpio0: gpio@ff220000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
@@ -801,7 +801,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@ff230000 {
+		gpio1: gpio@ff230000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
@@ -812,7 +812,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@ff240000 {
+		gpio2: gpio@ff240000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
@@ -823,7 +823,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@ff250000 {
+		gpio3: gpio@ff250000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
@@ -834,7 +834,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio4: gpio4@ff260000 {
+		gpio4: gpio@ff260000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 5b2020590..6edb1a537 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1014,7 +1014,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff210000 {
+		gpio0: gpio@ff210000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff210000 0x0 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
@@ -1027,7 +1027,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@ff220000 {
+		gpio1: gpio@ff220000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
@@ -1040,7 +1040,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@ff230000 {
+		gpio2: gpio@ff230000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
@@ -1053,7 +1053,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@ff240000 {
+		gpio3: gpio@ff240000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 4217897cd..ef6847014 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -797,7 +797,7 @@
 		#size-cells = <0x2>;
 		ranges;
 
-		gpio0: gpio0@ff750000 {
+		gpio0: gpio@ff750000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff750000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -810,7 +810,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio1: gpio1@ff780000 {
+		gpio1: gpio@ff780000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -823,7 +823,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio2: gpio2@ff790000 {
+		gpio2: gpio@ff790000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -836,7 +836,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio3: gpio3@ff7a0000 {
+		gpio3: gpio@ff7a0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7a0000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 44def886b..577c02047 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1978,7 +1978,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff720000 {
+		gpio0: gpio@ff720000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff720000 0x0 0x100>;
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
@@ -1991,7 +1991,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio1: gpio1@ff730000 {
+		gpio1: gpio@ff730000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff730000 0x0 0x100>;
 			clocks = <&pmucru PCLK_GPIO1_PMU>;
@@ -2004,7 +2004,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio2: gpio2@ff780000 {
+		gpio2: gpio@ff780000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -2017,7 +2017,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio3: gpio3@ff788000 {
+		gpio3: gpio@ff788000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff788000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO3>;
@@ -2030,7 +2030,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio4: gpio4@ff790000 {
+		gpio4: gpio@ff790000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO4>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
