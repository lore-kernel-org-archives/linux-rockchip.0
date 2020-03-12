From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 4/4] arm64: dts: rockchip: remove clock-names property from 'generic-ohci' nodes
Date: Thu, 12 Mar 2020 18:14:41 +0100
Message-ID: <20200312171441.21144-4-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200312171441.21144-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff5d0000:
'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-names' is not a valid property name for usb_host nodes with
compatible string 'generic-ohci', so remove them.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ohci.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ----
 3 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index be5569b74..bd5f51d23 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -892,7 +892,6 @@
 		reg = <0x0 0xff350000 0x0 0x10000>;
 		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST>;
-		clock-names = "usbhost";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		power-domains = <&power PX30_PD_USB>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index ac08d2b70..54b3f4616 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -977,7 +977,6 @@
 		reg = <0x0 0xff5d0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index bbae92ef3..8aac201f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -360,8 +360,6 @@
 		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST0_ARB>,
 			 <&u2phy0>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -384,8 +382,6 @@
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST1>, <&cru HCLK_HOST1_ARB>,
 			 <&u2phy1>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.11.0
