From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] Revert "arm64: dts: rockchip: Add basic cpu frequencies for
 RK3368"
Date: Thu, 14 Sep 2017 10:51:43 +0200
Message-ID: <20170914085143.10112-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: romain.perier-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This reverts commit 6f2dea1f5fdb73eb2e050d9ebe990121d557e519.

Without accurate cpu regulators being set for boards this will wreak havoc
when cpufreq-dt begins to set new frequencies without adjusting the core
frequency.

Additionally the rk3368 has an unsolved issue in that it has two separate
cpu clusters with separate clock lines but only one cpu supply regulator
for both clusters, which causes even more problems.

While it seems that originally only one cluster was supposed to be active
at a time (big or little), talking with real users of the hardware
revealed that having all 8 cores accessible at 1.2GHz max is way more
liked than having 4 cores at 1.5GHz max. Such an approach needs changes
to cpufreq and/or opp though to control the two separate clock lines when
setting both clusters to the same frequencies.

In any case, having the OPPs in the dts at this point in time is
undesireable, so remove them again for now.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
My rk3368 board in my testfarm was offline for a bit, so I only realized
that we're missing cpu regulators a short while ago when the resurrected
board stopped booting once cpufreq took up its job.

 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 72 +-------------------------------
 1 file changed, 2 insertions(+), 70 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index e0518b4bc6c2..19fbaa5e7bdd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -113,8 +113,7 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKL>;
-			operating-points-v2 = <&cluster0_opp>;
+
 			#cooling-cells = <2>; /* min followed by max */
 		};
 
@@ -123,8 +122,6 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKL>;
-			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu_l2: cpu@2 {
@@ -132,8 +129,6 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKL>;
-			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu_l3: cpu@3 {
@@ -141,8 +136,6 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKL>;
-			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu_b0: cpu@100 {
@@ -150,8 +143,7 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKB>;
-			operating-points-v2 = <&cluster1_opp>;
+
 			#cooling-cells = <2>; /* min followed by max */
 		};
 
@@ -160,8 +152,6 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x101>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKB>;
-			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu_b2: cpu@102 {
@@ -169,8 +159,6 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x102>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKB>;
-			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu_b3: cpu@103 {
@@ -178,62 +166,6 @@
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x103>;
 			enable-method = "psci";
-			clocks = <&cru ARMCLKB>;
-			operating-points-v2 = <&cluster1_opp>;
-		};
-	};
-
-	cluster0_opp: opp-table0 {
-		compatible = "operating-points-v2";
-		opp-shared;
-
-		opp00 {
-			opp-hz = /bits/ 64 <312000000>;
-			opp-microvolt = <950000>;
-			clock-latency-ns = <40000>;
-		};
-		opp01 {
-			opp-hz = /bits/ 64 <408000000>;
-			opp-microvolt = <950000>;
-		};
-		opp02 {
-			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <950000>;
-		};
-		opp03 {
-			opp-hz = /bits/ 64 <816000000>;
-			opp-microvolt = <1025000>;
-		};
-		opp04 {
-			opp-hz = /bits/ 64 <1008000000>;
-			opp-microvolt = <1125000>;
-		};
-	};
-
-	cluster1_opp: opp-table1 {
-		compatible = "operating-points-v2";
-		opp-shared;
-
-		opp00 {
-			opp-hz = /bits/ 64 <312000000>;
-			opp-microvolt = <950000>;
-			clock-latency-ns = <40000>;
-		};
-		opp01 {
-			opp-hz = /bits/ 64 <408000000>;
-			opp-microvolt = <950000>;
-		};
-		opp02 {
-			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <950000>;
-		};
-		opp03 {
-			opp-hz = /bits/ 64 <816000000>;
-			opp-microvolt = <975000>;
-		};
-		opp04 {
-			opp-hz = /bits/ 64 <1008000000>;
-			opp-microvolt = <1050000>;
 		};
 	};
 
-- 
2.14.1
