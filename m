From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH 31/40] drm/bridge: analogix_dp: Allow master driver to cleanup in unbind
Date: Mon, 15 Jan 2018 18:16:05 +0100
Message-ID: <20180115171614.14474-32-thierry.escande@collabora.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-1-thierry.escande@collabora.com>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>
Cc: Tomasz Figa <tfiga@chromium.org>, Haixia Shi <hshi@chromium.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>, zain wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

From: Tomasz Figa <tfiga@chromium.org>

Since we take the ownership of drvdata, the master driver does not have
any means of accessing its own data from unbind callback and all it can
do is calling the analogix unbind callback. However it might be
necessary to do some clean up in the master driver before we really
unbind the analogix part (such as PSR unregister in Rockchip case), so
this patch provides a plat_data->cleanup() callback which is called at
the beginning of analogix_dp_unbind().

Cc: Kristian H. Kristensen <hoegsberg@chromium.org>
Cc: Brian Norris <briannorris@chromium.org>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 3 +++
 include/drm/bridge/analogix_dp.h                   | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index bee0f7aa5c23..2d44ef2fc3d2 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1652,6 +1652,9 @@ EXPORT_SYMBOL_GPL(analogix_dp_bind);
 
 void analogix_dp_unbind(struct analogix_dp_device *dp)
 {
+	if (dp->plat_data->cleanup)
+		dp->plat_data->cleanup(dp->plat_data);
+
 	analogix_dp_bridge_disable(dp->bridge);
 	dp->connector.funcs->destroy(&dp->connector);
 
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index c2788483c882..96a6af0823aa 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -38,6 +38,7 @@ struct analogix_dp_plat_data {
 		      struct drm_connector *);
 	int (*get_modes)(struct analogix_dp_plat_data *,
 			 struct drm_connector *);
+	void (*cleanup)(struct analogix_dp_plat_data *);
 };
 
 int analogix_dp_psr_enabled(struct analogix_dp_device *dp);
-- 
2.14.1
