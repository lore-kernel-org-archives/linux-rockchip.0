From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 29/43] drm/bridge: analogix_dp: Move fast link training
 detect to set_bridge
Date: Fri, 26 Jan 2018 14:16:56 +0100
Message-ID: <20180126131710.7622-30-thierry.escande@collabora.com>
References: <20180126131710.7622-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180126131710.7622-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Inki Dae <inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide-5wv7dgnIgG8@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Haixia Shi <hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

It's too early to detect fast link training, if other step after it
failed, we will set fast_link flag to 1, and retry set_bridge again. In
this case we will power down and power up panel power supply, and we
will do fast link training since we have set fast_link flag to 1. In
fact, we should do full link training now, not the fast link training.
So we should move the fast link detection at the end of set_bridge.

Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 42 +++++++++++++---------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index e7ab871e62b5..bee0f7aa5c23 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -599,7 +599,7 @@ static int analogix_dp_process_equalizer_training(struct analogix_dp_device *dp)
 {
 	int lane, lane_count, retval;
 	u32 reg;
-	u8 link_align, link_status[2], adjust_request[2], spread;
+	u8 link_align, link_status[2], adjust_request[2];
 
 	usleep_range(400, 401);
 
@@ -643,20 +643,6 @@ static int analogix_dp_process_equalizer_training(struct analogix_dp_device *dp)
 		dev_dbg(dp->dev, "final lane count = %.2x\n",
 			dp->link_train.lane_count);
 
-		retval = drm_dp_dpcd_readb(&dp->aux, DP_MAX_DOWNSPREAD,
-					   &spread);
-		if (retval != 1) {
-			dev_err(dp->dev, "failed to read downspread %d\n",
-				retval);
-			dp->fast_train_enable = false;
-		} else {
-			dp->fast_train_enable =
-				(spread & DP_NO_AUX_HANDSHAKE_LINK_TRAINING) ?
-					true : false;
-		}
-		dev_dbg(dp->dev, "fast link training %s\n",
-			dp->fast_train_enable ? "supported" : "unsupported");
-
 		dp->link_train.lt_state = FINISHED;
 
 		return 0;
@@ -997,6 +983,22 @@ static irqreturn_t analogix_dp_irq_thread(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
+static int analogix_dp_fast_link_train_detection(struct analogix_dp_device *dp)
+{
+	int ret;
+	u8 spread;
+
+	ret = drm_dp_dpcd_readb(&dp->aux, DP_MAX_DOWNSPREAD, &spread);
+	if (ret != 1) {
+		dev_err(dp->dev, "failed to read downspread %d\n", ret);
+		return ret;
+	}
+	dp->fast_train_enable = !!(spread & DP_NO_AUX_HANDSHAKE_LINK_TRAINING);
+	dev_dbg(dp->dev, "fast link training %s\n",
+		dp->fast_train_enable ? "supported" : "unsupported");
+	return 0;
+}
+
 static int analogix_dp_commit(struct analogix_dp_device *dp)
 {
 	int ret;
@@ -1039,8 +1041,16 @@ static int analogix_dp_commit(struct analogix_dp_device *dp)
 	if (ret)
 		return ret;
 
-	if (dp->psr_enable)
+	if (dp->psr_enable) {
 		ret = analogix_dp_enable_sink_psr(dp);
+		if (ret)
+			return ret;
+	}
+
+	/* Check whether panel supports fast training */
+	ret =  analogix_dp_fast_link_train_detection(dp);
+	if (ret)
+		dp->psr_enable = false;
 
 	return ret;
 }
-- 
2.14.1
