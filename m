From: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 24/41] drm/bridge: analogix_dp: Check dpcd write/read status
Date: Thu,  9 Mar 2017 23:32:39 -0500
Message-ID: <20170310043305.17216-25-seanpaul@chromium.org>
References: <20170310043305.17216-1-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170310043305.17216-1-seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "Kristian H . Kristensen" <hoegsberg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

We need to check the dpcd write/read return value to see whether the
write/read was successful

Cc: Kristian H. Kristensen <hoegsberg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 173 +++++++++++++++------
 1 file changed, 125 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8d69d4327871..dcf39ea0d14b 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -163,80 +163,132 @@ int analogix_dp_disable_psr(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_disable_psr);
 
-static bool analogix_dp_detect_sink_psr(struct analogix_dp_device *dp)
+static int analogix_dp_detect_sink_psr(struct analogix_dp_device *dp)
 {
 	unsigned char psr_version;
+	int ret;
+
+	ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_SUPPORT, &psr_version);
+	if (ret != 1) {
+		dev_err(dp->dev, "failed to get PSR version, disable it\n");
+		return ret;
+	}
 
-	drm_dp_dpcd_readb(&dp->aux, DP_PSR_SUPPORT, &psr_version);
 	dev_dbg(dp->dev, "Panel PSR version : %x\n", psr_version);
 
-	return (psr_version & DP_PSR_IS_SUPPORTED) ? true : false;
+	dp->psr_enable = (psr_version & DP_PSR_IS_SUPPORTED) ? true : false;
+	return 0;
 }
 
-static void analogix_dp_enable_sink_psr(struct analogix_dp_device *dp)
+static int analogix_dp_enable_sink_psr(struct analogix_dp_device *dp)
 {
 	unsigned char psr_en;
+	int ret;
 
 	/* Disable psr function */
-	drm_dp_dpcd_readb(&dp->aux, DP_PSR_EN_CFG, &psr_en);
+	ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_EN_CFG, &psr_en);
+	if (ret != 1) {
+		dev_err(dp->dev, "failed to get psr config\n");
+		goto end;
+	}
+
 	psr_en &= ~DP_PSR_ENABLE;
-	drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
+	ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
+	if (ret != 1) {
+		dev_err(dp->dev, "failed to disable panel psr\n");
+		goto end;
+	}
 
 	/* Main-Link transmitter remains active during PSR active states */
 	psr_en = DP_PSR_MAIN_LINK_ACTIVE | DP_PSR_CRC_VERIFICATION;
-	drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
+	ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
+	if (ret != 1) {
+		dev_err(dp->dev, "failed to set panel psr\n");
+		goto end;
+	}
 
 	/* Enable psr function */
 	psr_en = DP_PSR_ENABLE | DP_PSR_MAIN_LINK_ACTIVE |
 		 DP_PSR_CRC_VERIFICATION;
-	drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
+	ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
+	if (ret != 1) {
+		dev_err(dp->dev, "failed to set panel psr\n");
+		goto end;
+	}
 
 	analogix_dp_enable_psr_crc(dp);
+	return 0;
+end:
+	dev_err(dp->dev, "enable psr fail, force to disable psr\n");
+	dp->psr_enable = false;
+	return ret;
 }
 
-static void
+static int
 analogix_dp_enable_rx_to_enhanced_mode(struct analogix_dp_device *dp,
 				       bool enable)
 {
 	u8 data;
+	int ret;
 
-	drm_dp_dpcd_readb(&dp->aux, DP_LANE_COUNT_SET, &data);
+	ret = drm_dp_dpcd_readb(&dp->aux, DP_LANE_COUNT_SET, &data);
+	if (ret < 0)
+		return ret;
 
 	if (enable)
-		drm_dp_dpcd_writeb(&dp->aux, DP_LANE_COUNT_SET,
-				   DP_LANE_COUNT_ENHANCED_FRAME_EN |
-					DPCD_LANE_COUNT_SET(data));
+		ret = drm_dp_dpcd_writeb(&dp->aux, DP_LANE_COUNT_SET,
+					 DP_LANE_COUNT_ENHANCED_FRAME_EN |
+					 DPCD_LANE_COUNT_SET(data));
 	else
-		drm_dp_dpcd_writeb(&dp->aux, DP_LANE_COUNT_SET,
-				   DPCD_LANE_COUNT_SET(data));
+		ret = drm_dp_dpcd_writeb(&dp->aux, DP_LANE_COUNT_SET,
+					 DPCD_LANE_COUNT_SET(data));
+
+	return ret < 0 ? ret : 0;
 }
 
-static int analogix_dp_is_enhanced_mode_available(struct analogix_dp_device *dp)
+static int analogix_dp_is_enhanced_mode_available(struct analogix_dp_device *dp,
+						  u8 *enhanced_mode_support)
 {
 	u8 data;
-	int retval;
+	int ret;
 
-	drm_dp_dpcd_readb(&dp->aux, DP_MAX_LANE_COUNT, &data);
-	retval = DPCD_ENHANCED_FRAME_CAP(data);
+	ret = drm_dp_dpcd_readb(&dp->aux, DP_MAX_LANE_COUNT, &data);
+	if (ret < 0)
+		return ret;
 
-	return retval;
+	*enhanced_mode_support = DPCD_ENHANCED_FRAME_CAP(data);
+
+	return 0;
 }
 
-static void analogix_dp_set_enhanced_mode(struct analogix_dp_device *dp)
+static int analogix_dp_set_enhanced_mode(struct analogix_dp_device *dp)
 {
 	u8 data;
+	int ret;
+
+	ret = analogix_dp_is_enhanced_mode_available(dp, &data);
+	if (ret < 0)
+		return ret;
+
+	ret = analogix_dp_enable_rx_to_enhanced_mode(dp, data);
+	if (ret < 0)
+		return ret;
 
-	data = analogix_dp_is_enhanced_mode_available(dp);
-	analogix_dp_enable_rx_to_enhanced_mode(dp, data);
 	analogix_dp_enable_enhanced_mode(dp, data);
+
+	return 0;
 }
 
-static void analogix_dp_training_pattern_dis(struct analogix_dp_device *dp)
+static int analogix_dp_training_pattern_dis(struct analogix_dp_device *dp)
 {
+	int retval;
+
 	analogix_dp_set_training_pattern(dp, DP_NONE);
 
-	drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
-			   DP_TRAINING_PATTERN_DISABLE);
+	retval = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
+				    DP_TRAINING_PATTERN_DISABLE);
+
+	return retval < 0 ? retval : 0;
 }
 
 static void
@@ -285,7 +337,11 @@ static int analogix_dp_link_start(struct analogix_dp_device *dp)
 	if (retval < 0)
 		return retval;
 	/* set enhanced mode if available */
-	analogix_dp_set_enhanced_mode(dp);
+	retval = analogix_dp_set_enhanced_mode(dp);
+	if (retval < 0) {
+		dev_err(dp->dev, "failed to set enhance mode\n");
+		return retval;
+	}
 
 	/* Set TX pre-emphasis to minimum */
 	for (lane = 0; lane < lane_count; lane++)
@@ -570,10 +626,11 @@ static int analogix_dp_process_equalizer_training(struct analogix_dp_device *dp)
 
 	if (!analogix_dp_channel_eq_ok(link_status, link_align, lane_count)) {
 		/* traing pattern Set to Normal */
-		analogix_dp_training_pattern_dis(dp);
+		retval = analogix_dp_training_pattern_dis(dp);
+		if (retval < 0)
+			return retval;
 
 		dev_info(dp->dev, "Link Training success!\n");
-
 		analogix_dp_get_link_bandwidth(dp, &reg);
 		dp->link_train.link_rate = reg;
 		dev_dbg(dp->dev, "final bandwidth = %.2x\n",
@@ -810,7 +867,6 @@ static int analogix_dp_train_link(struct analogix_dp_device *dp)
 
 static int analogix_dp_config_video(struct analogix_dp_device *dp)
 {
-	int retval = 0;
 	int timeout_loop = 0;
 	int done_count = 0;
 
@@ -828,8 +884,9 @@ static int analogix_dp_config_video(struct analogix_dp_device *dp)
 		if (analogix_dp_is_slave_video_stream_clock_on(dp) == 0)
 			break;
 		if (timeout_loop > DP_TIMEOUT_LOOP_COUNT) {
-			dev_err(dp->dev, "Timeout of slave video streamclk ok\n");
-			return -ETIMEDOUT;
+			dev_warn(dp->dev,
+				 "Ignoring timeout of slave video streamclk ok\n");
+			break;
 		}
 		usleep_range(1000, 1001);
 	}
@@ -868,30 +925,35 @@ static int analogix_dp_config_video(struct analogix_dp_device *dp)
 		usleep_range(1000, 1001);
 	}
 
-	if (retval != 0)
-		dev_err(dp->dev, "Video stream is not detected!\n");
-
-	return retval;
+	return 0;
 }
 
-static void analogix_dp_enable_scramble(struct analogix_dp_device *dp,
+static int analogix_dp_enable_scramble(struct analogix_dp_device *dp,
 					bool enable)
 {
 	u8 data;
+	int ret;
 
 	if (enable) {
 		analogix_dp_enable_scrambling(dp);
 
-		drm_dp_dpcd_readb(&dp->aux, DP_TRAINING_PATTERN_SET, &data);
-		drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
+		ret = drm_dp_dpcd_readb(&dp->aux, DP_TRAINING_PATTERN_SET,
+					&data);
+		if (ret != 1)
+			return ret;
+		ret = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
 				   (u8)(data & ~DP_LINK_SCRAMBLING_DISABLE));
 	} else {
 		analogix_dp_disable_scrambling(dp);
 
-		drm_dp_dpcd_readb(&dp->aux, DP_TRAINING_PATTERN_SET, &data);
-		drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
+		ret = drm_dp_dpcd_readb(&dp->aux, DP_TRAINING_PATTERN_SET,
+					&data);
+		if (ret != 1)
+			return ret;
+		ret = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
 				   (u8)(data | DP_LINK_SCRAMBLING_DISABLE));
 	}
+	return ret < 0 ? ret : 0;
 }
 
 static irqreturn_t analogix_dp_hardirq(int irq, void *arg)
@@ -946,23 +1008,36 @@ static int analogix_dp_commit(struct analogix_dp_device *dp)
 		return ret;
 	}
 
-	analogix_dp_enable_scramble(dp, 1);
+	ret = analogix_dp_enable_scramble(dp, 1);
+	if (ret < 0) {
+		dev_err(dp->dev, "can not enable scramble\n");
+		return ret;
+	}
 
 	analogix_dp_init_video(dp);
 	ret = analogix_dp_config_video(dp);
-	if (ret)
+	if (ret) {
 		dev_err(dp->dev, "unable to config video\n");
+		return ret;
+	}
 
 	/* Safe to enable the panel now */
 	if (dp->plat_data->panel) {
-		if (drm_panel_enable(dp->plat_data->panel))
+		ret = drm_panel_enable(dp->plat_data->panel);
+		if (ret) {
 			DRM_ERROR("failed to enable the panel\n");
+			return ret;
+		}
 	}
 
-	dp->psr_enable = analogix_dp_detect_sink_psr(dp);
+	ret = analogix_dp_detect_sink_psr(dp);
+	if (ret)
+		return ret;
+
 	if (dp->psr_enable)
-		analogix_dp_enable_sink_psr(dp);
-	return 0;
+		ret = analogix_dp_enable_sink_psr(dp);
+
+	return ret;
 }
 
 /*
@@ -1186,8 +1261,10 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 	}
 
 	ret = analogix_dp_commit(dp);
-	if (ret)
+	if (ret) {
+		DRM_ERROR("dp commit error, ret = %d\n", ret);
 		goto out_dp_init;
+	}
 
 	enable_irq(dp->irq);
 	return 0;
-- 
2.12.0.246.ga2ecc84866-goog
