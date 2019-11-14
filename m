From: Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 1/2] drm/print: add DRM_DEV_WARN macro
Date: Thu, 14 Nov 2019 16:25:19 +0300
Message-ID: <20191114132520.7323-1-wambui.karugax@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add the DRM_DEV_WARN helper macro for printing warnings
that use device pointers in their log output format.
DRM_DEV_WARN can replace the use of dev_warn in such cases.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 include/drm/drm_print.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index 5b8049992c24..6ddf91c0cb29 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -329,6 +329,15 @@ void drm_err(const char *format, ...);
 #define DRM_WARN_ONCE(fmt, ...)						\
 	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
 
+/**
+ * Warning output.
+ *
+ * @dev: device pointer
+ * @fmt: printf() like format string.
+ */
+#define DRM_DEV_WARN(dev, fmt, ...)					\
+	drm_dev_printk(dev, KERN_WARNING, fmt, ##__VA_ARGS__)
+
 /**
  * Error output.
  *
-- 
2.17.1
