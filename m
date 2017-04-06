From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v5 06/12] drm/rockchip: cdn-dp: Don't unregister audio dev when unbinding
Date: Thu,  6 Apr 2017 20:31:19 +0800
Message-ID: <1491481885-13775-7-git-send-email-jeffy.chen@rock-chips.com>
References: <1491481885-13775-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491481885-13775-1-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

After snd_soc_unregister_codec, the dai link would remain bound to
the invalid codec. That would cause crashes after unbind dp driver.

Let's unregister audio codec when removing dp driver to prevent that.

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

Changes in v5: None
Changes in v4: None
Changes in v3:
Update commit message.

Changes in v2: None

 drivers/gpu/drm/rockchip/cdn-dp-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index ee4195d..a2169dd 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1092,8 +1092,6 @@ static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
 		goto err_free_connector;
 	}
 
-	cdn_dp_audio_codec_init(dp, dev);
-
 	for (i = 0; i < dp->ports; i++) {
 		port = dp->port[i];
 
@@ -1128,7 +1126,6 @@ static void cdn_dp_unbind(struct device *dev, struct device *master, void *data)
 	struct drm_connector *connector = &dp->connector;
 
 	cancel_work_sync(&dp->event_work);
-	platform_device_unregister(dp->audio_pdev);
 	cdn_dp_encoder_disable(encoder);
 	encoder->funcs->destroy(encoder);
 	connector->funcs->destroy(connector);
@@ -1221,6 +1218,8 @@ static int cdn_dp_probe(struct platform_device *pdev)
 	mutex_init(&dp->lock);
 	dev_set_drvdata(dev, dp);
 
+	cdn_dp_audio_codec_init(dp, dev);
+
 	return component_add(dev, &cdn_dp_component_ops);
 }
 
@@ -1228,6 +1227,7 @@ static int cdn_dp_remove(struct platform_device *pdev)
 {
 	struct cdn_dp_device *dp = platform_get_drvdata(pdev);
 
+	platform_device_unregister(dp->audio_pdev);
 	cdn_dp_suspend(dp->dev);
 	component_del(&pdev->dev, &cdn_dp_component_ops);
 
-- 
2.1.4
