From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v7 1/8] drm/bridge: analogix: Do not use device's drvdata
Date: Tue,  9 Jan 2018 15:48:46 +0100
Message-ID: <20180109144853.32536-2-thierry.escande@collabora.com>
References: <20180109144853.32536-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180109144853.32536-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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

The driver that instantiates the bridge should own the drvdata, as all
driver model callbacks (probe, remove, shutdown, PM ops, etc.) are also
owned by its driver struct. Moreover, storing two different pointer
types in driver data depending on driver initialization status is barely
a good practice and in fact has led to many bugs in this driver.

Let's clean up this mess and change Analogix entry points to simply
accept some opaque struct pointer, adjusting their users at the same
time to avoid breaking the compilation.

Signed-off-by: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Reviewed-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Acked-by: Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Acked-by: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 50 +++++++++-------------
 drivers/gpu/drm/exynos/exynos_dp.c                 | 26 ++++++-----
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    | 48 ++++++++++++---------
 include/drm/bridge/analogix_dp.h                   | 19 ++++----
 4 files changed, 74 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index a8905049b9da..878f61b65cb2 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -98,17 +98,15 @@ static int analogix_dp_detect_hpd(struct analogix_dp_device *dp)
 	return 0;
 }
 
-int analogix_dp_psr_supported(struct device *dev)
+int analogix_dp_psr_supported(struct analogix_dp_device *dp)
 {
-	struct analogix_dp_device *dp = dev_get_drvdata(dev);
 
 	return dp->psr_support;
 }
 EXPORT_SYMBOL_GPL(analogix_dp_psr_supported);
 
-int analogix_dp_enable_psr(struct device *dev)
+int analogix_dp_enable_psr(struct analogix_dp_device *dp)
 {
-	struct analogix_dp_device *dp = dev_get_drvdata(dev);
 	struct edp_vsc_psr psr_vsc;
 
 	if (!dp->psr_support)
@@ -129,9 +127,8 @@ int analogix_dp_enable_psr(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_enable_psr);
 
-int analogix_dp_disable_psr(struct device *dev)
+int analogix_dp_disable_psr(struct analogix_dp_device *dp)
 {
-	struct analogix_dp_device *dp = dev_get_drvdata(dev);
 	struct edp_vsc_psr psr_vsc;
 	int ret;
 
@@ -1283,8 +1280,9 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 	return analogix_dp_transfer(dp, msg);
 }
 
-int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
-		     struct analogix_dp_plat_data *plat_data)
+struct analogix_dp_device *
+analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
+		 struct analogix_dp_plat_data *plat_data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct analogix_dp_device *dp;
@@ -1294,14 +1292,12 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 
 	if (!plat_data) {
 		dev_err(dev, "Invalided input plat_data\n");
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 	}
 
 	dp = devm_kzalloc(dev, sizeof(struct analogix_dp_device), GFP_KERNEL);
 	if (!dp)
-		return -ENOMEM;
-
-	dev_set_drvdata(dev, dp);
+		return ERR_PTR(-ENOMEM);
 
 	dp->dev = &pdev->dev;
 	dp->dpms_mode = DRM_MODE_DPMS_OFF;
@@ -1318,7 +1314,7 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 
 	ret = analogix_dp_dt_parse_pdata(dp);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
 	dp->phy = devm_phy_get(dp->dev, "dp");
 	if (IS_ERR(dp->phy)) {
@@ -1332,14 +1328,14 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 			if (ret == -ENOSYS || ret == -ENODEV)
 				dp->phy = NULL;
 			else
-				return ret;
+				return ERR_PTR(ret);
 		}
 	}
 
 	dp->clock = devm_clk_get(&pdev->dev, "dp");
 	if (IS_ERR(dp->clock)) {
 		dev_err(&pdev->dev, "failed to get clock\n");
-		return PTR_ERR(dp->clock);
+		return ERR_CAST(dp->clock);
 	}
 
 	clk_prepare_enable(dp->clock);
@@ -1348,7 +1344,7 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 
 	dp->reg_base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(dp->reg_base))
-		return PTR_ERR(dp->reg_base);
+		return ERR_CAST(dp->reg_base);
 
 	dp->force_hpd = of_property_read_bool(dev->of_node, "force-hpd");
 
@@ -1369,7 +1365,7 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 					    "hpd_gpio");
 		if (ret) {
 			dev_err(&pdev->dev, "failed to get hpd gpio\n");
-			return ret;
+			return ERR_PTR(ret);
 		}
 		dp->irq = gpio_to_irq(dp->hpd_gpio);
 		irq_flags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;
@@ -1381,7 +1377,7 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 
 	if (dp->irq == -ENXIO) {
 		dev_err(&pdev->dev, "failed to get irq\n");
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 	}
 
 	pm_runtime_enable(dev);
@@ -1422,7 +1418,7 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 	phy_power_off(dp->phy);
 	pm_runtime_put(dev);
 
-	return 0;
+	return dp;
 
 err_disable_pm_runtime:
 
@@ -1430,15 +1426,12 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 	pm_runtime_put(dev);
 	pm_runtime_disable(dev);
 
-	return ret;
+	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_bind);
 
-void analogix_dp_unbind(struct device *dev, struct device *master,
-			void *data)
+void analogix_dp_unbind(struct analogix_dp_device *dp)
 {
-	struct analogix_dp_device *dp = dev_get_drvdata(dev);
-
 	analogix_dp_bridge_disable(dp->bridge);
 	dp->connector.funcs->destroy(&dp->connector);
 	dp->encoder->funcs->destroy(dp->encoder);
@@ -1451,16 +1444,14 @@ void analogix_dp_unbind(struct device *dev, struct device *master,
 	}
 
 	drm_dp_aux_unregister(&dp->aux);
-	pm_runtime_disable(dev);
+	pm_runtime_disable(dp->dev);
 	clk_disable_unprepare(dp->clock);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
 #ifdef CONFIG_PM
-int analogix_dp_suspend(struct device *dev)
+int analogix_dp_suspend(struct analogix_dp_device *dp)
 {
-	struct analogix_dp_device *dp = dev_get_drvdata(dev);
-
 	clk_disable_unprepare(dp->clock);
 
 	if (dp->plat_data->panel) {
@@ -1472,9 +1463,8 @@ int analogix_dp_suspend(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_suspend);
 
-int analogix_dp_resume(struct device *dev)
+int analogix_dp_resume(struct analogix_dp_device *dp)
 {
-	struct analogix_dp_device *dp = dev_get_drvdata(dev);
 	int ret;
 
 	ret = clk_prepare_enable(dp->clock);
diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
index 39629e7a80b9..f7e5b2c405ed 100644
--- a/drivers/gpu/drm/exynos/exynos_dp.c
+++ b/drivers/gpu/drm/exynos/exynos_dp.c
@@ -41,6 +41,7 @@ struct exynos_dp_device {
 	struct device              *dev;
 
 	struct videomode           vm;
+	struct analogix_dp_device *adp;
 	struct analogix_dp_plat_data plat_data;
 };
 
@@ -157,13 +158,6 @@ static int exynos_dp_bind(struct device *dev, struct device *master, void *data)
 	struct drm_device *drm_dev = data;
 	int ret;
 
-	/*
-	 * Just like the probe function said, we don't need the
-	 * device drvrate anymore, we should leave the charge to
-	 * analogix dp driver, set the device drvdata to NULL.
-	 */
-	dev_set_drvdata(dev, NULL);
-
 	dp->dev = dev;
 	dp->drm_dev = drm_dev;
 
@@ -190,13 +184,19 @@ static int exynos_dp_bind(struct device *dev, struct device *master, void *data)
 
 	dp->plat_data.encoder = encoder;
 
-	return analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
+	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
+	if (IS_ERR(dp->adp))
+		return PTR_ERR(dp->adp);
+
+	return 0;
 }
 
 static void exynos_dp_unbind(struct device *dev, struct device *master,
 			     void *data)
 {
-	return analogix_dp_unbind(dev, master, data);
+	struct exynos_dp_device *dp = dev_get_drvdata(dev);
+
+	return analogix_dp_unbind(dp->adp);
 }
 
 static const struct component_ops exynos_dp_ops = {
@@ -257,12 +257,16 @@ static int exynos_dp_remove(struct platform_device *pdev)
 #ifdef CONFIG_PM
 static int exynos_dp_suspend(struct device *dev)
 {
-	return analogix_dp_suspend(dev);
+	struct exynos_dp_device *dp = dev_get_drvdata(dev);
+
+	return analogix_dp_suspend(dp->adp);
 }
 
 static int exynos_dp_resume(struct device *dev)
 {
-	return analogix_dp_resume(dev);
+	struct exynos_dp_device *dp = dev_get_drvdata(dev);
+
+	return analogix_dp_resume(dp->adp);
 }
 #endif
 
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 1262120a3834..8a58ad80f509 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -77,6 +77,7 @@ struct rockchip_dp_device {
 
 	const struct rockchip_dp_chip_data *data;
 
+	struct analogix_dp_device *adp;
 	struct analogix_dp_plat_data plat_data;
 };
 
@@ -84,7 +85,7 @@ static void analogix_dp_psr_set(struct drm_encoder *encoder, bool enabled)
 {
 	struct rockchip_dp_device *dp = to_dp(encoder);
 
-	if (!analogix_dp_psr_supported(dp->dev))
+	if (!analogix_dp_psr_supported(dp->adp))
 		return;
 
 	DRM_DEV_DEBUG(dp->dev, "%s PSR...\n", enabled ? "Entry" : "Exit");
@@ -114,9 +115,9 @@ static void analogix_dp_psr_work(struct work_struct *work)
 
 	mutex_lock(&dp->psr_lock);
 	if (dp->psr_state == EDP_VSC_PSR_STATE_ACTIVE)
-		analogix_dp_enable_psr(dp->dev);
+		analogix_dp_enable_psr(dp->adp);
 	else
-		analogix_dp_disable_psr(dp->dev);
+		analogix_dp_disable_psr(dp->adp);
 	mutex_unlock(&dp->psr_lock);
 }
 
@@ -334,13 +335,6 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 	struct drm_device *drm_dev = data;
 	int ret;
 
-	/*
-	 * Just like the probe function said, we don't need the
-	 * device drvrate anymore, we should leave the charge to
-	 * analogix dp driver, set the device drvdata to NULL.
-	 */
-	dev_set_drvdata(dev, NULL);
-
 	dp_data = of_device_get_match_data(dev);
 	if (!dp_data)
 		return -ENODEV;
@@ -367,7 +361,11 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 
 	rockchip_drm_psr_register(&dp->encoder, analogix_dp_psr_set);
 
-	return analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
+	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
+	if (IS_ERR(dp->adp))
+		return PTR_ERR(dp->adp);
+
+	return 0;
 }
 
 static void rockchip_dp_unbind(struct device *dev, struct device *master,
@@ -376,8 +374,7 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
 
 	rockchip_drm_psr_unregister(&dp->encoder);
-
-	analogix_dp_unbind(dev, master, data);
+	analogix_dp_unbind(dp->adp);
 }
 
 static const struct component_ops rockchip_dp_component_ops = {
@@ -407,11 +404,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	if (ret < 0)
 		return ret;
 
-	/*
-	 * We just use the drvdata until driver run into component
-	 * add function, and then we would set drvdata to null, so
-	 * that analogix dp driver could take charge of the drvdata.
-	 */
 	platform_set_drvdata(pdev, dp);
 
 	return component_add(dev, &rockchip_dp_component_ops);
@@ -424,10 +416,26 @@ static int rockchip_dp_remove(struct platform_device *pdev)
 	return 0;
 }
 
+#ifdef CONFIG_PM_SLEEP
+static int rockchip_dp_suspend(struct device *dev)
+{
+	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
+
+	return analogix_dp_suspend(dp->adp);
+}
+
+static int rockchip_dp_resume(struct device *dev)
+{
+	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
+
+	return analogix_dp_resume(dp->adp);
+}
+#endif
+
 static const struct dev_pm_ops rockchip_dp_pm_ops = {
 #ifdef CONFIG_PM_SLEEP
-	.suspend = analogix_dp_suspend,
-	.resume_early = analogix_dp_resume,
+	.suspend = rockchip_dp_suspend,
+	.resume_early = rockchip_dp_resume,
 #endif
 };
 
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index c99d6eaef1ac..5518fc75dd6e 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -13,6 +13,8 @@
 
 #include <drm/drm_crtc.h>
 
+struct analogix_dp_device;
+
 enum analogix_dp_devtype {
 	EXYNOS_DP,
 	RK3288_DP,
@@ -38,16 +40,17 @@ struct analogix_dp_plat_data {
 			 struct drm_connector *);
 };
 
-int analogix_dp_psr_supported(struct device *dev);
-int analogix_dp_enable_psr(struct device *dev);
-int analogix_dp_disable_psr(struct device *dev);
+int analogix_dp_psr_supported(struct analogix_dp_device *dp);
+int analogix_dp_enable_psr(struct analogix_dp_device *dp);
+int analogix_dp_disable_psr(struct analogix_dp_device *dp);
 
-int analogix_dp_resume(struct device *dev);
-int analogix_dp_suspend(struct device *dev);
+int analogix_dp_resume(struct analogix_dp_device *dp);
+int analogix_dp_suspend(struct analogix_dp_device *dp);
 
-int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
-		     struct analogix_dp_plat_data *plat_data);
-void analogix_dp_unbind(struct device *dev, struct device *master, void *data);
+struct analogix_dp_device *
+analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
+		 struct analogix_dp_plat_data *plat_data);
+void analogix_dp_unbind(struct analogix_dp_device *dp);
 
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
-- 
2.14.1
