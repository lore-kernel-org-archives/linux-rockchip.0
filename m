From: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH v6 07/11] media: cedrus: Specify H264 startcode and
 decoding mode
Date: Fri, 16 Aug 2019 09:38:20 +0200
Message-ID: <a7dab464-5be0-ff9d-7547-735a83e87e14@xs4all.nl>
References: <20190814195931.6587-1-ezequiel@collabora.com>
 <20190814195931.6587-8-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190814195931.6587-8-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: fbuergisser-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 8/14/19 9:59 PM, Ezequiel Garcia wrote:
> The cedrus VPU is slice-based and expects V4L2_PIX_FMT_H264_SLICE
> buffers to contain H264 slices with no start code.
> 
> Expose this to userspace with the newly added menu control.
> 
> These two controls are specified as mandatory for applications,
> but we mark them as non-required on the driver side for
> backwards compatibility.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> Changes in v6:
> * Adjust to control renames.
> Changes in v5:
> * Clarify commit log.
> Changes in v4:
> * New patch.
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
> index 7bdc413bf727..69a836aa11ef 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> @@ -77,6 +77,26 @@ static const struct cedrus_control cedrus_controls[] = {
>  		.codec		= CEDRUS_CODEC_H264,
>  		.required	= true,
>  	},
> +	{
> +		.cfg = {
> +			.id	= V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE,
> +			.max	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +			.def	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED),

You don't need this: DECODE_MODE_FRAME_BASED > DECODE_MODE_SLICE_BASED (the max
value). So no need to set the skip_mask since it is out of range.

> +		},
> +		.codec		= CEDRUS_CODEC_H264,
> +		.required	= false,
> +	},
> +	{
> +		.cfg = {
> +			.id	= V4L2_CID_MPEG_VIDEO_H264_START_CODE,
> +			.max	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +			.def	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B),

Ditto.

Regards,

	Hans

> +		},
> +		.codec		= CEDRUS_CODEC_H264,
> +		.required	= false,
> +	},
>  };
>  
>  #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
> 
