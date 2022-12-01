Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2597C43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 20:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdESTrm87WihZh1f8wbyhwgZCmxoyj9knQ1ORaSHdQ0=; b=mUhIlPptmCjOXD
	mZSlC+qOxFVve31rOhrQsyyrSg2p3vvw/FUQ/2D/fHTCcmB2hYyAbGsogfoIe4ANYYh35oo9sLx8H
	bxp2X0A4Uf8l6DJ1Q5QW8X+Qrv9vAEo7iQGnlV7cw4CQ7lN7z7PwU/6ZvywREra7qrFaRzmBlaDe5
	usyI0bzZzCI2fZIWy5Pkjh5Cp/yI6yrxD0EwuoZCbYa/7+KZmd48t56ExQaVxlC4b8borX0AY+zMO
	kcCWx4xaKmSDmFz6Pe6S6EA/y5UntjrRlN5d3nTSSklMG6XJdYembldD0OAsI08QMiWboWFilGjAw
	yPLuvmpjV2U2O5igrE2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qOE-00AucA-Qr; Thu, 01 Dec 2022 20:42:38 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qIr-00ArC8-JU
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 20:37:06 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-12c8312131fso3512460fac.4
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Dec 2022 12:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDNVIS6v1yG6sAvFOYg/2+Zxz4ZXp/Ow5NLTwsyPqTQ=;
        b=CvmuuY+wkEu+uT9ff0B1aNBJgUaRDd7us1n2vCBeR82xZfRBOaHewq3903/N34zrA9
         FkJN+nPJH1eEZEGJ9GsNYO514rTQQ1kBeB9lHSPUIZBUP/xiitn9po9PJs/lc67QI8+j
         3ezbkOBRj6OvXCWdLhKNvxR/IuIraY3IV9sygT5Kr3IlYO5dVO4IzdsisWkqLHNPIudY
         sUCrblfeGWV+Xdj2QdSdYPvZDOZlFVWlKO49jND/gFtmNr2gBm8LB3DIIjr4bS6GoJ3o
         MiatGl/Bc63gM3Nd96H/t21WkAjhUnumaDwuhPvb0g6hiTnCTib+2NhYkAYRTh0I64Gq
         jMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KDNVIS6v1yG6sAvFOYg/2+Zxz4ZXp/Ow5NLTwsyPqTQ=;
        b=MsVstkzUYvY9ei4OdQ+eq/RK+T8ofS88eKeD8Kb/pBsEVG4v61j+2+HxsIiidi2ZuH
         SSwx4LaZe00TSN8Ia7KaHSMPT123gDKpo+Qxc0QQIKycyYNTfG+rr3ysMZt2wWJZPpOq
         D2NBzQWDBUp1N1mOli/efc6ewPI1jVIi7Vm1FSnDlWbuscKUF9ERQH/8SYtlOdaWrRhR
         ntAtqYqhPSDk4VPfPtRzX+2Q95E/oUAEdle9pnsf1jA5+djgCG0V5a+xhiWV6kGvPj9p
         KmStu3RI77rVZDS+RSA0y/N8o9qbBskjfdHzkYPYLhYta95CY5Zn3zOBXBsAPcQJksjE
         Zs/A==
X-Gm-Message-State: ANoB5pnr485za/GYvM/Zv9F2ZzBSgs3a/MBS++fa9arCU6P/t2Hvp97h
	qd/J9K2bGGC6vKxxXGhhXk2E88oSEDs=
X-Google-Smtp-Source: AA0mqf6tqXSIMh4TUCBXKPIj9DYC2ccLMsIsrsKIgoHSvwThYP7VK6hWkaFN+IlGAUxfMVTxBHDrLQ==
X-Received: by 2002:a05:6870:479b:b0:142:7f3b:d60a with SMTP id c27-20020a056870479b00b001427f3bd60amr37573173oaq.111.1669927023423;
        Thu, 01 Dec 2022 12:37:03 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:02 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: update px30 thermal zones for GPU
Date: Thu,  1 Dec 2022 14:36:54 -0600
Message-Id: <20221201203655.1245-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_123705_668489_1FF63D7C 
X-CRM114-Status: GOOD (  13.83  )
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

Without the trips, the following errors are received in the dmesg
log and the rockchip-thermal driver fails to load the gpu sensor:

"thermal_sys: Failed to find 'trips' node"
"rockchip-thermal ff280000.tsadc: failed to register sensor 1: -22"

Trip values are assumed, unfortunately, as the same values as the
CPU. The datasheet and TRM didn't appear to have any information
regarding thermals for the GPU.

Stress tested successfully on my Odroid Go Advance.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 33 +++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index bfa3580429d1..4f6959eb564d 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -210,12 +210,6 @@ map0 {
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 					contribution = <4096>;
 				};
-
-				map1 {
-					trip = <&target>;
-					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-					contribution = <4096>;
-				};
 			};
 		};
 
@@ -223,6 +217,33 @@ gpu_thermal: gpu-thermal {
 			polling-delay-passive = <100>; /* milliseconds */
 			polling-delay = <1000>; /* milliseconds */
 			thermal-sensors = <&tsadc 1>;
+
+			trips {
+				gpu_threshold: gpu-threshold {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpu_target: gpu-target {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpu_crit: gpu-crit {
+					temperature = <115000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_target>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
