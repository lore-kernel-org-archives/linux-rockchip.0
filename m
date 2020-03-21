From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/6] arm64: dts: rockchip: fix rtl8211f nodename for rk3328 Beelink A1
Date: Sat, 21 Mar 2020 22:54:19 +0100
Message-ID: <20200321215423.12176-2-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robin.murphy@arm.com, aballier@gentoo.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: phy@0:
'#phy-cells' is a required property

The rtl8211f node is used by a phy-handle.
The parent node is compatible with "snps,dwmac-mdio",
so change nodename to 'ethernet-phy', for which '#phy-cells'
is not a required property.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 16f1656d5..fbd06a351 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -114,7 +114,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211f: phy@0 {
+		rtl8211f: ethernet-phy@0 {
 			reg = <0>;
 			reset-assert-us = <10000>;
 			reset-deassert-us = <30000>;
-- 
2.11.0
