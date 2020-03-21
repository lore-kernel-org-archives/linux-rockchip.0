From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 3/6] arm64: dts: rockchip: fix rtl8211e nodename for rk3399-nanopi4
Date: Sat, 21 Mar 2020 22:54:20 +0100
Message-ID: <20200321215423.12176-3-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200321215423.12176-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robin.murphy-5wv7dgnIgG8@public.gmane.org, aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dt.yaml: phy@1:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dt.yaml: phy@1:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dt.yaml: phy@1:
'#phy-cells' is a required property

The rtl8211e node is used by a phy-handle.
The parent node is compatible with "snps,dwmac-mdio",
so change nodename to 'ethernet-phy', for which '#phy-cells'
is not a required property.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index c88018a0e..20529105c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -182,7 +182,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211e: phy@1 {
+		rtl8211e: ethernet-phy@1 {
 			reg = <1>;
 			interrupt-parent = <&gpio3>;
 			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
-- 
2.11.0
