From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: remove wrongly added idle states on
 rk3368
Date: Wed,  1 Mar 2017 23:38:49 +0100
Message-ID: <20170301223849.13401-1-heiko@sntech.de>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

As reported by Lorenzo, the residency/latency values defined in the
idle-state for rk3368 "make no sense". When introducing them I
simply took the idle-state node from the vendor kernel in error
as I didn't look up if these values were sane in the first place.

Talking to people and determining why they were used in this way
showed that it was meant to make sure the cpu_suspend callback
got initialized which at the 3.10 time was somehow required even
for wfi-based idle handling.

Of course the generic arch_cpu_idle() now does wfi-based idle-handling
already, so there is no need for this.

Reported-by: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
This has been sitting ere for way to long :-(, but finally I got
to finish the change.

 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 49d1191..5471ace 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -107,23 +107,10 @@
 			};
 		};
 
-		idle-states {
-			entry-method = "psci";
-
-			cpu_sleep: cpu-sleep-0 {
-				compatible = "arm,idle-state";
-				arm,psci-suspend-param = <0x1010000>;
-				entry-latency-us = <0x3fffffff>;
-				exit-latency-us = <0x40000000>;
-				min-residency-us = <0xffffffff>;
-			};
-		};
-
 		cpu_l0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x0>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 
 			#cooling-cells = <2>; /* min followed by max */
@@ -133,7 +120,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x1>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 		};
 
@@ -141,7 +127,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x2>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 		};
 
@@ -149,7 +134,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x3>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 		};
 
@@ -157,7 +141,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x100>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 
 			#cooling-cells = <2>; /* min followed by max */
@@ -167,7 +150,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x101>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 		};
 
@@ -175,7 +157,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x102>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 		};
 
@@ -183,7 +164,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a53", "arm,armv8";
 			reg = <0x0 0x103>;
-			cpu-idle-states = <&cpu_sleep>;
 			enable-method = "psci";
 		};
 	};
-- 
2.6.4
