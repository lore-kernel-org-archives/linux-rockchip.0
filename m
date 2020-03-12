From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v1 1/2] dt-bindings: sound: convert rockchip spdif bindings to yaml
Date: Thu, 12 Mar 2020 18:30:36 +0100
Message-ID: <20200312173037.21477-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'spdif' nodes are manually verified.
In order to automate this process rockchip-spdif.txt
has to be converted to yaml.

Also rk3188.dtsi, rk3288.dtsi use an extra fallback string,
so change this in the documentation.

Changed:
"rockchip,rk3188-spdif", "rockchip,rk3066-spdif"
"rockchip,rk3288-spdif", "rockchip,rk3066-spdif"

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 .../devicetree/bindings/sound/rockchip-spdif.txt   | 45 ----------
 .../devicetree/bindings/sound/rockchip-spdif.yaml  | 96 ++++++++++++++++++++++
 2 files changed, 96 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.txt b/Documentation/devicetree/bindings/sound/rockchip-spdif.txt
deleted file mode 100644
index ec20c1271..000000000
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Rockchip SPDIF transceiver
-
-The S/PDIF audio block is a stereo transceiver that allows the
-processor to receive and transmit digital audio via an coaxial cable or
-a fibre cable.
-
-Required properties:
-
-- compatible: should be one of the following:
-   - "rockchip,rk3066-spdif"
-   - "rockchip,rk3188-spdif"
-   - "rockchip,rk3228-spdif"
-   - "rockchip,rk3288-spdif"
-   - "rockchip,rk3328-spdif"
-   - "rockchip,rk3366-spdif"
-   - "rockchip,rk3368-spdif"
-   - "rockchip,rk3399-spdif"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: should contain the SPDIF interrupt.
-- dmas: DMA specifiers for tx dma. See the DMA client binding,
-  Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should be "tx"
-- clocks: a list of phandle + clock-specifier pairs, one for each entry
-  in clock-names.
-- clock-names: should contain following:
-   - "hclk": clock for SPDIF controller
-   - "mclk" : clock for SPDIF bus
-
-Required properties on RK3288:
-  - rockchip,grf: the phandle of the syscon node for the general register
-                   file (GRF)
-
-Example for the rk3188 SPDIF controller:
-
-spdif: spdif@1011e000 {
-	compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
-	reg = <0x1011e000 0x2000>;
-	interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-	dmas = <&dmac1_s 8>;
-	dma-names = "tx";
-	clock-names = "hclk", "mclk";
-	clocks = <&cru HCLK_SPDIF>, <&cru SCLK_SPDIF>;
-	#sound-dai-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
new file mode 100644
index 000000000..45c6eea30
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip-spdif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SPDIF transceiver
+
+description:
+  The S/PDIF audio block is a stereo transceiver that allows the
+  processor to receive and transmit digital audio via a coaxial or
+  fibre cable.
+
+maintainers:
+  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3066-spdif
+      - const: rockchip,rk3228-spdif
+      - const: rockchip,rk3328-spdif
+      - const: rockchip,rk3366-spdif
+      - const: rockchip,rk3368-spdif
+      - const: rockchip,rk3399-spdif
+      - items:
+          - enum:
+            - rockchip,rk3188-spdif
+            - rockchip,rk3288-spdif
+          - const: rockchip,rk3066-spdif
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for SPDIF bus
+      - description: clock for SPDIF controller
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: hclk
+
+  dmas:
+    items:
+      - description: TX DMA Channel
+
+  dma-names:
+    items:
+      - const: tx
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the GRF register.
+      Required property on RK3288.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-spdif
+
+then:
+  required:
+    - rockchip,grf
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spdif: spdif@1011e000 {
+      compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
+      reg = <0x1011e000 0x2000>;
+      interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_SPDIF>, <&cru HCLK_SPDIF>;
+      clock-names = "mclk", "hclk";
+      dmas = <&dmac1_s 8>;
+      dma-names = "tx";
+    };
-- 
2.11.0
