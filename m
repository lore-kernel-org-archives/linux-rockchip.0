From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 7/7] dt-bindings: sram: Merge Socionext SRAM bindings into generic
Date: Mon, 21 Oct 2019 18:13:51 +0200
Message-ID: <20191021161351.20789-7-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The Socionext SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/sram/milbeaut-smp-sram.txt       | 24 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 15 ++++++++++++
 2 files changed, 15 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt b/Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt
deleted file mode 100644
index 194f6a3c1c1e..000000000000
--- a/Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Milbeaut SRAM for smp bringup
-
-Milbeaut SoCs use a part of the sram for the bringup of the secondary cores.
-Once they get powered up in the bootloader, they stay at the specific part
-of the sram.
-Therefore the part needs to be added as the sub-node of mmio-sram.
-
-Required sub-node properties:
-- compatible : should be "socionext,milbeaut-smp-sram"
-
-Example:
-
-        sram: sram@0 {
-                compatible = "mmio-sram";
-                reg = <0x0 0x10000>;
-                #address-cells = <1>;
-                #size-cells = <1>;
-                ranges = <0 0x0 0x10000>;
-
-                smp-sram@f100 {
-                        compatible = "socionext,milbeaut-smp-sram";
-                        reg = <0xf100 0x20>;
-                };
-        };
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 95d8cc7e2b87..de39e06c1ed9 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -72,6 +72,7 @@ patternProperties:
           - rockchip,rk3066-smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
+          - socionext,milbeaut-smp-sram
 
       reg:
         description:
@@ -241,3 +242,17 @@ examples:
             reg = <0x1000 0x8>;
         };
     };
+
+  - |
+    sram@0 {
+        compatible = "mmio-sram";
+        reg = <0x0 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x0 0x10000>;
+
+        smp-sram@f100 {
+            compatible = "socionext,milbeaut-smp-sram";
+            reg = <0xf100 0x20>;
+        };
+    };
-- 
2.17.1
