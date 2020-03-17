From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH 2/2] dt-bindings: sram: fix yaml warnings for rk3288-pmu-sram compatible nodes
Date: Tue, 17 Mar 2020 17:35:55 +0100
Message-ID: <20200317163555.18107-2-jbx6244@gmail.com>
References: <20200317163555.18107-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200317163555.18107-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example these warnings:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#address-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#size-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'ranges' is a required property

Fix this error by making '#address-cells', '#size-cells' and
'ranges' required for all compatible strings except for
'rockchip,rk3288-pmu-sram'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 7b83cc6c9..f06d254ba 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -118,9 +118,18 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#address-cells"
-  - "#size-cells"
-  - ranges
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-pmu-sram
+
+else:
+  required:
+    - "#address-cells"
+    - "#size-cells"
+    - ranges
 
 additionalProperties: false
 
-- 
2.11.0
