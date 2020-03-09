From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: remove rockchip,grf from vop nodes for px30
Date: Mon,  9 Mar 2020 09:16:00 +0100
Message-ID: <20200309081600.3887-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

An experimental test with the command below without
additional properties in 'rockchip-vop.yaml' gives this error:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff470000:
'power-domains', 'rockchip,grf'
do not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff460000:
'power-domains', 'rockchip,grf'
do not match any of the regexes: 'pinctrl-[0-9]+'

'rockchip,grf' is not used by the Rockchip VOP driver,
so remove it from 'vop' nodes in 'px30.dtsi'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/
rockchip/rockchip-vop.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 215515ccb..1bbed660f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1030,7 +1030,6 @@
 		reset-names = "axi", "ahb", "dclk";
 		iommus = <&vopb_mmu>;
 		power-domains = <&power PX30_PD_VO>;
-		rockchip,grf = <&grf>;
 		status = "disabled";
 
 		vopb_out: port {
@@ -1072,7 +1071,6 @@
 		reset-names = "axi", "ahb", "dclk";
 		iommus = <&vopl_mmu>;
 		power-domains = <&power PX30_PD_VO>;
-		rockchip,grf = <&grf>;
 		status = "disabled";
 
 		vopl_out: port {
-- 
2.11.0
