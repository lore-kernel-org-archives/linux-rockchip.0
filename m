From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 2/2] drm/rockchip: Base adjustments of the mode based on prev adjustments
Date: Fri, 14 Jun 2019 15:47:30 -0700
Message-ID: <20190614224730.98622-2-dianders@chromium.org>
References: <20190614224730.98622-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190614224730.98622-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de, seanpaul@chromium.org
Cc: linux-rockchip@lists.infradead.org, urjaman@gmail.com, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

In vop_crtc_mode_fixup() we fixup the mode to show what we actually
will be able to achieve.  However we should base our adjustments on
any previous adjustments that were made.

As an example, the dw_hdmi driver may wish to make some small
adjustments to clock rates in its atomic_check() function.  If it
does, it will update the adjusted_mode.  We shouldn't throw away those
adjustments.

NOTE: the version of the dw_hdmi driver upstream doesn't _actually_
make such adjustments, but downstream in Chrome OS it does.  It is
plausible that one day we'll figure out how to cleanly make that
happen in an upstream-friendly way, so we should prepare by using the
right mode.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index d124f34ab9fc..09a790c2f3a1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1006,8 +1006,8 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	struct vop *vop = to_vop(crtc);
 
 	adjusted_mode->clock =
-		DIV_ROUND_UP(clk_round_rate(vop->dclk, mode->clock * 1000),
-			     1000);
+		DIV_ROUND_UP(clk_round_rate(vop->dclk,
+					    adjusted_mode->clock * 1000), 1000);
 
 	return true;
 }
-- 
2.22.0.410.gd8fdbe21b5-goog
