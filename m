From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH] drm: sysfs: Add to get current mode
Date: Wed,  5 Aug 2020 16:36:46 +0800
Message-ID: <20200805083646.4123-1-hjc@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: huangtao@rock-chips.com, andy.yan@rock-chips.com, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, kever.yang@rock-chips.com, Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

add this node to get the current true mode.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/drm_sysfs.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
index 939f0032aab1..f39bcd34853b 100644
--- a/drivers/gpu/drm/drm_sysfs.c
+++ b/drivers/gpu/drm/drm_sysfs.c
@@ -19,6 +19,7 @@
 #include <linux/slab.h>
 
 #include <drm/drm_connector.h>
+#include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_file.h>
 #include <drm/drm_modes.h>
@@ -236,16 +237,45 @@ static ssize_t modes_show(struct device *device,
 	return written;
 }
 
+static ssize_t current_mode_show(struct device *device,
+		      struct device_attribute *attr,
+		      char *buf)
+{
+	struct drm_connector *connector = to_drm_connector(device);
+	struct drm_display_mode *mode;
+	struct drm_crtc_state *crtc_state;
+	bool interlaced;
+	int written = 0;
+
+	if (!connector->state || !connector->state->crtc)
+		return written;
+
+	crtc_state = connector->state->crtc->state;
+	if (!crtc_state)
+		return written;
+
+	mode = &crtc_state->mode;
+
+	interlaced = !!(mode->flags & DRM_MODE_FLAG_INTERLACE);
+	written += snprintf(buf + written, PAGE_SIZE - written, "%dx%d%s%d\n",
+			    mode->hdisplay, mode->vdisplay,
+			    interlaced ? "i" : "p", drm_mode_vrefresh(mode));
+
+	return written;
+}
+
 static DEVICE_ATTR_RW(status);
 static DEVICE_ATTR_RO(enabled);
 static DEVICE_ATTR_RO(dpms);
 static DEVICE_ATTR_RO(modes);
+static DEVICE_ATTR_RO(current_mode);
 
 static struct attribute *connector_dev_attrs[] = {
 	&dev_attr_status.attr,
 	&dev_attr_enabled.attr,
 	&dev_attr_dpms.attr,
 	&dev_attr_modes.attr,
+	&dev_attr_current_mode.attr,
 	NULL
 };
 
-- 
2.17.1
