From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rename dwmmc node names to mmc
Date: Wed, 15 Jan 2020 19:52:44 +0100
Message-ID: <20200115185244.18149-2-jbx6244@gmail.com>
References: <20200115185244.18149-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200115185244.18149-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'dwmmc' nodes are manually verified.
In order to automate this process rockchip-dw-mshc.txt
has to be converted to yaml. In the new setup
rockchip-dw-mshc.yaml will inherit properties from
mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
'dwmmc' will no longer be a valid name for a node,
so change them all to 'mmc'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 07fe187cf..32e752312 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -879,7 +879,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@ff370000 {
+	sdmmc: mmc@ff370000 {
 		compatible = "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff370000 0x0 0x4000>;
 		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
@@ -894,7 +894,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@ff380000 {
+	sdio: mmc@ff380000 {
 		compatible = "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff380000 0x0 0x4000>;
 		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
@@ -909,7 +909,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff390000 {
+	emmc: mmc@ff390000 {
 		compatible = "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff390000 0x0 0x4000>;
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index fa0d55f1a..116f1900e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -584,7 +584,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@ff480000 {
+	sdmmc: mmc@ff480000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff480000 0x0 0x4000>;
 		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
@@ -599,7 +599,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff490000 {
+	emmc: mmc@ff490000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff490000 0x0 0x4000>;
 		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
@@ -612,7 +612,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@ff4a0000 {
+	sdio: mmc@ff4a0000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff4a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 91306ebed..acfaefdd3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -837,7 +837,7 @@
 		};
 	};
 
-	sdmmc: dwmmc@ff500000 {
+	sdmmc: mmc@ff500000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff500000 0x0 0x4000>;
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
@@ -849,7 +849,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@ff510000 {
+	sdio: mmc@ff510000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff510000 0x0 0x4000>;
 		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
@@ -861,7 +861,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff520000 {
+	emmc: mmc@ff520000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff520000 0x0 0x4000>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index fd8618801..a0df61c61 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -204,7 +204,7 @@
 		#clock-cells = <0>;
 	};
 
-	sdmmc: dwmmc@ff0c0000 {
+	sdmmc: mmc@ff0c0000 {
 		compatible = "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff0c0000 0x0 0x4000>;
 		max-frequency = <150000000>;
@@ -218,7 +218,7 @@
 		status = "disabled";
 	};
 
-	sdio0: dwmmc@ff0d0000 {
+	sdio0: mmc@ff0d0000 {
 		compatible = "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff0d0000 0x0 0x4000>;
 		max-frequency = <150000000>;
@@ -232,7 +232,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff0f0000 {
+	emmc: mmc@ff0f0000 {
 		compatible = "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff0f0000 0x0 0x4000>;
 		max-frequency = <150000000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index e62ea0e2b..ed654758c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -291,7 +291,7 @@
 		status = "disabled";
 	};
 
-	sdio0: dwmmc@fe310000 {
+	sdio0: mmc@fe310000 {
 		compatible = "rockchip,rk3399-dw-mshc",
 			     "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe310000 0x0 0x4000>;
@@ -307,7 +307,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@fe320000 {
+	sdmmc: mmc@fe320000 {
 		compatible = "rockchip,rk3399-dw-mshc",
 			     "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe320000 0x0 0x4000>;
-- 
2.11.0
