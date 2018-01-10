From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v8 4/8] drm/rockchip: dw-mipi-dsi: Fix error handling path
Date: Wed, 10 Jan 2018 17:23:44 +0100
Message-ID: <20180110162348.22765-5-thierry.escande@collabora.com>
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

Add missing pm_runtime_disable() in bind()'s error handling path.

Also cleanup encoder & connector in unbind().

Fixes: 80a9a059d4e4 ("drm/rockchip/dsi: add dw-mipi power domain support")
Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index b1fe0639227e..78e6b7919bf7 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -1282,7 +1282,7 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 	ret = dw_mipi_dsi_register(drm, dsi);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to register mipi_dsi: %d\n", ret);
-		goto err_pllref;
+		goto err_disable_pllref;
 	}
 
 	dsi->dsi_host.ops = &dw_mipi_dsi_host_ops;
@@ -1290,24 +1290,25 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 	ret = mipi_dsi_host_register(&dsi->dsi_host);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to register MIPI host: %d\n", ret);
-		goto err_cleanup;
+		goto err_disable_pm_runtime;
 	}
 
 	if (!dsi->panel) {
 		ret = -EPROBE_DEFER;
-		goto err_mipi_dsi_host;
+		goto err_unreg_mipi_dsi_host;
 	}
 
 	dev_set_drvdata(dev, dsi);
 	pm_runtime_enable(dev);
 	return 0;
 
-err_mipi_dsi_host:
+err_unreg_mipi_dsi_host:
 	mipi_dsi_host_unregister(&dsi->dsi_host);
-err_cleanup:
-	drm_encoder_cleanup(&dsi->encoder);
-	drm_connector_cleanup(&dsi->connector);
-err_pllref:
+err_disable_pm_runtime:
+	pm_runtime_disable(dev);
+	dsi->connector.funcs->destroy(&dsi->connector);
+	dsi->encoder.funcs->destroy(&dsi->encoder);
+err_disable_pllref:
 	clk_disable_unprepare(dsi->pllref_clk);
 	return ret;
 }
@@ -1319,6 +1320,10 @@ static void dw_mipi_dsi_unbind(struct device *dev, struct device *master,
 
 	mipi_dsi_host_unregister(&dsi->dsi_host);
 	pm_runtime_disable(dev);
+
+	dsi->connector.funcs->destroy(&dsi->connector);
+	dsi->encoder.funcs->destroy(&dsi->encoder);
+
 	clk_disable_unprepare(dsi->pllref_clk);
 }
 
-- 
2.14.1
