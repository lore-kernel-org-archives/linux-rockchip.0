From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/4] ARM: dts: rockchip: remove clock-names property from 'generic-ehci' nodes
Date: Thu, 12 Mar 2020 18:14:38 +0100
Message-ID: <20200312171441.21144-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30140000:
'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-names' is not a valid property name for usb_host nodes with
compatible string 'generic-ehci', so remove them.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ehci.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk322x.dtsi | 3 ---
 arch/arm/boot/dts/rk3288.dtsi | 2 --
 arch/arm/boot/dts/rv1108.dtsi | 1 -
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index a0acf2ef8..6503247e9 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -722,7 +722,6 @@
 		reg = <0x30080000 0x20000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy0>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -744,7 +743,6 @@
 		reg = <0x300c0000 0x20000>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST1>, <&u2phy1>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy1_otg>;
 		phy-names = "usb";
 		status = "disabled";
@@ -768,7 +766,6 @@
 		clocks = <&cru HCLK_HOST2>, <&u2phy1>;
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
-		clock-names = "usbhost", "utmi";
 		status = "disabled";
 	};
 
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 4745be518..485234f6a 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -601,7 +601,6 @@
 		reg = <0x0 0xff500000 0x0 0x100>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USBHOST0>;
-		clock-names = "usbhost";
 		phys = <&usbphy1>;
 		phy-names = "usb";
 		status = "disabled";
@@ -644,7 +643,6 @@
 		reg = <0x0 0xff5c0000 0x0 0x100>;
 		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HSIC>;
-		clock-names = "usbhost";
 		status = "disabled";
 	};
 
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index fda16f976..d33e606be 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -495,7 +495,6 @@
 		reg = <0x30140000 0x20000>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.11.0
