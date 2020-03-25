From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v3] dt-bindings: phy: convert phy-rockchip-inno-usb2 bindings to yaml
Date: Wed, 25 Mar 2020 13:13:35 +0100
Message-ID: <20200325121335.12249-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: kishon-l0cyMroinI0@public.gmane.org
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files for Rockchip with 'usb2-phy' subnodes
are manually verified. In order to automate this process
phy-rockchip-inno-usb2.txt has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
Changes v3:
  Replace oneOf by enum
  Remove allOf phy-provider.yaml
  Add "#phy-cells"
  Add additionalProperties: false

Changes v2:
  Keep "rockchip,rk3366-usb2phy" support.
  Add "#phy-cells" to example.
  Add allOf phy-provider.yaml
---
 .../bindings/phy/phy-rockchip-inno-usb2.txt        |  81 -----------
 .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 155 +++++++++++++++++++++
 2 files changed, 155 insertions(+), 81 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
deleted file mode 100644
index 541f52988..000000000
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
+++ /dev/null
@@ -1,81 +0,0 @@
-ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
-
-Required properties (phy (parent) node):
- - compatible : should be one of the listed compatibles:
-	* "rockchip,px30-usb2phy"
-	* "rockchip,rk3228-usb2phy"
-	* "rockchip,rk3328-usb2phy"
-	* "rockchip,rk3366-usb2phy"
-	* "rockchip,rk3399-usb2phy"
-	* "rockchip,rv1108-usb2phy"
- - reg : the address offset of grf for usb-phy configuration.
- - #clock-cells : should be 0.
- - clock-output-names : specify the 480m output clock name.
-
-Optional properties:
- - clocks : phandle + phy specifier pair, for the input clock of phy.
- - clock-names : input clock name of phy, must be "phyclk".
- - assigned-clocks : phandle of usb 480m clock.
- - assigned-clock-parents : parent of usb 480m clock, select between
-		 usb-phy output 480m and xin24m.
-		 Refer to clk/clock-bindings.txt for generic clock
-		 consumer properties.
- - rockchip,usbgrf : phandle to the syscon managing the "usb general
-		 register files". When set driver will request its
-		 phandle as one companion-grf for some special SoCs
-		 (e.g RV1108).
- - extcon : phandle to the extcon device providing the cable state for
-		 the otg phy.
-
-Required nodes : a sub-node is required for each port the phy provides.
-		 The sub-node name is used to identify host or otg port,
-		 and shall be the following entries:
-	* "otg-port" : the name of otg port.
-	* "host-port" : the name of host port.
-
-Required properties (port (child) node):
- - #phy-cells : must be 0. See ./phy-bindings.txt for details.
- - interrupts : specify an interrupt for each entry in interrupt-names.
- - interrupt-names : a list which should be one of the following cases:
-	Regular case:
-	* "otg-id" : for the otg id interrupt.
-	* "otg-bvalid" : for the otg vbus interrupt.
-	* "linestate" : for the host/otg linestate interrupt.
-	Some SoCs use one interrupt with the above muxed together, so for these
-	* "otg-mux" : otg-port interrupt, which mux otg-id/otg-bvalid/linestate
-		to one.
-
-Optional properties:
- - phy-supply : phandle to a regulator that provides power to VBUS.
-		See ./phy-bindings.txt for details.
-
-Example:
-
-grf: syscon@ff770000 {
-	compatible = "rockchip,rk3366-grf", "syscon", "simple-mfd";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-...
-
-	u2phy: usb2-phy@700 {
-		compatible = "rockchip,rk3366-usb2phy";
-		reg = <0x700 0x2c>;
-		#clock-cells = <0>;
-		clock-output-names = "sclk_otgphy0_480m";
-
-		u2phy_otg: otg-port {
-			#phy-cells = <0>;
-			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "otg-id", "otg-bvalid", "linestate";
-		};
-
-		u2phy_host: host-port {
-			#phy-cells = <0>;
-			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "linestate";
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
new file mode 100644
index 000000000..cb71561a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -0,0 +1,155 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/phy-rockchip-inno-usb2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB2.0 phy with inno IP block
+
+maintainers:
+  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-usb2phy
+      - rockchip,rk3228-usb2phy
+      - rockchip,rk3328-usb2phy
+      - rockchip,rk3366-usb2phy
+      - rockchip,rk3399-usb2phy
+      - rockchip,rv1108-usb2phy
+
+  reg:
+    maxItems: 1
+
+  clock-output-names:
+    description:
+      The usb 480m output clock name.
+
+  "#clock-cells":
+    const: 0
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: phyclk
+
+  assigned-clocks:
+    description:
+      Phandle of the usb 480m clock.
+
+  assigned-clock-parents:
+    description:
+      Parent of the usb 480m clock.
+      Select between usb-phy output 480m and xin24m.
+      Refer to clk/clock-bindings.txt for generic clock consumer properties.
+
+  extcon:
+    description:
+      Phandle to the extcon device providing the cable state for the otg phy.
+
+  rockchip,usbgrf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the 'usb general register files'.
+      When set the driver will request its phandle as one companion-grf
+      for some special SoCs (e.g rv1108).
+
+  host-port:
+    type: object
+    additionalProperties: false
+
+    properties:
+      "#phy-cells":
+        const: 0
+
+      interrupts:
+        description: host linestate interrupt
+
+      interrupt-names:
+        const: linestate
+
+      phy-supply:
+        description:
+          Phandle to a regulator that provides power to VBUS.
+          See ./phy-bindings.txt for details.
+
+    required:
+      - "#phy-cells"
+      - interrupts
+      - interrupt-names
+
+  otg-port:
+    type: object
+    additionalProperties: false
+
+    properties:
+      "#phy-cells":
+        const: 0
+
+      interrupts:
+        minItems: 1
+        maxItems: 3
+
+      interrupt-names:
+        oneOf:
+          - const: linestate
+          - const: otg-mux
+          - items:
+            - const: otg-bvalid
+            - const: otg-id
+            - const: linestate
+
+      phy-supply:
+        description:
+          Phandle to a regulator that provides power to VBUS.
+          See ./phy-bindings.txt for details.
+
+    required:
+      - "#phy-cells"
+      - interrupts
+      - interrupt-names
+
+required:
+  - compatible
+  - reg
+  - clock-output-names
+  - "#clock-cells"
+  - "#phy-cells"
+  - host-port
+  - otg-port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    u2phy0: usb2-phy@e450 {
+      compatible = "rockchip,rk3399-usb2phy";
+      reg = <0xe450 0x10>;
+      clocks = <&cru SCLK_USB2PHY0_REF>;
+      clock-names = "phyclk";
+      clock-output-names = "clk_usbphy0_480m";
+      #clock-cells = <0>;
+      #phy-cells = <0>;
+
+      u2phy0_host: host-port {
+        #phy-cells = <0>;
+        interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "linestate";
+      };
+
+      u2phy0_otg: otg-port {
+        #phy-cells = <0>;
+        interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "otg-bvalid", "otg-id", "linestate";
+      };
+    };
-- 
2.11.0
