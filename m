From: Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 5/5] drm: rockchip: use overlay windows as such
Date: Sat, 18 Jul 2020 22:03:23 +0200
Message-ID: <20200718200323.3559-6-knaerzche@gmail.com>
References: <20200718200323.3559-1-knaerzche@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200718200323.3559-1-knaerzche@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner=20?= <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

As stated in the comment for rk3288_vop_win_data windows
that are supposed to be an overlay window are missused as HWC windows
due to the missing implementation of that window type in VOP driver.

This is also true for RK3036, RK3126, RK3188 and RK3228 VOPs which
all have at least one dedicated HWC window (which are currently not
definded in the driver).
Since all of the mentioned VOPs have only one overlay window and all
of them support alpha blending now it should be used as such, since
this gives a much wider usage-perspective for them.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index f2f9a9af39e3..756c580f206a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -131,7 +131,7 @@ static const struct vop_win_data rk3036_vop_win_data[] = {
 	{ .base = 0x00, .phy = &rk3036_win0_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
 	{ .base = 0x00, .phy = &rk3036_win1_data,
-	  .type = DRM_PLANE_TYPE_CURSOR },
+	  .type = DRM_PLANE_TYPE_OVERLAY },
 };
 
 static const int rk3036_vop_intrs[] = {
@@ -200,7 +200,7 @@ static const struct vop_win_data rk3126_vop_win_data[] = {
 	{ .base = 0x00, .phy = &rk3036_win0_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
 	{ .base = 0x00, .phy = &rk3126_win1_data,
-	  .type = DRM_PLANE_TYPE_CURSOR },
+	  .type = DRM_PLANE_TYPE_OVERLAY },
 };
 
 static const struct vop_data rk3126_vop = {
@@ -543,7 +543,7 @@ static const struct vop_win_data rk3188_vop_win_data[] = {
 	{ .base = 0x00, .phy = &rk3188_win0_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
 	{ .base = 0x00, .phy = &rk3188_win1_data,
-	  .type = DRM_PLANE_TYPE_CURSOR },
+	  .type = DRM_PLANE_TYPE_OVERLAY },
 };
 
 static const int rk3188_vop_intrs[] = {
@@ -980,7 +980,7 @@ static const struct vop_win_data rk3228_vop_win_data[] = {
 	{ .base = 0x00, .phy = &rk3288_win01_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
 	{ .base = 0x40, .phy = &rk3288_win01_data,
-	  .type = DRM_PLANE_TYPE_CURSOR },
+	  .type = DRM_PLANE_TYPE_OVERLAY },
 };
 
 static const struct vop_data rk3228_vop = {
-- 
2.17.1
