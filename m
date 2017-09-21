From: Allen <allen.lkml@gmail.com>
Subject: Re: [PATCH 1/1] drivers:gpu: Use vma_pages()
Date: Thu, 21 Sep 2017 16:12:12 +0530
Message-ID: <CAOMdWSKFJnTMBg=VF1f0qP=NteaVfAnjSkX1hmzqrvYogaScSg@mail.gmail.com>
References: <1505990303-27763-1-git-send-email-allen.lkml@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1505990303-27763-1-git-send-email-allen.lkml@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: long jacob <mark.yao@rock-chips.com>, linux-rockchip@lists.infradead.org, Allen Pais <allen.lkml@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

>  Replace explicit computation of vma page count by a call to
>  vma_pages()
>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index 1869c8b..d4c429c 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -220,7 +220,7 @@ static int rockchip_drm_gem_object_mmap_iommu(struct drm_gem_object *obj,
>  {
>         struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
>         unsigned int i, count = obj->size >> PAGE_SHIFT;
> -       unsigned long user_count = (vma->vm_end - vma->vm_start) >> PAGE_SHIFT;
> +       unsigned long user_count =  vma_pages(vma);
>         unsigned long uaddr = vma->vm_start;
>         unsigned long offset = vma->vm_pgoff;
>         unsigned long end = user_count + offset;

 Ignore this patch. Sent out the wrong one by mistake.
Will send out the correct one.

- Allen
