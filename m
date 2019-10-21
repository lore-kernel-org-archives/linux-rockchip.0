From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 4/7] dt-bindings: sram: Merge Renesas SRAM bindings into generic
Date: Mon, 21 Oct 2019 18:13:48 +0200
Message-ID: <20191021161351.20789-4-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The Renesas SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/sram/renesas,smp-sram.txt        | 27 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 15 +++++++++++
 2 files changed, 15 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/renesas,smp-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt b/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
deleted file mode 100644
index 712d05e3e15e..000000000000
--- a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Renesas SMP SRAM
-
-Renesas R-Car Gen2 and RZ/G1 SoCs need a small piece of SRAM for the jump stub
-for secondary CPU bringup and CPU hotplug.
-This memory is reserved by adding a child node to a "mmio-sram" node, cfr.
-Documentation/devicetree/bindings/sram/sram.txt.
-
-Required child node properties:
-  - compatible: Must be "renesas,smp-sram",
-  - reg: Address and length of the reserved SRAM.
-    The full physical (bus) address must be aligned to a 256 KiB boundary.
-
-
-Example:
-
-	icram1:	sram@e63c0000 {
-		compatible = "mmio-sram";
-		reg = <0 0xe63c0000 0 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0 0xe63c0000 0x1000>;
-
-		smp-sram@0 {
-			compatible = "renesas,smp-sram";
-			reg = <0 0x10>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index a78da7a686d0..b92e3e10fbfc 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -67,6 +67,7 @@ patternProperties:
         enum:
           - amlogic,meson8-smp-sram
           - amlogic,meson8b-smp-sram
+          - renesas,smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
 
@@ -186,3 +187,17 @@ examples:
             reg = <0x1ff80 0x8>;
         };
     };
+
+  - |
+    sram@e63c0000 {
+        compatible = "mmio-sram";
+        reg = <0xe63c0000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0xe63c0000 0x1000>;
+
+        smp-sram@0 {
+            compatible = "renesas,smp-sram";
+            reg = <0 0x10>;
+        };
+    };
-- 
2.17.1
