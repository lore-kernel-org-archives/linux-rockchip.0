From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: [PATCH] ARM: dts: rockchip: move uart2 pinctrl settings to each dts
 for rk3288
Date: Fri, 20 Mar 2020 00:13:39 +0900
Message-ID: <20200319151339.17909-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch removes conflicted pinctrl settings uart2 and pwm 2/3
from common rk3288.dtsi and moves exist uart2 pinctrl settings
into each rk3288*.dts files.

  - pwm2_pin  : use GPIO7_C6
  - pwm3_pin  : use GPIO7_C7
  - uart2_xfer: use GPIO7_C6, GPIO7_C7

Currently uart2 rk3288 user is the following:

  - rk3288-evb.dtsi:&uart2 {
  - rk3288-firefly-reload.dts:&uart2 {
  - rk3288-firefly.dtsi:&uart2 {
  - rk3288-miqi.dts:&uart2 {
  - rk3288-phycore-rdk.dts:&uart2 {
  - rk3288-popmetal.dts:&uart2 {
  - rk3288-r89.dts:&uart2 {
  - rk3288-rock2-square.dts:&uart2 {
  - rk3288-tinker.dtsi:&uart2 {
  - rk3288-veyron.dtsi:&uart2 {
  - rk3288-vyasa.dts:&uart2 {

And no one is using pwm2 nor pwm3.

Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
---
 arch/arm/boot/dts/rk3288-evb.dtsi           | 2 ++
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 2 ++
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 2 ++
 arch/arm/boot/dts/rk3288-miqi.dts           | 2 ++
 arch/arm/boot/dts/rk3288-phycore-rdk.dts    | 2 ++
 arch/arm/boot/dts/rk3288-popmetal.dts       | 2 ++
 arch/arm/boot/dts/rk3288-r89.dts            | 2 ++
 arch/arm/boot/dts/rk3288-rock2-square.dts   | 2 ++
 arch/arm/boot/dts/rk3288-tinker.dtsi        | 2 ++
 arch/arm/boot/dts/rk3288-veyron.dtsi        | 2 ++
 arch/arm/boot/dts/rk3288-vyasa.dts          | 2 ++
 arch/arm/boot/dts/rk3288.dtsi               | 6 ------
 12 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 018802df4c0e..74091f831ecf 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -285,6 +285,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index 8c38bda21a7c..b0c976c8e35b 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -283,6 +283,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 5e0a19004e46..1632cc083c12 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -532,6 +532,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index c41d012c8850..2c0ed37fde80 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -379,6 +379,8 @@ &tsadc {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rk3288-phycore-rdk.dts
index 1e33859de484..6532c1ac43cd 100644
--- a/arch/arm/boot/dts/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rk3288-phycore-rdk.dts
@@ -244,6 +244,8 @@ &uart0 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk3288-popmetal.dts
index 6a51940398b5..f18306bd9e6e 100644
--- a/arch/arm/boot/dts/rk3288-popmetal.dts
+++ b/arch/arm/boot/dts/rk3288-popmetal.dts
@@ -481,6 +481,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index a258c7ae5329..02d2f5cfe201 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -340,6 +340,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index cdcdc921ee09..a44290e882be 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -264,6 +264,8 @@ &spdif {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index acfaa12ec239..0327119f71b4 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -500,6 +500,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 54a6838d73f5..baa44d00e49a 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -412,6 +412,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index 385dd59393e1..aa50cdc7f839 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -398,6 +398,8 @@ &tsadc {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 0cd88774db95..4c1f8cabb5eb 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -450,8 +450,6 @@ uart2: serial@ff690000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
-		pinctrl-names = "default";
-		pinctrl-0 = <&uart2_xfer>;
 		status = "disabled";
 	};
 
@@ -706,8 +704,6 @@ pwm2: pwm@ff680020 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680020 0x0 0x10>;
 		#pwm-cells = <3>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwm2_pin>;
 		clocks = <&cru PCLK_RKPWM>;
 		clock-names = "pwm";
 		status = "disabled";
@@ -717,8 +713,6 @@ pwm3: pwm@ff680030 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680030 0x0 0x10>;
 		#pwm-cells = <3>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwm3_pin>;
 		clocks = <&cru PCLK_RKPWM>;
 		clock-names = "pwm";
 		status = "disabled";
-- 
2.25.1
