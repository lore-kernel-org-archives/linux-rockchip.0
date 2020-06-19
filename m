From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v2] drm/rockchip: vop: fix vop full rgb24 r/b color error
Date: Fri, 19 Jun 2020 16:53:02 +0800
Message-ID: <20200619085302.2263-1-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: heiko@sntech.de, Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: huangtao@rock-chips.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

RGB888 format msb is red component and the lsb is blue component,
at vop full platform this is swapped, and this is different from vop
lite and vop next, so add this patch to fix it.

v2:
    move to has_rb_swapped() function.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index c80f7d9fd13f..99bdb5a2a185 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -132,6 +132,7 @@ struct vop_win {
 
 struct rockchip_rgb;
 struct vop {
+	uint32_t version;
 	struct drm_crtc crtc;
 	struct device *dev;
 	struct drm_device *drm_dev;
@@ -248,17 +249,28 @@ static inline void vop_cfg_done(struct vop *vop)
 	VOP_REG_SET(vop, common, cfg_done, 1);
 }
 
-static bool has_rb_swapped(uint32_t format)
+static bool has_rb_swapped(struct vop *vop, uint32_t format)
 {
+	bool rb_swapped;
+
 	switch (format) {
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ABGR8888:
 	case DRM_FORMAT_BGR888:
 	case DRM_FORMAT_BGR565:
-		return true;
+		rb_swapped = true;
 	default:
-		return false;
+		rb_swapped = false;
 	}
+
+	/*
+	 * VOP full need to do rb swap to show rgb888/bgr888 format color correctly
+	 */
+	if ((format == DRM_FORMAT_RGB888 || format == DRM_FORMAT_BGR888) &&
+	    VOP_MAJOR(vop->version) == 3)
+		rb_swapped = !rb_swapped;
+
+	return rb_swapped;
 }
 
 static enum vop_data_format vop_convert_format(uint32_t format)
@@ -988,7 +1000,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	VOP_WIN_SET(vop, win, dsp_info, dsp_info);
 	VOP_WIN_SET(vop, win, dsp_st, dsp_st);
 
-	rb_swap = has_rb_swapped(fb->format->format);
+	rb_swap = has_rb_swapped(vop, fb->format->format);
 	VOP_WIN_SET(vop, win, rb_swap, rb_swap);
 
 	/*
@@ -2091,6 +2103,7 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 	vop->dev = dev;
 	vop->data = vop_data;
 	vop->drm_dev = drm_dev;
+	vop->version = vop_data->version;
 	dev_set_drvdata(dev, vop);
 
 	vop_win_init(vop);
-- 
2.17.1
