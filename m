From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 4/6] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Tue, 14 Jan 2020 15:22:58 +0800
Message-ID: <1578986580-71974-5-git-send-email-shawn.lin@rock-chips.com>
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

From: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Signed-off-by: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  | 132 +++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
new file mode 100644
index 0000000..c5205f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DesignWare based PCIe RC controller on Rockchip SoCs
+
+maintainers:
+        - Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
+        - Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk1808-pcie
+      - snps,dw-pcie
+
+  reg:
+    maxItems: 2
+
+  clocks:
+    items:
+      - description: High speed clock for PCIe
+      - description: Low speed clock for PCIe
+      - description: AHB clock for PCIe
+      - description: APB clock for PCIe
+      - description: Auxiliary clock for PCIe
+
+  clock-names:
+    items:
+      - const: hsclk
+      - const: lsclk
+      - const: aclk
+      - const: pclk
+      - const: sclk-aux
+
+  resets:
+    items:
+      - description: PCIe niu high reset line
+      - description: PCIe niu low reset line
+      - description: PCIe grf reset line
+      - description: PCIe control reset line
+      - description: PCIe control powerup reset line
+      - description: PCIe control master reset line
+      - description: PCIe control slave reset line
+      - description: PCIe control dbi reset line
+      - description: PCIe control button reset line
+      - description: PCIe control power engine reset line
+      - description: PCIe control core reset line
+      - description: PCIe control non-sticky reset line
+      - description: PCIe control sticky reset line
+      - description: PCIe control power reset line
+      - description: PCIe niu ahb reset line
+      - description: PCIe niu apb reset line
+
+  reset-names:
+    items:
+      - const: niu-h
+      - const: niu-l
+      - const: grf-p
+      - const: ctl-p
+      - const: ctl-powerup
+      - const: ctl-mst-a
+      - const: ctl-slv-a
+      - const: ctl-dbi-a
+      - const: ctl-button
+      - const: ctl-pe
+      - const: ctl-core
+      - const: ctl-nsticky
+      - const: ctl-sticky
+      - const: ctl-pwr
+      - const: ctl-niu-a
+      - const: ctl-niu-p
+
+  rockchip,usbpciegrf:
+    items:
+      - description: The grf for COMBPHY configuration and state registers.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - msi-map
+  - num-lanes
+  - phys
+  - phy-names
+  - resets
+  - reset-names
+  - rockchip,usbpciegrf
+
+additionalProperties: false
+
+examples:
+  - |
+    usb_pcie_grf: syscon@fe040000 {
+        compatible = "rockchip,usb-pcie-grf", "syscon";
+        reg = <0x0 0xfe040000 0x0 0x1000>;
+    };
+
+    pcie0: pcie@fc400000 {
+        compatible = "rockchip,rk1808-pcie", "snps,dw-pcie";
+        reg = <0x0 0xfc000000 0x0 0x400000>,
+              <0x0 0xfc400000 0x0 0x10000>;
+        clocks = <&cru HSCLK_PCIE>, <&cru LSCLK_PCIE>,
+                 <&cru ACLK_PCIE>, <&cru PCLK_PCIE>,
+                 <&cru SCLK_PCIE_AUX>;
+        clock-names = "hsclk", "lsclk",
+                      "aclk", "pclk",
+                      "sclk-aux";
+        msi-map = <0x0 &its 0x0 0x1000>;
+        num-lanes = <2>;
+        phys = <&combphy PHY_TYPE_PCIE>;
+        phy-names = "pcie-phy";
+        resets = <&cru SRST_PCIE_NIU_H>, <&cru SRST_PCIE_NIU_L>,
+                 <&cru SRST_PCIEGRF_P>, <&cru SRST_PCIECTL_P>,
+                 <&cru SRST_PCIECTL_POWERUP>, <&cru SRST_PCIECTL_MST_A>,
+                 <&cru SRST_PCIECTL_SLV_A>, <&cru SRST_PCIECTL_DBI_A>,
+                 <&cru SRST_PCIECTL_BUTTON>, <&cru SRST_PCIECTL_PE>,
+                 <&cru SRST_PCIECTL_CORE>, <&cru SRST_PCIECTL_NSTICKY>,
+                 <&cru SRST_PCIECTL_STICKY>, <&cru SRST_PCIECTL_PWR>,
+                 <&cru SRST_PCIE_NIU_A>, <&cru SRST_PCIE_NIU_P>;
+        reset-names = "niu-h", "niu-l", "grf-p", "ctl-p",
+                      "ctl-powerup", "ctl-mst-a", "ctl-slv-a",
+                      "ctl-dbi-a", "ctl-button", "ctl-pe",
+                      "ctl-core", "ctl-nsticky", "ctl-sticky",
+                      "ctl-pwr", "ctl-niu-a", "ctl-niu-p";
+        rockchip,usbpciegrf = <&usb_pcie_grf>;
+    };
+
+...
-- 
1.9.1
