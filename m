From: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v3 2/2] drm/rockchip: vop: fix irq disabled after vop
 driver probed
Date: Tue, 12 Jun 2018 13:39:03 +0100
Message-ID: <b20d9681-fa94-ac37-fa90-c962facf8de0@arm.com>
References: <20180612121537.31223-1-heiko@sntech.de>
 <20180612121537.31223-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20180612121537.31223-3-heiko@sntech.de>
Content-Language: en-GB
Sender: stable-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, ezequiel@collabora.com, tfiga@chromium.org, robin.murphy@arm.com, jeffy.chen@rock-chips.com, hjc@rock-chips.com, enric.balletbo@collabora.co.uk, tomeu.vizoso@collabora.co.uk, stable@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 12/06/18 13:15, Heiko Stuebner wrote:
> From: Sandy Huang <hjc@rock-chips.com>
> 
> The vop irq is shared between vop and iommu and irq probing in the
> iommu driver moved to the probe function recently. This can in some
> cases lead to a stall if the irq is triggered while the vop driver
> still has it disabled, but the vop irq handler gets called.
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
> Cc: stable@vger.kernel.org
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 28 ++++++++++++++-------
>  1 file changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 9a1f272e41c7..ae8a69793aed 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -573,8 +573,6 @@ static int vop_enable(struct drm_crtc *crtc)
>  
>  	spin_unlock(&vop->reg_lock);
>  
> -	enable_irq(vop->irq);
> -
>  	drm_crtc_vblank_on(crtc);
>  
>  	return 0;
> @@ -618,8 +616,6 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
>  
>  	vop_dsp_hold_valid_irq_disable(vop);
>  
> -	disable_irq(vop->irq);
> -
>  	vop->is_enabled = false;
>  
>  	/*
> @@ -1195,6 +1191,16 @@ static irqreturn_t vop_isr(int irq, void *data)
>  	uint32_t active_irqs;
>  	int ret = IRQ_NONE;
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

As I mentioned before, a WARN_ON() in an interrupt handler is a good way
to make a bad problem even worse, and will give information (full
register and stack dump) that is mostly useless to the context at hand.
Turning it to a dev_warn_ratelimited() (or DRM_ERROR_RATELIMITED if you
want to be DRM compliant) would be a better approach, IMHO.

> +
>  	/*
>  	 * interrupt register has interrupt status, enable and clear bits, we
>  	 * must hold irq_lock to avoid a race with enable/disable_vblank().
> @@ -1209,8 +1215,11 @@ static irqreturn_t vop_isr(int irq, void *data)
>  	spin_unlock(&vop->irq_lock);
>  
>  	/* This is expected for vop iommu irqs, since the irq is shared */
> -	if (!active_irqs)
> -		return IRQ_NONE;
> +	if (!active_irqs) {
> +		ret = IRQ_NONE;
> +		vop_core_clks_disable(vop);
> +		goto out;
> +	}

A couple of nits: ret is already set to IRQ_NONE at this stage, and you
could simply rewrite it as:

	if (!active_irq)
		goto out_disable;

>  
>  	if (active_irqs & DSP_HOLD_VALID_INTR) {
>  		complete(&vop->dsp_hold_completion);
> @@ -1236,6 +1245,10 @@ static irqreturn_t vop_isr(int irq, void *data)
>  		DRM_DEV_ERROR(vop->dev, "Unknown VOP IRQs: %#02x\n",
>  			      active_irqs);
>  

with the "out_disable" label placed here.

> +	vop_core_clks_disable(vop);
> +
> +out:
> +	pm_runtime_put(vop->dev);
>  	return ret;
>  }
>  
> @@ -1614,9 +1627,6 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>  	if (ret)
>  		goto err_disable_pm_runtime;
>  
> -	/* IRQ is initially disabled; it gets enabled in power_on */
> -	disable_irq(vop->irq);
> -
>  	return 0;
>  
>  err_disable_pm_runtime:
> 

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...
