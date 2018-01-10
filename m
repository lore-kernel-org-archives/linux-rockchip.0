From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v8 5/8] drm/rockchip: inno_hdmi: Fix error handling path
Date: Wed, 10 Jan 2018 17:23:45 +0100
Message-ID: <20180110162348.22765-6-thierry.escande@collabora.com>
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

Add missing error handling in bind().

Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index fab30927a889..b775283d7363 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -852,8 +852,10 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	}
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0)
-		return irq;
+	if (irq < 0) {
+		ret = irq;
+		goto err_disable_clk;
+	}
 
 	inno_hdmi_reset(hdmi);
 
@@ -861,7 +863,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	if (IS_ERR(hdmi->ddc)) {
 		ret = PTR_ERR(hdmi->ddc);
 		hdmi->ddc = NULL;
-		return ret;
+		goto err_disable_clk;
 	}
 
 	/*
@@ -875,7 +877,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 
 	ret = inno_hdmi_register(drm, hdmi);
 	if (ret)
-		return ret;
+		goto err_put_adapter;
 
 	dev_set_drvdata(dev, hdmi);
 
@@ -885,7 +887,17 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	ret = devm_request_threaded_irq(dev, irq, inno_hdmi_hardirq,
 					inno_hdmi_irq, IRQF_SHARED,
 					dev_name(dev), hdmi);
+	if (ret < 0)
+		goto err_cleanup_hdmi;
 
+	return 0;
+err_cleanup_hdmi:
+	hdmi->connector.funcs->destroy(&hdmi->connector);
+	hdmi->encoder.funcs->destroy(&hdmi->encoder);
+err_put_adapter:
+	i2c_put_adapter(hdmi->ddc);
+err_disable_clk:
+	clk_disable_unprepare(hdmi->pclk);
 	return ret;
 }
 
@@ -897,8 +909,8 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->connector.funcs->destroy(&hdmi->connector);
 	hdmi->encoder.funcs->destroy(&hdmi->encoder);
 
-	clk_disable_unprepare(hdmi->pclk);
 	i2c_put_adapter(hdmi->ddc);
+	clk_disable_unprepare(hdmi->pclk);
 }
 
 static const struct component_ops inno_hdmi_ops = {
-- 
2.14.1
