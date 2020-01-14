From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [RFC PATCH v1 3/3] dt-bindings: mmc: convert rockchip dw-mshc bindings to yaml
Date: Tue, 14 Jan 2020 22:38:09 +0100
Message-ID: <20200114213809.27166-3-jbx6244@gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200114213809.27166-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-mmc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Convert the Rockchip designware mobile storage host controller
device tree bindings to yaml.
Add maintainer.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 .../devicetree/bindings/mmc/rockchip-dw-mshc.txt   |  49 --------
 .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml  | 137 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 3 files changed, 138 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
deleted file mode 100644
index 6f629b12b..000000000
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-* Rockchip specific extensions to the Synopsys Designware Mobile
-  Storage Host Controller
-
-The Synopsys designware mobile storage host controller is used to interface
-a SoC with storage medium such as eMMC or SD/MMC cards. This file documents
-differences between the core Synopsys dw mshc controller properties described
-by synopsys-dw-mshc.txt and the properties used by the Rockchip specific
-extensions to the Synopsys Designware Mobile Storage Host Controller.
-
-Required Properties:
-
-* compatible: should be
-	- "rockchip,rk2928-dw-mshc": for Rockchip RK2928 and following,
-							before RK3288
-	- "rockchip,rk3288-dw-mshc": for Rockchip RK3288
-	- "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RV1108
-	- "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip PX30
-	- "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3036
-	- "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK322x
-	- "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3328
-	- "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3368
-	- "rockchip,rk3399-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3399
-
-Optional Properties:
-* clocks: from common clock binding: if ciu-drive and ciu-sample are
-  specified in clock-names, should contain handles to these clocks.
-
-* clock-names: Apart from the clock-names described in synopsys-dw-mshc.txt
-  two more clocks "ciu-drive" and "ciu-sample" are supported. They are used
-  to control the clock phases, "ciu-sample" is required for tuning high-
-  speed modes.
-
-* rockchip,default-sample-phase: The default phase to set ciu-sample at
-  probing, low speeds or in case where all phases work at tuning time.
-  If not specified 0 deg will be used.
-
-* rockchip,desired-num-phases: The desired number of times that the host
-  execute tuning when needed. If not specified, the host will do tuning
-  for 360 times, namely tuning for each degree.
-
-Example:
-
-	rkdwmmc0@12200000 {
-		compatible = "rockchip,rk3288-dw-mshc";
-		reg = <0x12200000 0x1000>;
-		interrupts = <0 75 0>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
new file mode 100644
index 000000000..da16916b7
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/rockchip-dw-mshc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip designware mobile storage host controller device tree bindings
+
+description:
+  Rockchip uses the Synopsys designware mobile storage host controller
+  to interface a SoC with storage medium such as eMMC or SD/MMC cards.
+  This file documents the combined properties for
+  the core Synopsys dw mshc controller that are not already included
+  in the synopsys-dw-mshc-common.yaml file and the Rockchip specific
+  extensions.
+
+allOf:
+  - $ref: "synopsys-dw-mshc-common.yaml"
+
+maintainers:
+  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
+
+properties:
+  compatible:
+    oneOf:
+      # for Rockchip PX30
+      - items:
+          - const: rockchip,px30-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK2928 and before RK3288
+      - const: rockchip,rk2928-dw-mshc
+      # for Rockchip RK3036
+      - items:
+          - const: rockchip,rk3036-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK322x
+      - items:
+          - const: rockchip,rk3228-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3288
+      - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3328
+      - items:
+          - const: rockchip,rk3328-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3368
+      - items:
+          - const: rockchip,rk3368-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3399
+      - items:
+          - const: rockchip,rk3399-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RV1108
+      - items:
+          - const: rockchip,rv1108-dw-mshc
+          - const: rockchip,rk3288-dw-mshc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 4
+    description:
+      Handle to "biu" and "ciu" clocks for the bus interface unit clock and
+      the card interface unit clock. If "ciu-drive" and "ciu-sample" are
+      specified in clock-names, it should also contain
+      handles to these clocks.
+
+  clock-names:
+    oneOf:
+      - items:
+        - const: biu
+        - const: ciu
+      - items:
+        - const: biu
+        - const: ciu
+        - const: ciu-drive
+        - const: ciu-sample
+    description:
+      Apart from the clock-names "biu" and "ciu" two more clocks
+      "ciu-drive" and "ciu-sample" are supported. They are used
+      to control the clock phases, "ciu-sample" is required for tuning
+      high speed modes.
+
+  rockchip,default-sample-phase:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 360
+      - default: 0
+    description:
+      The default phase to set "ciu-sample" at probing,
+      low speeds or in case where all phases work at tuning time.
+      If not specified 0 deg will be used.
+
+  rockchip,desired-num-phases:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 360
+      - default: 360
+    description:
+      The desired number of times that the host execute tuning when needed.
+      If not specified, the host will do tuning for 360 times,
+      namely tuning for each degree.
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
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    sdmmc: dwmmc@ff0c0000 {
+      compatible = "rockchip,rk3288-dw-mshc";
+      reg = <0x0 0xff0c0000 0x0 0x4000>;
+      interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
+               <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
+      clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+      resets = <&cru SRST_MMC0>;
+      reset-names = "reset";
+      fifo-depth = <0x100>;
+      max-frequency = <150000000>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index d6ad01d71..1b16c0fdf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2240,6 +2240,7 @@ L:	linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
+F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
 F:	arch/arm/boot/dts/rk3*
 F:	arch/arm/boot/dts/rv1108*
 F:	arch/arm/mach-rockchip/
-- 
2.11.0
