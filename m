Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A14BCC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 16:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3RdLa4pFNaGRFYuDFknu5INHfHwpKj1clix+VYcDjU=; b=YEjhKb+8SOn0Ip
	DHUpYyCAMSrIMLmGN5TJur35t86uNCnFjx6bVCSaPU+9MNWO8M2VH8E2TjMWQ2aYgmyVJa3ReU+FR
	8ggiGDieLq924i5uD8moWV3pZ8x8npJ/nbRSQGQm+H8ojOx8CRgD4o5ewE6ROxPDher8NJqaGqrmS
	XFc/SHd9eOJspt4PPKcAv2aCfmDyXbSc8jfZ9Q4m2kD+tANxl7IuectqRZkbEkjQ26VZk4BQWaxSM
	iWsWDIM1vEf4MiV9hxt2bslv/bQzBM993O3rO6oFZbV65WLDGJbfN/vEtMkjOacBCPN6wL1PUzdlG
	gWKe/K3Fmu4WVCOFFRsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msSgK-009Ou8-Vq; Wed, 01 Dec 2021 16:42:08 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msSgI-009Osn-Ef
 for linux-rockchip@lists.infradead.org; Wed, 01 Dec 2021 16:42:07 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 133so20981843wme.0
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Dec 2021 08:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3fr5sB/hWF6oqc9m6hzOo1nMZaFOt3GJ2Ovlo132VCQ=;
 b=edPaqO5xvP3OJ9dsMgrn3NJJjrZSdjdw+30GE0TCznSZCEhE/+IeIqW40S81GY9zcU
 J3xJVgyr/iCyMG1qVB5Zgtd8y+i0m+BgXLtVSeLhzoO35w5JE1/D1Y8M9zls8skse1fh
 2j+jmHvmzmXybWpBnu1PTixUOjeMv/1LSyp7iAjj2r6WHt8tY2qVGCCxVWMBMBKDGQ2q
 IIyTMRqS1f0n0WDX2magPspnVJ6J6Pd1Yg9UvIqNlwo/qBFJtn9Q0WFtJCUFGbP1N2pP
 B1LFkWomE3Kqvm46T9Zw4g5iQxp4jLYYj7SStbKk9EAOdRLMTvkiyTKsn1bI81oxaYqN
 acEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3fr5sB/hWF6oqc9m6hzOo1nMZaFOt3GJ2Ovlo132VCQ=;
 b=YAIpesoe+89ah0f5yjlSJV9cOrFG4CfVq1P998050Q67uKWWlkZapce4Biilk5Qzhz
 eBYP2afgUi7ByosnDrOhn/Em4hZdPgC6JRhxInEnTgSENYAXiXinsHYUzQKPzRwZyZFz
 o48pBPjMmgkuJRpoo8UUDnmDUCdAEfPC2KLy0mBGyQBhd8sgyCTusZP9+Al9O0ejfOHL
 YQgRDjJ8wqeWZzmFrz5yfXhYIiXZ1b3h35n+hBQ8zBmwc77zFFIHOqDvmink8qil+FIc
 iNR40w2vGO8AuBM2/LxZHVvbeCDuGOorXErAi3hZub5+am3xlx6NT/PIe/VrFoWMHJgu
 nikg==
X-Gm-Message-State: AOAM532QWMJaPr4SmCLq7g1bRMME23tigkpm+N4NlZYcATFeAfvterKR
 C7/vkZnYMLp1HwVMHKMRxQLz9A==
X-Google-Smtp-Source: ABdhPJwZs1Eb9XLIHSC22SB5RhOI84i+Yyfqvzl0zjy3mqksUQU5ZTohyeD569HO712YaEOlrL1fnA==
X-Received: by 2002:a1c:80c5:: with SMTP id b188mr8663137wmd.57.1638376921939; 
 Wed, 01 Dec 2021 08:42:01 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:72d0:52a1:d4ea:f564])
 by smtp.gmail.com with ESMTPSA id v8sm255547wrd.84.2021.12.01.08.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 08:42:01 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	robh@kernel.org
Cc: arnd@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
 rjw@rjwysocki.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 lukasz.luba@arm.com, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Brian Norris <briannorris@chromium.org>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v3 2/5] arm64: dts: rockchip: Add powerzones definition for
 rock960
Date: Wed,  1 Dec 2021 17:38:51 +0100
Message-Id: <20211201163856.41419-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201163856.41419-1-daniel.lezcano@linaro.org>
References: <20211201163856.41419-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_084206_517407_A9861C74 
X-CRM114-Status: GOOD (  11.50  )
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

Add the powerzones description. This first step introduces the big,
the little as powerzone places.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
   V3:
     - Remove GPU section as no power is available (yet)
     - Remove '#powerzone-cells' conforming to the bindings change
   V2:
     - Move description in the SoC dtsi specific file
   V1: Initial post
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index d3cdf6f42a30..c41b20888a44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -76,6 +76,7 @@ cpu_l0: cpu@0 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l1: cpu@1 {
@@ -88,6 +89,7 @@ cpu_l1: cpu@1 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l2: cpu@2 {
@@ -100,6 +102,7 @@ cpu_l2: cpu@2 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l3: cpu@3 {
@@ -112,6 +115,7 @@ cpu_l3: cpu@3 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_b0: cpu@100 {
@@ -124,6 +128,7 @@ cpu_b0: cpu@100 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -142,6 +147,7 @@ cpu_b1: cpu@101 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -791,6 +797,17 @@ spi5: spi@ff200000 {
 		status = "disabled";
 	};
 
+	powerzones {
+
+		PKG_PZ: pkg {
+			#powerzone-cells = <0>;
+                        powerzone = <&SOC_PZ>;
+		};
+
+		SOC_PZ: soc {
+		};
+	};
+
 	thermal_zones: thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
