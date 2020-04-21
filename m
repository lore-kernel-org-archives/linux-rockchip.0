From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v7 5/8] dt-bindings: display: add i.MX6 MIPI DSI host controller doc
Date: Tue, 21 Apr 2020 19:16:07 +0300
Message-ID: <20200421161610.1501827-6-adrian.ratiu@collabora.com>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200421161610.1501827-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, linux-imx-3arQi8VN3Tc@public.gmane.org, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Martyn Welch <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This provides an example DT binding for the MIPI DSI host controller
present on the i.MX6 SoC based on Synopsis DesignWare v1.01 IP.

Cc: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
Cc: Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Tested-by: Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Tested-by: Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Martyn Welch <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes since v6:
  - Added ref to the newly created snps,dw-mipi-dsi.yaml (Laurent)
  - Moved *-cells properties outside patternProperties (Laurent)
  - Removed the panel port documentation (Laurent)
  - Wrapped lines at 80 chars, typo fixes, sort includes (Laurent)

Changes since v5:
  - Fixed missing reg warning (Fabio)
  - Updated dt-schema and fixed warnings (Rob)

Changes since v4:
  - Fixed yaml binding to pass `make dt_binding_check dtbs_check`
  and addressed received binding feedback (Rob)

Changes since v3:
  - Added commit message (Neil)
  - Converted to yaml format (Neil)
  - Minor dt node + driver fixes (Rob)
  - Added small panel example to the host controller binding

Changes since v2:
  - Fixed commit tags (Emil)
---
 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
new file mode 100644
index 0000000000000..b73e3ae33a852
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,mipi-dsi-imx6.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX6 DW MIPI DSI Host Controller
+
+maintainers:
+  - Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
+
+description: |
+  The i.MX6 DSI host controller is a Synopsys DesignWare MIPI DSI v1.01
+  IP block with a companion PHY IP.
+
+  These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
+  Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
+  the following device-specific properties.
+
+allOf:
+  - $ref: ../bridge/snps,dw-mipi-dsi.yaml#
+
+properties:
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  compatible:
+    items:
+      - const: fsl,imx6q-mipi-dsi
+      - const: snps,dw-mipi-dsi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Module Clock
+      - description: DSI bus clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: pclk
+
+  fsl,gpr:
+    description:
+      Phandle to the iomuxc-gpr region containing the multiplexer ctrl register.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  ports:
+    type: object
+    description: |
+      A node containing DSI input & output port nodes with endpoint
+      definitions as documented in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+      Documentation/devicetree/bindings/graph.txt
+    properties:
+      port@0:
+        type: object
+        description:
+          DSI input port node, connected to the ltdc rgb output port.
+
+      port@1:
+        type: object
+        description:
+          RGB output port node, connected to a panel or a bridge input port.
+
+additionalProperties: false
+
+patternProperties:
+  "^panel@[0-3]$":
+    type: object
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports
+
+examples:
+  - |+
+    #include <dt-bindings/clock/imx6qdl-clock.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    dsi: dsi@21e0000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
+        reg = <0x021e0000 0x4000>;
+        interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
+        fsl,gpr = <&gpr>;
+        clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
+                 <&clks IMX6QDL_CLK_MIPI_IPG>;
+        clock-names = "ref", "pclk";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            port@1 {
+                reg = <1>;
+                dsi_out: endpoint {
+                    remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+
+        panel@0 {
+            compatible = "sharp,ls032b3sx01";
+            reg = <0>;
+            reset-gpios = <&gpio6 8 GPIO_ACTIVE_LOW>;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    panel_in: endpoint {
+                        remote-endpoint = <&dsi_out>;
+                    };
+                };
+            };
+        };
+    };
+
+...
-- 
2.26.0
