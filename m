From: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 2/2] drm/rockchip: vop: fix irq disabled after vop
 driver probed
Date: Tue, 12 Jun 2018 20:50:11 +0800
Message-ID: <5B1FC183.2010303@rock-chips.com>
References: <20180612121537.31223-1-heiko@sntech.de>
 <20180612121537.31223-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180612121537.31223-3-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: marc.zyngier-5wv7dgnIgG8@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, enric.balletbo-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org, tomeu.vizoso-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 06/12/2018 08:15 PM, Heiko Stuebner wrote:
> From: Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> The vop irq is shared between vop and iommu and irq probing in the
> iommu driver moved to the probe function recently. This can in some
> cases lead to a stall if the irq is triggered while the vop driver
> still has it disabled, but the vop irq handler gets called.

hmmm, i think this patch actually fixes another stall case by removing 
the unpaired disable_irq() in vop_bind().

if we do disable_irq() in vop_bind() without enable it again in 
vop_unbind(), the irq_shutdown() called after vop_unbind()(when 
releasing devres) will confuse the irq depth, so the irq will stay 
disabled and could never be enabled again.

>
> But there is no real need to disable the irq, as the vop can simply
> also track its enabled state and ignore irqs in that case.
> For this we can simply check the power-domain state of the vop,
> similar to how the iommu driver does it.
>
> So remove the enable/disable handling and add appropriate condition
> to the irq handler.
>
> changes in v2:
> - move to just check the power-domain state
> - add clock handling
> changes in v3:
> - clarify comment to speak of runtime-pm not power-domain
>
> Fixes: d0b912bd4c23 ("iommu/rockchip: Request irqs in rk_iommu_probe()")
> Cc: stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Signed-off-by: Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> Tested-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 28 ++++++++++++++-------
>   1 file changed, 19 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 9a1f272e41c7..ae8a69793aed 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -573,8 +573,6 @@ static int vop_enable(struct drm_crtc *crtc)
>
>   	spin_unlock(&vop->reg_lock);
>
> -	enable_irq(vop->irq);
> -
>   	drm_crtc_vblank_on(crtc);
>
>   	return 0;
> @@ -618,8 +616,6 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
>
>   	vop_dsp_hold_valid_irq_disable(vop);
>
> -	disable_irq(vop->irq);
> -
>   	vop->is_enabled = false;
>
>   	/*
> @@ -1195,6 +1191,16 @@ static irqreturn_t vop_isr(int irq, void *data)
>   	uint32_t active_irqs;
>   	int ret = IRQ_NONE;
>
> +	/*
> +	 * The irq is shared with the iommu. If the runtime-pm state of the
> +	 * vop-device is disabled the irq has to be targetted at the iommu.
> +	 */
> +	if (!pm_runtime_get_if_in_use(vop->dev))
> +		return IRQ_NONE;
> +
> +	if (WARN_ON(vop_core_clks_enable(vop)))
> +		goto out;
> +
>   	/*
>   	 * interrupt register has interrupt status, enable and clear bits, we
>   	 * must hold irq_lock to avoid a race with enable/disable_vblank().
> @@ -1209,8 +1215,11 @@ static irqreturn_t vop_isr(int irq, void *data)
>   	spin_unlock(&vop->irq_lock);
>
>   	/* This is expected for vop iommu irqs, since the irq is shared */
> -	if (!active_irqs)
> -		return IRQ_NONE;
> +	if (!active_irqs) {
> +		ret = IRQ_NONE;
> +		vop_core_clks_disable(vop);
> +		goto out;
> +	}
>
>   	if (active_irqs & DSP_HOLD_VALID_INTR) {
>   		complete(&vop->dsp_hold_completion);
> @@ -1236,6 +1245,10 @@ static irqreturn_t vop_isr(int irq, void *data)
>   		DRM_DEV_ERROR(vop->dev, "Unknown VOP IRQs: %#02x\n",
>   			      active_irqs);
>
> +	vop_core_clks_disable(vop);
> +
> +out:
> +	pm_runtime_put(vop->dev);
>   	return ret;
>   }
>
> @@ -1614,9 +1627,6 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>   	if (ret)
>   		goto err_disable_pm_runtime;
>
> -	/* IRQ is initially disabled; it gets enabled in power_on */
> -	disable_irq(vop->irq);
> -
>   	return 0;
>
>   err_disable_pm_runtime:
>
