From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v8 2/8] drm/bridge: analogix_dp: Fix connector and encoder
 cleanup
Date: Wed, 10 Jan 2018 17:23:42 +0100
Message-ID: <20180110162348.22765-3-thierry.escande@collabora.com>
References: <20180110162348.22765-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180110162348.22765-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Transfert-Encoding: 8bit
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Daniel Vetter <daniel.vetter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Since we are initing connector in the core driver and encoder in the
plat driver, let's clean them up in the right places.

Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  2 --
 drivers/gpu/drm/exynos/exynos_dp.c                 |  7 +++++--
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    | 12 +++++-------
 3 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 878f61b65cb2..cb5e18d6ba04 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1411,7 +1411,6 @@ analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 	ret = analogix_dp_create_bridge(drm_dev, dp);
 	if (ret) {
 		DRM_ERROR("failed to create bridge (%d)\n", ret);
-		drm_encoder_cleanup(dp->encoder);
 		goto err_disable_pm_runtime;
 	}
 
@@ -1434,7 +1433,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 {
 	analogix_dp_bridge_disable(dp->bridge);
 	dp->connector.funcs->destroy(&dp->connector);
-	dp->encoder->funcs->destroy(dp->encoder);
 
 	if (dp->plat_data->panel) {
 		if (drm_panel_unprepare(dp->plat_data->panel))
diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
index f7e5b2c405ed..33319a858f3a 100644
--- a/drivers/gpu/drm/exynos/exynos_dp.c
+++ b/drivers/gpu/drm/exynos/exynos_dp.c
@@ -185,8 +185,10 @@ static int exynos_dp_bind(struct device *dev, struct device *master, void *data)
 	dp->plat_data.encoder = encoder;
 
 	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
-	if (IS_ERR(dp->adp))
+	if (IS_ERR(dp->adp)) {
+		dp->encoder.funcs->destroy(&dp->encoder);
 		return PTR_ERR(dp->adp);
+	}
 
 	return 0;
 }
@@ -196,7 +198,8 @@ static void exynos_dp_unbind(struct device *dev, struct device *master,
 {
 	struct exynos_dp_device *dp = dev_get_drvdata(dev);
 
-	return analogix_dp_unbind(dp->adp);
+	analogix_dp_unbind(dp->adp);
+	dp->encoder.funcs->destroy(&dp->encoder);
 }
 
 static const struct component_ops exynos_dp_ops = {
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 8a58ad80f509..37250ab63bd7 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -259,13 +259,8 @@ static struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs = {
 	.atomic_check = rockchip_dp_drm_encoder_atomic_check,
 };
 
-static void rockchip_dp_drm_encoder_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
 static struct drm_encoder_funcs rockchip_dp_encoder_funcs = {
-	.destroy = rockchip_dp_drm_encoder_destroy,
+	.destroy = drm_encoder_cleanup,
 };
 
 static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
@@ -362,8 +357,10 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 	rockchip_drm_psr_register(&dp->encoder, analogix_dp_psr_set);
 
 	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
-	if (IS_ERR(dp->adp))
+	if (IS_ERR(dp->adp)) {
+		dp->encoder.funcs->destroy(&dp->encoder);
 		return PTR_ERR(dp->adp);
+	}
 
 	return 0;
 }
@@ -375,6 +372,7 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 
 	rockchip_drm_psr_unregister(&dp->encoder);
 	analogix_dp_unbind(dp->adp);
+	dp->encoder.funcs->destroy(&dp->encoder);
 }
 
 static const struct component_ops rockchip_dp_component_ops = {
-- 
2.14.1
