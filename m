From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v4 2/3] dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash
 controller
Date: Fri, 20 Mar 2020 17:33:41 +0800
Message-ID: <20200320093342.15470-3-yifeng.zhao@rock-chips.com>
References: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-mtd-bounces+gldm-linux-mtd-36=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+gldm-linux-mtd-36=m.gmane-mx.org@lists.infradead.org
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-mtd@lists.infradead.org, heiko@sntech.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Documentation support for Rockchip RK3xxx NAND flash controllers

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v4:
- The compatible define with rkxx_nfc
- Add assigned-clocks
- Fix some wrong define

Changes in v3:
- Change the title for the dt-bindings

Changes in v2: None

 .../bindings/mtd/rockchip,nand.yaml           | 101 ++++++++++++++++++
 1 file changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand.yaml

diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
new file mode 100644
index 000000000000..907af0d52b6b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/rockchip,nand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoCs NAND FLASH Controller (NFC) Device Tree Bindings
+
+allOf:
+  - $ref: "nand-controller.yaml"
+
+maintainers:
+  - Yifeng Zhao <yifeng.zhao@rock-chips.com>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    enum:
+      - rockchip,px30_nfc
+      - rockchip,rk3308_nfc
+      - rockchip,rv1108_nfc
+      - rockchip,rk3066_nfc
+      - rockchip,rk3188_nfc
+      - rockchip,rk3288_nfc
+      - rockchip,rk3368_nfc
+      - rockchip,rk2928_nfc
+      - rockchip,rk3036_nfc
+      - rockchip,rk3128_nfc
+      - rockchip,rk3228_nfc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Module Clock
+      - description: Bus Clock
+
+  clock-names:
+    items:
+      - const: nfc
+      - const: ahb
+
+patternProperties:
+  "^nand@[0-3]$":
+    type: object
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+
+      nand-ecc-step-size:
+        const: 1024
+
+      nand-ecc-strength:
+        enum: [16, 24 , 40, 60, 70]
+
+      nand-bus-width:
+        const: 8
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3308-cru.h>
+    nfc: nand-controller@ff4b0000 {
+      compatible = "rockchip,nfc";
+      reg = <0x0 0xff4b0000 0x0 0x4000>;
+      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_NANDC>, <&cru HCLK_NANDC>;
+      clock-names = "nfc", "ahb";
+      assigned-clocks = <&clks SCLK_NANDC>;
+      assigned-clock-rates = <150000000>;
+
+      pinctrl-names = "default";
+      pinctrl-0 = <&flash_csn0 &flash_rdy &flash_ale &flash_cle
+                  &flash_wrn &flash_rdn &flash_bus8>;
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+      nand@0 {
+        reg = <0>;
+        nand-ecc-mode = "hw";
+        nand-ecc-strength = <16>;
+        nand-ecc-step-size = <1024>;
+        nand-bus-width = <8>;
+      };
+    };
+
+...
-- 
2.17.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
