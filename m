From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 6/7] dt-bindings: sram: Merge Allwinner SRAM bindings into generic
Date: Mon, 21 Oct 2019 18:13:50 +0200
Message-ID: <20191021161351.20789-6-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The Allwinner SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/arm/sunxi/smp-sram.txt           | 44 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 25 +++++++++++
 2 files changed, 25 insertions(+), 44 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt

diff --git a/Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt b/Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt
deleted file mode 100644
index 082e6a9382d3..000000000000
--- a/Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt
+++ /dev/null
@@ -1,44 +0,0 @@
-Allwinner SRAM for smp bringup:
-------------------------------------------------
-
-Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
-primary core (cpu0). Once the core gets powered up it checks if a magic
-value is set at a specific location. If it is then the BROM will jump
-to the software entry address, instead of executing a standard boot.
-
-Therefore a reserved section sub-node has to be added to the mmio-sram
-declaration.
-
-Note that this is separate from the Allwinner SRAM controller found in
-../../sram/sunxi-sram.txt. This SRAM is secure only and not mappable to
-any device.
-
-Also there are no "secure-only" properties. The implementation should
-check if this SRAM is usable first.
-
-Required sub-node properties:
-- compatible : depending on the SoC this should be one of:
-		"allwinner,sun9i-a80-smp-sram"
-
-The rest of the properties should follow the generic mmio-sram discription
-found in ../../misc/sram.txt
-
-Example:
-
-	sram_b: sram@20000 {
-		/* 256 KiB secure SRAM at 0x20000 */
-		compatible = "mmio-sram";
-		reg = <0x00020000 0x40000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0x00020000 0x40000>;
-
-		smp-sram@1000 {
-			/*
-			 * This is checked by BROM to determine if
-			 * cpu0 should jump to SMP entry vector
-			 */
-			compatible = "allwinner,sun9i-a80-smp-sram";
-			reg = <0x1000 0x8>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 1c2d8b0408c0..95d8cc7e2b87 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -65,6 +65,7 @@ patternProperties:
           Should contain a vendor specific string in the form
           <vendor>,[<device>-]<usage>
         enum:
+          - allwinner,sun9i-a80-smp-sram
           - amlogic,meson8-smp-sram
           - amlogic,meson8b-smp-sram
           - renesas,smp-sram
@@ -216,3 +217,27 @@ examples:
             reg = <0x10080000 0x50>;
         };
     };
+
+  - |
+    // Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
+    // primary core (cpu0). Once the core gets powered up it checks if a magic
+    // value is set at a specific location. If it is then the BROM will jump
+    // to the software entry address, instead of executing a standard boot.
+    //
+    // Also there are no "secure-only" properties. The implementation should
+    // check if this SRAM is usable first.
+    sram@20000 {
+        // 256 KiB secure SRAM at 0x20000
+        compatible = "mmio-sram";
+        reg = <0x00020000 0x40000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x00020000 0x40000>;
+
+        smp-sram@1000 {
+            // This is checked by BROM to determine if
+            // cpu0 should jump to SMP entry vector
+            compatible = "allwinner,sun9i-a80-smp-sram";
+            reg = <0x1000 0x8>;
+        };
+    };
-- 
2.17.1
