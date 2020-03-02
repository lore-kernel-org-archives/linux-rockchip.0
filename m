From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] ARM: dts: add bus to rockchip amba nodenames
Date: Mon,  2 Mar 2020 16:30:46 +0100
Message-ID: <20200302153047.17101-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: amba: $nodename:0:
'amba' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

AMBA is a open standard for the connection and
management of functional blocks in a SoC.
It's compatible with 'simple-bus', so fix this error
by adding 'bus' to all Rockchip 'amba' nodes.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/simple-bus.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index b62138563..c28d293df 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -54,7 +54,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index dac930be3..b98579035 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -95,7 +95,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 039e8aa70..8bcb4a516 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -155,7 +155,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 241f43e29..9438332b8 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -32,7 +32,7 @@
 		spi1 = &spi1;
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index c3621b3e6..59295babd 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -85,7 +85,7 @@
 		#clock-cells = <0>;
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.11.0
