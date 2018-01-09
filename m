From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH v7 3/8] drm/rockchip: analogix_dp: Add a sanity check for rockchip_drm_psr_register()
Date: Tue,  9 Jan 2018 15:48:48 +0100
Message-ID: <20180109144853.32536-4-thierry.escande@collabora.com>
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

The rockchip_drm_psr_register() can fail, so add a sanity check for that.

Also reorder the calls in unbind() to match bind().

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 37250ab63bd7..eb88c52336a7 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -354,15 +354,22 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 	dp->psr_state = ~EDP_VSC_PSR_STATE_ACTIVE;
 	INIT_WORK(&dp->psr_work, analogix_dp_psr_work);
 
-	rockchip_drm_psr_register(&dp->encoder, analogix_dp_psr_set);
+	ret = rockchip_drm_psr_register(&dp->encoder, analogix_dp_psr_set);
+	if (ret < 0)
+		goto err_cleanup_encoder;
 
 	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
 	if (IS_ERR(dp->adp)) {
-		dp->encoder.funcs->destroy(&dp->encoder);
-		return PTR_ERR(dp->adp);
+		ret = PTR_ERR(dp->adp);
+		goto err_unreg_psr;
 	}
 
 	return 0;
+err_unreg_psr:
+	rockchip_drm_psr_unregister(&dp->encoder);
+err_cleanup_encoder:
+	dp->encoder.funcs->destroy(&dp->encoder);
+	return ret;
 }
 
 static void rockchip_dp_unbind(struct device *dev, struct device *master,
@@ -370,8 +377,8 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 {
 	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
 
-	rockchip_drm_psr_unregister(&dp->encoder);
 	analogix_dp_unbind(dp->adp);
+	rockchip_drm_psr_unregister(&dp->encoder);
 	dp->encoder.funcs->destroy(&dp->encoder);
 }
 
-- 
2.14.1
