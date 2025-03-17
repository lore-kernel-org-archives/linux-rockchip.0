Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B619C35FFC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 14:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeSIypcfwAHEKmeFjX4oeAsLuxlnvY2SvhHAKXPZ36U=; b=c4oQGfB9OqfLB1
	6CK8idHafLrX8ZkLwvZJ6ajLhc0UV3PsIdLd3dlMkAooFnMJJnQTOeAoWyg+S7LHKiabey3Hoh4tr
	CnJ4N+8NSKQsBPLV8tQXqJaHy3bc53phfHuBNyAC+fcqGVFR8/z2arjsif8h2Vkjvk1flOKtYrCct
	U7N9v6YwUPOYf3bLUgE+cHG3ienkJvJLQdDcJmmgypzpgpHNeVOVkXkMLX997f8vKNK5X/MyP9V+y
	YMbj8JV4A9/J9SGHGOeNOtvMobg+FNSDdnzoyzt/YzCkcZQ4ax51kkGsV8/DJft7S1/uKT1mCZsY/
	e4nQAOwxLyw4Xzn2aSyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuB8l-00000002r5m-2oOY;
	Mon, 17 Mar 2025 14:08:27 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuAra-00000002nzo-1hzx;
	Mon, 17 Mar 2025 13:50:43 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1742219431; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UVJJE+tjbnUIxulZvY/E/BhJjw044803BSUKld+Og+NmKsEAqLYM7tOZhT7ROcDJg3b+/Oan7P3X98/ASwSwZdRNoanPeXyuM/8txWlvEwglJ4SeLBoAbD+4eRI3Hga+WeEqu7Qu+9Xiq76K5iJJpz1KB1Tag2RZwHNbOKWdxb0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1742219431; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Qbn6B1G51bXuWasuo6BCw/mvgzgKowiOn9v8cpY6bEA=; 
	b=eVbZK80yUWB2Oq+6WI1Yf3uWoBOxLEBeJZy0exHxHXFQppzdwmzANEU7kDcXuOYcUvOlM7Ys6MtjctVjdFu8Zf3OXIgeqWkYi/ghEVFltnIegRZ4YBDXZah4sq0tqTUjoA3Vk/nbc9XYyj+PzDHVoMKWwn0Iq2g8Wy2IqUhO+BM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1742219431;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=Qbn6B1G51bXuWasuo6BCw/mvgzgKowiOn9v8cpY6bEA=;
	b=F+7wthBX91PTSEOHQAO5wAtjNu/Q6OulgY2cstSToMO/e81pVbh3x9Pk8aPStcnH
	YeCokNb+6zvE6G3GM8EayePT9ea6uIWTisEu8Nr4j1pzHLvKObcDFVtJromqXFmL7u4
	5Sjl3SWpXksUkPwKwrAjGdpU0NDiVbjA//x5qH4U=
Received: by mx.zohomail.com with SMTPS id 1742219429659280.0216892043486;
	Mon, 17 Mar 2025 06:50:29 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 17 Mar 2025 14:49:28 +0100
Subject: [PATCH v4 3/7] arm64: dts: rockchip: Add thermal nodes to RK3576
MIME-Version: 1.0
Message-Id: <20250317-rk3576-tsadc-upstream-v4-3-c5029ce55d74@collabora.com>
References: <20250317-rk3576-tsadc-upstream-v4-0-c5029ce55d74@collabora.com>
In-Reply-To: <20250317-rk3576-tsadc-upstream-v4-0-c5029ce55d74@collabora.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_065042_500172_A125F6A3 
X-CRM114-Status: GOOD (  13.10  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the TSADC node to the RK3576. Additionally, add everything the TSADC
needs to function, i.e. thermal zones, their trip points and maps, as
well as adjust the CPU cooling-cells property.

The polling-delay properties are set to 0 as we do have interrupts for
this TSADC on this particular SoC.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 164 ++++++++++++++++++++++++++++++-
 1 file changed, 162 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index ebb5fc8bb8b1363127b9d3782801c4a79b678a92..250dca23ff4fc1ab3bd47366829c5dd1738057fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/power/rockchip,rk3576-power.h>
 #include <dt-bindings/reset/rockchip,rk3576-cru.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "rockchip,rk3576";
@@ -113,9 +114,9 @@ cpu_l0: cpu@0 {
 			capacity-dmips-mhz = <485>;
 			clocks = <&scmi_clk SCMI_ARMCLK_L>;
 			operating-points-v2 = <&cluster0_opp_table>;
-			#cooling-cells = <2>;
 			dynamic-power-coefficient = <120>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		cpu_l1: cpu@1 {
@@ -127,6 +128,7 @@ cpu_l1: cpu@1 {
 			clocks = <&scmi_clk SCMI_ARMCLK_L>;
 			operating-points-v2 = <&cluster0_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		cpu_l2: cpu@2 {
@@ -138,6 +140,7 @@ cpu_l2: cpu@2 {
 			clocks = <&scmi_clk SCMI_ARMCLK_L>;
 			operating-points-v2 = <&cluster0_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		cpu_l3: cpu@3 {
@@ -149,6 +152,7 @@ cpu_l3: cpu@3 {
 			clocks = <&scmi_clk SCMI_ARMCLK_L>;
 			operating-points-v2 = <&cluster0_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		cpu_b0: cpu@100 {
@@ -159,9 +163,9 @@ cpu_b0: cpu@100 {
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_ARMCLK_B>;
 			operating-points-v2 = <&cluster1_opp_table>;
-			#cooling-cells = <2>;
 			dynamic-power-coefficient = <320>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		cpu_b1: cpu@101 {
@@ -173,6 +177,7 @@ cpu_b1: cpu@101 {
 			clocks = <&scmi_clk SCMI_ARMCLK_B>;
 			operating-points-v2 = <&cluster1_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		cpu_b2: cpu@102 {
@@ -184,6 +189,7 @@ cpu_b2: cpu@102 {
 			clocks = <&scmi_clk SCMI_ARMCLK_B>;
 			operating-points-v2 = <&cluster1_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		cpu_b3: cpu@103 {
@@ -195,6 +201,7 @@ cpu_b3: cpu@103 {
 			clocks = <&scmi_clk SCMI_ARMCLK_B>;
 			operating-points-v2 = <&cluster1_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
+			#cooling-cells = <2>;
 		};
 
 		idle-states {
@@ -436,6 +443,143 @@ psci {
 		method = "smc";
 	};
 
+	thermal_zones: thermal-zones {
+		/* sensor near the center of the SoC */
+		package_thermal: package-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 0>;
+
+			trips {
+				package_crit: package-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		/* sensor for cluster1 (big Cortex-A72 cores) */
+		bigcore_thermal: bigcore-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 1>;
+
+			trips {
+				bigcore_alert: bigcore-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				bigcore_crit: bigcore-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&bigcore_alert>;
+					cooling-device =
+						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		/* sensor for cluster0 (little Cortex-A53 cores) */
+		littlecore_thermal: littlecore-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 2>;
+
+			trips {
+				littlecore_alert: littlecore-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				littlecore_crit: littlecore-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&littlecore_alert>;
+					cooling-device =
+						<&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 3>;
+
+			trips {
+				gpu_alert: gpu-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpu_crit: gpu-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert>;
+					cooling-device =
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		npu_thermal: npu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 4>;
+
+			trips {
+				npu_crit: npu-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr_thermal: ddr-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 5>;
+
+			trips {
+				ddr_crit: ddr-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
@@ -1853,6 +1997,22 @@ saradc: adc@2ae00000 {
 			status = "disabled";
 		};
 
+		tsadc: tsadc@2ae70000 {
+			compatible = "rockchip,rk3576-tsadc";
+			reg = <0x0 0x2ae70000 0x0 0x400>;
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
+			clock-names = "tsadc", "apb_pclk";
+			assigned-clocks = <&cru CLK_TSADC>;
+			assigned-clock-rates = <2000000>;
+			resets = <&cru SRST_P_TSADC>, <&cru SRST_TSADC>;
+			reset-names = "tsadc-apb", "tsadc";
+			#thermal-sensor-cells = <1>;
+			rockchip,hw-tshut-temp = <120000>;
+			rockchip,hw-tshut-mode = <0>; /* tshut mode 0:CRU 1:GPIO */
+			rockchip,hw-tshut-polarity = <0>; /* tshut polarity 0:LOW 1:HIGH */
+		};
+
 		i2c9: i2c@2ae80000 {
 			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
 			reg = <0x0 0x2ae80000 0x0 0x1000>;

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
