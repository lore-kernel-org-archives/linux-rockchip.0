From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v8 3/3] drm/rockchip: Add directly output rgb feature for px30
Date: Thu, 30 Aug 2018 23:12:07 +0200
Message-ID: <20180830211207.10480-4-heiko@sntech.de>
References: <20180830211207.10480-1-heiko@sntech.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180830211207.10480-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: hjc@rock-chips.com
Cc: seanpaul@chromium.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

From: Sandy Huang <hjc@rock-chips.com>

Add this feature bit indicate px30 vop can directly output
parallel or serial rgb data.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 7f29913824ce..09910d3b01ce 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -276,6 +276,7 @@ static const struct vop_win_data px30_vop_big_win_data[] = {
 
 static const struct vop_data px30_vop_big = {
 	.intr = &px30_intr,
+	.feature = VOP_FEATURE_INTERNAL_RGB,
 	.common = &px30_common,
 	.modeset = &px30_modeset,
 	.output = &px30_output,
@@ -290,6 +291,7 @@ static const struct vop_win_data px30_vop_lit_win_data[] = {
 
 static const struct vop_data px30_vop_lit = {
 	.intr = &px30_intr,
+	.feature = VOP_FEATURE_INTERNAL_RGB,
 	.common = &px30_common,
 	.modeset = &px30_modeset,
 	.output = &px30_output,
-- 
2.17.0
