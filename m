Return-Path: <SRS0=97ng=MC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B204AC07E95
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:11:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CA5161361
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:11:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7CA5161361
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAKEuevD+POg0RNstITBbThb6zY0Lr2BvKdaknQszaw=; b=e54cD496eAUOvw
	CpduolXWrbUEK8/K+q73v5ML8kngoLJ8jGm5cX5o6yoSJ82BQr8XYCDXsYc0F7HjIww21u1ajqIPI
	X+f6ne97yAwJzCidEuoVvGCE41WveZbvl1ZKXmUxRId/nCVWHZO9525upxPRAPapWvnvLNjIEFfaC
	OUv5a5tIU87j1K61Tnl/zgaNpJ7qAlgeqlxZRQ6fRMX/81CsAwpIKpDUAoVoVZfbavipzHtkOrcxF
	fheK3aDdrVwN04AxbIyndnO4l7xJORUUtrxoO5B/iM2u6dWUR/X/d0bfKxpyLMaEKFTgXCGKVx2iV
	nEkjlc2x0ItYCtOCzXpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2Edk-003mSO-CB; Sat, 10 Jul 2021 15:11:36 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2EdM-003mNF-U4; Sat, 10 Jul 2021 15:11:14 +0000
Received: by mail-qt1-x835.google.com with SMTP id w13so10011069qtc.0;
 Sat, 10 Jul 2021 08:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jH/4akIMNvo3VlMCPvDnCUu6i4iqvkKnvLcFgPTVNd4=;
 b=tGw4KDuuclT1Zfmr90UCdDwbJggllCoFbVlRg90z3vprfkAPMErhhXswmpTOdyIef+
 rQ9URnhf/TjtJJdkW+dsh2uXhDK4YJ+L/WNh7gflUPn0PG7cQ42gSAWKJwDBuDyk77eT
 bYnrsjYW+Rq79iAKwjWqh9zEiygVZkBUuYYXN/tXfU6AzNahaEhvNH4Fak7+LO+gkGLs
 Qh4FDiOvddsR0Sgt9Lo8BjiI/1M6qaqySaI2V6gmF/qbzEAQjWaINXRkOLDl+E1F6hlq
 Zva88ubmasyornnDvNGgv1KtRSOI5lHlCJ3J7q57VP1p8tbKwhAcKT1jhY6LubFeihSX
 d06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jH/4akIMNvo3VlMCPvDnCUu6i4iqvkKnvLcFgPTVNd4=;
 b=PWFNzydimzUw8QKjBZtzD40qN64izTo2Vx3AiXzBm9ckNuw+cFnRvalOy6dTI3GNd9
 x10H+rIUHmsibayHFCEphl4hrZifvxC5Ml1tLzEi/6N+Hd930TkN0JNFBtZJC6PcSSUH
 0Ajy62N5e0RUWZLyu0oyasZNVck5WRZWdJVRtmSxmO3TJ9m/daIH+7E9rd2OhEIjDo5v
 c20hPYdQ1toAcvOjI/12LkZOx/qIByT9L2YL8aer/K0uMGYbEticUZToXO9x2P7QmNja
 cBAW0ipG1xtTMvVctXUp1PwjOT5pfTGogmsraHAcemkrntBXz2FhL6uybizIGg8egZw6
 XG1w==
X-Gm-Message-State: AOAM530LMm3g001kqR2lNW2rIYkEO3RuWqYQjCiHBdRdJxvo1NHQeGDI
 tj6hEqn4WsHJP8Zb9Ix6S937/goDhjUmssSz
X-Google-Smtp-Source: ABdhPJzQ81SaNMCVTWvSDKKHTF8XmIjtFPsqZvvnFm23/yrWcCzxkoGzsS9i08hg7N4UvaJRTieQjw==
X-Received: by 2002:ac8:dc9:: with SMTP id t9mr38904025qti.293.1625929871247; 
 Sat, 10 Jul 2021 08:11:11 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:ecc6:5233:6153:7b36])
 by smtp.gmail.com with ESMTPSA id w14sm3445482qtc.55.2021.07.10.08.11.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 08:11:11 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 2/4] arm64: dts: rockchip: split rk3568 device tree
Date: Sat, 10 Jul 2021 11:10:32 -0400
Message-Id: <20210710151034.32857-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210710151034.32857-1-pgwipeout@gmail.com>
References: <20210710151034.32857-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210710_081113_012531_E7FCC866 
X-CRM114-Status: GOOD (  16.71  )
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

In preparation for the rk3566 inclusion, split apart the rk3568 specific
nodes into a separate device tree.
This allows us to create the rk3566 device tree without deleting nodes.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 48 ++++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 36 ------------------
 2 files changed, 48 insertions(+), 36 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
new file mode 100644
index 000000000000..da01a59f6f26
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ */
+
+#include "rk356x.dtsi"
+
+/ {
+	compatible = "rockchip,rk3568";
+
+	qos_pcie3x1: qos@fe190080 {
+		compatible = "rockchip,rk3568-qos", "syscon";
+		reg = <0x0 0xfe190080 0x0 0x20>;
+	};
+
+	qos_pcie3x2: qos@fe190100 {
+		compatible = "rockchip,rk3568-qos", "syscon";
+		reg = <0x0 0xfe190100 0x0 0x20>;
+	};
+
+	qos_sata0: qos@fe190200 {
+		compatible = "rockchip,rk3568-qos", "syscon";
+		reg = <0x0 0xfe190200 0x0 0x20>;
+	};
+};
+
+&cpu0_opp_table {
+	opp-1992000000 {
+		opp-hz = /bits/ 64 <1992000000>;
+		opp-microvolt = <1150000 1150000 1150000>;
+	};
+};
+
+&power {
+	power-domain@RK3568_PD_PIPE {
+		reg = <RK3568_PD_PIPE>;
+		clocks = <&cru PCLK_PIPE>;
+		pm_qos = <&qos_pcie2x1>,
+			 <&qos_pcie3x1>,
+			 <&qos_pcie3x2>,
+			 <&qos_sata0>,
+			 <&qos_sata1>,
+			 <&qos_sata2>,
+			 <&qos_usb3_0>,
+			 <&qos_usb3_1>;
+		#power-domain-cells = <0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 2737f26775ff..fb4ae22b827a 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -13,8 +13,6 @@
 #include <dt-bindings/thermal/thermal.h>
 
 / {
-	compatible = "rockchip,rk3568";
-
 	interrupt-parent = <&gic>;
 	#address-cells = <2>;
 	#size-cells = <2>;
@@ -121,11 +119,6 @@ opp-1800000000 {
 			opp-hz = /bits/ 64 <1800000000>;
 			opp-microvolt = <1050000 1050000 1150000>;
 		};
-
-		opp-1992000000 {
-			opp-hz = /bits/ 64 <1992000000>;
-			opp-microvolt = <1150000 1150000 1150000>;
-		};
 	};
 
 	firmware {
@@ -334,20 +327,6 @@ power-domain@RK3568_PD_RKVENC {
 					 <&qos_rkvenc_wr_m0>;
 				#power-domain-cells = <0>;
 			};
-
-			power-domain@RK3568_PD_PIPE {
-				reg = <RK3568_PD_PIPE>;
-				clocks = <&cru PCLK_PIPE>;
-				pm_qos = <&qos_pcie2x1>,
-					 <&qos_pcie3x1>,
-					 <&qos_pcie3x2>,
-					 <&qos_sata0>,
-					 <&qos_sata1>,
-					 <&qos_sata2>,
-					 <&qos_usb3_0>,
-					 <&qos_usb3_1>;
-				#power-domain-cells = <0>;
-			};
 		};
 	};
 
@@ -431,21 +410,6 @@ qos_pcie2x1: qos@fe190000 {
 		reg = <0x0 0xfe190000 0x0 0x20>;
 	};
 
-	qos_pcie3x1: qos@fe190080 {
-		compatible = "rockchip,rk3568-qos", "syscon";
-		reg = <0x0 0xfe190080 0x0 0x20>;
-	};
-
-	qos_pcie3x2: qos@fe190100 {
-		compatible = "rockchip,rk3568-qos", "syscon";
-		reg = <0x0 0xfe190100 0x0 0x20>;
-	};
-
-	qos_sata0: qos@fe190200 {
-		compatible = "rockchip,rk3568-qos", "syscon";
-		reg = <0x0 0xfe190200 0x0 0x20>;
-	};
-
 	qos_sata1: qos@fe190280 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe190280 0x0 0x20>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
