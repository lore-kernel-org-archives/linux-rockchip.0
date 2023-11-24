Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DF0C61DF4
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Nov 2023 09:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VnPbECYMmynCX7G6nWehSAW2sNqcTfYw482cD8ljkM=; b=PfBHpxOujNFSSV
	+dY8oDAl/JT34mtEp0s+uEQaZyyti6B9cFChLp3XxkGk8ruAFj/Ne1CkyUbajMa634pyC7VoPwkMp
	O4kTNBBKEukTjNy9e/DNjQkEoj+ZmukDBx57Tedr1+FlVteFEBb1Xe194uFw2aGa2zTol/IcxhuU6
	JJaToOyhg/4rQhEJjtlagMSaIHXKtzelCJLsDtjqOkZA2M5ksGPGBzScZR2kccxKEwqO615Mo4eiI
	REsD02HBYGarXonM2QNKNMRE2VV3gt64927Ki4JVurhYjqEwC7fcB84lSQLncdhlYroFk8l84g0a7
	Ot4kCPWie076eLv56e1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Spj-006jk8-2C;
	Fri, 24 Nov 2023 09:50:47 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Spf-006jgB-36
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Nov 2023 09:50:45 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-54af61f2a40so499123a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Nov 2023 01:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819442; x=1701424242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qor/r0zOqiLhFxmNXSJ8SXz2GN8hXhjmuYRNu5/p5mA=;
        b=ArNJzG3JVKdFbvctKRRUVWMTZNbbucn+LD6uksRFPZUIcAkFeajXfiAfwbnoIEpqwd
         OK/tSkZ9t2xUrymer50UahicChYXZPU8t4gmccqO+M+/ow6Utt1BrhFUZqiPBXsAI7wM
         xSegSJ1K7ZnYoVithnikq3hPIAC2OFIZ4Jtsj86VBf6dA2r6/MxKUfqk1MTcrZSoXXJD
         kYG0bz1f9q+SvdERyD2tAH13N9p/2B/EEWyGOeRDoIOBH2gAvcowH4x1lPDdHuHCvPoi
         xyhUljuGgiWTRoz+6JB/ffmbHp5+wFa6xv3AjcO3OWURgKTx9evy3JCZVepI3JR17/xa
         FbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819442; x=1701424242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qor/r0zOqiLhFxmNXSJ8SXz2GN8hXhjmuYRNu5/p5mA=;
        b=BozixBVYBA1D8UGGe8QhFeyGrPavIS94bbKFbWRp+7CKLisIO7WlgWdM3rtEhrgbjt
         0JoG8b3miwoz1wg4MxiKwNZAaSKsfFSnBG2glktNfFj42uvsknBBN3Kw9JCyiDK/P1IL
         OXntWF8INUvojZt73vWyWVFSwC7lXqpZT9avbnx+I+TKL5kQiXsS/uRKvRbQm63Xf4zR
         k6Os+nSvirab2xXBIsnGIDzskC8APzGOSsC/aEEc8/iYpDtqkkP6zCFoQE9vwjNax2as
         zbOOH2nILvptG2DvBjqXVyA+SlKFd7cZVGSMRoGI9qAvHQYggOq13dJLh1wNfCMez9kd
         vjiw==
X-Gm-Message-State: AOJu0YygvizAHxaIPl2Ze/itUQlZCMgRCp9TeYZ+zcwBVuLmdUNjv/8u
	WzCSmTM8JBPDNvpQG7nOtXq8dw==
X-Google-Smtp-Source: AGHT+IF1Omq/eaQPmVm8llzgDUE6BlQzXBZgCbk9ZF2AfikHHCfYcfIe725SN2hIJuRRWO0w5v03Xw==
X-Received: by 2002:a05:6402:1744:b0:54a:fcfd:224 with SMTP id v4-20020a056402174400b0054afcfd0224mr698023edx.17.1700819441954;
        Fri, 24 Nov 2023 01:50:41 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id g20-20020a50ee14000000b00548af940701sm1612755eds.53.2023.11.24.01.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:50:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:50:31 +0100
Message-Id: <20231124095031.58555-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231124095031.58555-1-krzysztof.kozlowski@linaro.org>
References: <20231124095031.58555-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_015043_996110_AA481A13 
X-CRM114-Status: GOOD (  11.55  )
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

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index de0a1f2af983..7d4c5324c61b 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -86,7 +86,7 @@ simple-audio-card,cpu {
 	sgtl5000_clk: sgtl5000-oscillator {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency  = <24576000>;
+		clock-frequency = <24576000>;
 	};
 
 	dc_12v: dc-12v-regulator {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 8f399c4317bd..e3a839a12dc6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -38,7 +38,7 @@ button-recovery {
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 =<&leds_gpio>;
+		pinctrl-0 = <&leds_gpio>;
 
 		led-1 {
 			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
