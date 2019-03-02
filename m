From: Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v2] arm64: rk3399: Add capacity-dmips-mhz attributes
Date: Sat,  2 Mar 2019 13:10:30 +0000
Message-ID: <20190302131030.2091-1-marc.zyngier@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Lin Huang <hl@rock-chips.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The RK3399 has the interesting property to be a so called "big-little"
system, where not all the CPUs are equal (the A53s are much weaker
than the A72s).

So far, we're not telling the OS that there is such a difference in
processing capacity, and Linux assumes that they are equal. Too bad.

Let's tell the OS about this by using the capacity-dmips-mhz
property. The values used here are those used on the Juno platform,
which is quite similar. This leads to the scheduler knowing that
it can pack more tasks on the A72s, and leads to a better interactive
experience.

Tested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 6cc1c9fa4ea6..1e75d9050441 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -75,6 +75,7 @@
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			capacity-dmips-mhz = <485>;
 		};
 
 		cpu_l1: cpu@1 {
@@ -86,6 +87,7 @@
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			capacity-dmips-mhz = <485>;
 		};
 
 		cpu_l2: cpu@2 {
@@ -97,6 +99,7 @@
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			capacity-dmips-mhz = <485>;
 		};
 
 		cpu_l3: cpu@3 {
@@ -108,6 +111,7 @@
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			capacity-dmips-mhz = <485>;
 		};
 
 		cpu_b0: cpu@100 {
@@ -119,6 +123,7 @@
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			capacity-dmips-mhz = <1024>;
 		};
 
 		cpu_b1: cpu@101 {
@@ -130,6 +135,7 @@
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			capacity-dmips-mhz = <1024>;
 		};
 
 		idle-states {
-- 
2.20.1
