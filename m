From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v2] drm/rockchip: vop: remove hardware cursor window
Date: Thu,  2 Jul 2015 15:07:31 +0800
Message-ID: <1435820852-27858-1-git-send-email-mark.yao@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: tfiga@chromium.org, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Kurtz <djkurtz@chromium.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Mark Yao <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

hardware cursor windows only have some fixed size, and not support
width virtual, when move hardware cursor windows outside of left,
the display would be wrong, so this window can't for cursor now.

And Tag hardware cursor window as a overlay is wrong, will make
userspace wrong behaviour.

So just remove the hardware cursor window

Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
---
Changes in v2:
remove unused cursor_data struct.

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |   11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 4603412..ecdba75 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -313,16 +313,6 @@ static const struct vop_win_phy win23_data = {
 	.dst_alpha_ctl = VOP_REG(WIN2_DST_ALPHA_CTRL, 0xff, 0),
 };
 
-static const struct vop_win_phy cursor_data = {
-	.data_formats = formats_234,
-	.nformats = ARRAY_SIZE(formats_234),
-	.enable = VOP_REG(HWC_CTRL0, 0x1, 0),
-	.format = VOP_REG(HWC_CTRL0, 0x7, 1),
-	.rb_swap = VOP_REG(HWC_CTRL0, 0x1, 12),
-	.dsp_st = VOP_REG(HWC_DSP_ST, 0x1fff1fff, 0),
-	.yrgb_mst = VOP_REG(HWC_MST, 0xffffffff, 0),
-};
-
 static const struct vop_ctrl ctrl_data = {
 	.standby = VOP_REG(SYS_CTRL, 0x1, 22),
 	.gate_en = VOP_REG(SYS_CTRL, 0x1, 23),
@@ -368,7 +358,6 @@ static const struct vop_win_data rk3288_vop_win_data[] = {
 	{ .base = 0x40, .phy = &win01_data, .type = DRM_PLANE_TYPE_OVERLAY },
 	{ .base = 0x00, .phy = &win23_data, .type = DRM_PLANE_TYPE_OVERLAY },
 	{ .base = 0x50, .phy = &win23_data, .type = DRM_PLANE_TYPE_CURSOR },
-	{ .base = 0x00, .phy = &cursor_data, .type = DRM_PLANE_TYPE_OVERLAY },
 };
 
 static const struct vop_data rk3288_vop = {
-- 
1.7.9.5
