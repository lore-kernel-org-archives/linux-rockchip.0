From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH 30/40] drm/rockchip: Flush PSR before committing modeset disables/enables
Date: Mon, 15 Jan 2018 18:16:04 +0100
Message-ID: <20180115171614.14474-31-thierry.escande@collabora.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-1-thierry.escande@collabora.com>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>
Cc: Tomasz Figa <tfiga@chromium.org>, Haixia Shi <hshi@chromium.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>, zain wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

From: Tomasz Figa <tfiga@chromium.org>

Currently PSR flush is triggered from CRTC's .atomic_begin() callback,
which is executed after modeset disables and enables and before plane
updates are committed. Since PSR flush and re-enable can be triggered
asynchronously by external sources (input event, delayed work), it can
race with hardware programming done in the aforementioned stages.

To avoid the race, we can trigger PSR flush before committing modeset
disables/enables. This also has the advantage of removing some
PSR-specific knowledge from the VOP driver.

Cc: Kristian H. Kristensen <hoegsberg@chromium.org>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c  | 21 ++++++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  7 -------
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index e266539e04e5..aaeb38ada2ba 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -167,8 +167,27 @@ rockchip_user_fb_create(struct drm_device *dev, struct drm_file *file_priv,
 	return ERR_PTR(ret);
 }
 
+static void
+rockchip_drm_psr_flush_state(struct drm_atomic_state *state)
+{
+	struct drm_crtc_state *crtc_state;
+	struct drm_crtc *crtc;
+	int i;
+
+	for_each_new_crtc_in_state(state, crtc, crtc_state, i)
+		rockchip_drm_psr_flush(crtc);
+}
+
+static void
+rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
+{
+	rockchip_drm_psr_flush_state(old_state);
+
+	drm_atomic_helper_commit_tail_rpm(old_state);
+}
+
 static const struct drm_mode_config_helper_funcs rockchip_mode_config_helpers = {
-	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
+	.atomic_commit_tail = rockchip_atomic_helper_commit_tail_rpm,
 };
 
 static const struct drm_mode_config_funcs rockchip_drm_mode_config_funcs = {
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index bf4b1a2f3fa4..ba9913961273 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1035,16 +1035,9 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
 	}
 }
 
-static void vop_crtc_atomic_begin(struct drm_crtc *crtc,
-				  struct drm_crtc_state *old_crtc_state)
-{
-	rockchip_drm_psr_flush(crtc);
-}
-
 static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
 	.mode_fixup = vop_crtc_mode_fixup,
 	.atomic_flush = vop_crtc_atomic_flush,
-	.atomic_begin = vop_crtc_atomic_begin,
 	.atomic_enable = vop_crtc_atomic_enable,
 	.atomic_disable = vop_crtc_atomic_disable,
 };
-- 
2.14.1
