Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD20EC83F1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBU5vQm/21BVahrUjNJK7ua12xIQSf2+Rw4v/qaUB0w=; b=YPfQ7FJ3vCeMu6
	cBZkK+AyG5+DBLA0o1kVRWlQHcY+KZACjVQBbqBM4JYIquHiJEbK2WOZkTsmuuYbIq6a8GYbsf4OJ
	63ocgmYci5GtTrAiDSpj5y+jCyPbyuo5I1OM0SWscJhAV/o75cmDRcMDuhI1NjGbbd58zpRByDSlH
	qLLiAzQYOEnqVtDo3rHU37/45co7r38u0U8ovrVCOYczNsIQR2vMSZzumTMkVwR0Sv2b6GSNbwObF
	+LO21kU1ZdxDGzFIyYolFSdZf0r54PoGrALDoyocRyBI4X1VG6aRAilYisjG/L99JNd3QO2CSmgeJ
	pttv3b8dE1GlH/X3L+mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2MC-00BwEz-1c;
	Tue, 29 Aug 2023 17:18:24 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LT-00BvOm-0O;
	Tue, 29 Aug 2023 17:17:40 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9a2a4a5472dso987236966b.1;
        Tue, 29 Aug 2023 10:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329457; x=1693934257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xb0bVdz0t+3wIuYIP2F+90OzL0D6aGQzldL875Tj4a8=;
        b=qqFL0FpsPqLqqbrAvN473dW2rm8ml+nlYddNBw/C3fYlnRwrbLI9EIelH7Uqdi+KVz
         l5b5xksUudDc5Wx/U8c406KI5yKQH4MxG9NFEI4uttOYtAF4c1Q0zI1MPnxL6MoaiA7h
         5u8pJ8K5JNQsx8o1PZHKKVYE52tWdbPwf4B9K6ESq62gEvHxPWNwOnwD8tHL0nvtK136
         5WVQk/8Qwn05nm/qNmTcdaQsZdMg8cMk4PgR2J+b068SxJ1UgUxPvkn+v1Y1xL+7NMoV
         +NB7CZT4CulmYIJ91aRaoUj8aiciVhU/CizJU1NZ6IfwsMaffjhK+WWMNfOem8JQUsi5
         Kn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329457; x=1693934257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xb0bVdz0t+3wIuYIP2F+90OzL0D6aGQzldL875Tj4a8=;
        b=VhwuDp7fGUJAxFsyQcqFoV5EqhO7087dWsUfZ68e+PMgbGRHAp4bNNx9KemKlOiQL7
         RcB+y+wDkVSzwwpqh8WoUoj1MLY9GZ7q07bc+RbaHU/EUxHLBty/hEtPCIR/1sBc8srr
         Ppq5I5QZfuCHO8cSFVm0Mb8urVHsKaruEH067MOwaJuEItlmrcBAQHC0gWmGcXRILlgJ
         P0XW69CM22+f8B2p4TF0b1UUUwIyVi7yceI44y3XZglgrSKXtERbLsJzb2L9vXY/6x26
         g13HJp/mF/xz+MOfJHuEcrn9jVnhvp/G2Um71MbpMWJfjsqMakFeMUM8HWB73UjByncU
         4A2w==
X-Gm-Message-State: AOJu0YzsYxC3GhoV2GnoutiZo+ZpB6eeA0wlOHyFvCHVSNxQPnFmSujv
	KpWmFh9ev+3CNp0WoNTXLQ==
X-Google-Smtp-Source: AGHT+IHuKu5IeGEJDdo0cjQvWq+Trad55MfK5T4Sc1QWBUznaCFvLImCREY4QADbcwYbKJ0xN/WJFw==
X-Received: by 2002:a17:907:a076:b0:99c:5056:4e31 with SMTP id ia22-20020a170907a07600b0099c50564e31mr4078809ejc.15.1693329457126;
        Tue, 29 Aug 2023 10:17:37 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:36 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 13/31] ARM: dts: rockchip: Fix timer clocks for RK3128
Date: Tue, 29 Aug 2023 19:16:29 +0200
Message-ID: <20230829171647.187787-14-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101739_161821_0745052C 
X-CRM114-Status: GOOD (  12.90  )
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
reason and the "real" timer clocks (SCLK_TIMER*) will get disabled during
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
