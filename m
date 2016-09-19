From: John Keeping <john@metanate.com>
Subject: [PATCH 22/26] drm/rockchip: vop: test for P{H,V}SYNC
Date: Mon, 19 Sep 2016 18:17:41 +0100
Message-ID: <20160919171747.28512-32-john@metanate.com>
References: <20160919171747.28512-1-john@metanate.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160919171747.28512-1-john@metanate.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, John Keeping <john@metanate.com>
List-Id: linux-rockchip.vger.kernel.org

When connected to the MIPI DSI output, we need to use N{H,V}SYNC for the
internal connection but these flags are meaningless for DSI panels.
Switch the test so that we do not set the P{H,V}SYNC bits unless the
mode requires it.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index d486049f9722..7c4ce1b2e694 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1030,8 +1030,8 @@ static void vop_crtc_enable(struct drm_crtc *crtc)
 	}
 
 	pin_pol = 0x8;
-	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_NHSYNC) ? 0 : 1;
-	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_NVSYNC) ? 0 : (1 << 1);
+	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
+	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC) ? (1 << 1) : 0;
 	VOP_CTRL_SET(vop, pin_pol, pin_pol);
 
 	switch (s->output_type) {
-- 
2.10.0.278.g4f427b1.dirty
