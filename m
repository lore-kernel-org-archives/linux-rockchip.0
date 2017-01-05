From: Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 5/5] drm/rockchip: Implement CRC debugfs API
Date: Thu,  5 Jan 2017 14:06:48 +0100
Message-ID: <20170105130648.3139-6-tomeu.vizoso@collabora.com>
References: <20170105130648.3139-1-tomeu.vizoso@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170105130648.3139-1-tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Emil Velikov <emil.l.velikov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Benjamin Gaignard <benjamin.gaignard-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, intel-gfx-trybot-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Daniel Vetter <daniel.vetter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Implement the .set_crc_source() callback and call the DP helpers
accordingly to start and stop CRC capture.

This is only done if this CRTC is currently using the eDP connector.

Signed-off-by: Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 48 +++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index fb5f001f51c3..5e19bef6d5b4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -19,6 +19,7 @@
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_flip_work.h>
 #include <drm/drm_plane_helper.h>
+#include <drm/bridge/analogix_dp.h>
 
 #include <linux/kernel.h>
 #include <linux/module.h>
@@ -1105,6 +1106,52 @@ static void vop_crtc_destroy_state(struct drm_crtc *crtc,
 	kfree(s);
 }
 
+static struct drm_connector *vop_get_edp_connector(struct vop *vop)
+{
+	struct drm_crtc *crtc = &vop->crtc;
+	struct drm_connector *connector;
+
+	mutex_lock(&crtc->dev->mode_config.mutex);
+	drm_for_each_connector(connector, crtc->dev)
+		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
+			mutex_unlock(&crtc->dev->mode_config.mutex);
+			return connector;
+		}
+	mutex_unlock(&crtc->dev->mode_config.mutex);
+
+	return NULL;
+}
+
+static int vop_crtc_set_crc_source(struct drm_crtc *crtc,
+				   const char *source_name, size_t *values_cnt)
+{
+	struct vop *vop = to_vop(crtc);
+	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc->state);
+	struct drm_connector *connector;
+	int ret;
+
+	connector = vop_get_edp_connector(vop);
+	if (!connector)
+		return -EINVAL;
+
+	*values_cnt = 3;
+
+	if (source_name &&
+	    strcmp(source_name, "auto") == 0) {
+
+		if (s->output_type != DRM_MODE_CONNECTOR_eDP)
+			return -EINVAL;
+
+		ret = analogix_dp_start_crc(connector);
+	} else if (!source_name)
+
+		ret = analogix_dp_stop_crc(connector);
+	else
+		ret = -EINVAL;
+
+	return ret;
+}
+
 static const struct drm_crtc_funcs vop_crtc_funcs = {
 	.set_config = drm_atomic_helper_set_config,
 	.page_flip = drm_atomic_helper_page_flip,
@@ -1112,6 +1159,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
 	.reset = vop_crtc_reset,
 	.atomic_duplicate_state = vop_crtc_duplicate_state,
 	.atomic_destroy_state = vop_crtc_destroy_state,
+	.set_crc_source = vop_crtc_set_crc_source,
 };
 
 static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
-- 
2.9.3
