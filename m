From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v2 01/10] dt-bindings: mtd: add rockchip nand controller bindings
Date: Fri, 24 Jan 2020 17:29:52 +0100
Message-ID: <20200124163001.28910-2-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: miquel.raynal@bootlin.com
Cc: richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, yifeng.zhao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Add the Rockchip NAND controller bindings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/mtd/rockchip,nand-controller.yaml     | 92 ++++++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
new file mode 100644
index 000000000..5c725f972
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/rockchip,nand-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip NAND Controller Device Tree Bindings
+
+allOf:
+  - $ref: "nand-controller.yaml#"
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-nand-controller
+      - rockchip,rk3066-nand-controller
+      - rockchip,rk3228-nand-controller
+      - rockchip,rk3288-nand-controller
+      - rockchip,rk3308-nand-controller
+      - rockchip,rk3368-nand-controller
+      - rockchip,rv1108-nand-controller
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: hclk_nandc
+      - const: clk_nandc
+
+patternProperties:
+  "^nand@[a-f0-9]+$":
+    type: object
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+
+      nand-is-boot-medium: true
+
+      rockchip,idb-res-blk-num:
+        minimum: 2
+        default: 16
+        allOf:
+        - $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          For legacy devices where the bootrom can only handle 24 bit BCH/ECC.
+          If specified it indicates the number of erase blocks in use by
+          the bootloader that need a lower BCH/ECC setting.
+          Only used in combination with 'nand-is-boot-medium'.
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    nandc: nand-controller@10500000 {
+      compatible = "rockchip,rk3066-nand-controller";
+      reg = <0x10500000 0x4000>;
+      interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_NANDC0>;
+      clock-names = "hclk_nandc";
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      nand@0 {
+        reg = <0>;
+        nand-is-boot-medium;
+      };
+    };
+
+...
-- 
2.11.0
