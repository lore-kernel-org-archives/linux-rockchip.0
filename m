Return-Path: <SRS0=t2gw=O3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44B58C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:41:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B7D460ED7
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:41:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B7D460ED7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+0e9Y8stBOX/RHGCHeBbx93bl+pPMBvzbdPNmCOWFk=; b=qr1G527yl2rDvd
	Rj0I5VuUaS0qj0x94SeSamZipaueyojrS0p64m10+dHV8k7ejw+XV1f8pnYVMNBHB5fqUW5EhV1+5
	7DKnJDOGrxjSDqi1Jk6oF6NPZy4JGluCAa8VxYhkTVN/CDMBdKsu8WoqhFoBoYhbI+CrErWHZeyOC
	E4KY+xpxbrZiiwtgJ9zdoyHfWJ/HPub0bcwjg/nJCrpwyMgeFSAqpjnuzlRIzsZ/XgtC1f6hK7BQT
	B92D5iF4dFSD2WicjC5krjmeAyqKwXW75Ee3mtqMGtLfmEu1dVZjmPx892AcDMpNH91iBzZaSV5gS
	X3ABJQFYQ4m1D4VYJ8yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYUZt-000222-GW; Thu, 07 Oct 2021 14:40:57 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYUZV-0001sP-3t; Thu, 07 Oct 2021 14:40:34 +0000
Received: by mail-ed1-x536.google.com with SMTP id a25so8287885edx.8;
 Thu, 07 Oct 2021 07:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GA15vuvos0oczlLfpuCDOpYp37wLRBfXoooLAFVqzuA=;
 b=MPvmpr/3bV5J+KXybfvsLjk/0QfsiT4GDj420TsWuzP3kH8MSO/KAurh/NN1YbiKQs
 C3aCleYJFPhLTpndWz/VLh/rUzK3uQOT4Ho9jPBAyj77yr5cMhpb1lZRXk7IdsiiWSft
 FhZSP75NP9hoSeGpdITFO7S9ZicQZa3BnJ56kdPmzy9Ib+eoOU3jpRIbcUZbZobUc9Cs
 if52E2FhSlUBEnWGSNXZGXSBzh3WT1lCf28AmMJpMNITHYUuWWdhZ5Q3dQAIu6i+S3YU
 OfqybUZuYdaF80aTcSiQabV9vuUVNHi8ATe4UihxLZyGtYrd4jtPKHpaKTYgIcXNdWnX
 vMww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GA15vuvos0oczlLfpuCDOpYp37wLRBfXoooLAFVqzuA=;
 b=wmYTjTErI9u0RyxEhKHlb7KpgQEI0/lHOWVw4G3d4zaE8YJZThjRZbpTMqFdkQXPap
 sw065S3eRH/HvaVK9NgI58FtjW6l9F9V11vWiCHhglSIFT2EVujX6HtM+yuW0aBGISX5
 KSmGqicMjkUZc3seQDNbywlK7RgKJP8F0XuoMIHAfj3r1nUXMS+mBVKp0JwN8BscSwK8
 LmLOc3YPn/kDwZ+JqNlN7SqyN0KrK2R2uSLWGIIR3xpTJDQXhEaB88Ke0GVkb9MNYYQR
 42thKrRwbjVaDFeWfHZ5+WpC8OyXd0rn+dK7J7jQHWNpfK4xCFuFIJHZxbY1LJ+ziXVd
 VnWQ==
X-Gm-Message-State: AOAM532oEdIlJfL+HtgMR+36tG4w1CqOopI38sSeQM4b12QbY1sv1O2h
 4K1PpvucIsbzX91ueO3CyBI=
X-Google-Smtp-Source: ABdhPJwv+3Ac5k0kcrEuN/rqw1ySOu0e011kMHv3y37500CKd4cTa4u+TJLpZozZUblRqovMqIb/IA==
X-Received: by 2002:a05:6402:3591:: with SMTP id
 y17mr6953017edc.343.1633617629051; 
 Thu, 07 Oct 2021 07:40:29 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 21sm10086523ejv.54.2021.10.07.07.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Oct 2021 07:40:28 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] ARM: dts: rockchip: change gpio nodenames
Date: Thu,  7 Oct 2021 16:40:18 +0200
Message-Id: <20211007144019.7461-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007144019.7461-1-jbx6244@gmail.com>
References: <20211007144019.7461-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_074033_192922_395E883B 
X-CRM114-Status: GOOD (  11.67  )
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
