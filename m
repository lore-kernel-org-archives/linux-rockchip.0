From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/3] arm64: dts: rockchip: replace RK_FUNC defines in rk3326-odroid-go2.dts
Date: Tue, 12 May 2020 22:35:22 +0200
Message-ID: <20200512203524.7317-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-gpio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The defines RK_FUNC_1 and RK_FUNC_2 are deprecated,
so replace them with the preferred form.
Restyle properties in the same line.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index fe253669b..46826b6e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -543,18 +543,15 @@
 		};
 
 		soc_slppin_gpio: soc_slppin_gpio {
-			rockchip,pins =
-				<0 RK_PA4 RK_FUNC_GPIO &pcfg_output_low>;
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_output_low>;
 		};
 
 		soc_slppin_rst: soc_slppin_rst {
-			rockchip,pins =
-				<0 RK_PA4 RK_FUNC_2 &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PA4 2 &pcfg_pull_none>;
 		};
 
 		soc_slppin_slp: soc_slppin_slp {
-			rockchip,pins =
-				<0 RK_PA4 RK_FUNC_1 &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PA4 1 &pcfg_pull_none>;
 		};
 	};
 };
-- 
2.11.0
