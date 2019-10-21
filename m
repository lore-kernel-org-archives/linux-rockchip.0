From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 5/7] dt-bindings: sram: Merge Rockchip SRAM bindings into generic
Date: Mon, 21 Oct 2019 18:13:49 +0200
Message-ID: <20191021161351.20789-5-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The Rockchip SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/sram/rockchip-smp-sram.txt       | 30 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 15 ++++++++++
 2 files changed, 15 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt
deleted file mode 100644
index 800701ecffca..000000000000
--- a/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Rockchip SRAM for smp bringup:
-------------------------------
-
-Rockchip's smp-capable SoCs use the first part of the sram for the bringup
-of the cores. Once the core gets powered up it executes the code that is
-residing at the very beginning of the sram.
-
-Therefore a reserved section sub-node has to be added to the mmio-sram
-declaration.
-
-Required sub-node properties:
-- compatible : should be "rockchip,rk3066-smp-sram"
-
-The rest of the properties should follow the generic mmio-sram discription
-found in Documentation/devicetree/bindings/sram/sram.txt
-
-Example:
-
-	sram: sram@10080000 {
-		compatible = "mmio-sram";
-		reg = <0x10080000 0x10000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		smp-sram@10080000 {
-			compatible = "rockchip,rk3066-smp-sram";
-			reg = <0x10080000 0x50>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index b92e3e10fbfc..1c2d8b0408c0 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -68,6 +68,7 @@ patternProperties:
           - amlogic,meson8-smp-sram
           - amlogic,meson8b-smp-sram
           - renesas,smp-sram
+          - rockchip,rk3066-smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
 
@@ -201,3 +202,17 @@ examples:
             reg = <0 0x10>;
         };
     };
+
+  - |
+    sram@10080000 {
+        compatible = "mmio-sram";
+        reg = <0x10080000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        smp-sram@10080000 {
+            compatible = "rockchip,rk3066-smp-sram";
+            reg = <0x10080000 0x50>;
+        };
+    };
-- 
2.17.1
