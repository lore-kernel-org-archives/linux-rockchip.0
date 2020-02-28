From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/3] ARM: dts: rockchip: add sram to bus_intmem nodename for rv1108
Date: Fri, 28 Feb 2020 16:53:52 +0100
Message-ID: <20200228155354.27206-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'
arch/arm/boot/dts/rv1108-evb.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'

Fix this error by adding sram to the bus_intmem nodename
in rv1108.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 9bb109d66..c3621b3e6 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -102,7 +102,7 @@
 		};
 	};
 
-	bus_intmem@10080000 {
+	bus_intmem: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x2000>;
 		#address-cells = <1>;
-- 
2.11.0
