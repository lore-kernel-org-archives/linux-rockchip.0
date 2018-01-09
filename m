From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH v7 5/8] drm/rockchip: inno_hdmi: Fix error handling path
Date: Tue,  9 Jan 2018 15:48:50 +0100
Message-ID: <20180109144853.32536-6-thierry.escande@collabora.com>
References: <20180109144853.32536-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180109144853.32536-1-thierry.escande@collabora.com>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Archit Taneja <architt@codeaurora.org>, Daniel Vetter <daniel.vetter@intel.com>, Neil Armstrong <narmstrong@baylibre.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

Add missing error handling in bind().

Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
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
