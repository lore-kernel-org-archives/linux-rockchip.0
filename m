From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] ARM: dts: rockchip: swap clocks and clock-names values for i2s nodes
Date: Wed, 11 Mar 2020 17:25:23 +0100
Message-ID: <20200311162524.19748-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'i2s' nodes are manually verified.
In order to automate this process rockchip-i2s.txt
has to be converted to yaml. In the new setup dtbs_check with
rockchip-i2s.yaml expect clocks and clock-names values
in the same order. Fix this for some older Rockchip models.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-i2s.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk3066a.dtsi | 12 ++++++------
 arch/arm/boot/dts/rk3188.dtsi  |  4 ++--
 arch/arm/boot/dts/rk3288.dtsi  |  4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 3d1b02f45..f3fc92e57 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -160,10 +160,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 4>, <&dmac1_s 5>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>;
 		rockchip,playback-channels = <8>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
@@ -178,10 +178,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s1_bus>;
+		clocks = <&cru SCLK_I2S1>, <&cru HCLK_I2S1>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 6>, <&dmac1_s 7>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S1>, <&cru SCLK_I2S1>;
 		rockchip,playback-channels = <2>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
@@ -196,10 +196,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s2_bus>;
+		clocks = <&cru SCLK_I2S2>, <&cru HCLK_I2S2>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 9>, <&dmac1_s 10>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S2>, <&cru SCLK_I2S2>;
 		rockchip,playback-channels = <2>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 10ede65d9..651ea4e15 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -170,10 +170,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 6>, <&dmac1_s 7>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>;
 		rockchip,playback-channels = <2>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 8bcb4a516..f68dcde6c 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -964,10 +964,10 @@
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac_bus_s 0>, <&dmac_bus_s 1>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
 		rockchip,playback-channels = <8>;
-- 
2.11.0
