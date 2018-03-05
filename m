From: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v4 34/38] drm/rockchip: psr: Avoid redundant calls to .set()
 callback
Date: Mon,  5 Mar 2018 23:27:58 +0100
Message-ID: <20180305222802.6659-2-enric.balletbo@collabora.com>
References: <20180305222802.6659-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180305222802.6659-1-enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, orjan.eide-5wv7dgnIgG8@public.gmane.org, m.szyprowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

The first time after we call rockchip_drm_do_flush() after
rockchip_drm_psr_register(), we go from PSR_DISABLE to PSR_FLUSH. The
difference between PSR_DISABLE and PSR_FLUSH is whether or not we have a
delayed work pending - PSR is off in either state.  However
psr_set_state() only catches the transition from PSR_FLUSH to
PSR_DISABLE (which never happens), while going from PSR_DISABLE to
PSR_FLUSH triggers a call to psr->set() to disable PSR while it's
already disabled. This triggers the eDP PHY power-on sequence without
being shut down first and this seems to occasionally leave the encoder
unable to later enable PSR. Let's just simplify the state machine and
simply consider PSR_DISABLE and PSR_FLUSH the same state. This lets us
represent the hardware state by a simple boolean called "enabled" and,
while at it, rename the misleading "active" boolean to "inhibit", which
represents the purpose much better.

Also, userspace can (and does) trigger the rockchip_drm_do_flush() path
from drmModeDirtyFB() at any time, whether or the encoder is active. If
no mode is set, we call into analogix_dp_psr_set() which returns -EINVAL
because encoder->crtc is NULL. Avoid this by starting out with
psr->allowed set to false.

Signed-off-by: Kristian H. Kristensen <hoegsberg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_psr.c | 79 +++++++++--------------------
 1 file changed, 23 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c b/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
index c8655e625ba2..448c5fde241c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
@@ -22,19 +22,13 @@
 
 #define PSR_FLUSH_TIMEOUT_MS	100
 
-enum psr_state {
-	PSR_FLUSH,
-	PSR_ENABLE,
-	PSR_DISABLE,
-};
-
 struct psr_drv {
 	struct list_head	list;
 	struct drm_encoder	*encoder;
 
 	struct mutex		lock;
 	bool			active;
-	enum psr_state		state;
+	bool			enabled;
 
 	struct delayed_work	flush_work;
 	struct work_struct	disable_work;
@@ -78,52 +72,22 @@ static struct psr_drv *find_psr_by_encoder(struct drm_encoder *encoder)
 	return psr;
 }
 
-static void psr_set_state_locked(struct psr_drv *psr, enum psr_state state)
+static int psr_set_state_locked(struct psr_drv *psr, bool enable)
 {
-	/*
-	 * Allowed finite state machine:
-	 *
-	 *   PSR_ENABLE  < = = = = = >  PSR_FLUSH
-	 *       | ^                        |
-	 *       | |                        |
-	 *       v |                        |
-	 *   PSR_DISABLE < - - - - - - - - -
-	 */
-	if (state == psr->state || !psr->active)
-		return;
-
-	/* Already disabled in flush, change the state, but not the hardware */
-	if (state == PSR_DISABLE && psr->state == PSR_FLUSH) {
-		psr->state = state;
-		return;
-	}
+	int ret;
 
-	/* Actually commit the state change to hardware */
-	switch (state) {
-	case PSR_ENABLE:
-		if (psr->set(psr->encoder, true))
-			return;
-		break;
-
-	case PSR_DISABLE:
-	case PSR_FLUSH:
-		if (psr->set(psr->encoder, false))
-			return;
-		break;
-
-	default:
-		pr_err("%s: Unknown state %d\n", __func__, state);
-		return;
-	}
+	if (!psr->active)
+		return -EINVAL;
 
-	psr->state = state;
-}
+	if (enable == psr->enabled)
+		return 0;
 
-static void psr_set_state(struct psr_drv *psr, enum psr_state state)
-{
-	mutex_lock(&psr->lock);
-	psr_set_state_locked(psr, state);
-	mutex_unlock(&psr->lock);
+	ret = psr->set(psr->encoder, enable);
+	if (ret)
+		return ret;
+
+	psr->enabled = enable;
+	return 0;
 }
 
 static void psr_flush_handler(struct work_struct *work)
@@ -131,10 +95,8 @@ static void psr_flush_handler(struct work_struct *work)
 	struct psr_drv *psr = container_of(to_delayed_work(work),
 					   struct psr_drv, flush_work);
 
-	/* If the state has changed since we initiated the flush, do nothing */
 	mutex_lock(&psr->lock);
-	if (psr->state == PSR_FLUSH)
-		psr_set_state_locked(psr, PSR_ENABLE);
+	psr_set_state_locked(psr, true);
 	mutex_unlock(&psr->lock);
 }
 
@@ -176,6 +138,7 @@ int rockchip_drm_psr_deactivate(struct drm_encoder *encoder)
 
 	mutex_lock(&psr->lock);
 	psr->active = false;
+	psr->enabled = false;
 	mutex_unlock(&psr->lock);
 	cancel_delayed_work_sync(&psr->flush_work);
 	cancel_work_sync(&psr->disable_work);
@@ -187,8 +150,12 @@ EXPORT_SYMBOL(rockchip_drm_psr_deactivate);
 static void rockchip_drm_do_flush(struct psr_drv *psr)
 {
 	cancel_delayed_work_sync(&psr->flush_work);
-	psr_set_state(psr, PSR_FLUSH);
-	mod_delayed_work(system_wq, &psr->flush_work, PSR_FLUSH_TIMEOUT_MS);
+
+	mutex_lock(&psr->lock);
+	if (!psr_set_state_locked(psr, false))
+		mod_delayed_work(system_wq, &psr->flush_work,
+				 PSR_FLUSH_TIMEOUT_MS);
+	mutex_unlock(&psr->lock);
 }
 
 /**
@@ -355,8 +322,8 @@ int rockchip_drm_psr_register(struct drm_encoder *encoder,
 	INIT_WORK(&psr->disable_work, psr_disable_handler);
 	mutex_init(&psr->lock);
 
-	psr->active = true;
-	psr->state = PSR_DISABLE;
+	psr->active = false;
+	psr->enabled = false;
 	psr->encoder = encoder;
 	psr->set = psr_set;
 
-- 
2.16.1
