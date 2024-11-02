Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78232E6F09A
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Nov 2024 03:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0XW++UuZzoIDPw4GF9fmH55HaTdvNunittO64C+bIw=; b=o8jnh4AHWAhcAJ
	9lgream8vECI4MoS9yMQi15t/MCyZyLO10iewqdJW7nZW4kZy6d5GV6QNLOpsIglV3FLcqf8jZstO
	2aLPbe5mR/+ffr5qkYlMJul1+VHbTfyPlkXm1s7uovd0nsOGhe+OkCdkckobOhYF2+IAdGWEfXD/2
	F642dfFNxaVz5QWcgxWQ7ASQTZx+U/XlICdxcPXZZn8TwnppZQAQa/xQT45dWoHNwLIIUIJ5qPMBw
	QDg9+MvPrdqi0VvUVlpboO4sz8KhFEAfk08JHsdfGUE6X17GN7bVJLAvs5kHWzp6MD+TmYqNOFELM
	y1sznhCCEzPccINNcOhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t74cb-00000008wA8-0II8;
	Sat, 02 Nov 2024 03:16:17 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t74W0-00000008vSz-27z1;
	Sat, 02 Nov 2024 03:09:31 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1730516960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TtV456hiHBEE5hovxeMqN3o5TuxazmsArwN78vbz390=;
	b=wDXukHfA6HNYzvsoYYpXn/JZDhwNKpoHYwofC33ZNLCvrGMaGB47O6P/sxfUIlABRSaKTt
	uR86CFRY1WKZhzKUoNbXHFyEzxVJNJ9uvEMtk0KrBpGIlfJ6ZAKdMz8V9vCrG5SbNFLlo0
	JuEeZKE5b2cUZgA9WQOPCVQzfTYVSEBKoG+XfJMsXikMj86QVM2ggA1c5gBWbyj77u+Lao
	cRj/82B+DObNtVy+/ayy7WjjChgoEHA5csxo8eOgm/81HVi2kU3eqnTaUuynEjScVpSOlg
	oZqy32vbuL8I5E8Z5NM6cqg/iHTC/cOaz7neYC91XIf7W76jF+LmfTadjNWnnw==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	didi.debian@cknow.org,
	TL Lim <tllim@pine64.org>,
	Marek Kraus <gamiee@pine64.org>,
	Tom Cubie <tom@radxa.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add new SoC dtsi for the RK3566T variant
Date: Sat,  2 Nov 2024 04:09:01 +0100
Message-Id: <a85b9bdc176c542fea261fe7ef37697aebb42e8b.1730516702.git.dsimic@manjaro.org>
In-Reply-To: <cover.1730516702.git.dsimic@manjaro.org>
References: <cover.1730516702.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_200928_873797_A4A76A2B 
X-CRM114-Status: GOOD (  20.90  )
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
SBC, [1] which is yet to be supported, the Radxa ROCK 3C, and the Radxa ZERO
3E/3W SBCs, which are both already supported.  Though, Radxa doesn't mention
the use of RK3566T officially, but its official SBC specifications do state
that the maximum frequency for the Cortex-A55 cores on those SBCs is lower
than the "full-fat" RK3566's 1.8 GHz, which makes spotting the presence of
the RK3566T SoC variant rather easy. [2][3][4]  An additional, helpful cue
is that Radxa handles the CPU and GPU OPPs for the RK3566T variant separately
in its downstream kernel source. [5]

The CPU and GPU OPPs supported on the RK3566T SoC variant are taken from the
vendor kernel source, [6] which uses the values of the "opp-supported-hw" OPP
properties to determine which ones are supported on a particular SoC variant.
The actual values of the "opp-supported-hw" properties make it rather easy
to see what OPPs are supported on the RK3566T SoC variant, but that, rather
unfortunately, clashes with the maximum frequencies advertised officially
for the Cortex-A55 CPU cores on the above-mentioned SBCs. [1][2][3][4]  The
vendor kernel source indicates that the maximum frequency for the CPU cores
is 1.4 GHz, while the SBC specifications state that to be 1.6 GHz.  Until
that discrepancy is resolved somehow, let's take the safe approach and use
the lower maximum frequency for the CPU cores.

Update the dts files of the currently supported RK3566T-based boards to use
the new SoC dtsi for the RK3566T variant.  This actually takes the CPU cores
and the GPUs found on these boards out of their earlier overclocks, but it
also means that the officially advertised specifications [1][2][3][4] of the
highest supported frequencies for the Cortex-A55 CPU cores on these boards
may actually be wrong, as already explained above.

The correctness of the introduced changes was validated by decompiling and
comparing all affected board dtb files before and after these changes.

[1] https://wiki.pine64.org/wiki/Quartz64
[2] https://dl.radxa.com/rock3/docs/hw/3c/radxa_rock3c_product_brief.pdf
[3] https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_product_brief.pdf
[4] https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_product_brief.pdf
[5] https://github.com/radxa/kernel/commit/2dfd51da472e7ebb5ef0d3db78f902454af826b8
[6] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

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
