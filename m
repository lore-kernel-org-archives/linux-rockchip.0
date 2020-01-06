From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 06/15] drm/rockchip: vop: limit resolution width to 3840
Date: Mon, 06 Jan 2020 22:18:56 +0100
Message-ID: <3203294.bEmSZkBOq4@diego>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com> <20200106204812.5944-1-jonas@kwiboo.se> <HE1PR06MB40111E90F5DA4718126E6A92AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <HE1PR06MB40111E90F5DA4718126E6A92AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Sandy Huang <hjc@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Zheng Yang <zhengyang@rock-chips.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jonas,

Am Montag, 6. Januar 2020, 21:48:25 CET schrieb Jonas Karlman:
> Using a destination width that is more then 3840 pixels
> is not supported in scl_vop_cal_scl_fac().
> 
> Work around this limitation by filtering all modes with
> a width above 3840 pixels.

could you try to send the whole series to people? I only get this patch6
of a series of 15 and that is way confusing not knowing what you want
to actually achieve.

Hence I can also just point to rk3229, rk3328, rk3368 and rk3399 that
report a max output of 4096x2160 , which would be larger than that
3840 value?


Heiko


> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index d04b3492bdac..f181897cbfad 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1036,6 +1036,15 @@ static void vop_crtc_disable_vblank(struct drm_crtc *crtc)
>  	spin_unlock_irqrestore(&vop->irq_lock, flags);
>  }
>  
> +enum drm_mode_status vop_crtc_mode_valid(struct drm_crtc *crtc,
> +					 const struct drm_display_mode *mode)
> +{
> +	if (mode->hdisplay > 3840)
> +		return MODE_BAD_HVALUE;
> +
> +	return MODE_OK;
> +}
> +
>  static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>  				const struct drm_display_mode *mode,
>  				struct drm_display_mode *adjusted_mode)
> @@ -1377,6 +1386,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>  }
>  
>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
> +	.mode_valid = vop_crtc_mode_valid,
>  	.mode_fixup = vop_crtc_mode_fixup,
>  	.atomic_check = vop_crtc_atomic_check,
>  	.atomic_begin = vop_crtc_atomic_begin,
> 
