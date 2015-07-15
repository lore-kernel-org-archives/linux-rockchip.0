From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] ARM: dts: rockchip: add rk3288 arm-pmu irq affinity
Date: Wed, 15 Jul 2015 23:22:20 +0200
Message-ID: <3814250.tDdID2FGKL@diego>
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
Cc: Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The rk3288 uses spi irqs for the arm-pmu on individual cpu cores, so needs
the affinity to them defined.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 22e9221..2db91c9 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -78,6 +78,7 @@
 			     <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
 	};
 
 	cpus {
@@ -110,19 +111,19 @@
 			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 		};
-		cpu@501 {
+		cpu1: cpu@501 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a12";
 			reg = <0x501>;
 			resets = <&cru SRST_CORE1>;
 		};
-		cpu@502 {
+		cpu2: cpu@502 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a12";
 			reg = <0x502>;
 			resets = <&cru SRST_CORE2>;
 		};
-		cpu@503 {
+		cpu3: cpu@503 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a12";
 			reg = <0x503>;
-- 
2.1.4
