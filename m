From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH 5/9] drm/rockchip: vop: Enable pm domain when resetting vop
Date: Sat,  1 Apr 2017 18:43:58 +0800
Message-ID: <1491043442-20626-6-git-send-email-jeffy.chen@rock-chips.com>
References: <1491043442-20626-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491043442-20626-1-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 31 +++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 76c79ac..1d85319 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1365,6 +1365,12 @@ static int vop_initial(struct vop *vop)
 		return ret;
 	}
 
+	ret = pm_runtime_get_sync(vop->dev);
+	if (ret < 0) {
+		dev_err(vop->dev, "failed to get pm runtime: %d\n", ret);
+		goto err_put_pm_runtime;
+	}
+
 	/* Enable both the hclk and aclk to setup the vop */
 	ret = clk_prepare_enable(vop->hclk);
 	if (ret < 0) {
@@ -1422,6 +1428,8 @@ static int vop_initial(struct vop *vop)
 
 	vop->is_enabled = false;
 
+	pm_runtime_put_sync(vop->dev);
+
 	return 0;
 
 err_disable_aclk:
@@ -1430,6 +1438,8 @@ static int vop_initial(struct vop *vop)
 	clk_disable_unprepare(vop->hclk);
 err_unprepare_dclk:
 	clk_unprepare(vop->dclk);
+err_put_pm_runtime:
+	pm_runtime_put_sync(vop->dev);
 	return ret;
 }
 
@@ -1530,12 +1540,6 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 	if (!vop->regsbak)
 		return -ENOMEM;
 
-	ret = vop_initial(vop);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "cannot initial vop dev - err %d\n", ret);
-		return ret;
-	}
-
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
 		dev_err(dev, "cannot find irq for vop\n");
@@ -1556,15 +1560,22 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 	/* IRQ is initially disabled; it gets enabled in power_on */
 	disable_irq(vop->irq);
 
+	pm_runtime_enable(&pdev->dev);
+
+	ret = vop_initial(vop);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "cannot initial vop dev - err %d\n", ret);
+		goto err_disable_pm_runtime;
+	}
+
 	ret = vop_create_crtc(vop);
 	if (ret)
-		goto err_enable_irq;
-
-	pm_runtime_enable(&pdev->dev);
+		goto err_disable_pm_runtime;
 
 	return 0;
 
-err_enable_irq:
+err_disable_pm_runtime:
+	pm_runtime_disable(&pdev->dev);
 	enable_irq(vop->irq); /* To balance out the disable_irq above */
 	return ret;
 }
-- 
2.1.4
