Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E44EBC5AD4C
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 12:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMfyb69xL9CAp/5ef+M0P/z8vTFwLfCkOb9V8/cYIP0=; b=mWYvMEDrSimriV
	vmQmPIr9MDvWLE7tAEbYqNEAEOgERS9f0U0RkwmZD1oOSdBKANPX/aVm15bYAGOBrewAlB/Tnv0uV
	Qh3Ir42gHH9EeK19/l4mpYomwHS5pbwgC3KHvkLFRaCVttQ2nowktSnIGFwH+8Kn1MlcCusTNs6C+
	345Z/R10k+eD7CGmgtbuwCTCe4NqwZI1XjN1BaTIHuQbFW8zviXAkjOfy5tgO4DD0ejo7v45uihP4
	O93b22sN5zgk6zZoaD2s+hSaUr6bI9/I773K9m5LgdZg1T+KsnhMQMjei8mp99/+Bu/q0tWwsMa8l
	jMRUO4xbL8SkI9M6kiZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggh-00A9JE-2s;
	Sun, 19 Nov 2023 12:14:08 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggR-00A97j-0g;
	Sun, 19 Nov 2023 12:13:52 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-543923af573so4971447a12.0;
        Sun, 19 Nov 2023 04:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396025; x=1701000825; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aEqOCitfx46o35f4La6fYRBqER5a58teuJqwLm78l4E=;
        b=PEfOZWu+ZQJHCE2yjKAdQIP2Eft0VZihx/3NH63P5SKR/6hjVCF6Q5XrKki7pAC4BU
         YyDECBn+fSf0OR8tLfAfm6PmcinLdO/TebaZ+wraIu46MSZ86frZ3R4HS7XleB1hdjn3
         oLklUkWkbfRe49nWFP8Y3Slo/4B9gKqjqpwwf6AURLp/wbKvgboKGOQf6RxdRr9fNpba
         REbVWpL1Xud+Yhnljt2tA4T4vgmk0achTPHMJGiNINFtcYYPe+XytVk7U8JTYk480Eaf
         TFaYLOqumRm/AUWwpvLSXb+gLpCWbj88YJNToLK7NytC4IHFm8k9IHTHElgtFO/j0rPf
         1o2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396025; x=1701000825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aEqOCitfx46o35f4La6fYRBqER5a58teuJqwLm78l4E=;
        b=NuKx6cBRjaeUd6K6ilSq8Cp/nSjtr1Y5RwkouiGxrVgdbZ5XN5vo/iFS/xKa0ALqgC
         z3VxsGTWClmlPwuQuMY8qbqwls6ydh0IyAf8QpuMfjdr3cVwydKf4p2ZrByNLule1PLN
         JZS1lZU5d7W/D0DEoVnWV+kyuNtGv+lH74hHYfdxCqZywjiviM1EMthvTNI7yE9zzGvL
         eXodEWoumbaMtsvPAJu7c6pAi63EK/m26VWquurz2kLJ7q61vNKMohk8XYK8V+jniUrJ
         ZIvoX11MKfoEEMJTqa4USkUNdcy5HuUId3CYGrNHOwoJgh0D3UIOWx4nCZKciWidCbPJ
         1gWQ==
X-Gm-Message-State: AOJu0YwWkxlwFlv+mI/T3V3R8pyFIVFXZYogIiUlLox4UxagOFeCic/J
	zJLk1d80lzYqIiuxv7uoIjw/hBdoTg==
X-Google-Smtp-Source: AGHT+IFlSgIwDq7pKQOyz5sqgYMr4kVrxaOq+u+B+t7rw7Vxi00MfzF/rP1xykPMY0b2AkHnswT3Kw==
X-Received: by 2002:a05:6402:3d1:b0:543:5f3:c92 with SMTP id t17-20020a05640203d100b0054305f30c92mr3924725edw.36.1700396025339;
        Sun, 19 Nov 2023 04:13:45 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:45 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 3/5] ARM: dts: rockchip: Add USB host clocks for RK3128
Date: Sun, 19 Nov 2023 13:13:38 +0100
Message-ID: <20231119121340.109025-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_041351_305938_3BAFED95 
X-CRM114-Status: GOOD (  10.44  )
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

Add the required AHB clocks for both the ehci and ohci controller.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 7bf557c99561..074dffa377cc 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -163,6 +163,7 @@ usb_host_ehci: usb@101c0000 {
 		compatible = "generic-ehci";
 		reg = <0x101c0000 0x20000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST2>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -172,6 +173,7 @@ usb_host_ohci: usb@101e0000 {
 		compatible = "generic-ohci";
 		reg = <0x101e0000 0x20000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST2>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
