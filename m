From: Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v2 01/43] drm/rockchip: Get rid of unnecessary struct
 fields
Date: Tue, 30 Jan 2018 10:21:21 +0800
Message-ID: <0450cb94-962e-7b17-3d3a-2cf3c8f504c4@rock-chips.com>
References: <20180126131710.7622-1-thierry.escande@collabora.com>
 <20180126131710.7622-2-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180126131710.7622-2-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Escande <thierry.escande@collabora.com>, Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, Tomasz Figa <tfiga@chromium.org>
Cc: Zain Wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, =?UTF-8?Q?=c3=98rjan_Eide?= <orjan.eide@arm.com>, Haixia Shi <hshi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org



ÔÚ 2018/1/26 21:16, Thierry Escande Ð´µÀ:
> From: Tomasz Figa <tfiga@chromium.org>
> 
> This patch removes unused fields from vop structure.
> 
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index ba7505292b78..7a137bc5708c 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -95,9 +95,6 @@ struct vop {
>   	struct drm_device *drm_dev;
>   	bool is_enabled;
>   
> -	/* mutex vsync_ work */
> -	struct mutex vsync_mutex;
> -	bool vsync_work_pending;
>   	struct completion dsp_hold_completion;
>   
>   	/* protected by dev->event_lock */
> @@ -1567,8 +1564,6 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>   	spin_lock_init(&vop->reg_lock);
>   	spin_lock_init(&vop->irq_lock);
>   
> -	mutex_init(&vop->vsync_mutex);
> -
>   	ret = devm_request_irq(dev, vop->irq, vop_isr,
>   			       IRQF_SHARED, dev_name(dev), vop);
>   	if (ret)
> 
Reviewed-by: Sandy huang <hjc@rock-chips.com>
