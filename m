From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH v4 5/5] usb: dwc3: rockchip: add devicetree bindings documentation
Date: Thu,  2 Jun 2016 20:34:56 +0800
Message-ID: <1464870896-25612-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, balbi@kernel.org, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, sergei.shtylyov@cogentembedded.com, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This patch adds the devicetree documentation required for Rockchip
USB3.0 core wrapper consisting of USB3.0 IP from Synopsys.

It supports DRD mode, and could operate in device mode (SS, HS, FS)
and host mode (SS, HS, FS, LS).

Signed-off-by: William Wu <william.wu@rock-chips.com>
---
Changes in v4:
- modify commit log, and add phy documentation location (Sergei)

Changes in v3:
- add dwc3 address (balbi)

Changes in v2:
- add rockchip,dwc3.txt to Documentation/devicetree/bindings/ (balbi, Brian)

 .../devicetree/bindings/usb/rockchip,dwc3.txt      | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
new file mode 100644
index 0000000..0edf013
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
@@ -0,0 +1,46 @@
+Rockchip SuperSpeed DWC3 USB SoC controller
+
+Required properties:
+- compatible:	should contain "rockchip,dwc3"
+- clocks:		A list of phandle + clock-specifier pairs for the
+				clocks listed in clock-names
+- clock-names:	Should contain the following:
+  "clk_usb3otg0_ref"	Controller reference clk
+  "clk_usb3otg0_suspend"Controller suspend clk, can use 24 MHz or 32 KHz
+  "aclk_usb3"		Master/Core clock, have to be >= 62.5 MHz for SS operation
+
+
+Optional clocks:
+  "aclk_usb3otg0"	Aclk for specific usb controller clock.
+  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present on all platforms.
+  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
+
+Required child node:
+A child node must exist to represent the core DWC3 IP block. The name of
+the node is not important. The content of the node is defined in dwc3.txt.
+
+Phy documentation is provided in the following places:
+Documentation/devicetree/bindings/phy/rockchip,dwc3-usb-phy.txt
+
+Example device nodes:
+
+	usbdrd3_0: usb@fe800000 {
+		compatible = "rockchip,dwc3";
+		clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
+			 <&cru ACLK_USB3>, <&cru ACLK_USB3OTG0>,
+			 <&cru ACLK_USB3_RKSOC_AXI_PERF>, <&cru ACLK_USB3_GRF>;
+		clock-names = "clk_usb3otg0_ref", "clk_usb3otg0_suspend",
+			      "aclk_usb3", "aclk_usb3otg0",
+			      "aclk_usb3_rksoc_axi_perf", "aclk_usb3_grf";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+		usbdrd_dwc3_0: dwc3@fe800000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xfe800000 0x0 0x100000>;
+			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+			dr_mode = "otg";
+			status = "disabled";
+		};
+	};
-- 
1.9.1
