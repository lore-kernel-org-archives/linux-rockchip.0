From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v1 1/2] ARM: dts: rockchip: add #phy-cells to all usb2-phy nodes
Date: Wed,  1 Apr 2020 09:37:24 +0200
Message-ID: <20200401073725.6063-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files for Rockchip with 'usb2-phy' subnodes
are manually verified. In order to automate this process
phy-rockchip-inno-usb2.txt has been converted to yaml.
'usb2-phy' nodes are now checked by:
'phy-rockchip-inno-usb2.yaml' and 'phy-provider.yaml'.
'#phy-cells' is now required for all usb2-phy nodes,
so add them.

make -k ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
phy/phy-rockchip-inno-usb2.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 ++
 arch/arm/boot/dts/rv1108.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 06172ebbf..9ad32651a 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -214,6 +214,7 @@
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy0";
 			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy0_otg: otg-port {
@@ -241,6 +242,7 @@
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy1";
 			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy1_otg: otg-port {
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index f9cfe2c80..b453f8d0f 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -269,9 +269,10 @@
 			reg = <0x100 0x0c>;
 			clocks = <&cru SCLK_USBPHY>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
 			clock-output-names = "usbphy";
 			rockchip,usbgrf = <&usbgrf>;
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy_otg: otg-port {
-- 
2.11.0
