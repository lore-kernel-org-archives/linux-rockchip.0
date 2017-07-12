From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 09/16] drm/rockchip: Use for_each_oldnew_plane_in_state in
 vop_crtc_atomic_flush
Date: Wed, 12 Jul 2017 10:13:37 +0200
Message-ID: <20170712081344.25495-10-maarten.lankhorst@linux.intel.com>
References: <20170712081344.25495-1-maarten.lankhorst@linux.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170712081344.25495-1-maarten.lankhorst@linux.intel.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Mark Yao <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

for_each_obj_in_state is about to be removed, so use the new atomic
iterator macros.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Mark Yao <mark.yao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index ee876a9631f0..f90088b1a247 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1029,7 +1029,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
 				  struct drm_crtc_state *old_crtc_state)
 {
 	struct drm_atomic_state *old_state = old_crtc_state->state;
-	struct drm_plane_state *old_plane_state;
+	struct drm_plane_state *old_plane_state, *new_plane_state;
 	struct vop *vop = to_vop(crtc);
 	struct drm_plane *plane;
 	int i;
@@ -1060,11 +1060,12 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
 	}
 	spin_unlock_irq(&crtc->dev->event_lock);
 
-	for_each_plane_in_state(old_state, plane, old_plane_state, i) {
+	for_each_oldnew_plane_in_state(old_state, plane, old_plane_state,
+				       new_plane_state, i) {
 		if (!old_plane_state->fb)
 			continue;
 
-		if (old_plane_state->fb == plane->state->fb)
+		if (old_plane_state->fb == new_plane_state->fb)
 			continue;
 
 		drm_framebuffer_reference(old_plane_state->fb);
-- 
2.11.0
