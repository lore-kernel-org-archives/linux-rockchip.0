From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 3/7] dt-bindings: sram: Merge Amlogic SRAM bindings into generic
Date: Mon, 21 Oct 2019 18:13:47 +0200
Message-ID: <20191021161351.20789-3-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The Amlogic SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/arm/amlogic/smp-sram.txt         | 32 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 22 +++++++++++++
 2 files changed, 22 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt

diff --git a/Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt b/Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt
deleted file mode 100644
index 3473ddaadfac..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-Amlogic Meson8 and Meson8b SRAM for smp bringup:
-------------------------------------------------
-
-Amlogic's SMP-capable SoCs use part of the sram for the bringup of the cores.
-Once the core gets powered up it executes the code that is residing at a
-specific location.
-
-Therefore a reserved section sub-node has to be added to the mmio-sram
-declaration.
-
-Required sub-node properties:
-- compatible : depending on the SoC this should be one of:
-		"amlogic,meson8-smp-sram"
-		"amlogic,meson8b-smp-sram"
-
-The rest of the properties should follow the generic mmio-sram discription
-found in ../../misc/sram.txt
-
-Example:
-
-	sram: sram@d9000000 {
-		compatible = "mmio-sram";
-		reg = <0xd9000000 0x20000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0xd9000000 0x20000>;
-
-		smp-sram@1ff80 {
-			compatible = "amlogic,meson8b-smp-sram";
-			reg = <0x1ff80 0x8>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 9ed94f8b0794..a78da7a686d0 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -65,6 +65,8 @@ patternProperties:
           Should contain a vendor specific string in the form
           <vendor>,[<device>-]<usage>
         enum:
+          - amlogic,meson8-smp-sram
+          - amlogic,meson8b-smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
 
@@ -164,3 +166,23 @@ examples:
             reg = <0x53000 0x1000>;
         };
     };
+
+  - |
+    // Amlogic's SMP-capable SoCs use part of the sram for the bringup of the cores.
+    // Once the core gets powered up it executes the code that is residing at a
+    // specific location.
+    //
+    // Therefore a reserved section sub-node has to be added to the mmio-sram
+    // declaration.
+    sram@d9000000 {
+        compatible = "mmio-sram";
+        reg = <0xd9000000 0x20000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0xd9000000 0x20000>;
+
+        smp-sram@1ff80 {
+            compatible = "amlogic,meson8b-smp-sram";
+            reg = <0x1ff80 0x8>;
+        };
+    };
-- 
2.17.1
