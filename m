From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 1/6] arm64: dts: rockchip: fix phy nodename for rk3328
Date: Sat, 21 Mar 2020 22:54:18 +0100
Message-ID: <20200321215423.12176-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robin.murphy@arm.com, aballier@gentoo.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: phy@0:
'#phy-cells' is a required property

The phy nodename is used by a phy-handle.
The parent node is compatible with "snps,dwmac-mdio",
so change nodename to 'ethernet-phy', for which '#phy-cells'
is not a required property

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 54b3f4616..8976c869f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -934,7 +934,7 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			phy: phy@0 {
+			phy: ethernet-phy@0 {
 				compatible = "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22";
 				reg = <0>;
 				clocks = <&cru SCLK_MAC2PHY_OUT>;
-- 
2.11.0
