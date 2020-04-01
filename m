From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/2] arm64: dts: rockchip: add #phy-cells to all usb2-phy nodes
Date: Wed,  1 Apr 2020 09:37:25 +0200
Message-ID: <20200401073725.6063-2-jbx6244@gmail.com>
References: <20200401073725.6063-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200401073725.6063-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Current dts files for Rockchip with 'usb2-phy' subnodes
are manually verified. In order to automate this process
phy-rockchip-inno-usb2.txt has been converted to yaml.
'usb2-phy' nodes are now checked by:
'phy-rockchip-inno-usb2.yaml' and 'phy-provider.yaml'.
'#phy-cells' is now required for all usb2-phy nodes,
so add them.

make -k ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
phy/phy-rockchip-inno-usb2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++--
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index bd5f51d23..6f7171290 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -822,10 +822,11 @@
 			reg = <0x100 0x20>;
 			clocks = <&pmucru SCLK_USBPHY_REF>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
+			clock-output-names = "usb480m_phy";
 			assigned-clocks = <&cru USB480M>;
 			assigned-clock-parents = <&u2phy>;
-			clock-output-names = "usb480m_phy";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy_host: host-port {
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 8976c869f..470783a48 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -830,9 +830,10 @@
 			clocks = <&xin24m>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy";
-			#clock-cells = <0>;
 			assigned-clocks = <&cru USB480M>;
 			assigned-clock-parents = <&u2phy>;
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy_otg: otg-port {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3dc8fe620..a7ee5aa65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1391,8 +1391,9 @@
 			reg = <0xe450 0x10>;
 			clocks = <&cru SCLK_USB2PHY0_REF>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
 			clock-output-names = "clk_usbphy0_480m";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy0_host: host-port {
@@ -1418,8 +1419,9 @@
 			reg = <0xe460 0x10>;
 			clocks = <&cru SCLK_USB2PHY1_REF>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
 			clock-output-names = "clk_usbphy1_480m";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy1_host: host-port {
-- 
2.11.0
