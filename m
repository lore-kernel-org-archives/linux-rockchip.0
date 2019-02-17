From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] drm/rockchip: vop: Dither down to RGB666 if output bpc is
 6
Date: Sun, 17 Feb 2019 21:17:25 +0100
Message-ID: <5787325.TG7Q2WIxUi@phil>
References: <20190217134255.6287-1-urjaman@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190217134255.6287-1-urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Sonntag, 17. Februar 2019, 14:42:27 CET schrieb Urja Rannikko:
> Tested to fix banding on the 6-bit panel of the ASUS C201.
> 
> Signed-off-by: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 0c35a88e33dd..96ba1b4cd07b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -896,6 +896,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
>  	u16 vsync_len = adjusted_mode->vsync_end - adjusted_mode->vsync_start;
>  	u16 vact_st = adjusted_mode->vtotal - adjusted_mode->vsync_start;
>  	u16 vact_end = vact_st + vdisplay;
> +	uint32_t dither_bits = 0;
>  	uint32_t pin_pol, val;
>  	int ret;
>  
> @@ -951,10 +952,15 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
>  	    !(vop_data->feature & VOP_FEATURE_OUTPUT_RGB10))
>  		s->output_mode = ROCKCHIP_OUT_MODE_P888;
>  
> -	if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && s->output_bpc == 8)
> -		VOP_REG_SET(vop, common, pre_dither_down, 1);
> -	else
> -		VOP_REG_SET(vop, common, pre_dither_down, 0);
> +	/* dither_down includes the bit for pre_dither_down */
> +	if (s->output_bpc) { /* Only dither if bpc known. */
> +		if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && s->output_bpc <= 8)
> +			dither_bits = 0x1;
> +		/* Enable allegro dither to RGB666 */
> +		if (s->output_bpc == 6)
> +			dither_bits |= 0x6;
> +	}
> +	VOP_REG_SET(vop, common, dither_down, dither_bits);

That won't work in this form. The vops change way to much in each
iteration, so that these "bits" are not guaranteed to stay the same
order for example.

Another caveat is that the "pre_dither_down" option is even only
available on rk3288 and rk3328 and right now pre_dither_down
and dither_down options seem to overlay each other.

In the vendor-kernel they seem to have changed how they handle
dithering, including splitting up the dither-bits [0]. Sadly nobody
from Rockchip seems to have found the time to upstream any of this.

In any case, I'd suggest to get inspiration from there (including the
constants) to get dithering in mainline into a nice state.


Heiko

[0] https://github.com/rockchip-linux/kernel/blob/release-4.4/drivers/gpu/drm/rockchip/rockchip_drm_vop.c#L2547
