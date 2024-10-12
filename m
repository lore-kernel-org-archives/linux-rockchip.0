Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B921ACF256E
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 17:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUngsSI+FNyJcrS2wc81ZjLRayLpYaW/U0T/GgpwJ4I=; b=dRazHwM/q5wcFw
	UrQGbsO+FzcTF3rvUq+DrVO6M2sukAxlO44B0aCmcuEi1FJRw+tai01/WlD+4+Wq/pg3kbBxSt460
	4LrrsF7EteDYGxEUOmHy5+/7sn5bcLBn8hCTUdvX7iXIKZQkFZt+KAh7vnD8oJIyLdzMQ/8KO5+OA
	Q2W5t/QSqKeCIVMz5+ooqmK5zLO1h4+O3H0cbtgLBZ0cKy/k/3ePYcbzJtJlDVOcqi3hmU9na6p8h
	R/EDasZBc0DqVS+x2AfIvCvowwLAj5I326e2Z4OKuoGEv3skvleFLG8J0bf5VnyHTGSItVSc5AoAl
	LlAPtUtliGSt6n0sa0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szfdL-00000001XBX-47pO;
	Sat, 12 Oct 2024 17:10:27 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szfXs-00000001WWi-3kIy;
	Sat, 12 Oct 2024 17:04:50 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728752685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NkFi1alX8VKhMMp4lk0RnObaxIM5UqHYyrinaViMWH4=;
	b=kOJfxRjhg+r6Q4DsVhgJ0ATtY1OjnTfCWHk+X400hycAHer+CZP8aMHtma4+f+EoDEok1h
	hRFobk9R+4sAwhtygBzkBVsLCuXpwgRlV5ATIH8isPs1fA/9nz7H24ZlXF6IW60R1F/l8B
	sse8boHc8jkpe+n52oOwerYs0HWlkpNyXH/daUv0xk9wvP5/qeayac8JU7l3AMFUFydFMZ
	bRSBX1whpvCd8Y7SmyW6dZ9mNAiVTNqC5gRBBkiHeeF+sS4C2pw9KEenM/+4Kd4us6iM/g
	zjsa5u5SLUpmFFBPKD153EouHj4naf3U1kkgnpmoh+WCBkdiUX1YLT3eVoTFFg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	TL Lim <tllim@pine64.org>,
	Marek Kraus <gamiee@pine64.org>,
	Tom Cubie <tom@radxa.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add new SoC dtsi for the RK3566T variant
Date: Sat, 12 Oct 2024 19:04:36 +0200
Message-Id: <95fc64aaf6d3ac7124926bcb0c664406b4e5fe3d.1728752527.git.dsimic@manjaro.org>
In-Reply-To: <cover.1728752527.git.dsimic@manjaro.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_100449_396903_652024A6 
X-CRM114-Status: GOOD (  19.70  )
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

Add new SoC dtsi file for the RK3566T variant of the Rockchip RK3566 SoC.
The difference between the RK3566T variant and the "full-fat" RK3566 variant
is in fewer supported CPU and GPU OPPs on the RK3566T, and in the absence of
a functional NPU, which we currently don't have to worry about.

Examples of the boards based on the RK3566T include the Pine64 Quartz64 Zero
SBC, [2] the Radxa ROCK 3C and the Radxa ZERO 3E/3W SBCs.  Unfortunately,
Radxa doesn't mention the use of RK3566T officially, but its official SBC
specifications do state that the maximum frequency for the Cortex-A55 cores
on those SBCs is lower than the "full-fat" RK3566's 1.8 GHz, which makes
spotting the presence of the RK3566T SoC variant rather easy. [3][4][5]  An
additional, helpful cue is that Radxa handles the CPU and GPU OPPs for the
RK3566T variant separately in its downstream kernel. [6]

The CPU and GPU OPPs supported on the RK3566T SoC variant are taken from the
vendor kernel source, [1] which uses the values of the "opp-supported-hw" OPP
properties to determine which ones are supported on a particular SoC variant.
The actual values of the "opp-supported-hw" properties make it rather easy
to see what OPPs are supported on the RK3566T SoC variant, but that, rather
unfortunately, clashes with the maximum frequencies advertised officially
for the Cortex-A55 CPU cores on the above-mentioned SBCs. [2][3][4][5]  The
vendor kernel source indicates that the maximum frequency for the CPU cores
is 1.4 GHz, while the SBC specifications state that to be 1.6 GHz.  Unless
that discrepancy is resolved somehow, let's take the safe approach and use
the lower maximum frequency for the CPU cores.

Update the dts files of the currently supported RK3566T-based boards to use
the new SoC dtsi for the RK3566T variant.  This actually takes the CPU cores
and the GPUs found on these boards out of their earlier overclocks, but it
also means that the officially advertised specifications [2][3][4][5] of the
highest supported frequencies for the Cortex-A55 CPU cores on these boards
may actually be wrong, as already explained above.

The correctness of the introduced changes was validated by decompiling and
comparing all affected board dtb files before and after these changes.

[1] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
[2] https://wiki.pine64.org/wiki/Quartz64
[3] https://dl.radxa.com/rock3/docs/hw/3c/radxa_rock3c_product_brief.pdf
[4] https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_product_brief.pdf
[5] https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_product_brief.pdf
[6] https://github.com/radxa/kernel/commit/2dfd51da472e7ebb5ef0d3db78f902454af826b8

Cc: TL Lim <tllim@pine64.org>
Cc: Marek Kraus <gamiee@pine64.org>
Cc: Tom Cubie <tom@radxa.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>
Helped-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Helped-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     |  2 +-
 .../boot/dts/rockchip/rk3566-rock-3c.dts      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566t.dtsi     | 90 +++++++++++++++++++
 3 files changed, 92 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566t.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index de390d92c35e..1ee5d96a46a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -3,7 +3,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
-#include "rk3566.dtsi"
+#include "rk3566t.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index f2cc086e5001..9a8f4f774dbc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
-#include "rk3566.dtsi"
+#include "rk3566t.dtsi"
 
 / {
 	model = "Radxa ROCK 3C";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566t.dtsi b/arch/arm64/boot/dts/rockchip/rk3566t.dtsi
new file mode 100644
index 000000000000..cd89bd3b125b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566t.dtsi
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include "rk3566-base.dtsi"
+
+/ {
+	cpu0_opp_table: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <850000 850000 1150000>;
+			clock-latency-ns = <40000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <850000 850000 1150000>;
+			clock-latency-ns = <40000>;
+		};
+
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <850000 850000 1150000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+
+		opp-1104000000 {
+			opp-hz = /bits/ 64 <1104000000>;
+			opp-microvolt = <900000 900000 1150000>;
+			clock-latency-ns = <40000>;
+		};
+
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1025000 1025000 1150000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	gpu_opp_table: opp-table-1 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <850000 850000 1000000>;
+		};
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <850000 850000 1000000>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <850000 850000 1000000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <900000 900000 1000000>;
+		};
+
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <950000 950000 1000000>;
+		};
+	};
+};
+
+&cpu0 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
+&cpu1 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
+&cpu2 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
+&cpu3 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
