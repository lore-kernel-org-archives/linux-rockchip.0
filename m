Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53CAEEE49B2
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 12:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KYwLPCIHV6A1UxSllPGj1QDKeTpty7lmGgWUgTYUyaU=; b=d2c5PTurzIWISS
	rfQ5N4biwgxvcP/ptK+DumJna3FQTapoNQcm/N3XJ+7sGjV3nrfLbL5qW4XhOGUjYkgicR62HHtbu
	Gf82GDIHJ2WNIJZbTM7LouoS/BAAKYyfsdiBu8zMfcPb12aVARWSrR44ig4spLvKy7qc5XWJLkn4h
	bqlc9g4DWDfyvtn+I0Oe+3jipKZm981Shk/O8S4bbKHkMU8SLIOnAbjCwuIMwcEkKPK6LAh3v2kgO
	ICvGBSHLonatiocKOxuYfJ6Sgi9u45trcbdgLyxFd2cGZZDgbdPJl7Rr3RwZo/rt0fYgJWHSphflI
	0/eeHUAC91fkTrVf4/5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYmqZ-000XIx-10;
	Wed, 23 Aug 2023 12:20:27 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYmqV-000XGy-0N;
	Wed, 23 Aug 2023 12:20:25 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-319559fd67dso5045566f8f.3;
        Wed, 23 Aug 2023 05:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692793220; x=1693398020;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=10onvWGxz9bz3+icHMFZatKgP0llKlSrmA+LhRG/3vc=;
        b=QpqgWGJnq8YEdR7Qw8JhIphCBOW/YqbC2KRTgKsdh301J6i3tF00fuS5AESTEyN0HU
         NYkboE/jxvxdTTq/dpXAua3jwyGmy/Ua8/17DqkA4/M+85O0VTHeHpHsldC5skUe3GUS
         /T33vLL8/aLMWjuUcJ4T4hfWSAv3FKQf5vDiZJGfS0Mag1inz4E9g/X4raLQVA7GyvFm
         VA7qghOTtGryHxrdp8QYFRRCegxpkkEUCvKFBfe/HaoN2qE/j1QF+qbqvzsqfXQ/g/3T
         z4kxajgOtWlOioYIiVqq5nvM5N19f4ImrPjOPEXFGMh+YPHHg7FazK94gXQmBy9KGLFd
         elSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692793220; x=1693398020;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10onvWGxz9bz3+icHMFZatKgP0llKlSrmA+LhRG/3vc=;
        b=IpUmfCgSJRDext088PnrUDrZGN1jyvGvMQtEaY1JlyFWjo/UL6jPujyURqAU5j/IJa
         FrKxu+2cBzD64dxShXU54HRxLNNynpOAWMscgGy9RU4t9/N3nP+YpkZtFZ9eA+yitq/Z
         MZyBRymZnP9K2si9qI/byg8YMeOzSDfHVcyGf8HUxQhtFcs7cTL7LSBnDO3+mn+zIlBg
         IpqEuCaVwupzlSpRBjZ69Ko79evPfXIK8AGeSeXQwVOFTjrSwVso9k2cGFidgoL0eCmn
         6Q5hyFTbZTqcZzOCh1PMl9lwmRB+URRGttStz0AviAxVgAxXHi9U5jruR8AtKZFCkqlj
         /YwA==
X-Gm-Message-State: AOJu0YxoqISjd2zsQOLPla43APgwop7e6aQLyelSZi4NzknMer+da9dK
	1UVEKIb8mft5GtjFBoeQ4Us=
X-Google-Smtp-Source: AGHT+IEEGL0YP7FFC1bI0GofVCUszxqRDbHrQu/PE1gdbXjKyUuDDc2CGIFkjNaWSGcH93fIYa3XHQ==
X-Received: by 2002:a5d:53cc:0:b0:31a:e2af:bcb6 with SMTP id a12-20020a5d53cc000000b0031ae2afbcb6mr9739011wrw.57.1692793220146;
        Wed, 23 Aug 2023 05:20:20 -0700 (PDT)
Received: from opti3050-1.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id w16-20020a5d6810000000b003197b85bad2sm18909196wru.79.2023.08.23.05.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 05:20:19 -0700 (PDT)
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
Subject: [PATCH 1/2] TSD: arm64: dts: rockchip: use codec as clock master
Date: Wed, 23 Aug 2023 14:19:59 +0200
Message-Id: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_052023_152760_64B082FF 
X-CRM114-Status: GOOD (  12.65  )
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

 Running audioloopback.py script on Ringneck, 1kHz
 output sine wave is not stable and shows distortion.

After:

 10h stress tests audioloopback.py failed only one time.
 That is 0.00014% failure rate.

Signed-off-by: Ermin Sunj <ermin.sunj@theobroma-systems.com>
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
