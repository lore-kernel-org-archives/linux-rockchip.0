From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in rk3308-roc-cc.dts
Date: Wed, 15 Apr 2020 15:10:57 +0200
Message-ID: <20200415131057.2366-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The 'bus-width' property for mmc nodes is defined both in
'rk3308.dtsi' and 'rk3308-roc-cc.dts'.
'bus-width' and pinctrl containing the bus-pins
should be in the same file, so remove all entries
from mmc nodes in 'rk3308-roc-cc.dts'.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index aa256350b..8011e9b12 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -123,7 +123,6 @@
 };
 
 &emmc {
-	bus-width = <8>;
 	cap-mmc-highspeed;
 	disable-wp;
 	mmc-hs200-1_8v;
@@ -171,7 +170,6 @@
 };
 
 &sdmmc {
-	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	card-detect-delay = <300>;
-- 
2.11.0
