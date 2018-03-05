From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 04/38] drm/rockchip: Remove analogix psr worker
Date: Mon,  5 Mar 2018 23:22:56 +0100
Message-ID: <20180305222324.5872-5-enric.balletbo@collabora.com>
References: <20180305222324.5872-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180305222324.5872-1-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: architt@codeaurora.org, inki.dae@samsung.com, thierry.reding@gmail.com, hjc@rock-chips.com, seanpaul@chromium.org, airlied@linux.ie, tfiga@chromium.org, heiko@sntech.de
Cc: hshi@chromium.org, wzz@rock-chips.com, hl@rock-chips.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, orjan.eide@arm.com, m.szyprowski@samsung.com, =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

From: Sean Paul <seanpaul@chromium.org>

Now that the spinlocks and timers are gone, we can remove the psr
worker located in rockchip's analogix driver and do the enable/disable
directly. This should simplify the code and remove races on disable.

Cc: 征增 王 <wzz@rock-chips.com>
Cc: Stéphane Marchesin <marcheu@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 31 ++-----------------------
 1 file changed, 2 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 7d76ff47028d..36334839a3f8 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -71,10 +71,6 @@ struct rockchip_dp_device {
 	struct regmap            *grf;
 	struct reset_control     *rst;
 
-	struct work_struct	 psr_work;
-	struct mutex             psr_lock;
-	unsigned int             psr_state;
-
 	const struct rockchip_dp_chip_data *data;
 
 	struct analogix_dp_device *adp;
@@ -84,28 +80,13 @@ struct rockchip_dp_device {
 static void analogix_dp_psr_set(struct drm_encoder *encoder, bool enabled)
 {
 	struct rockchip_dp_device *dp = to_dp(encoder);
+	int ret;
 
 	if (!analogix_dp_psr_supported(dp->adp))
 		return;
 
 	DRM_DEV_DEBUG(dp->dev, "%s PSR...\n", enabled ? "Entry" : "Exit");
 
-	mutex_lock(&dp->psr_lock);
-	if (enabled)
-		dp->psr_state = EDP_VSC_PSR_STATE_ACTIVE;
-	else
-		dp->psr_state = ~EDP_VSC_PSR_STATE_ACTIVE;
-
-	schedule_work(&dp->psr_work);
-	mutex_unlock(&dp->psr_lock);
-}
-
-static void analogix_dp_psr_work(struct work_struct *work)
-{
-	struct rockchip_dp_device *dp =
-				container_of(work, typeof(*dp), psr_work);
-	int ret;
-
 	ret = rockchip_drm_wait_vact_end(dp->encoder.crtc,
 					 PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
 	if (ret) {
@@ -113,12 +94,10 @@ static void analogix_dp_psr_work(struct work_struct *work)
 		return;
 	}
 
-	mutex_lock(&dp->psr_lock);
-	if (dp->psr_state == EDP_VSC_PSR_STATE_ACTIVE)
+	if (enabled)
 		analogix_dp_enable_psr(dp->adp);
 	else
 		analogix_dp_disable_psr(dp->adp);
-	mutex_unlock(&dp->psr_lock);
 }
 
 static int rockchip_dp_pre_init(struct rockchip_dp_device *dp)
@@ -135,8 +114,6 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
 	struct rockchip_dp_device *dp = to_dp(plat_data);
 	int ret;
 
-	cancel_work_sync(&dp->psr_work);
-
 	ret = clk_prepare_enable(dp->pclk);
 	if (ret < 0) {
 		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
@@ -355,10 +332,6 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 	dp->plat_data.power_off = rockchip_dp_powerdown;
 	dp->plat_data.get_modes = rockchip_dp_get_modes;
 
-	mutex_init(&dp->psr_lock);
-	dp->psr_state = ~EDP_VSC_PSR_STATE_ACTIVE;
-	INIT_WORK(&dp->psr_work, analogix_dp_psr_work);
-
 	ret = rockchip_drm_psr_register(&dp->encoder, analogix_dp_psr_set);
 	if (ret < 0)
 		goto err_cleanup_encoder;
-- 
2.16.1
