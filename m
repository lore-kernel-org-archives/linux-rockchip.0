Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20888EE49A0
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 13:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NpXcA4X9/hzWSbaviHzCQDtWadNm+auPFXaLFrb6DYQ=; b=2G4vdrzGDCkQbW
	RFzZIq+j0hUtYWqWZ44ekgF+GQ66ujPHFOsbEoGatZkpiviWov2KS0b+T2N+btFTYN1xNnlRR9i1E
	3G2a2S6OLn4uqa2mUE+ry7y/pGXWvYY9GAAf+fYt7D4xsK+8ZRMTPGBnfxSvHlXKiSFZAM2mjM3+F
	YwvNwp9+KttIdNx9/GyFaKN1rtH6OubN/u5fgBuE5yXM+4+mOhbSXE8xSZBX1erKAx3CB5Lqu0tvb
	59oVGTDdd1Bb4QsPC0dNLkcQvfk2ITEasVHyHVfmFGq4bay7V8UBdmV2dsedqcLnzNJhEN27Hch4k
	RcUD27oDndVAUU7w0vSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYnkM-000ecH-2W;
	Wed, 23 Aug 2023 13:18:06 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYnjV-000dvY-2a;
	Wed, 23 Aug 2023 13:17:25 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-500913779f5so2365366e87.2;
        Wed, 23 Aug 2023 06:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692796629; x=1693401429;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zBFiSqxtgE2qy8qbvWPPqSrYIOJ343wUW66KNQ39qd4=;
        b=IVzyWNbaRAJqaA3TurIA2O1yCof/v1W5K2F3Ent7kxd6jRrE8BNwkgYcaiVOgJF1Ve
         kEWfMkthjdKlhVQxDPXlLEE4BInpyokyJ+iWhOiFgqDxJqQY33v+uke3+tjJ7mItFgJv
         Tx9NTgmrT+A5JTZwQuT7mjO6do+LuVoHI3chiD4IiXyn3Q2kRP4L+P6kQK0cQR1j2Vsr
         1kt5f0a196emSX7/snmyUt1UzEn/ucDesbuKzeH8dhje+e/0suj+3R8bdhL4M/zM06GO
         vYT27r+KvlypY5dzOEyLOOs0HRTScPQ+iHrSGVjU6F6mVVtLVaZCFrFpwB60wn4TUig2
         bZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692796629; x=1693401429;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zBFiSqxtgE2qy8qbvWPPqSrYIOJ343wUW66KNQ39qd4=;
        b=YA5JDh7LaxSjC1bMdngYmR8Ocym1YBQPV7K4imwKDa/KXwYX92FQbWh/lcAr7eeLwL
         erkkgbWipKipPWGDlJpM5ZUnseaZO0vkU4CfhCgYe7OQgt8+XTDj6vyAB+B0Zah17I5f
         GWVmYuXQdxooyrHulMiOghGD2pCwfBZ8xvasLuLrmg597ZlwPsU5ndM3WAK69lMHjqMr
         9gtZY1CNnJ2+5se+pXapQa9vHmmjcXXdyxa9F5cake3GYCerN4NFqfvBUZYRDCE2dNwj
         nUQJg/g3TSmvkfqkf7RL4htNiggzaK60uKeznNvQ9bKZjFYoDwJ8Tsm0vsfy0vrc+vXM
         joeg==
X-Gm-Message-State: AOJu0Yx12VgN3sXIIkAt0j+qyF86DRwVtAYf1LFg6YadvNvoMylglbbL
	DmayQYp5Esat9+/ZVA00Ccc=
X-Google-Smtp-Source: AGHT+IHT0ZG43kF2bkH6Jx4v+vfepZPgwnJjLHSz7HzuHLiPqFJ/3p+IYo8/1XCMjlZjCIfyvrMDqA==
X-Received: by 2002:a05:6512:457:b0:500:920d:2add with SMTP id y23-20020a056512045700b00500920d2addmr2367594lfk.34.1692796628748;
        Wed, 23 Aug 2023 06:17:08 -0700 (PDT)
Received: from opti3050-1.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id e1-20020a05600c218100b003fc080acf68sm22463192wme.34.2023.08.23.06.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 06:17:08 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: jakob.unterwurzacher@theobroma-systems.com,
	Ermin Sunj <ermin.sunj@theobroma-systems.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: rockchip: use codec as clock master on px30-ringneck-haikou
Date: Wed, 23 Aug 2023 15:16:50 +0200
Message-Id: <20230823131651.586934-1-jakob.unterwurzacher@theobroma-systems.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_061713_835880_1CE58600 
X-CRM114-Status: GOOD (  13.29  )
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

From: Ermin Sunj <ermin.sunj@theobroma-systems.com>

If the codec is not the clock master, the MCLK needs to be
synchronous to both I2S_SCL ans I2S_LRCLK. We do not have that
on Haikou, causing distorted audio.

Before:

 Running an audio test script on Ringneck, 1kHz
 output sine wave is not stable and shows distortion.

After:

 10h audio test script loop failed only one time.
 That is 0.00014% failure rate.

Signed-off-by: Ermin Sunj <ermin.sunj@theobroma-systems.com>
Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index 3a447d03e2a8..dafeef0c2dab 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -68,8 +68,10 @@ i2s0-sound {
 		simple-audio-card,format = "i2s";
 		simple-audio-card,name = "Haikou,I2S-codec";
 		simple-audio-card,mclk-fs = <512>;
+		simple-audio-card,frame-master = <&sgtl5000_codec>;
+		simple-audio-card,bitclock-master = <&sgtl5000_codec>;
 
-		simple-audio-card,codec {
+		sgtl5000_codec: simple-audio-card,codec {
 			clocks = <&sgtl5000_clk>;
 			sound-dai = <&sgtl5000>;
 		};
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
