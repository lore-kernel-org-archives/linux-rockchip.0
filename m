Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97069C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 09:28:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61BDB610CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 09:28:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 61BDB610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lM/sBGCFkLfK9i9uG9R12ZM6foRMHAC4ZFd0q3XGy7k=; b=u44w4MDgV9vKwP
	VvL0S9/m4bVPjoR6nh43rJhgC+q+m91SckMX6B2ZBrSib38z9yqwSNJ1DVcz/Nj6dgfR+XoR3IP4m
	U2a7nZTQxw9CDPxWofCLJIZVi7myCUOou1j+MKoFY4Su4rBb7oraXPGLpSQp/V7kovyD2hc/fMFO6
	h8weap75D68/F6xFrze9hoskm6ZHmuKWpZNpS+SUxeJ+Z8ZxsxzO0X0ti/RaHO/rCIjDJwLF5RWe/
	B4HIsJMnwXgRkJKVO99R92Y8yMRNcWb1vA370O63N5kXLVnLd0AhtojobPvn9hR2oq5709z/hThXx
	eGpFDOU87ZJhhpZCuNkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJudN-00DxrW-EP; Sat, 28 Aug 2021 09:28:17 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJud9-00Dxpm-OA; Sat, 28 Aug 2021 09:28:05 +0000
Received: by mail-ed1-x531.google.com with SMTP id g22so13579147edy.12;
 Sat, 28 Aug 2021 02:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YO5P+c/MNcPVuw9OJF09SP3sm2xgsheSfNcKULrpmyY=;
 b=lR7Sha9B7gOw10ZpqEIY7mcZivzuDuOyqwLr+v5Jjta8Fq7vVpKAH3sCBblX2bUkaF
 QneLIKAT8zzVaON7Z36wJob+uxlDBRsbNZH53cnVAGFd1cnXu7uPfNgR9iWdP3A6ekpn
 uAcDbMfNOkqpDqU07TDHR3qk97FB7PTCZbkCBVS3Nqm8OSPKN48XpnuKFHlCDIBYFHRg
 f3N4mUVGZDfxxJcWYaTQ+eKCoF8TaM68SKZAmI6IB7E7IOEwzxL4N5KpQw4zlATVn+Aj
 igcUzz0LUbMclsWVwlExv1KyRIvgX1cawxUx2ftUzGPiMXTAoynhPR+OYg7p75leI9ay
 2WlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YO5P+c/MNcPVuw9OJF09SP3sm2xgsheSfNcKULrpmyY=;
 b=PJoK4lJl6FvOJ9XhmfNwT56ML7igQ0B6PoiikGGn/bWjPDnijKDnUMxeGofFr5sZvd
 acyPCvCStQ9Mvkj+fSzC1b0H+xZHqIDBU2GODwZflLnxHpQMNHyCbV36bUicYrzHB4GE
 JbSIk0y2dwCmAPtybwS1PBFHOsy3Kr/QiK+/Knb/boHwzEAWdtCzsq+8QPTuzZxQXLNA
 GjMQ20IaORz7pGQ2oJOum8KUwC1XJQ9Elu6r6n2yicizfIyANFgRRZIzMAIt2wlhqywU
 at3EW7nKmr1A4lKJj5qElVSjj9bFAHdwN190AO7UaL73rVH2re6dQXDb6eJSpwksk+jx
 IMag==
X-Gm-Message-State: AOAM533D6TAI7QVQyELkacF2pV+D/3KcvN4mBVA7wNBMVlPJz2OUjkWG
 fMPuGRuP5eW/9a8MSh1T3Cg=
X-Google-Smtp-Source: ABdhPJxrIXanuue1M1LVabN2JIXPUCJiqkPU/VSsbD1cuWK/98nBHFJkDvzo53cLYH2mm1oSLVbOoQ==
X-Received: by 2002:a50:ab42:: with SMTP id t2mr12480670edc.113.1630142881442; 
 Sat, 28 Aug 2021 02:28:01 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y23sm3866058ejp.115.2021.08.28.02.28.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 02:28:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: add adc-keys node to rk3066a-mk808.dts
Date: Sat, 28 Aug 2021 11:27:55 +0200
Message-Id: <20210828092755.24560-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_022803_848371_803ACA60 
X-CRM114-Status: GOOD (  13.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The MK808 has a button inside the cover for the boot loader to do
some action. Add the adc-keys node to the rk3066a-mk808.dts file.
The rk3066 has a higher maximum DC supply voltage for the analog part of
SAR-ADC VDDA_SARADC of 2.75V then other Rockchip SoCs.
For the "rockchip,saradc" node is a vref-supply property required,
so add a regulator for it as well.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 9790bc63b..667d57a4f 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -4,6 +4,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/input/input.h>
 #include "rk3066a.dtsi"
 
 / {
@@ -24,6 +25,20 @@
 		device_type = "memory";
 	};
 
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <2500000>;
+		poll-interval = <100>;
+
+		recovery {
+			label = "recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 
@@ -46,6 +61,13 @@
 		};
 	};
 
+	vcc_2v5: vcc-2v5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_2v5";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+	};
+
 	vcc_io: vcc-io {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_io";
@@ -164,6 +186,11 @@
 	};
 };
 
+&saradc {
+	vref-supply = <&vcc_2v5>;
+	status = "okay";
+};
+
 &uart2 {
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
