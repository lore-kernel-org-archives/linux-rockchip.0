From: Mark Yao <mark.yao@rock-chips.com>
Subject: [RFC PATCH 7/9] drm/rockchip: force enable vop when do mode setting
Date: Tue,  1 Dec 2015 11:32:01 +0800
Message-ID: <1448940721-23488-1-git-send-email-mark.yao@rock-chips.com>
References: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Mark Yao <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

When do mode setting, mean that we want to enable display output,
but sometimes, vop_crtc_enable is after mode_set, we can't allow
that, so force enable vop in mode setting.

Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index c65b454..7c07537 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1110,6 +1110,7 @@ static void vop_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	u16 vact_end = vact_st + vdisplay;
 	uint32_t val;
 
+	vop_crtc_enable(crtc);
 	/*
 	 * If dclk rate is zero, mean that scanout is stop,
 	 * we don't need wait any more.
-- 
1.7.9.5
