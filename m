From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/3] ARM: dts: rockchip: add missing model properties
Date: Wed,  4 Mar 2020 08:40:49 +0100
Message-ID: <20200304074051.8742-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: /: 'model'
is a required property
arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml: /: 'model'
is a required property
arch/arm/boot/dts/rk3288-r89.dt.yaml: /: 'model'
is a required property

Fix this error by adding the missing model properties to
the involved dts files.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/root-node.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk3288-evb-act8846.dts | 1 +
 arch/arm/boot/dts/rk3288-evb-rk808.dts   | 1 +
 arch/arm/boot/dts/rk3288-r89.dts         | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-evb-act8846.dts b/arch/arm/boot/dts/rk3288-evb-act8846.dts
index 80080767c..be695b8c1 100644
--- a/arch/arm/boot/dts/rk3288-evb-act8846.dts
+++ b/arch/arm/boot/dts/rk3288-evb-act8846.dts
@@ -4,6 +4,7 @@
 #include "rk3288-evb.dtsi"
 
 / {
+	model = "Rockchip RK3288 EVB ACT8846";
 	compatible = "rockchip,rk3288-evb-act8846", "rockchip,rk3288";
 
 	vcc_lcd: vcc-lcd {
diff --git a/arch/arm/boot/dts/rk3288-evb-rk808.dts b/arch/arm/boot/dts/rk3288-evb-rk808.dts
index 167882096..42384ea4c 100644
--- a/arch/arm/boot/dts/rk3288-evb-rk808.dts
+++ b/arch/arm/boot/dts/rk3288-evb-rk808.dts
@@ -4,6 +4,7 @@
 #include "rk3288-evb.dtsi"
 
 / {
+	model = "Rockchip RK3288 EVB RK808";
 	compatible = "rockchip,rk3288-evb-rk808", "rockchip,rk3288";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index a6ffc381a..a258c7ae5 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -9,6 +9,7 @@
 #include "rk3288.dtsi"
 
 / {
+	model = "Netxeon R89";
 	compatible = "netxeon,r89", "rockchip,rk3288";
 
 	memory@0 {
-- 
2.11.0
