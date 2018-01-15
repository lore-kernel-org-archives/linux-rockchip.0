From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH 32/40] drm/bridge: analogix_dp: Add analogix_dp_shutdown
Date: Mon, 15 Jan 2018 18:16:06 +0100
Message-ID: <20180115171614.14474-33-thierry.escande@collabora.com>
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

This patch adds a function that master driver can call at shutdown time
in case there is some cleanup work to do. The function will then call
back to platform_data .cleanup() callback to let the master driver do
the platform-specific work.

Cc: Kristian H. Kristensen <hoegsberg@chromium.org>
Cc: Brian Norris <briannorris@chromium.org>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 7 +++++++
 include/drm/bridge/analogix_dp.h                   | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 2d44ef2fc3d2..a83140fa3448 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1671,6 +1671,13 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
+void analogix_dp_shutdown(struct analogix_dp_device *dp)
+{
+	if (dp->plat_data->cleanup)
+		dp->plat_data->cleanup(dp->plat_data);
+}
+EXPORT_SYMBOL_GPL(analogix_dp_shutdown);
+
 #ifdef CONFIG_PM
 int analogix_dp_suspend(struct analogix_dp_device *dp)
 {
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 96a6af0823aa..ed3ae1b5bb65 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -52,6 +52,7 @@ struct analogix_dp_device *
 analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 		 struct analogix_dp_plat_data *plat_data);
 void analogix_dp_unbind(struct analogix_dp_device *dp);
+void analogix_dp_shutdown(struct analogix_dp_device *dp);
 
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
-- 
2.14.1
