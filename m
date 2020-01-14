From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/6] dt-bindings: add binding for Rockchip combo phy using an
 Innosilicon IP
Date: Tue, 14 Jan 2020 15:22:55 +0800
Message-ID: <1578986580-71974-2-git-send-email-shawn.lin@rock-chips.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1578986580-71974-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This IP could supports USB3.0 and PCIe.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

---

 .../bindings/phy/rockchip,inno-combophy.yaml       | 84 ++++++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
new file mode 100644
index 0000000..d647ab3
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,inno-combophy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB3.0/PCI-e combo phy
+
+maintainers:
+        - Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
+        - William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
+    items:
+      - description: The grf for COMBPHY configuration and state registers.
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
+    combphy_grf: syscon@fe018000 {
+        compatible = "rockchip,usb3phy-grf", "syscon";
+        reg = <0x0 0xfe018000 0x0 0x8000>;
+    };
+
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
