From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 02/36] drm/rockchip: use bpp instead of cpp for drm_format_info
Date: Mon, 23 Sep 2019 20:38:51 +0800
Message-ID: <1569242365-182133-3-git-send-email-hjc@rock-chips.com>
References: <1569242365-182133-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1569242365-182133-1-git-send-email-hjc@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

cpp[BytePerPlane] can't describe the 10bit data format correctly,
So we use bpp[BitPerPlane] to instead cpp.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c  | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index ca01234..ee1158e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -81,7 +81,7 @@ rockchip_user_fb_create(struct drm_device *dev, struct drm_file *file_priv,
 
 		min_size = (height - 1) * mode_cmd->pitches[i] +
 			mode_cmd->offsets[i] +
-			width * info->cpp[i];
+			width * info->bpp[i] / 8;
 
 		if (obj->size < min_size) {
 			drm_gem_object_put_unlocked(obj);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 2f821c5..d90d4b6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -832,7 +832,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
 	dsp_st = dsp_sty << 16 | (dsp_stx & 0xffff);
 
-	offset = (src->x1 >> 16) * fb->format->cpp[0];
+	offset = (src->x1 >> 16) * fb->format->bpp[0] / 8;
 	offset += (src->y1 >> 16) * fb->pitches[0];
 	dma_addr = rk_obj->dma_addr + offset + fb->offsets[0];
 
@@ -859,7 +859,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	if (is_yuv) {
 		int hsub = fb->format->hsub;
 		int vsub = fb->format->vsub;
-		int bpp = fb->format->cpp[1];
+		int bpp = fb->format->bpp[1] / 8;
 
 		uv_obj = fb->obj[1];
 		rk_uv_obj = to_rockchip_obj(uv_obj);
-- 
2.7.4
