From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2 1/2] dt-bindings: media: convert rockchip rga bindings to yaml
Date: Fri,  3 Apr 2020 15:06:06 +0200
Message-ID: <20200403130607.6138-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org
Cc: ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files for Rockchip with 'rga' nodes
are manually verified. In order to automate this process
rockchip-rga.txt has to be converted to yaml.

Changed:
  Add missing reg property

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
Changes v2:
  Change MAINTAINERS
---
 .../devicetree/bindings/media/rockchip-rga.txt     | 34 ----------
 .../devicetree/bindings/media/rockchip-rga.yaml    | 78 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 3 files changed, 79 insertions(+), 35 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.txt
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.txt b/Documentation/devicetree/bindings/media/rockchip-rga.txt
deleted file mode 100644
index c53a8e513..000000000
--- a/Documentation/devicetree/bindings/media/rockchip-rga.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-device-tree bindings for rockchip 2D raster graphic acceleration controller (RGA)
-
-RGA is a standalone 2D raster graphic acceleration unit. It accelerates 2D
-graphics operations, such as point/line drawing, image scaling, rotation,
-BitBLT, alpha blending and image blur/sharpness.
-
-Required properties:
-- compatible: value should be one of the following
-  "rockchip,rk3228-rga", "rockchip,rk3288-rga": for Rockchip RK3228
-  "rockchip,rk3288-rga": for Rockchip RK3288
-  "rockchip,rk3399-rga": for Rockchip RK3399
-
-- interrupts: RGA interrupt specifier.
-
-- clocks: phandle to RGA sclk/hclk/aclk clocks
-
-- clock-names: should be "aclk", "hclk" and "sclk"
-
-- resets: Must contain an entry for each entry in reset-names.
-  See ../reset/reset.txt for details.
-- reset-names: should be "core", "axi" and "ahb"
-
-Example:
-SoC-specific DT entry:
-	rga: rga@ff680000 {
-		compatible = "rockchip,rk3399-rga";
-		reg = <0xff680000 0x10000>;
-		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
-		clock-names = "aclk", "hclk", "sclk";
-
-		resets = <&cru SRST_RGA_CORE>, <&cru SRST_A_RGA>, <&cru SRST_H_RGA>;
-		reset-names = "core, "axi", "ahb";
-	};
diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
new file mode 100644
index 000000000..3b110b574
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip-rga.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip 2D raster graphic acceleration controller (RGA)
+
+description:
+  RGA is a standalone 2D raster graphic acceleration unit. It accelerates 2D
+  graphics operations, such as point/line drawing, image scaling, rotation,
+  BitBLT, alpha blending and image blur/sharpness.
+
+maintainers:
+  - Jacob Chen <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>
+  - Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3288-rga
+      - const: rockchip,rk3399-rga
+      - items:
+          - const: rockchip,rk3228-rga
+          - const: rockchip,rk3288-rga
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
+
+  resets:
+    maxItems: 3
+
+  reset-names:
+    items:
+      - const: core
+      - const: axi
+      - const: ahb
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    rga: rga@ff680000 {
+      compatible = "rockchip,rk3399-rga";
+      reg = <0xff680000 0x10000>;
+      interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_RGA>,
+               <&cru HCLK_RGA>,
+               <&cru SCLK_RGA_CORE>;
+      clock-names = "aclk", "hclk", "sclk";
+      resets = <&cru SRST_RGA_CORE>,
+               <&cru SRST_A_RGA>,
+               <&cru SRST_H_RGA>;
+      reset-names = "core", "axi", "ahb";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index ce80b22cf..ca7cdd2c0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14367,7 +14367,7 @@ M:	Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
 L:	linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
 S:	Maintained
 F:	drivers/media/platform/rockchip/rga/
-F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
+F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
 
 HANTRO VPU CODEC DRIVER
 M:	Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
-- 
2.11.0
