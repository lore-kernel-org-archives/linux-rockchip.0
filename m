From: Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/5] drm: rockchip: add missing registers for RK3188
Date: Sat, 18 Jul 2020 22:03:20 +0200
Message-ID: <20200718200323.3559-3-knaerzche@gmail.com>
References: <20200718200323.3559-1-knaerzche@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200718200323.3559-1-knaerzche@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner=20?= <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds dither_up, dsp_lut_en, data_blank and dsp_data_swap
registers to enable their respective functionality for RK3188's VOP.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index b046910129fb..971a6bda7458 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -512,6 +512,10 @@ static const struct vop_common rk3188_common = {
 	.dither_down_en = VOP_REG(RK3188_DSP_CTRL0, 0x1, 11),
 	.dither_down_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 10),
 	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x3, 24),
+	.dither_up = VOP_REG(RK3188_DSP_CTRL0, 0x1, 9),
+	.dsp_lut_en = VOP_REG(RK3188_SYS_CTRL, 0x1, 28),
+	.data_blank = VOP_REG(RK3188_DSP_CTRL1, 0x1, 25),
+	.dsp_data_swap = VOP_REG(RK3188_DSP_CTRL1, 0x1f, 26),
 };
 
 static const struct vop_win_data rk3188_vop_win_data[] = {
-- 
2.17.1
