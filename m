From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: remove clock-names property from 'generic-ehci' nodes
Date: Thu, 12 Mar 2020 18:14:40 +0100
Message-ID: <20200312171441.21144-3-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200312171441.21144-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff5c0000:
'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-names' is not a valid property name for usb_host nodes with
compatible string 'generic-ehci', so remove them.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ehci.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ----
 4 files changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 1bbed660f..be5569b74 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -881,7 +881,6 @@
 		reg = <0x0 0xff340000 0x0 0x10000>;
 		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST>;
-		clock-names = "usbhost";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		power-domains = <&power PX30_PD_USB>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index d9490f417..ac08d2b70 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -967,7 +967,6 @@
 		reg = <0x0 0xff5c0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 2079e877a..1ebb0eef4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -513,7 +513,6 @@
 		reg = <0x0 0xff500000 0x0 0x100>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>;
-		clock-names = "usbhost";
 		status = "disabled";
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 63355ba7c..bbae92ef3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -349,8 +349,6 @@
 		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST0_ARB>,
 			 <&u2phy0>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -375,8 +373,6 @@
 		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST1>, <&cru HCLK_HOST1_ARB>,
 			 <&u2phy1>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.11.0
