From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in px30 dts files
Date: Wed, 15 Jul 2020 09:09:54 +0200
Message-ID: <20200715070954.1992-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

'bus-width' has been added to px30.dtsi mmc nodes, so now it can be
removed from the dts files that include it.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts          | 3 ---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 1 -
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 0a680257d..5fe905fae 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -145,7 +145,6 @@
 };
 
 &emmc {
-	bus-width = <8>;
 	cap-mmc-highspeed;
 	mmc-hs200-1_8v;
 	non-removable;
@@ -499,7 +498,6 @@
 };
 
 &sdmmc {
-	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	card-detect-delay = <800>;
@@ -513,7 +511,6 @@
 };
 
 &sdio {
-	bus-width = <4>;
 	cap-sd-highspeed;
 	keep-power-in-suspend;
 	non-removable;
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index b3a8f9365..35bd6b904 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -445,7 +445,6 @@
 };
 
 &sdmmc {
-	bus-width = <4>;
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	cd-gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_LOW>; /*[> CD GPIO <]*/
-- 
2.11.0
