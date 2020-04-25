From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: remove extra assigned-clocks property from &gmac2phy node in rk3328-evb.dts
Date: Sat, 25 Apr 2020 14:23:44 +0200
Message-ID: <20200425122345.12902-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

There are 2 'assigned-clocks' properties in the '&gmac2phy'
node in 'rk3328-evb.dts', so remove one of them.

Info from clk-rk3328.c:

MUXGRF(SCLK_MAC2PHY, "clk_mac2phy", mux_mac2phy_src_p,
CLK_SET_RATE_NO_REPARENT,
RK3328_GRF_MAC_CON2, 10, 1, MFLAGS),

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 49c4b96da..ab69b493d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -82,7 +82,6 @@
 &gmac2phy {
 	phy-supply = <&vcc_phy>;
 	clock_in_out = "output";
-	assigned-clocks = <&cru SCLK_MAC2PHY_SRC>;
 	assigned-clock-rate = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
-- 
2.11.0
