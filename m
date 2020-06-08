From: Brian Starkey <brian.starkey@arm.com>
Subject: Re: [PATCH 1/2] drm: drm_fourcc: add NV20 YUV format
Date: Mon, 8 Jun 2020 10:11:52 +0100
Message-ID: <20200608091152.uqus7f6pdb46yuqj@DESKTOP-E1NTVVP.localdomain>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200607202521.18438-2-jonas@kwiboo.se>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200607202521.18438-2-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Ben Davis <ben.davis@arm.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, nd@arm.com
List-Id: linux-rockchip.vger.kernel.org

Hi Jonas,

On Sun, Jun 07, 2020 at 08:25:25PM +0000, Jonas Karlman wrote:
> DRM_FORMAT_NV20 is a 2 plane format suitable for linear memory layout.
> The format is similar to P210 with 4:2:2 sub-sampling but has no padding
> between components. Instead, luminance and chrominance samples are grouped
> into 4s so that each group is packed into an integer number of bytes:
> 
> YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes
> 
> The '20' suffix refers to the optimum effective bits per pixel which is
> achieved when the total number of luminance samples is a multiple of 4.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/gpu/drm/drm_fourcc.c  | 4 ++++
>  include/uapi/drm/drm_fourcc.h | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
> index 722c7ebe4e88..2a9c8ae719ed 100644
> --- a/drivers/gpu/drm/drm_fourcc.c
> +++ b/drivers/gpu/drm/drm_fourcc.c
> @@ -278,6 +278,10 @@ const struct drm_format_info *__drm_format_info(u32 format)
>  		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
>  		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
>  		  .vsub = 2, .is_yuv = true },
> +		{ .format = DRM_FORMAT_NV20,		.depth = 0,
> +		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
> +		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
> +		  .vsub = 1, .is_yuv = true },

That looks how I would expect, so:

Reviewed-by: Brian Starkey <brian.starkey@arm.com>

Cheers,
-Brian

>  		{ .format = DRM_FORMAT_Q410,		.depth = 0,
>  		  .num_planes = 3, .char_per_block = { 2, 2, 2 },
>  		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 0,
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index b5bf1c0e630e..244d32433a67 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -242,6 +242,7 @@ extern "C" {
>   * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
>   */
>  #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
> +#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
>  
>  /*
>   * 2 plane YCbCr MSB aligned
> -- 
> 2.17.1
> 
