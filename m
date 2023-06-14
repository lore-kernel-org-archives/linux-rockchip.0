Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E039EB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 19:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B13BdQIl0cHVYHXHO+vgUZ7/ynQKvlYlswmg2b5gY6U=; b=tyYzecv92Sa7qw
	HSWT+XJoBmTVVjHV/+ESt78w5Gjm6+EV0ruZepuKStmt0LkCbeZ+dmxL9oOnsBYe9lyukWchNCmXU
	+l/dxwZT4hInr6HayypT7+l7NDVvU1AvfNIAfkHfxIB9/PChyqOz7JPmpzETNRQzT6r8mARVtElqQ
	cm6zsuQCtKcUVx4tNuOqAfFcZRuYPOjxMmzXcSQpOP7z98/ZG6IebANlWxybYbHufN/Ijr+mGWfWW
	MXQ7XR8wVcNLTZLuMACPJuH0rOb02fjZyBurGTSF0S9utuA5am0ZqJGIBgcK55uVkTaywX0RNevBc
	EbARs98x2jmlN++h5Sow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Vro-00CVZY-2r;
	Wed, 14 Jun 2023 19:09:16 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Vrd-00CVUG-2f;
	Wed, 14 Jun 2023 19:09:07 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-30af159b433so6897986f8f.3;
        Wed, 14 Jun 2023 12:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686769743; x=1689361743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5u9vHxVGrzBlNg97U37WfCH1VZYMHPccfRdk0EIgi0Q=;
        b=CpgQ+Kp063bXwmLKcP1EEsFKM93bGnY15ULSzxfxUlpJLR6gAyb4oeXYPjqoQUm1Qh
         kHc+Ueb4SiOE+/bHeahP/YzEp4jLn6ikXcfMAlgRRiQV+sBkHYwFpjdNXjkOsMvCRpUi
         2Jb1+Go+ysqeLQxKvH0let+oPsNKRlCFj1nQL9S5ZsjhYwW+J7uflIfyuyXjNdTLvfzG
         0Q3jbptnO63W0s2Kp2zPcEmszKHZ4i4SAg6G7taC8/t7agm9MGmGOJWKsg0iNceDD1Yi
         xnjkmJNOjCwEz+99cd4NwBByCBeI0xLzscMFpyO9RUZzCr2+s4nj7LRAa3JSvCc/Aohl
         0Bfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686769743; x=1689361743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5u9vHxVGrzBlNg97U37WfCH1VZYMHPccfRdk0EIgi0Q=;
        b=UUgYV+DxHB5QHH4Ezq3gRF/wyLy8gGI/9F0y7fZxds5jaP/UImQA1SXiinI9fM8ImO
         yAk94QVg3YF3V+N14eY0JFd2KHb/gFSiipd1jThBnaEPJM3HagdmF353hno7XRunylBo
         HO+6Q16FVU+2OHEsIpIQzaesJRKnfp6sl6FNVDKeAuqTvA6jolwLjEUHK3Yg+TH41KYx
         ds81fHhdcBd6eEdmUhzf+I+Zu0LMRxVdsl/91Fj1XYqnNB2DkDbiE63yQVCu1ejoHd/d
         sAH2CnBbKOAKVxByzRdBTbDFW2Ymw7nj/KGYbaGtwxsoc4vzw8yw1NmHOBHZ1JAHEf0D
         aTpA==
X-Gm-Message-State: AC+VfDzWB+xoL+eZ8a5mdZrv/mJmTC05fdPIwznZkwH6xBQxN/zhzm8V
	xijP4t9Gk5Bb5bL9Frnffww=
X-Google-Smtp-Source: ACHHUZ4WcZukf0p1Xe7srG7EpSfRIc8i1xLVw2rVsv9fLH+mSROtW2rbeQ6y/IwrGmrmgOtHgQBd0Q==
X-Received: by 2002:a5d:4009:0:b0:30d:673e:1547 with SMTP id n9-20020a5d4009000000b0030d673e1547mr12367726wrp.41.1686769743534;
        Wed, 14 Jun 2023 12:09:03 -0700 (PDT)
Received: from [127.0.1.1] (2001-4dd6-393b-ff-f59e-4402-63f8-7ff5.ipv6dyn.netcologne.de. [2001:4dd6:393b:ff:f59e:4402:63f8:7ff5])
        by smtp.gmail.com with ESMTPSA id e6-20020a5d5306000000b003110ab70a4fsm2341094wrv.83.2023.06.14.12.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 12:09:03 -0700 (PDT)
From: Maximilian Weigand <mweigand2017@gmail.com>
Date: Wed, 14 Jun 2023 21:08:54 +0200
Subject: [PATCH 3/3] arm64: dts: rockchip: shift boost frequency for
 rk3566-pinenote backlight
MIME-Version: 1.0
Message-Id: <20230602-lm3630a_boost_frequency-v1-3-076472036d1a@mweigand.net>
References: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
In-Reply-To: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
To: Lee Jones <lee@kernel.org>, 
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>, 
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Maximilian Weigand <mweigand@mweigand.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686769738; l=833;
 i=mweigand@mweigand.net; s=20230601; h=from:subject:message-id;
 bh=68FCYhe2/70pszTO5OdRKpvXw9/fY4xli3NXD6/hP14=;
 b=S4CP5nzsXth0E8aD8pqpP1sl8cO7kQrQEa7HRD5BrzLuryOjSI3/PCNUZyOKG9OtVCheLd/e+
 i6pmW/zckRjBf6ve1+/wKCo4UP/YGxbpdycIp3O6ibe+0ai9w0SVaYb
X-Developer-Key: i=mweigand@mweigand.net; a=ed25519;
 pk=Tjuj6PXmCCxzGTRw+9suZuZ41q/etgDHrIbPdkAaTpM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_120905_869591_19C3765E 
X-CRM114-Status: GOOD (  10.11  )
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

From: Maximilian Weigand <mweigand@mweigand.net>

The PineNote exhibits visible flickering of its backlight for certain
brightness settings. Alleviate this by enabling a frequency shift from
500 kHz to 560 kHz for the boost converter of the led driver.

Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 8d61f824c12d..4e4b3bbaa157 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -453,6 +453,7 @@ led-controller@36 {
 		pinctrl-names = "default";
 		#address-cells = <1>;
 		#size-cells = <0>;
+		ti,boost_frequency_shift;
 
 		led@0 {
 			reg = <0>;

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
