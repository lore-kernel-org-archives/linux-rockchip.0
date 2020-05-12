From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 3/3] include: dt-bindings: rockchip: remove unused defines
Date: Tue, 12 May 2020 22:35:24 +0200
Message-ID: <20200512203524.7317-3-jbx6244@gmail.com>
References: <20200512203524.7317-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200512203524.7317-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-gpio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The Rockchip dtsi and dts files have been bulk-converted for the
remaining raw gpio numbers into their descriptive counterparts and
also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
mappings, so remove the unused defines in 'rockchip.h' to prevent
that someone start using them again.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 include/dt-bindings/pinctrl/rockchip.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
index 6d6bac1c2..5f291045e 100644
--- a/include/dt-bindings/pinctrl/rockchip.h
+++ b/include/dt-bindings/pinctrl/rockchip.h
@@ -9,13 +9,6 @@
 #ifndef __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 #define __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 
-#define RK_GPIO0	0
-#define RK_GPIO1	1
-#define RK_GPIO2	2
-#define RK_GPIO3	3
-#define RK_GPIO4	4
-#define RK_GPIO6	6
-
 #define RK_PA0		0
 #define RK_PA1		1
 #define RK_PA2		2
@@ -50,9 +43,5 @@
 #define RK_PD7		31
 
 #define RK_FUNC_GPIO	0
-#define RK_FUNC_1	1 /* deprecated */
-#define RK_FUNC_2	2 /* deprecated */
-#define RK_FUNC_3	3 /* deprecated */
-#define RK_FUNC_4	4 /* deprecated */
 
 #endif
-- 
2.11.0
