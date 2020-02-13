From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/6] dt-bindings: add binding for Rockchip combo phy using an Innosilicon IP
Date: Thu, 13 Feb 2020 14:08:06 +0800
Message-ID: <1581574091-240890-2-git-send-email-shawn.lin@rock-chips.com>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This IP could supports USB3.0 and PCIe.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v2:
- fix yaml format

 .../bindings/phy/rockchip,inno-combophy.yaml       | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
new file mode 100644
index 0000000..841f88a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,inno-combophy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB3.0/PCI-e combo phy
+
+maintainers:
+        - Shawn Lin <shawn.lin@rock-chips.com>
+        - William Wu <william.wu@rock-chips.com>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - rockchip,rk1808-combphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PLL reference clock
+
+  clock-names:
+    items:
+      - const: refclk
+
+  resets:
+    items:
+      - description: OTG unit reset line
+      - description: POR unit reset line
+      - description: APB interface reset line
+      - description: PIPE unit reset line
+
+  reset-names:
+    items:
+      - const: otg-rst
+      - const: combphy-por
+      - const: combphy-apb
+      - const: combphy-pipe
+
+  rockchip,combphygrf:
+    enum:
+      - rockchip,combphygrf
+    description: The grf for COMBPHY configuration and state registers.
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - rockchip,combphygrf
+
+additionalProperties: false
+
+examples:
+  - |
+    combphy: phy@ff380000 {
+        compatible = "rockchip,rk1808-combphy";
+        reg = <0x0 0xff380000 0x0 0x10000>;
+        #phy-cells = <1>;
+        clocks = <&cru SCLK_PCIEPHY_REF>;
+        clock-names = "refclk";
+        assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
+        assigned-clock-rates = <25000000>;
+        resets = <&cru SRST_USB3_OTG_A>, <&cru SRST_PCIEPHY_POR>,
+                 <&cru SRST_PCIEPHY_P>, <&cru SRST_PCIEPHY_PIPE>;
+        reset-names = "otg-rst", "combphy-por",
+                      "combphy-apb", "combphy-pipe";
+        rockchip,combphygrf = <&combphy_grf>;
+    };
+
+...
-- 
1.9.1
