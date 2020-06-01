From: sandor.yu@nxp.com
Subject: [PATCH 7/7] dt-bindings: display: Document Cadence MHDP HDMI/DP bindings
Date: Mon,  1 Jun 2020 14:17:37 +0800
Message-ID: <9fa979f1099f7c02fd746f25002d8a652253d70f.1590982881.git.Sandor.yu@nxp.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1590982881.git.Sandor.yu@nxp.com>
In-Reply-To: <cover.1590982881.git.Sandor.yu@nxp.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
Sender: linux-kernel-owner@vger.kernel.org
To: a.hajda@samsung.com, narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@siol.net, heiko@sntech.de, hjc@rock-chips.com, Sandor.yu@nxp.com, dkos@cadence.com, dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-imx@nxp.com
List-Id: linux-rockchip.vger.kernel.org

From: Sandor Yu <Sandor.yu@nxp.com>

Document the bindings used for the Cadence MHDP HDMI/DP bridge.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
 .../bindings/display/bridge/cdns,mhdp.yaml    | 46 +++++++++++++++
 .../devicetree/bindings/display/imx/mhdp.yaml | 59 +++++++++++++++++++
 2 files changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/imx/mhdp.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
new file mode 100644
index 000000000000..aa23feba744a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause))
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence MHDP TX Encoder
+
+maintainers:
+  - Sandor Yu <Sandoryu@nxp.com>
+
+description: |
+  Cadence MHDP Controller supports one or more of the protocols,
+  such as HDMI and DisplayPort.
+  Each protocol requires a different FW binaries.
+
+  This document defines device tree properties for the Cadence MHDP Encoder
+  (CDNS MHDP TX). It doesn't constitue a device tree binding
+  specification by itself but is meant to be referenced by platform-specific
+  device tree bindings.
+
+  When referenced from platform device tree bindings the properties defined in
+  this document are defined as follows. The platform device tree bindings are
+  responsible for defining whether each property is required or optional.
+
+properties:
+  reg:
+    maxItems: 1
+    description: Memory mapped base address and length of the MHDP TX registers.
+
+  interrupts:
+    maxItems: 2
+
+  interrupt-names:
+    - const: plug_in
+      description: Hotplug detect interrupter for cable plugin event.
+    - const: plug_out
+      description: Hotplug detect interrupter for cable plugout event.
+
+  port:
+    type: object
+    description: |
+      The connectivity of the MHDP TX with the rest of the system is
+      expressed in using ports as specified in the device graph bindings defined
+      in Documentation/devicetree/bindings/graph.txt. The numbering of the ports
+      is platform-specific.
diff --git a/Documentation/devicetree/bindings/display/imx/mhdp.yaml b/Documentation/devicetree/bindings/display/imx/mhdp.yaml
new file mode 100644
index 000000000000..17850cfd1cb1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/mhdp.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/mhdp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence MHDP Encoder
+
+maintainers:
+  - Sandor Yu <Sandoryu@nxp.com>
+
+description: |
+  The MHDP transmitter is a Cadence HD Display TX controller IP
+  with a companion PHY IP.
+  The MHDP supports one or more of the protocols,
+  such as HDMI(1.4 & 2.0), DisplayPort(1.2).
+  switching between the two modes (HDMI and DisplayPort)
+  requires reloading the appropriate FW
+
+  These DT bindings follow the Cadence MHDP TX bindings defined in
+  Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml with the
+  following device-specific properties.
+
+Properties:
+  compatible:
+    enum:
+      - nxp,imx8mq-cdns-hdmi
+      - nxp,imx8mq-cdns-dp
+
+  reg: See cdns,mhdp.yaml.
+
+  interrupts: See cdns,mhdp.yaml.
+
+  interrupt-names: See cdns,mhdp.yaml.
+
+  ports: See cdns,mhdp.yaml.
+
+Required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - ports
+
+Example:
+  - |
+    mhdp: mhdp@32c00000 {
+      compatible = "nxp,imx8mq-cdns-hdmi";
+      reg = <0x32c00000 0x100000>;
+      interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "plug_in", "plug_out";
+
+      ports {
+        mhdp_in: endpoint {
+          remote-endpoint = <&dcss_out>;
+        };
+      };
+    };
-- 
2.17.1
