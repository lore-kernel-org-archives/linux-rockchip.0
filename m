From: Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v2 03/43] drm/rockchip: Respect page offset for PRIME mmap
 calls
Date: Tue, 30 Jan 2018 10:42:41 +0800
Message-ID: <8c3724a2-868d-8dad-6ba7-a66e30cc94f0@rock-chips.com>
References: <20180126131710.7622-1-thierry.escande@collabora.com>
 <20180126131710.7622-4-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180126131710.7622-4-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Escande <thierry.escande@collabora.com>, Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, Tomasz Figa <tfiga@chromium.org>
Cc: Zain Wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, =?UTF-8?Q?=c3=98rjan_Eide?= <orjan.eide@arm.com>, Haixia Shi <hshi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org



在 2018/1/26 21:16, Thierry Escande 写道:
> From: Ørjan Eide <orjan.eide@arm.com>
> 
> When mapping external DMA-bufs through the PRIME mmap call, we might be
> given an offset which has to be respected. However for the internal DRM
> GEM mmap path, we have to ignore the fake mmap offset used to identify
> the buffer only. Currently the code always zeroes out vma->vm_pgoff,
> which breaks the former.
> 
> This patch fixes the problem by moving the vm_pgoff assignment to a
> function that is used only for GEM mmap path, so that the PRIME path
> retains the original offset.
> 
> Cc: Daniel Kurtz <djkurtz@chromium.org>
> Signed-off-by: Ørjan Eide <orjan.eide@arm.com>
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index 5d52020deca1..074db7a92809 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -264,7 +264,6 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
>   	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
>   	 */
>   	vma->vm_flags &= ~VM_PFNMAP;
> -	vma->vm_pgoff = 0;
>   
>   	if (rk_obj->pages)
>   		ret = rockchip_drm_gem_object_mmap_iommu(obj, vma);
> @@ -299,6 +298,12 @@ int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>   	if (ret)
>   		return ret;
>   
> +	/*
> +	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
> +	 * whole buffer from the start.
> +	 */
> +	vma->vm_pgoff = 0;
> +
>   	obj = vma->vm_private_data;
>   
>   	return rockchip_drm_gem_object_mmap(obj, vma);
> 

Reviewed-by: Sandy huang <hjc@rock-chips.com>
