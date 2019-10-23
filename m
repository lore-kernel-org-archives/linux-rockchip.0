From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/3] dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy
Date: Thu, 24 Oct 2019 00:38:50 +0200
Message-ID: <20191023223851.3030-2-heiko@sntech.de>
References: <20191023223851.3030-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191023223851.3030-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: robh+dt@kernel.org, mark.rutland@arm.com, bivvy.bi@rock-chips.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

This adds a yaml binding for the external dsi phy found on Rockchip
socs of the px30, rk3128 and rk3368 variants.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
new file mode 100644
index 000000000000..c2e1a998a766
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,px30-dsi-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip MIPI DPHY with additional LVDS/TTL modes
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - rockchip,px30-dsi-dphy
+      - rockchip,rk3128-dsi-dphy
+      - rockchip,rk3368-dsi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PLL reference clock
+      - description: Module clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: pclk
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+  resets:
+    items:
+      - description: exclusive PHY reset line
+
+  reset-names:
+    items:
+      - const: apb
+
+required:
+  - "#phy-cells"
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi_dphy: phy@ff2e0000 {
+        compatible = "rockchip,px30-video-phy";
+        reg = <0x0 0xff2e0000 0x0 0x10000>;
+        clocks = <&pmucru 13>, <&cru 12>;
+        clock-names = "ref", "pclk";
+        #clock-cells = <0>;
+        resets = <&cru 12>;
+        reset-names = "apb";
+        #phy-cells = <0>;
+    };
+
+...
-- 
2.23.0
