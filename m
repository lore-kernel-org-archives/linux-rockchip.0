Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55398CFC60D
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 07:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Pi6FQgz1yTdVjAXr69beua93L8cixMIHufQ1eCAlrc=; b=QR+0lo5GqjJFXJ
	B0yOgRdmjoHVQy1c+l4xJJbCFUdD1G6zmWe+8msa5rQA8VYzBw3v4Dhr8FTeYFTNlvmbBfqW3gwgQ
	hVblKVYmJ9upShhW0m/Cibg+hxD+Olm0XNBGR+4EEbtowvtyG05sXXBriVYu6mkVdBP2WnuRl8LHy
	0rDGwuP5RRIGSY/TscBHxj5lhXJY4axnfutJTwgjEMjR4jeCnz4I60sM4RhlNXnUnYzfkm/SvRUGy
	fE5CwHwePp5rXKNQ6pgs0VVO6JZdo8xhXUWO1n/wthfDo86TPUBM1T/dE9c3j8sj8xfr6Ja/Unzzt
	HJ7QMWZRrSWY14yVXAXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szAI8-0000000Fa3K-0Yzc;
	Fri, 11 Oct 2024 07:42:28 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szAGi-0000000FZqz-1ChY;
	Fri, 11 Oct 2024 07:41:02 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728632458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zgPNIi6CDgKhY74swwH3oMJQEJfWMJ7I6Zq45/vGuHc=;
	b=U90wD8PtS8apddtBdPM0KI7newobs3XrHYUnND230di8JerkUh4BmJBrsdWeZcVktSWqV7
	H9h1uh1dGJhQB4PBSJySCV9HDS8BCwctHnCQmFi9FcW/+bogYY8OG6d+lcxiKA8+e7Y0Ct
	rrk69/xnmly2WT+WaMBXH6AxBTqsMGy6CS6SJUTRYLhezuWAiIFUaYxeeqnfI0g9teH6Lx
	Nf6yEs43NZDpzxrr1021tLCKHDVV3TppqcNr6UoI5rbHULEzXfHLaO2KaZZndJm6yt0gDQ
	1hY2XFMTEjVoFseCC9DLltt/tm5De8ha0oXewKtGkqe3NDH8RDZeLP8q6Id8VA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Add dtsi file for RK3399S SoC variant
Date: Fri, 11 Oct 2024 09:40:51 +0200
Message-Id: <c32622e4a6897378d9df81c8c3eda1bdb9211e0b.1728632052.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_004100_651495_826900A7 
X-CRM114-Status: GOOD (  15.71  )
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

No functional changes are introduced, which was validated by decompiling and
comparing the affected dtb file before and after these changes.

[1] https://wiki.pine64.org/index.php/PinePhone_Pro

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    Changes in v2:
      - Renamed the new RK3399S SoC variant dtsi file to rk3399-s.dtsi,
        as suggested by Heiko, [2] which has bothered me too, as a rather
        unnecessary file naming inconsistency
      - Adjusted the patch description accordingly, by removing the note
        about the file naming inconsistency...  yay! :)
      - Validated the introduced changes again, in the same way
    
    Link to v1: https://lore.kernel.org/linux-rockchip/59c524a9a12465c21e01b779b42749fae148c41d.1728482151.git.dsimic@manjaro.org/T/#u
    
    [2] https://lore.kernel.org/linux-rockchip/46729153.fMDQidcC6G@diego/

 .../dts/rockchip/rk3399-pinephone-pro.dts     |  23 +---
 arch/arm64/boot/dts/rockchip/rk3399-s.dtsi    | 123 ++++++++++++++++++
 2 files changed, 124 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-s.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 1a44582a49fb..eee6cfb6de01 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -13,7 +13,7 @@
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/leds/common.h>
-#include "rk3399.dtsi"
+#include "rk3399-s.dtsi"
 
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
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
new file mode 100644
index 000000000000..e54f451af9f3
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
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
