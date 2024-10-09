Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B1C5CEDD9C
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 14:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iyujOk4j8S0LW2fc+KRRFn4Z0ofQd+KV3FjyhOlSKxY=; b=3W+a1famXJ5lrx
	OdmgvhKoD2aZt7Zb4m1AZAllBrNLFKDjs7/SoySKdDYCrrX81XfBjFbZKwbGNO4fWc0yobbpwpMXy
	FWqsFzMf8WnRG8vrP4gKjf8hBnNfzBixzQVF8Icl+fu+X0VjxxVK/qA6vRi5c+CNg6DiQHOd452jY
	YYCh4dzm/WOfVp2AnZkeR+knfO81OQrAc/S3y9V5N0e+2qadBQ9R67V2+7Z6zRl62vR4n03zz8cSU
	EaChN2WbJZ5Xi9uYicYAjSgeTefRp1WCvjJlqsGzpPSWltRBEsF1jnhaySRWBeVzUhR3w8NKXk0Jg
	8tzNThFL4CNZMY4JBO4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXT9-00000009YIg-1eRO;
	Wed, 09 Oct 2024 14:15:15 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXKL-00000009Weh-3tWQ;
	Wed, 09 Oct 2024 14:06:12 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728482767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=W1ITkMiMoSN/pYqPWEMNqvLqGG5sdeNSnAC3XZQ2KnA=;
	b=jHm0XmvwTEf+pUAU6hF3/HZ9MXYCrSNNJ/w/Qo3qky8TXfWmGuDZW5Sn484C8LZDmmBqLi
	Ab/zKMkLb4A6oXr4efgvFaezpLpFt/rnCrAwH9zSq1ijh6dY3Goc/3TqADiuSFf1zg6tth
	+jhS28CbKJ2qcg8dLSy6TuqV/8N3kTYntKeF55KE2AJoYTRAYba4rUreMXYwFTby9t3TmP
	hQP05TGj8LaYXV3JyqrWSWtdfGy3jaTiWtJYA0hRZ9iXQNq+Fc+39vG3yvjHJoyui8gIPu
	9JEVQtRu0HRy4EeAu7U0tpeE8q/wnkVM5wZhAMVabNNqFXtjIbd+66UyFxyaQg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add dtsi file for RK3399S SoC variant
Date: Wed,  9 Oct 2024 16:06:00 +0200
Message-Id: <59c524a9a12465c21e01b779b42749fae148c41d.1728482151.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070610_686522_C92EDD99 
X-CRM114-Status: GOOD (  14.98  )
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

Following the hierarchical representation of the SoC data that's been already
established in the commit 296602b8e5f7 ("arm64: dts: rockchip: Move RK3399
OPPs to dtsi files for SoC variants"), add new SoC dtsi file for the Rockchip
RK3399S SoC, which is yet another variant of the Rockchip RK3399 SoC.

The only perceivable differences between the RK3399S and the RK3399 are in
the supported CPU DVFS OPPs, which result from the RK3399S being binned for
lower maximum CPU frequencies than the regular RK3399 variant.

The RK3399S variant is used in the Pine64 PinePhone Pro only, [1] whose board
dts file included the necessary adjustments to the CPU DVFS OPPs.  This commit
effectively moves those adjustments into the separate RK3399S SoC dtsi file,
following the above-mentioned "encapsulation" approach.

The way the introduced RK3399S SoC variant dtsi file (rk3399s.dtsi) is named
diverges from the way the two already present RK3399 SoC variant dtsi files
(rk3399-op1.dtsi and rk3399-t.dtsi) are named, but that simply follows the
commonly used and/or the official RK3399 SoC variant names.

No functional changes are introduced, which was validated by decompiling and
comparing the affected dtb file before and after these changes.

[1] https://wiki.pine64.org/index.php/PinePhone_Pro

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 .../dts/rockchip/rk3399-pinephone-pro.dts     |  23 +---
 arch/arm64/boot/dts/rockchip/rk3399s.dtsi     | 123 ++++++++++++++++++
 2 files changed, 124 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399s.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 1a44582a49fb..5bc4ced81953 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -13,7 +13,7 @@
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/leds/common.h>
-#include "rk3399.dtsi"
+#include "rk3399s.dtsi"
 
 / {
 	model = "Pine64 PinePhone Pro";
@@ -456,27 +456,6 @@ mpu6500@68 {
 	};
 };
 
-&cluster0_opp {
-	opp04 {
-		status = "disabled";
-	};
-
-	opp05 {
-		status = "disabled";
-	};
-};
-
-&cluster1_opp {
-	opp06 {
-		opp-hz = /bits/ 64 <1500000000>;
-		opp-microvolt = <1100000 1100000 1150000>;
-	};
-
-	opp07 {
-		status = "disabled";
-	};
-};
-
 &io_domains {
 	bt656-supply = <&vcc1v8_dvp>;
 	audio-supply = <&vcca1v8_codec>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399s.dtsi
new file mode 100644
index 000000000000..e54f451af9f3
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399s.dtsi
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+#include "rk3399-base.dtsi"
+
+/ {
+	cluster0_opp: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <825000 825000 1250000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <825000 825000 1250000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <850000 850000 1250000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <925000 925000 1250000>;
+		};
+	};
+
+	cluster1_opp: opp-table-1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <825000 825000 1250000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <825000 825000 1250000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <825000 825000 1250000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <875000 875000 1250000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <950000 950000 1250000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1025000 1025000 1250000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1500000000>;
+			opp-microvolt = <1100000 1100000 1150000>;
+		};
+	};
+
+	gpu_opp_table: opp-table-2 {
+		compatible = "operating-points-v2";
+
+		opp00 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <825000 825000 1150000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <297000000>;
+			opp-microvolt = <825000 825000 1150000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <825000 825000 1150000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <875000 875000 1150000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <925000 925000 1150000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1100000 1100000 1150000>;
+		};
+	};
+};
+
+&cpu_l0 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l1 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l2 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l3 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_b0 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&cpu_b1 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
