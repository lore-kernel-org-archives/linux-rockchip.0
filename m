From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH 1/2] dt-bindings: sram: convert rockchip-pmu-sram bindings to yaml
Date: Tue, 17 Mar 2020 17:35:54 +0100
Message-ID: <20200317163555.18107-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'rockchip-pmu-sram' compatible nodes
are manually verified. In order to automate this process
rockchip-pmu-sram.txt has to be converted to yaml.

A check with the command below gives for example this error:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
compatible:0:
'rockchip,rk3288-pmu-sram' was expected
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
compatible:
['mmio-sram'] is too short

Fix this error by adding an extra 'mmio-sram' compatible and
'if then' structure to filter yaml warnings.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/
rockchip-pmu-sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 --------
 .../bindings/sram/rockchip-pmu-sram.yaml           | 46 ++++++++++++++++++++++
 2 files changed, 46 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
 create mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml

diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
deleted file mode 100644
index 6b42fda30..000000000
--- a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Rockchip SRAM for pmu:
-------------------------------
-
-The sram of pmu is used to store the function of resume from maskrom(the 1st
-level loader). This is a common use of the "pmu-sram" because it keeps power
-even in low power states in the system.
-
-Required node properties:
-- compatible : should be "rockchip,rk3288-pmu-sram"
-- reg : physical base address and the size of the registers window
-
-Example:
-	sram@ff720000 {
-		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
-		reg = <0xff720000 0x1000>;
-	};
diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
new file mode 100644
index 000000000..bb72e4f53
--- /dev/null
+++ b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sram/rockchip-pmu-sram.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SRAM for pmu
+
+description:
+  The sram of pmu is used to store the function of resume from maskrom(the 1st
+  level loader). This is a common use of the "pmu-sram" because it keeps power
+  even in low power states in the system.
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+# The extra 'mmio-sram' compatible and 'if then' structure is needed
+# to filter yaml warnings.
+properties:
+  compatible:
+    oneOf:
+      - const: mmio-sram
+      - items:
+        - const: rockchip,rk3288-pmu-sram
+        - const: mmio-sram
+
+  reg:
+    maxItems: 1
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-pmu-sram
+
+then:
+  required:
+    - compatible
+    - reg
+
+examples:
+  - |
+    pmu_sram: sram@ff720000 {
+      compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
+      reg = <0xff720000 0x1000>;
+    };
-- 
2.11.0
