Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD1BC0502C
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Aug 2022 02:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1ZOCS7u7RkxqBGaHHtyFGNmTpet3KGmAEkw3XITKu4=; b=yxOGBd+f+gMAe1
	bPXxNG2DvR3kcB3Rnn3rD0E5aD6EbfNIksivgEmsaxM5BJtNXYbjLARbS1DGp5kOgu/R9itzcjNoK
	dixjMzRK5efr46KcdAbjj1XlsUt+RbOjkuDaxyVoDAcPd8SH/FGTefGUBFBYAcfP/SEsiFsbeCT0j
	xle9mlwQWXDD66zDDudizwOFyqfSz0eO2VCXKlLptaV1bgbT0MSxPThkY4Yyc9zE/hDUTlAiEyIgg
	s2CVtxXL7mtsL1q5+v1P0+QJkyqPdeHJt+GnEqJZ4mihZAA0CLkngEOQDEjuWHuWip5fkfMpBudBy
	1eTWPU+ZB/w1TYThiajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRlNK-000Ngz-Kx; Sat, 27 Aug 2022 02:16:42 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRlNH-000NW6-9H
	for linux-rockchip@lists.infradead.org; Sat, 27 Aug 2022 02:16:40 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-11d2dcc31dbso4302546fac.7
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 19:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=2GZridEIMW8CPRQ+2eZ76vH2Oowxq5t+h5oKo5idFyk=;
        b=VqhINItpw2XkGViR//dC8OW5gBh3IRF2mKwplTJ0ssmcZT5qvj8wOZUVhdhBMN2DFw
         Kxr4JdM59LmTUeBYv/AKSDjbZWwH32fUabZdJ3JkbhvaaOZs7eTwBmQ4VCY+HYxlKp5X
         hoMmarS1b4X6jacWQUqAK/gMi5HMzxglduEiLoKOEaM+fHGWQLxPmAzyY7U4wnAN7Y0e
         uwlboUXrFPS3wSBfHtgpUex2He/Xv48YHI/ifAZzLAbrENHGrTJPtotItQfdazTCwlcm
         rgz/E40gXuhUSJzVy1VbIttg/48jBMGMcpXNcHrgO7tPtI4+W6AkePTyuu2VkzSIYz8J
         wXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=2GZridEIMW8CPRQ+2eZ76vH2Oowxq5t+h5oKo5idFyk=;
        b=jD4esYLF2FUWVcgyRISUO0/PKWzc2Jy6L5/sKOzYaj38ypAG1HK0B4KiTeL2isNDN9
         mseBIK0aYnwSG+LH01F5ldKSOEkrmmV3ypJue+fzMIXjpQTFwCenLxiO4qyuicgFLmGf
         mH/g6vyPTG0ZqzrWHNbIyVlu78u12koxTyYXXkUFGGdDz4XNVq6bqSsrtpV+I6YGi6JA
         gFLtmqhGJzlBUFYI1+VdZv3aSeYrSllz0aJ5f6oupGIhmWR8PYbvbWOX47nqH4yc3Ge2
         yAQNPdseLaIwnNKjX0Ur5W45IoG8YUqcwmmMqGMkXLcz9af/gGyxHnhwZcs/no9LGnLd
         pW/Q==
X-Gm-Message-State: ACgBeo0UBjpRN/oYnLsEzFrqGeFYLlj7ZaJJd32bPfNW9yE9ekDbwWFv
	hXTNEJn9d3ZYdR2pop0Al0I=
X-Google-Smtp-Source: AA6agR6geDGUHxUz7PKBVAf1gxnKGlENRQZD1p9+58mCEZNijq987/wTA2oDFwzbblKnhWE7QdKpWw==
X-Received: by 2002:a05:6870:d795:b0:11c:fc91:94e8 with SMTP id bd21-20020a056870d79500b0011cfc9194e8mr3339584oab.24.1661566598141;
        Fri, 26 Aug 2022 19:16:38 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id q4-20020a9d7c84000000b0061cd208fadesm1925752otn.71.2022.08.26.19.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 19:16:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	maccraft123mc@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee@kernel.org,
	philip@pscan.uk,
	mazziesaccount@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V10 4/4] arm64: dts: rockchip: add rk817 chg to Odroid Go Advance
Date: Fri, 26 Aug 2022 21:16:23 -0500
Message-Id: <20220827021623.23829-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220827021623.23829-1-macroalpha82@gmail.com>
References: <20220827021623.23829-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_191639_356700_C9B75852 
X-CRM114-Status: GOOD (  10.02  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 charger driver to the Odroid Go Advance. Create a
monitored battery node as well for the charger to use. All values
from monitored battery are gathered from the BSP kernel for the
Odroid Go Advance provided by HardKernel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 415aa9ff8bd4..72899a714310 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -52,6 +52,25 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <180000>;
+		voltage-max-design-microvolt = <4100000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4046950 100>, <4001920 95>, <3967900 90>, <3919950 85>,
+					<3888450 80>, <3861850 75>, <3831540 70>, <3799130 65>,
+					<3768190 60>, <3745650 55>, <3726610 50>, <3711630 45>,
+					<3696720 40>, <3685660 35>, <3674950 30>, <3663050 25>,
+					<3649470 20>, <3635260 15>, <3616920 10>, <3592440 5>,
+					<3574170 0>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -472,6 +491,13 @@ usb_midu: BOOST {
 			};
 		};
 
+		rk817_charger: charger {
+			monitored-battery = <&battery>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		rk817_codec: codec {
 			rockchip,mic-in-differential;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
