From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2 01/43] drm/rockchip: Get rid of unnecessary struct
 fields
Date: Mon, 29 Jan 2018 15:44:42 -0500
Message-ID: <20180129204442.nwpx45aajzprjnwp@art_vandelay>
References: <20180126131710.7622-1-thierry.escande@collabora.com>
 <20180126131710.7622-2-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180126131710.7622-2-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Escande <thierry.escande@collabora.com>
Cc: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, Tomasz Figa <tfiga@chromium.org>, Haixia Shi <hshi@chromium.org>, =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>, Zain Wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jan 26, 2018 at 02:16:28PM +0100, Thierry Escande wrote:
> From: Tomasz Figa <tfiga@chromium.org>
> 
> This patch removes unused fields from vop structure.
> 
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>


Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index ba7505292b78..7a137bc5708c 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -95,9 +95,6 @@ struct vop {
>  	struct drm_device *drm_dev;
>  	bool is_enabled;
>  
> -	/* mutex vsync_ work */
> -	struct mutex vsync_mutex;
> -	bool vsync_work_pending;
>  	struct completion dsp_hold_completion;
>  
>  	/* protected by dev->event_lock */
> @@ -1567,8 +1564,6 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>  	spin_lock_init(&vop->reg_lock);
>  	spin_lock_init(&vop->irq_lock);
>  
> -	mutex_init(&vop->vsync_mutex);
> -
>  	ret = devm_request_irq(dev, vop->irq, vop_isr,
>  			       IRQF_SHARED, dev_name(dev), vop);
>  	if (ret)
> -- 
> 2.14.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
