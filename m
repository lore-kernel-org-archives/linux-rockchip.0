From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] ARM: dts: rockchip: rename dwmmc node names to mmc
Date: Wed, 15 Jan 2020 19:52:43 +0100
Message-ID: <20200115185244.18149-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'dwmmc' nodes are manually verified.
In order to automate this process rockchip-dw-mshc.txt
has to be converted to yaml. In the new setup
rockchip-dw-mshc.yaml will inherit properties from
mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
'dwmmc' will no longer be a valid name for a node,
so change them all to 'mmc'

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk3036.dtsi | 6 +++---
 arch/arm/boot/dts/rk322x.dtsi | 6 +++---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++----
 arch/arm/boot/dts/rk3xxx.dtsi | 6 +++---
 arch/arm/boot/dts/rv1108.dtsi | 6 +++---
 5 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index c70182c5a..cf36e2519 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -224,7 +224,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@10214000 {
+	sdmmc: mmc@10214000 {
 		compatible = "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10214000 0x4000>;
 		clock-frequency = <37500000>;
@@ -238,7 +238,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@10218000 {
+	sdio: mmc@10218000 {
 		compatible = "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10218000 0x4000>;
 		max-frequency = <37500000>;
@@ -252,7 +252,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@1021c000 {
+	emmc: mmc@1021c000 {
 		compatible = "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x1021c000 0x4000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 340ed6ccb..4e90efdc9 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -662,7 +662,7 @@
 		};
 	};
 
-	sdmmc: dwmmc@30000000 {
+	sdmmc: mmc@30000000 {
 		compatible = "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30000000 0x4000>;
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
@@ -675,7 +675,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@30010000 {
+	sdio: mmc@30010000 {
 		compatible = "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30010000 0x4000>;
 		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
@@ -688,7 +688,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@30020000 {
+	emmc: mmc@30020000 {
 		compatible = "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30020000 0x4000>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 415c75f57..9beb66216 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -247,7 +247,7 @@
 		ports = <&vopl_out>, <&vopb_out>;
 	};
 
-	sdmmc: dwmmc@ff0c0000 {
+	sdmmc: mmc@ff0c0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
@@ -261,7 +261,7 @@
 		status = "disabled";
 	};
 
-	sdio0: dwmmc@ff0d0000 {
+	sdio0: mmc@ff0d0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_SDIO0>, <&cru SCLK_SDIO0>,
@@ -275,7 +275,7 @@
 		status = "disabled";
 	};
 
-	sdio1: dwmmc@ff0e0000 {
+	sdio1: mmc@ff0e0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_SDIO1>, <&cru SCLK_SDIO1>,
@@ -289,7 +289,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff0f0000 {
+	emmc: mmc@ff0f0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 97307a405..241f43e29 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -231,7 +231,7 @@
 		status = "disabled";
 	};
 
-	mmc0: dwmmc@10214000 {
+	mmc0: mmc@10214000 {
 		compatible = "rockchip,rk2928-dw-mshc";
 		reg = <0x10214000 0x1000>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
@@ -245,7 +245,7 @@
 		status = "disabled";
 	};
 
-	mmc1: dwmmc@10218000 {
+	mmc1: mmc@10218000 {
 		compatible = "rockchip,rk2928-dw-mshc";
 		reg = <0x10218000 0x1000>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
@@ -259,7 +259,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@1021c000 {
+	emmc: mmc@1021c000 {
 		compatible = "rockchip,rk2928-dw-mshc";
 		reg = <0x1021c000 0x1000>;
 		interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 5876690ee..1fd06e7cb 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -456,7 +456,7 @@
 		#reset-cells = <1>;
 	};
 
-	emmc: dwmmc@30110000 {
+	emmc: mmc@30110000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30110000 0x4000>;
 		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
@@ -468,7 +468,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@30120000 {
+	sdio: mmc@30120000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30120000 0x4000>;
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
@@ -480,7 +480,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@30130000 {
+	sdmmc: mmc@30130000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30130000 0x4000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0
