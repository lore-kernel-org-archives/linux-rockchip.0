From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 5/5] video: rockchip: Support 4K resolution for rk3399, HDMI
Date: Thu,  2 Apr 2020 17:11:25 +0530
Message-ID: <20200402114125.2501-6-jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200402114125.2501-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Anatolij Gustschin <agust-ynQEQJNshbs@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The default resolution for rockchip display is 1920x1080
which failed to work on 4K HDMI out displays on rk3399.

So, mark the default resolution as 3480x2160 for rk3399
HDMI out.

This would work all the hdmi display resolutions till
4K.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v3:
- new patch

 drivers/video/rockchip/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/rockchip/Kconfig b/drivers/video/rockchip/Kconfig
index 10182d0b66..cfd774ead6 100644
--- a/drivers/video/rockchip/Kconfig
+++ b/drivers/video/rockchip/Kconfig
@@ -22,6 +22,7 @@ menuconfig VIDEO_ROCKCHIP
 config VIDEO_ROCKCHIP_MAX_XRES
         int "Maximum horizontal resolution (for memory allocation purposes)"
 	depends on VIDEO_ROCKCHIP
+	default 3480 if ROCKCHIP_RK3399 && DISPLAY_ROCKCHIP_HDMI
 	default 1920
 	help
 	  The maximum horizontal resolution to support for the framebuffer.
@@ -31,6 +32,7 @@ config VIDEO_ROCKCHIP_MAX_XRES
 config VIDEO_ROCKCHIP_MAX_YRES
         int "Maximum vertical resolution (for memory allocation purposes)"
 	depends on VIDEO_ROCKCHIP
+	default 2160 if ROCKCHIP_RK3399 && DISPLAY_ROCKCHIP_HDMI
 	default 1080
 	help
 	  The maximum vertical resolution to support for the framebuffer.
-- 
2.17.1
