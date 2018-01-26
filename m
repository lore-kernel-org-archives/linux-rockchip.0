From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 21/43] drm/bridge: analogix_dp: Fix incorrect usage of
 enhanced mode
Date: Fri, 26 Jan 2018 14:16:48 +0100
Message-ID: <20180126131710.7622-22-thierry.escande@collabora.com>
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

Enhanced mode is required by the eDP 1.2 specification, and not doing it
early could result in a period of time where we have a link transmitting
idle packets without it. Since there is no reason to disable it, we just
enable it at the beginning of link training and then keep it on all the
time.

Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 9df92dc54dbe..846574d0dcb0 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -281,6 +281,8 @@ static int analogix_dp_link_start(struct analogix_dp_device *dp)
 	retval = drm_dp_dpcd_write(&dp->aux, DP_LINK_BW_SET, buf, 2);
 	if (retval < 0)
 		return retval;
+	/* set enhanced mode if available */
+	analogix_dp_set_enhanced_mode(dp);
 
 	/* Set TX pre-emphasis to minimum */
 	for (lane = 0; lane < lane_count; lane++)
@@ -593,8 +595,6 @@ static int analogix_dp_process_equalizer_training(struct analogix_dp_device *dp)
 		dev_dbg(dp->dev, "fast link training %s\n",
 			dp->fast_train_enable ? "supported" : "unsupported");
 
-		/* set enhanced mode if available */
-		analogix_dp_set_enhanced_mode(dp);
 		dp->link_train.lt_state = FINISHED;
 
 		return 0;
@@ -944,8 +944,6 @@ static int analogix_dp_commit(struct analogix_dp_device *dp)
 	}
 
 	analogix_dp_enable_scramble(dp, 1);
-	analogix_dp_enable_rx_to_enhanced_mode(dp, 1);
-	analogix_dp_enable_enhanced_mode(dp, 1);
 
 	analogix_dp_init_video(dp);
 	ret = analogix_dp_config_video(dp);
-- 
2.14.1
