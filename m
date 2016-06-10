From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: fix compile warnings for 64-bit
Date: Fri, 10 Jun 2016 08:51:37 +0800
Message-ID: <575A0F19.1040609@rock-chips.com>
References: <1465494392-92489-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1465494392-92489-1-git-send-email-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>, Mark Yao <mark.yao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2016=E5=B9=B406=E6=9C=8810=E6=97=A5 01:46, Brian Norris =E5=86=
=99=E9=81=93:
> Rockchip DRM does not yet build properly for ARM64, but we might as w=
ell
> get the printf formatting correct now, to avoid the following warning=
s:
>
> drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c: In function 'rockchip_=
drm_fbdev_create':
> drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c:111:2: warning: format =
'%d' expects argument of type 'int', but argument 8 has type 'size_t' [=
-Wformat=3D]
>    DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=3D%p offset=3D%ld size=3D%d\n"=
,
>    ^
>
> drivers/gpu/drm/rockchip/rockchip_drm_gem.c: In function 'rockchip_ge=
m_alloc_buf':
> drivers/gpu/drm/rockchip/rockchip_drm_gem.c:41:3: warning: format '%x=
' expects argument of type 'unsigned int', but argument 2 has type 'siz=
e_t' [-Wformat=3D]
>     DRM_ERROR("failed to allocate %#x byte dma buffer", obj->size);
>     ^
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Tested-by: Caesar Wang <wxt@rock-chips.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c   | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/=
gpu/drm/rockchip/rockchip_drm_fbdev.c
> index f261512bb4a0..bab4cd18b6b0 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> @@ -108,7 +108,7 @@ static int rockchip_drm_fbdev_create(struct drm_f=
b_helper *helper,
>   	fbi->screen_size =3D rk_obj->base.size;
>   	fbi->fix.smem_len =3D rk_obj->base.size;
>  =20
> -	DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=3D%p offset=3D%ld size=3D%d\n",
> +	DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=3D%p offset=3D%ld size=3D%zu\n"=
,
>   		      fb->width, fb->height, fb->depth, rk_obj->kvaddr,
>   		      offset, size);
>  =20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gp=
u/drm/rockchip/rockchip_drm_gem.c
> index 9c2d8a894093..059e902f872d 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -38,7 +38,7 @@ static int rockchip_gem_alloc_buf(struct rockchip_g=
em_object *rk_obj,
>   					 &rk_obj->dma_addr, GFP_KERNEL,
>   					 &rk_obj->dma_attrs);
>   	if (!rk_obj->kvaddr) {
> -		DRM_ERROR("failed to allocate %#x byte dma buffer", obj->size);
> +		DRM_ERROR("failed to allocate %zu byte dma buffer", obj->size);
>   		return -ENOMEM;
>   	}
>  =20
