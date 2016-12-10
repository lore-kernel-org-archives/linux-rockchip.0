From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH] drm/bridge: analogix_dp: set the DPCD600 during disabling the psr
Date: Sat, 10 Dec 2016 10:49:19 +0800
Message-ID: <1481338159-7189-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: seanpaul@chromium.org
Cc: airlied@linux.ie, tomeu.vizoso@collabora.com, gustavo.padovan@collabora.co.uk, daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, briannorris@chromium.org, heiko@sntech.de, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Look likes, the BOE panel FW didn't ack the DPCD600 signal from the host
device, that will cause the panel hang on the startup display.
The root cause we use the fast link mode during enter and exit the psr,
this issue is gone if switching the fast link to main link mode.

Signed-off-by: Caesar Wang <wxt@rock-chips.com>
---

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6e0447f..6a5347b 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -133,6 +133,7 @@ int analogix_dp_disable_psr(struct device *dev)
 {
 	struct analogix_dp_device *dp = dev_get_drvdata(dev);
 	struct edp_vsc_psr psr_vsc;
+	int ret;
 
 	if (!dp->psr_support)
 		return -EINVAL;
@@ -147,6 +148,10 @@ int analogix_dp_disable_psr(struct device *dev)
 	psr_vsc.DB0 = 0;
 	psr_vsc.DB1 = 0;
 
+	ret = drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
+	if (ret != 1)
+		dev_err(dp->dev, "Failed to set DP Power0 %d\n", ret);
+
 	analogix_dp_send_psr_spd(dp, &psr_vsc);
 	return 0;
 }
-- 
2.7.4
