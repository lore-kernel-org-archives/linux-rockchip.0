From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 10/40] drm/rockchip: add mutex vop lock
Date: Mon, 15 Jan 2018 18:15:44 +0100
Message-ID: <20180115171614.14474-11-thierry.escande@collabora.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180115171614.14474-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Inki Dae <inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>
Cc: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide-5wv7dgnIgG8@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Haixia Shi <hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Add a lock to vop to avoid disabling the crtc while waiting for a line
flag while enabling psr. If we disable in the middle of waiting for the
line flag, we'll end up timing out or worse.

Signed-off-by: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 30 +++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 31304434847a..bf4b1a2f3fa4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -117,6 +117,8 @@ struct vop {
 	spinlock_t reg_lock;
 	/* lock vop irq reg */
 	spinlock_t irq_lock;
+	/* protects crtc enable/disable */
+	struct mutex vop_lock;
 
 	unsigned int irq;
 
@@ -577,6 +579,7 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	WARN_ON(vop->event);
 
+	mutex_lock(&vop->vop_lock);
 	drm_crtc_vblank_off(crtc);
 
 	/*
@@ -612,6 +615,7 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 	clk_disable(vop->aclk);
 	clk_disable(vop->hclk);
 	pm_runtime_put(vop->dev);
+	mutex_unlock(&vop->vop_lock);
 
 	if (crtc->state->event && !crtc->state->active) {
 		spin_lock_irq(&crtc->dev->event_lock);
@@ -882,10 +886,13 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	uint32_t pin_pol, val;
 	int ret;
 
+	mutex_lock(&vop->vop_lock);
+
 	WARN_ON(vop->event);
 
 	ret = vop_enable(crtc);
 	if (ret) {
+		mutex_unlock(&vop->vop_lock);
 		DRM_DEV_ERROR(vop->dev, "Failed to enable vop (%d)\n", ret);
 		return;
 	}
@@ -949,6 +956,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	clk_set_rate(vop->dclk, adjusted_mode->clock * 1000);
 
 	VOP_REG_SET(vop, common, standby, 0);
+	mutex_unlock(&vop->vop_lock);
 }
 
 static bool vop_fs_irq_is_pending(struct vop *vop)
@@ -1487,15 +1495,21 @@ int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
 {
 	struct vop *vop = to_vop(crtc);
 	unsigned long jiffies_left;
+	int ret = 0;
 
 	if (!crtc || !vop->is_enabled)
 		return -ENODEV;
 
-	if (mstimeout <= 0)
-		return -EINVAL;
+	mutex_lock(&vop->vop_lock);
+	if (mstimeout <= 0) {
+		ret = -EINVAL;
+		goto out;
+	}
 
-	if (vop_line_flag_irq_is_enabled(vop))
-		return -EBUSY;
+	if (vop_line_flag_irq_is_enabled(vop)) {
+		ret = -EBUSY;
+		goto out;
+	}
 
 	reinit_completion(&vop->line_flag_completion);
 	vop_line_flag_irq_enable(vop);
@@ -1506,10 +1520,13 @@ int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
 
 	if (jiffies_left == 0) {
 		DRM_DEV_ERROR(vop->dev, "Timeout waiting for IRQ\n");
-		return -ETIMEDOUT;
+		ret = -ETIMEDOUT;
+		goto out;
 	}
 
-	return 0;
+out:
+	mutex_unlock(&vop->vop_lock);
+	return ret;
 }
 EXPORT_SYMBOL(rockchip_drm_wait_vact_end);
 
@@ -1559,6 +1576,7 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 
 	spin_lock_init(&vop->reg_lock);
 	spin_lock_init(&vop->irq_lock);
+	mutex_init(&vop->vop_lock);
 
 	ret = devm_request_irq(dev, vop->irq, vop_isr,
 			       IRQF_SHARED, dev_name(dev), vop);
-- 
2.14.1
