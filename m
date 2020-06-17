From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/2] drm: rockchip: add NV15 and NV20 support
Date: Wed, 17 Jun 2020 11:27:46 +0200
Message-ID: <19910776.xcDMAuBTMJ@diego>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200607202521.18438-3-jonas@kwiboo.se>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200607202521.18438-3-jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Cc: Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Maarten Lankhorst <maarten.lankhorst-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Maxime Ripard <mripard-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Thomas Zimmermann <tzimmermann-l3A5Bk7waGM@public.gmane.org>, Brian Starkey <brian.starkey-5wv7dgnIgG8@public.gmane.org>, Ben Davis <ben.davis-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 7. Juni 2020, 22:25:26 CEST schrieb Jonas Karlman:
> Add support for displaying 10-bit 4:2:0 and 4:2:2 formats produced by the
> Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.
> 
> Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>

Reviewed-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 27 ++++++++++++++++--
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 31 +++++++++++++++++----
>  3 files changed, 51 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 33463b79a37b..13a0682d438b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -261,6 +261,17 @@ static bool has_rb_swapped(uint32_t format)
>  	}
>  }
>  
> +static bool is_fmt_10(uint32_t format)
> +{
> +	switch (format) {
> +	case DRM_FORMAT_NV15:
> +	case DRM_FORMAT_NV20:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  static enum vop_data_format vop_convert_format(uint32_t format)
>  {
>  	switch (format) {
> @@ -276,8 +287,10 @@ static enum vop_data_format vop_convert_format(uint32_t format)
>  	case DRM_FORMAT_BGR565:
>  		return VOP_FMT_RGB565;
>  	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_NV15:
>  		return VOP_FMT_YUV420SP;
>  	case DRM_FORMAT_NV16:
> +	case DRM_FORMAT_NV20:
>  		return VOP_FMT_YUV422SP;
>  	case DRM_FORMAT_NV24:
>  		return VOP_FMT_YUV444SP;
> @@ -922,7 +935,12 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
>  	dsp_st = dsp_sty << 16 | (dsp_stx & 0xffff);
>  
> -	offset = (src->x1 >> 16) * fb->format->cpp[0];
> +	if (fb->format->block_w[0])
> +		offset = (src->x1 >> 16) * fb->format->char_per_block[0] /
> +			 fb->format->block_w[0];
> +	else
> +		offset = (src->x1 >> 16) * fb->format->cpp[0];
> +
>  	offset += (src->y1 >> 16) * fb->pitches[0];
>  	dma_addr = rk_obj->dma_addr + offset + fb->offsets[0];
>  
> @@ -948,6 +966,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  	}
>  
>  	VOP_WIN_SET(vop, win, format, format);
> +	VOP_WIN_SET(vop, win, fmt_10, is_fmt_10(fb->format->format));
>  	VOP_WIN_SET(vop, win, yrgb_vir, DIV_ROUND_UP(fb->pitches[0], 4));
>  	VOP_WIN_SET(vop, win, yrgb_mst, dma_addr);
>  	VOP_WIN_YUV2YUV_SET(vop, win_yuv2yuv, y2r_en, is_yuv);
> @@ -964,7 +983,11 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  		uv_obj = fb->obj[1];
>  		rk_uv_obj = to_rockchip_obj(uv_obj);
>  
> -		offset = (src->x1 >> 16) * bpp / hsub;
> +		if (fb->format->block_w[1])
> +			offset = (src->x1 >> 16) * bpp /
> +				 fb->format->block_w[1] / hsub;
> +		else
> +			offset = (src->x1 >> 16) * bpp / hsub;
>  		offset += (src->y1 >> 16) * fb->pitches[1] / vsub;
>  
>  		dma_addr = rk_uv_obj->dma_addr + offset + fb->offsets[1];
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index d03bdb531ef2..db1138da2bd4 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -154,6 +154,7 @@ struct vop_win_phy {
>  	struct vop_reg enable;
>  	struct vop_reg gate;
>  	struct vop_reg format;
> +	struct vop_reg fmt_10;
>  	struct vop_reg rb_swap;
>  	struct vop_reg act_info;
>  	struct vop_reg dsp_info;
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index 2413deded22c..503736c8b6c4 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -50,6 +50,22 @@ static const uint32_t formats_win_full[] = {
>  	DRM_FORMAT_NV24,
>  };
>  
> +static const uint32_t formats_win_full_10[] = {
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_RGB888,
> +	DRM_FORMAT_BGR888,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_BGR565,
> +	DRM_FORMAT_NV12,
> +	DRM_FORMAT_NV16,
> +	DRM_FORMAT_NV24,
> +	DRM_FORMAT_NV15,
> +	DRM_FORMAT_NV20,
> +};
> +
>  static const uint64_t format_modifiers_win_full[] = {
>  	DRM_FORMAT_MOD_LINEAR,
>  	DRM_FORMAT_MOD_INVALID,
> @@ -570,11 +586,12 @@ static const struct vop_scl_regs rk3288_win_full_scl = {
>  
>  static const struct vop_win_phy rk3288_win01_data = {
>  	.scl = &rk3288_win_full_scl,
> -	.data_formats = formats_win_full,
> -	.nformats = ARRAY_SIZE(formats_win_full),
> +	.data_formats = formats_win_full_10,
> +	.nformats = ARRAY_SIZE(formats_win_full_10),
>  	.format_modifiers = format_modifiers_win_full,
>  	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
>  	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
> +	.fmt_10 = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 4),
>  	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
>  	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
>  	.dsp_info = VOP_REG(RK3288_WIN0_DSP_INFO, 0x0fff0fff, 0),
> @@ -704,11 +721,12 @@ static const struct vop_intr rk3368_vop_intr = {
>  
>  static const struct vop_win_phy rk3368_win01_data = {
>  	.scl = &rk3288_win_full_scl,
> -	.data_formats = formats_win_full,
> -	.nformats = ARRAY_SIZE(formats_win_full),
> +	.data_formats = formats_win_full_10,
> +	.nformats = ARRAY_SIZE(formats_win_full_10),
>  	.format_modifiers = format_modifiers_win_full,
>  	.enable = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 0),
>  	.format = VOP_REG(RK3368_WIN0_CTRL0, 0x7, 1),
> +	.fmt_10 = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 4),
>  	.rb_swap = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 12),
>  	.x_mir_en = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 21),
>  	.y_mir_en = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 22),
> @@ -853,11 +871,12 @@ static const struct vop_win_yuv2yuv_data rk3399_vop_big_win_yuv2yuv_data[] = {
>  
>  static const struct vop_win_phy rk3399_win01_data = {
>  	.scl = &rk3288_win_full_scl,
> -	.data_formats = formats_win_full,
> -	.nformats = ARRAY_SIZE(formats_win_full),
> +	.data_formats = formats_win_full_10,
> +	.nformats = ARRAY_SIZE(formats_win_full_10),
>  	.format_modifiers = format_modifiers_win_full_afbc,
>  	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
>  	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
> +	.fmt_10 = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 4),
>  	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
>  	.y_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 22),
>  	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
> 
