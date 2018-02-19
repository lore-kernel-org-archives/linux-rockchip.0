From: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Subject: [PATCH v2] arm64: dts: rockchip: add OPPs for rk3368-lion
Date: Mon, 19 Feb 2018 08:26:26 +0100
Message-ID: <20180219072626.31874-1-klaus.goger@theobroma-systems.com>
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
Cc: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This adds CPU operation points for the RK3368. We only add them to the
the RK3368-uQ7 SoM (Lion) because patches for the SoC where reverted
in the past.
commit 6354a06cbaa8 ("Revert "arm64: dts: rockchip: Add basic cpu
frequencies for RK3368"")

Signed-off-by: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>

---

 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi | 80 +++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 1315972412df..a0bcf35b1605 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -11,6 +11,70 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	cluster0_opp: opp-table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <950000 950000 1350000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <950000 950000 1350000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <975000 975000 1350000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <1050000 1050000 1350000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1150000 1150000 1350000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1300000 1300000 1350000>;
+			turbo-mode;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <1300000 1300000 1350000>;
+			turbo-mode;
+		};
+	};
+
+	cluster1_opp: opp-table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <950000 950000 1350000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <950000 950000 1350000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <1025000 1025000 1350000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <1125000 1125000 1350000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1225000 1225000 1350000>;
+		};
+	};
+
 	ext_gmac: gmac-clk {
 		compatible = "fixed-clock";
 		clock-frequency = <125000000>;
@@ -105,35 +169,51 @@
 };
 
 &cpu_l0 {
+	clocks = <&cru ARMCLKL>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster1_opp>;
 };
 
 &cpu_l1 {
+	clocks = <&cru ARMCLKL>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster1_opp>;
 };
 
 &cpu_l2 {
+	clocks = <&cru ARMCLKL>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster1_opp>;
 };
 
 &cpu_l3 {
+	clocks = <&cru ARMCLKL>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster1_opp>;
 };
 
 &cpu_b0 {
+	clocks = <&cru ARMCLKB>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster0_opp>;
 };
 
 &cpu_b1 {
+	clocks = <&cru ARMCLKB>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster0_opp>;
 };
 
 &cpu_b2 {
+	clocks = <&cru ARMCLKB>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster0_opp>;
 };
 
 &cpu_b3 {
+	clocks = <&cru ARMCLKB>;
 	cpu-supply = <&vdd_cpu>;
+	operating-points-v2 = <&cluster0_opp>;
 };
 
 &emmc {
-- 
2.11.0
