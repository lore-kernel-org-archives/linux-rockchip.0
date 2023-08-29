Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E1EC83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 20:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJCyXNkq/gB8olDsq6uOfH3nwSQuvoTLuHKjLSvlPjg=; b=dFVbQDtrqoHyBf
	9NTDjlnpUKSGqRPM+ZSUUhmfjoVUrMldBMz5lurf4u43CRl45fqMSwoC0boOGMuqeu9D6GwvrjogH
	UFNU8MF5cpYVMRkBn85xP7ypJeU9QoGG4GL779w1YUprivaVlxbqOqILPFRxtWPXqjI60QAnq2cLP
	vmJSTpLtGKpCBapU/u29Lf5v52xcJNYet3o7cVa4bm6/pvuVG97KKO6h2+Clsxwgx2ejd4rclc1kY
	aY1U+wjXPCh+CUBzRQ/FQn0e+59ivOWRy5IwZqJJhSnLTcgKYr4mPfKRxVFRNc07WeIKW/dquyot7
	ExpxXif/oak/5FAaiTHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5Ul-00CEXV-0G;
	Tue, 29 Aug 2023 20:39:27 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5Ui-00CEW5-1W;
	Tue, 29 Aug 2023 20:39:25 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-52683b68c2fso6384375a12.0;
        Tue, 29 Aug 2023 13:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693341561; x=1693946361; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4/S078uVn7am6W43PcbwitpWSJn3a9dUt4aJRXNiiV8=;
        b=kzwExzam5SMZK+UEyaAae5Vn5qp1XzWwXmvzAR56n4m1hoqXou5JeRiWgr3ULT2LOW
         CMdC1HdPcV8VfHwKHuVEdG57+Ht1d9Q4L7IwCiM/3LJuabGw/DZok+fyibGN8M1IJZgT
         xod3M4jJMtUO8MgCLUvLqVhoMYwcadaSOWgWJ1wGB7T4a465PIYf7SRLSn8roTSQx9jZ
         fXrgFirrRvXPevaar4Ub1Wa2z4zco7pZBRFNWVkD0AJkAJhhcrngvnrLZylmh9RTeVRW
         EubQkUuOjsXUo4Q0iDoWY4I8BZGyZHyPtZv6bz4eGd8HSBFit9dakezm1V9gvZqS8OwS
         EZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693341561; x=1693946361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4/S078uVn7am6W43PcbwitpWSJn3a9dUt4aJRXNiiV8=;
        b=brO/aEH5S1NIj9FLs8wjw5wV/01HSWI5CpkByemVb+GNcCpphpsh0NB36P1bassoRc
         e2WXUhaqgZNehdo2bdmxtGRV1Mj7DMyoGdlFVtDNuBQP1KGSJzaMjc1cAWsMcxK3UxYu
         sTifvjlK0GUHbXblXOS0U7OLftT842PZpFGL12lBcYaCzebgkjw7rLWJM7nIvXdLizO5
         UTp/cBQIb8nngvSQudutpHky0UOznbCuiJSCi4Mmrad9N47xcr2fMDb+egj0v6dcrSdR
         TdO1gNGZb7S22ytRPene3eaG3TwqUjNAr3rNTM97L5sILeqECd6b5A69CzoZAA0zX16C
         PYFA==
X-Gm-Message-State: AOJu0Yx5uEvX9UD35uCmU2O8CFfGERqbQgxnKRTyp6osQ7/RD3Nm962T
	9G7lq+qrB6tisdlo3HJ62Q==
X-Google-Smtp-Source: AGHT+IH0JPsXYQ46Kp00OCfZE6ki6jFotggl9aujrYzmo9vKs9nW7bi7ETeXiVcS8/E2zZTgTVWerA==
X-Received: by 2002:a17:907:7758:b0:992:3897:1985 with SMTP id kx24-20020a170907775800b0099238971985mr87579ejc.43.1693341560769;
        Tue, 29 Aug 2023 13:39:20 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906825200b0099364d9f0e9sm6301908ejx.102.2023.08.29.13.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:39:20 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 4/5] ARM: dts: rockchip: Fix timer clocks for RK3128
Date: Tue, 29 Aug 2023 22:37:27 +0200
Message-ID: <20230829203721.281455-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829203721.281455-4-knaerzche@gmail.com>
References: <20230829203721.281455-4-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_133924_508099_F47CD100 
X-CRM114-Status: GOOD (  12.83  )
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

Currently the Rockchip timer source clocks are set to xin24 for no obvious
reason and the actual timer clocks (SCLK_TIMER*) will get disabled during
boot process as the have no user. That will make the SoC stuck as no timer
source exists.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 9125bf22e971..88a4b0d6d928 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -234,7 +234,7 @@ timer0: timer@20044000 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
 		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER0>;
 		clock-names = "pclk", "timer";
 	};
 
@@ -242,7 +242,7 @@ timer1: timer@20044020 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044020 0x20>;
 		interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER1>;
 		clock-names = "pclk", "timer";
 	};
 
@@ -250,7 +250,7 @@ timer2: timer@20044040 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044040 0x20>;
 		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER2>;
 		clock-names = "pclk", "timer";
 	};
 
@@ -258,7 +258,7 @@ timer3: timer@20044060 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044060 0x20>;
 		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER3>;
 		clock-names = "pclk", "timer";
 	};
 
@@ -266,7 +266,7 @@ timer4: timer@20044080 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044080 0x20>;
 		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER4>;
 		clock-names = "pclk", "timer";
 	};
 
@@ -274,7 +274,7 @@ timer5: timer@200440a0 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x200440a0 0x20>;
 		interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER5>;
 		clock-names = "pclk", "timer";
 	};
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
