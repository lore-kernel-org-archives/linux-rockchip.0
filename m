From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2] dt-bindings: display: convert rockchip rk3066 hdmi bindings to yaml
Date: Fri,  3 Apr 2020 15:36:30 +0200
Message-ID: <20200403133630.7377-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files with 'hdmi' nodes for rk3066 are manually verified.
In order to automate this process rockchip,rk3066-hdmi.txt
has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
Changes v2:
  Fix irq.h already included in arm-gic.h
---
 .../display/rockchip/rockchip,rk3066-hdmi.txt      |  72 -----------
 .../display/rockchip/rockchip,rk3066-hdmi.yaml     | 140 +++++++++++++++++++++
 2 files changed, 140 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt
deleted file mode 100644
index d1ad31bca..000000000
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt
+++ /dev/null
@@ -1,72 +0,0 @@
-Rockchip specific extensions for rk3066 HDMI
-============================================
-
-Required properties:
-- compatible:
-	"rockchip,rk3066-hdmi";
-- reg:
-	Physical base address and length of the controller's registers.
-- clocks, clock-names:
-	Phandle to HDMI controller clock, name should be "hclk".
-- interrupts:
-	HDMI interrupt number.
-- power-domains:
-	Phandle to the RK3066_PD_VIO power domain.
-- rockchip,grf:
-	This soc uses GRF regs to switch the HDMI TX input between vop0 and vop1.
-- ports:
-	Contains one port node with two endpoints, numbered 0 and 1,
-	connected respectively to vop0 and vop1.
-	Contains one port node with one endpoint
-	connected to a hdmi-connector node.
-- pinctrl-0, pinctrl-name:
-	Switch the iomux for the HPD/I2C pins to HDMI function.
-
-Example:
-	hdmi: hdmi@10116000 {
-		compatible = "rockchip,rk3066-hdmi";
-		reg = <0x10116000 0x2000>;
-		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru HCLK_HDMI>;
-		clock-names = "hclk";
-		power-domains = <&power RK3066_PD_VIO>;
-		rockchip,grf = <&grf>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&hdmii2c_xfer>, <&hdmi_hpd>;
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			hdmi_in: port@0 {
-				reg = <0>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				hdmi_in_vop0: endpoint@0 {
-					reg = <0>;
-					remote-endpoint = <&vop0_out_hdmi>;
-				};
-				hdmi_in_vop1: endpoint@1 {
-					reg = <1>;
-					remote-endpoint = <&vop1_out_hdmi>;
-				};
-			};
-			hdmi_out: port@1 {
-				reg = <1>;
-				hdmi_out_con: endpoint {
-					remote-endpoint = <&hdmi_con_in>;
-				};
-			};
-		};
-	};
-
-&pinctrl {
-		hdmi {
-			hdmi_hpd: hdmi-hpd {
-				rockchip,pins = <0 RK_PA0 1 &pcfg_pull_default>;
-			};
-			hdmii2c_xfer: hdmii2c-xfer {
-				rockchip,pins = <0 RK_PA1 1 &pcfg_pull_none>,
-						<0 RK_PA2 1 &pcfg_pull_none>;
-			};
-		};
-};
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
new file mode 100644
index 000000000..4110d003c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3066-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip rk3066 HDMI controller
+
+maintainers:
+  - Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
+  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
+
+properties:
+  compatible:
+    const: rockchip,rk3066-hdmi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: hclk
+
+  pinctrl-0:
+    maxItems: 2
+
+  pinctrl-names:
+    const: default
+    description:
+      Switch the iomux for the HPD/I2C pins to HDMI function.
+
+  power-domains:
+    maxItems: 1
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      This soc uses GRF regs to switch the HDMI TX input between vop0 and vop1.
+
+  ports:
+    type: object
+
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        type: object
+        description:
+          Port node with two endpoints, numbered 0 and 1,
+          connected respectively to vop0 and vop1.
+
+      port@1:
+        type: object
+        description:
+          Port node with one endpoint connected to a hdmi-connector node.
+
+    required:
+      - "#address-cells"
+      - "#size-cells"
+      - port@0
+      - port@1
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - pinctrl-0
+  - pinctrl-names
+  - power-domains
+  - rockchip,grf
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3066a-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/power/rk3066-power.h>
+    hdmi: hdmi@10116000 {
+      compatible = "rockchip,rk3066-hdmi";
+      reg = <0x10116000 0x2000>;
+      interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_HDMI>;
+      clock-names = "hclk";
+      pinctrl-0 = <&hdmii2c_xfer>, <&hdmi_hpd>;
+      pinctrl-names = "default";
+      power-domains = <&power RK3066_PD_VIO>;
+      rockchip,grf = <&grf>;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        hdmi_in: port@0 {
+          reg = <0>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+          hdmi_in_vop0: endpoint@0 {
+            reg = <0>;
+            remote-endpoint = <&vop0_out_hdmi>;
+          };
+          hdmi_in_vop1: endpoint@1 {
+            reg = <1>;
+            remote-endpoint = <&vop1_out_hdmi>;
+          };
+        };
+        hdmi_out: port@1 {
+          reg = <1>;
+          hdmi_out_con: endpoint {
+            remote-endpoint = <&hdmi_con_in>;
+          };
+        };
+      };
+    };
+
+    pinctrl {
+      hdmi {
+        hdmi_hpd: hdmi-hpd {
+          rockchip,pins = <0 RK_PA0 1 &pcfg_pull_default>;
+        };
+        hdmii2c_xfer: hdmii2c-xfer {
+          rockchip,pins = <0 RK_PA1 1 &pcfg_pull_none>,
+                          <0 RK_PA2 1 &pcfg_pull_none>;
+        };
+      };
+    };
-- 
2.11.0
