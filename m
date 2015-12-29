From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] Documentation: bindings: add dt documentation for Rockchip eMMC PHY
Date: Tue, 29 Dec 2015 09:51:30 +0800
Message-ID: <1451353890-23813-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This patch adds a binding that describes the Rockchip eMMC PHYs
found on Rockchip SoCs eMMC interface.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 .../devicetree/bindings/phy/rockchip-emmc-phy.txt     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
new file mode 100644
index 0000000..61916f1
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
@@ -0,0 +1,19 @@
+Rockchip EMMC PHY
+-----------------------
+
+Required properties:
+ - compatible: rockchip,rk3399-emmc-phy
+ - rockchip,grf : phandle to the syscon managing the "general
+   register files"
+ - #phy-cells: must be 0
+ - reg: PHY configure reg address offset in "general
+   register files"
+
+Example:
+
+emmcphy: phy {
+	compatible = "rockchip,rk3399-emmc-phy";
+	rockchip,grf = <&grf>;
+	reg = <0xf780>;
+	#phy-cells = <0>;
+};
-- 
2.3.7
