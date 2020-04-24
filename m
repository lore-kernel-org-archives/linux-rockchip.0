From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] include: dt-bindings: rockchip: mark RK_GPIO defines as deprecated
Date: Fri, 24 Apr 2020 17:11:05 +0200
Message-ID: <20200424151105.18736-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The defines RK_GPIO0, RK_GPIO1, RK_GPIO2, RK_GPIO3,
RK_GPIO4 and RK_GPIO6 are no longer used. Mark them as
"deprecated" to prevent that someone start using them again.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 include/dt-bindings/pinctrl/rockchip.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
index 6d6bac1c2..e379ec110 100644
--- a/include/dt-bindings/pinctrl/rockchip.h
+++ b/include/dt-bindings/pinctrl/rockchip.h
@@ -9,12 +9,12 @@
 #ifndef __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 #define __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 
-#define RK_GPIO0	0
-#define RK_GPIO1	1
-#define RK_GPIO2	2
-#define RK_GPIO3	3
-#define RK_GPIO4	4
-#define RK_GPIO6	6
+#define RK_GPIO0	0 /* deprecated */
+#define RK_GPIO1	1 /* deprecated */
+#define RK_GPIO2	2 /* deprecated */
+#define RK_GPIO3	3 /* deprecated */
+#define RK_GPIO4	4 /* deprecated */
+#define RK_GPIO6	6 /* deprecated */
 
 #define RK_PA0		0
 #define RK_PA1		1
-- 
2.11.0
