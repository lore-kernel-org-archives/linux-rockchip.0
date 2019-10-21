From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 2/7] dt-bindings: sram: Merge Samsung SRAM bindings into generic
Date: Mon, 21 Oct 2019 18:13:46 +0200
Message-ID: <20191021161351.20789-2-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The Samsung SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../devicetree/bindings/sram/samsung-sram.txt | 38 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 29 ++++++++++++++
 MAINTAINERS                                   |  1 -
 3 files changed, 29 insertions(+), 39 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/samsung-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/samsung-sram.txt b/Documentation/devicetree/bindings/sram/samsung-sram.txt
deleted file mode 100644
index 61a9bbed303d..000000000000
--- a/Documentation/devicetree/bindings/sram/samsung-sram.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Samsung Exynos SYSRAM for SMP bringup:
-------------------------------------
-
-Samsung SMP-capable Exynos SoCs use part of the SYSRAM for the bringup
-of the secondary cores. Once the core gets powered up it executes the
-code that is residing at some specific location of the SYSRAM.
-
-Therefore reserved section sub-nodes have to be added to the mmio-sram
-declaration. These nodes are of two types depending upon secure or
-non-secure execution environment.
-
-Required sub-node properties:
-- compatible : depending upon boot mode, should be
-		"samsung,exynos4210-sysram" : for Secure SYSRAM
-		"samsung,exynos4210-sysram-ns" : for Non-secure SYSRAM
-
-The rest of the properties should follow the generic mmio-sram discription
-found in Documentation/devicetree/bindings/sram/sram.txt
-
-Example:
-
-	sysram@2020000 {
-		compatible = "mmio-sram";
-		reg = <0x02020000 0x54000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0x02020000 0x54000>;
-
-		smp-sysram@0 {
-			compatible = "samsung,exynos4210-sysram";
-			reg = <0x0 0x1000>;
-		};
-
-		smp-sysram@53000 {
-			compatible = "samsung,exynos4210-sysram-ns";
-			reg = <0x53000 0x1000>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index d338fcaa21ed..9ed94f8b0794 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -64,6 +64,9 @@ patternProperties:
         description:
           Should contain a vendor specific string in the form
           <vendor>,[<device>-]<usage>
+        enum:
+          - samsung,exynos4210-sysram
+          - samsung,exynos4210-sysram-ns
 
       reg:
         description:
@@ -135,3 +138,29 @@ examples:
             export;
         };
     };
+
+  - |
+    // Samsung SMP-capable Exynos SoCs use part of the SYSRAM for the bringup
+    // of the secondary cores. Once the core gets powered up it executes the
+    // code that is residing at some specific location of the SYSRAM.
+    //
+    // Therefore reserved section sub-nodes have to be added to the mmio-sram
+    // declaration. These nodes are of two types depending upon secure or
+    // non-secure execution environment.
+    sram@2020000 {
+        compatible = "mmio-sram";
+        reg = <0x02020000 0x54000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x02020000 0x54000>;
+
+        smp-sram@0 {
+            compatible = "samsung,exynos4210-sysram";
+            reg = <0x0 0x1000>;
+        };
+
+        smp-sram@53000 {
+            compatible = "samsung,exynos4210-sysram-ns";
+            reg = <0x53000 0x1000>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 56c78eadfdc5..699ad8f1eb38 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2235,7 +2235,6 @@ F:	drivers/soc/samsung/
 F:	include/linux/soc/samsung/
 F:	Documentation/arm/samsung/
 F:	Documentation/devicetree/bindings/arm/samsung/
-F:	Documentation/devicetree/bindings/sram/samsung-sram.txt
 F:	Documentation/devicetree/bindings/power/pd-samsung.txt
 N:	exynos
 
-- 
2.17.1
