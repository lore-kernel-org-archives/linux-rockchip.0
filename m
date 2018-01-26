From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 25/43] drm/rockchip: Restore psr->state when enable/disable
 psr failed
Date: Fri, 26 Jan 2018 14:16:52 +0100
Message-ID: <20180126131710.7622-26-thierry.escande@collabora.com>
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

If we failed disable psr, it would hang the display until next psr
cycle coming. So we should restore psr->state when it failed.

Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  4 +++-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    | 10 +++++-----
 drivers/gpu/drm/rockchip/rockchip_drm_psr.c        | 20 +++++++++++++-------
 drivers/gpu/drm/rockchip/rockchip_drm_psr.h        |  2 +-
 4 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 501f7b4a23d6..b2e369073854 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -153,8 +153,10 @@ int analogix_dp_disable_psr(struct analogix_dp_device *dp)
 	psr_vsc.DB1 = 0;
 
 	ret = drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
-	if (ret != 1)
+	if (ret != 1) {
 		dev_err(dp->dev, "Failed to set DP Power0 %d\n", ret);
+		return ret;
+	}
 
 	return analogix_dp_send_psr_spd(dp, &psr_vsc, false);
 }
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 3e8bf79bea58..8c884f9ce713 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -77,13 +77,13 @@ struct rockchip_dp_device {
 	struct analogix_dp_plat_data plat_data;
 };
 
-static void analogix_dp_psr_set(struct drm_encoder *encoder, bool enabled)
+static int analogix_dp_psr_set(struct drm_encoder *encoder, bool enabled)
 {
 	struct rockchip_dp_device *dp = to_dp(encoder);
 	int ret;
 
 	if (!analogix_dp_psr_enabled(dp->adp))
-		return;
+		return 0;
 
 	DRM_DEV_DEBUG(dp->dev, "%s PSR...\n", enabled ? "Entry" : "Exit");
 
@@ -91,13 +91,13 @@ static void analogix_dp_psr_set(struct drm_encoder *encoder, bool enabled)
 					 PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
 	if (ret) {
 		DRM_DEV_ERROR(dp->dev, "line flag interrupt did not arrive\n");
-		return;
+		return -ETIMEDOUT;
 	}
 
 	if (enabled)
-		analogix_dp_enable_psr(dp->adp);
+		return analogix_dp_enable_psr(dp->adp);
 	else
-		analogix_dp_disable_psr(dp->adp);
+		return analogix_dp_disable_psr(dp->adp);
 }
 
 static int rockchip_dp_pre_init(struct rockchip_dp_device *dp)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c b/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
index b339ca943139..9376f4396b6b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
@@ -36,7 +36,7 @@ struct psr_drv {
 
 	struct delayed_work	flush_work;
 
-	void (*set)(struct drm_encoder *encoder, bool enable);
+	int (*set)(struct drm_encoder *encoder, bool enable);
 };
 
 static struct psr_drv *find_psr_by_crtc(struct drm_crtc *crtc)
@@ -93,19 +93,25 @@ static void psr_set_state_locked(struct psr_drv *psr, enum psr_state state)
 		return;
 	}
 
-	psr->state = state;
-
 	/* Actually commit the state change to hardware */
-	switch (psr->state) {
+	switch (state) {
 	case PSR_ENABLE:
-		psr->set(psr->encoder, true);
+		if (psr->set(psr->encoder, true))
+			return;
 		break;
 
 	case PSR_DISABLE:
 	case PSR_FLUSH:
-		psr->set(psr->encoder, false);
+		if (psr->set(psr->encoder, false))
+			return;
 		break;
+
+	default:
+		pr_err("%s: Unknown state %d\n", __func__, state);
+		return;
 	}
+
+	psr->state = state;
 }
 
 static void psr_set_state(struct psr_drv *psr, enum psr_state state)
@@ -229,7 +235,7 @@ EXPORT_SYMBOL(rockchip_drm_psr_flush_all);
  * Zero on success, negative errno on failure.
  */
 int rockchip_drm_psr_register(struct drm_encoder *encoder,
-			void (*psr_set)(struct drm_encoder *, bool enable))
+			int (*psr_set)(struct drm_encoder *, bool enable))
 {
 	struct rockchip_drm_private *drm_drv = encoder->dev->dev_private;
 	struct psr_drv *psr;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_psr.h b/drivers/gpu/drm/rockchip/rockchip_drm_psr.h
index b1ea0155e57c..06537ee27565 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_psr.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_psr.h
@@ -22,7 +22,7 @@ int rockchip_drm_psr_activate(struct drm_encoder *encoder);
 int rockchip_drm_psr_deactivate(struct drm_encoder *encoder);
 
 int rockchip_drm_psr_register(struct drm_encoder *encoder,
-			void (*psr_set)(struct drm_encoder *, bool enable));
+			int (*psr_set)(struct drm_encoder *, bool enable));
 void rockchip_drm_psr_unregister(struct drm_encoder *encoder);
 
 #endif /* __ROCKCHIP_DRM_PSR__ */
-- 
2.14.1
