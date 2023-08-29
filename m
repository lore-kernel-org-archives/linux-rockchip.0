Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24F60C83F14
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VR01R+B/PA7x3nHAUOWsaYV2xmT5pbYjDvZjHAMYv34=; b=XajdcL/erIkHr7
	6gZASC4S1Xe1JQDo0riHJHBGutMvkDKQ23o6MQAJYaZ+S+wvhPhI4yuVMmJUpmoKt1IJ1KHqNMDyD
	Uava4emlfTd84iSNN6wQ/Yzl3TFPxkDOObvUwzb4p4Y7nP1ucf1mAT1E+jiEDdkYXVNdD+SygjaXP
	0ZSO8xL4Fi/9fSKnrx2vLC8IcBYmqfqYzePLK5BGO9jssfY434siYs54jne9v7movPIu8jfdW73ut
	obTpSDqx7fL0gAUAOYuFJ1hdcxMWREVImoJst+dE1HNr6gz0gO8ND7ry0ipuPnhIX9hONT0zWsikj
	OZ0abQLZJ66Z8g+gOvPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Ne-00BxhN-1T;
	Tue, 29 Aug 2023 17:19:54 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Le-00BvbC-22;
	Tue, 29 Aug 2023 17:17:53 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-977e0fbd742so599053966b.2;
        Tue, 29 Aug 2023 10:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329469; x=1693934269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8bC2y7VdPt+gQZ4niYJX9yvKSEdfcPfq9HIkHksvZpA=;
        b=lGLyFsRElGEyypnxgJ4cyR1W3hhI3uGn2LWWryaunAyjg3zzlBD6lYgb2VqOuweM/f
         jlnz5i7MN9x/62/CizSh/qRJ01spkv2EsJ77tFZut26Fo98bA2BZM9KGCIcqTwcI09/C
         uTwZrqD2OQSi5QVBYAvRbYmwNOGPIZklud3uK6FoPPetpDm3970xygUGihojNpbHYfEm
         OmPprpzEjklTYdU2YsMhAoe8/6MBGrKa1SBgJG8bBNWlV5TmuOEQmp60a1Zx1g0ZOTJ2
         YZ59q4K1hQc1QSLkCN+4hVD9sOyL0gePkGu7LUVrYCVxB6Xnm8pkTBXN6sz2O3cNTiCT
         YdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329469; x=1693934269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bC2y7VdPt+gQZ4niYJX9yvKSEdfcPfq9HIkHksvZpA=;
        b=JmBfKMYg23ntBC9ua4gWgzTEfxryeMpNqezHUVI1pBsBYjQYG4u+uOWIYD6qVgUxja
         C3dVmKps2mroZ/YYXSc5j+XdbNtq3XyhXziX5A40JTltEFFKzVU28kTa56qyFpGBxlaK
         6Ck39QTvgFFL9Ub6c2lIDrNXoeERpC3Twe+HowOkHDKWTis3ci1uHg5qDYv4nH3V3apU
         w33pPHqBVr1PO+pMHewqvx8lp0XFoxrok0gAp0W+Q1qTo/MU4kRaUiueNxBg3l9tanF5
         vWYMEUA8T5JhTR1X0cqO2U5WnYAiHMHjj65Y1cW59zLDSe0wbbjRZZMWTDH5wnXbS3oE
         HUgA==
X-Gm-Message-State: AOJu0Ywk9j/MITU1ss8InmwlfSGQ/82b7m9fht1TXqX/zOG1XGKmgadx
	GKA5IJ0BXFVzaH3wxMks0g==
X-Google-Smtp-Source: AGHT+IHmXDVIaV6yhzoHdttsh1bCbntYH5kT5qx7a1c+aLWU6X2nsxuyymCHftiQpUNhOc4FPkF4/w==
X-Received: by 2002:a17:907:b11:b0:9a4:88af:b77 with SMTP id h17-20020a1709070b1100b009a488af0b77mr9110577ejl.60.1693329469044;
        Tue, 29 Aug 2023 10:17:49 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:48 -0700 (PDT)
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
Subject: [PATCH 25/31] ARM: dts: rockchip: Add spdif for RK3128
Date: Tue, 29 Aug 2023 19:16:41 +0200
Message-ID: <20230829171647.187787-26-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101750_707374_7389FEE1 
X-CRM114-Status: GOOD (  11.14  )
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

Add the S/PDIF block for RK3128 SoC.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 2339232ae2d7..874c97297c63 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -21,6 +21,20 @@ i2s_8ch: i2s@10200000 {
 		status = "disabled";
 	};
 
+	spdif: spdif@10204000 {
+		compatible = "rockchip,rk3128-spdif", "rockchip,rk3066-spdif";
+		reg = <0x10204000 0x1000>;
+		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SPDIF>, <&cru HCLK_SPDIF>;
+		clock-names = "mclk", "hclk";
+		dmas = <&pdma 13>;
+		dma-names = "tx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spdif_tx>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2c3: i2c@2005e000 {
 		compatible = "rockchip,rk3128-i2c", "rockchip,rk3288-i2c";
 		reg = <0x2005e000 0x1000>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
