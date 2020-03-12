From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 2/2] ARM: dts: rockchip: swap clocks and clock-names values for spdif nodes
Date: Thu, 12 Mar 2020 18:22:40 +0100
Message-ID: <20200312172240.21362-2-jbx6244@gmail.com>
References: <20200312172240.21362-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200312172240.21362-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'spdif' nodes are manually verified.
In order to automate this process rockchip-spdif.txt
has to be converted to yaml. In the new setup dtbs_check with
rockchip-spdif.yaml expect clocks and clock-names values
in the same order. Fix this for some older Rockchip models.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk3188.dtsi | 4 ++--
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 24abf214a..2298a8d84 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -182,8 +182,8 @@
 		compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
 		reg = <0x1011e000 0x2000>;
 		#sound-dai-cells = <0>;
-		clock-names = "hclk", "mclk";
-		clocks = <&cru HCLK_SPDIF>, <&cru SCLK_SPDIF>;
+		clocks = <&cru SCLK_SPDIF>, <&cru HCLK_SPDIF>;
+		clock-names = "mclk", "hclk";
 		dmas = <&dmac1_s 8>;
 		dma-names = "tx";
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 485234f6a..07681f1f0 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -944,8 +944,8 @@
 		compatible = "rockchip,rk3288-spdif", "rockchip,rk3066-spdif";
 		reg = <0x0 0xff8b0000 0x0 0x10000>;
 		#sound-dai-cells = <0>;
-		clock-names = "hclk", "mclk";
-		clocks = <&cru HCLK_SPDIF8CH>, <&cru SCLK_SPDIF8CH>;
+		clocks = <&cru SCLK_SPDIF8CH>, <&cru HCLK_SPDIF8CH>;
+		clock-names = "mclk", "hclk";
 		dmas = <&dmac_bus_s 3>;
 		dma-names = "tx";
 		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0
