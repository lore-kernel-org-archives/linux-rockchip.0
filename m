From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: vop: fix vop full rgb24 r/b color error
Date: Fri, 19 Jun 2020 09:02:22 +0200
Message-ID: <2786595.VspqIdsi2r@phil>
References: <20200619021251.22991-1-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200619021251.22991-1-hjc@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, andy.yan@rock-chips.com, huangtao@rock-chips.com, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Sandy,

Am Freitag, 19. Juni 2020, 04:12:51 CEST schrieb Sandy Huang:
> RGB888 format msb is red component and the lsb is blue component,
> at vop full platform this is swapped, and this is different from vop
> lite and vop next, so add this patch to fix it.

just me struggling with color formats ... and wondering why this never
came up so far - with Version 3 being all major SoCs of the last years.

So I guess the reason that nobody noticed so far is, that most things
will use ARGB888 instead of RGB888?

One implementation nit below as well.

> Signed-off-by: Sandy Huang <hjc@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index c80f7d9fd13f..1c17048ad737 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -132,6 +132,7 @@ struct vop_win {
>  
>  struct rockchip_rgb;
>  struct vop {
> +	uint32_t version;
>  	struct drm_crtc crtc;
>  	struct device *dev;
>  	struct drm_device *drm_dev;
> @@ -989,6 +990,12 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  	VOP_WIN_SET(vop, win, dsp_st, dsp_st);
>  
>  	rb_swap = has_rb_swapped(fb->format->format);
> +	/*
> +	 * VOP full need to do rb swap to show rgb888/bgr888 format color correctly
> +	 */

one-line-comment?
	/* VOP-full needs rb_swap for correctly showing rgb888/bgr888 */

> +	if ((fb->format->format == DRM_FORMAT_RGB888 || fb->format->format == DRM_FORMAT_BGR888) &&
> +	    VOP_MAJOR(vop->version) == 3)
> +		rb_swap = !rb_swap;

can we move this into the existing has_rb_swapped() function?
Like doing
	rb_swap = has_rb_swapped(vop, fb->format->format)
and adding your conditional to the end there?


Thanks
Heiko


>  	VOP_WIN_SET(vop, win, rb_swap, rb_swap);
>  
>  	/*
> @@ -2091,6 +2098,7 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>  	vop->dev = dev;
>  	vop->data = vop_data;
>  	vop->drm_dev = drm_dev;
> +	vop->version = vop_data->version;
>  	dev_set_drvdata(dev, vop);
>  
>  	vop_win_init(vop);
> 
