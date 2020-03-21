From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 5/6] arm64: dts: rockchip: fix rtl8211e nodename for rk3399-orangepi
Date: Sat, 21 Mar 2020 22:54:22 +0100
Message-ID: <20200321215423.12176-5-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robin.murphy@arm.com, aballier@gentoo.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399-orangepi.dt.yaml: phy@1:
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
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index f9f7246d4..afbcd213c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -214,7 +214,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211e: phy@1 {
+		rtl8211e: ethernet-phy@1 {
 			reg = <1>;
 			interrupt-parent = <&gpio3>;
 			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
-- 
2.11.0
