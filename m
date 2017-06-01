From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: gem: add the lacks lock and trivial changes
Date: Thu, 1 Jun 2017 15:46:54 +0800
Message-ID: <592FC66E.1030105@rock-chips.com>
References: <1496196863-25738-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1496196863-25738-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: heiko@sntech.de, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2017年05月31日 10:14, Caesar Wang wrote:
> As the allocation and free buffer that need to add mutex lock for drm mm,
> but it lacks the locking on error path in rockchip_gem_iommu_map().
> Also, the trivial changes like The comment should be  placed in the
> kerneldoc and unused blank line.
>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---

Pushed to drm-misc-next-fixes, Thanks.

>
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.h | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 5 +++--
>   2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> index 47905fa..c7e96b8 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> @@ -45,13 +45,13 @@ struct rockchip_crtc_state {
>    *
>    * @crtc: array of enabled CRTCs, used to map from "pipe" to drm_crtc.
>    * @num_pipe: number of pipes for this device.
> + * @mm_lock: protect drm_mm on multi-threads.
>    */
>   struct rockchip_drm_private {
>   	struct drm_fb_helper fbdev_helper;
>   	struct drm_gem_object *fbdev_bo;
>   	struct drm_atomic_state *state;
>   	struct iommu_domain *domain;
> -	/* protect drm_mm on multi-threads */
>   	struct mutex mm_lock;
>   	struct drm_mm mm;
>   	struct list_head psr_list;
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index df9e570..b74ac71 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -29,12 +29,11 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
>   	ssize_t ret;
>   
>   	mutex_lock(&private->mm_lock);
> -
>   	ret = drm_mm_insert_node_generic(&private->mm, &rk_obj->mm,
>   					 rk_obj->base.size, PAGE_SIZE,
>   					 0, 0);
> -
>   	mutex_unlock(&private->mm_lock);
> +
>   	if (ret < 0) {
>   		DRM_ERROR("out of I/O virtual memory: %zd\n", ret);
>   		return ret;
> @@ -56,7 +55,9 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
>   	return 0;
>   
>   err_remove_node:
> +	mutex_lock(&private->mm_lock);
>   	drm_mm_remove_node(&rk_obj->mm);
> +	mutex_unlock(&private->mm_lock);
>   
>   	return ret;
>   }


-- 
Ｍark Yao
