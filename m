From: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
Date: Mon, 7 Oct 2019 18:33:52 +0000
Message-ID: <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-4-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191007174505.10681-4-ezequiel@collabora.com>
Content-Language: en-US
Content-ID: <940378B8E35A0A4AAADCC3F80571F034@eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Cc: "kernel@collabora.com" <kernel@collabora.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Alexandre Courbot <acourbot@chromium.org>, "fbuergisser@chromium.org" <fbuergisser@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Douglas Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-10-07 19:45, Ezequiel Garcia wrote:
> From: Francois Buergisser <fbuergisser@chromium.org>
>
> The setting of the motion vectors usage and the setting of motion
> vectors address are currently done under different conditions.
>
> When decoding pre-recorded videos, this results of leaving the motion
> vectors address unset, resulting in faulty memory accesses. Fix it
> by using the same condition everywhere, which matches the profiles
> that support motion vectors.

This does not fully match hantro sdk:

  enable direct MV writing and POC tables for high/main streams.
  enable it also for any "baseline" stream which have main/high tools enabled.

  (sps->profile_idc > 66 && sps->constrained_set0_flag == 0) ||
  sps->frame_mbs_only_flag != 1 ||
  sps->chroma_format_idc != 1 ||
  sps->scaling_matrix_present_flag != 0 ||
  pps->entropy_coding_mode_flag != 0 ||
  pps->weighted_pred_flag != 0 ||
  pps->weighted_bi_pred_idc != 0 ||
  pps->transform8x8_flag != 0 ||
  pps->scaling_matrix_present_flag != 0

Above check is used when DIR_MV_BASE should be written.
And WRITE_MVS_E is set to nal_ref_idc != 0 when above is true.

I think it may be safer to always set DIR_MV_BASE and keep the existing nal_ref_idc check for WRITE_MVS_E.
(That is what I did in my "media: hantro: H264 fixes and improvements" series, v2 is incoming)
Or have you found any video that is having issues in such case?

Regards,
Jonas

>
> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> v2:
> * New patch.
>
>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> index 7ab534936843..c92460407613 100644
> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> @@ -35,7 +35,7 @@ static void set_params(struct hantro_ctx *ctx)
>  	if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
>  		reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
>  	reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
> -	if (dec_param->nal_ref_idc)
> +	if (sps->profile_idc > 66)
>  		reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
>  
>  	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&
