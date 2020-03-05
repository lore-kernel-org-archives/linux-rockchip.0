From: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 3/4] arm64: dts: rockchip: remove enable-gpio of backlight on rk3399 evb
Date: Thu,  5 Mar 2020 19:39:11 +0800
Message-ID: <20200305113912.32226-4-andy.yan@rock-chips.com>
References: <20200305113912.32226-1-andy.yan@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200305113912.32226-1-andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

There is no enable-gpio for backlight control on rk3399 evb,
actually GPIO1_B5 is for LCD panle enable. So remove it from backlight
dt node.

Signed-off-by: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index af6e23568504..d4e402b40d08 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -48,7 +48,6 @@
 			240 241 242 243 244 245 246 247
 			248 249 250 251 252 253 254 255>;
 		default-brightness-level = <200>;
-		enable-gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
 		pwms = <&pwm0 0 25000 0>;
 	};
 
-- 
2.17.1
