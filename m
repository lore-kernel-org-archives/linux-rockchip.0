From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 2/2] media: staging: rkisp1: replace 3 fields
 'ct_offset_*' with one array
Date: Mon, 3 Aug 2020 16:38:58 -0300
Message-ID: <bda4d2e4-373d-2918-a350-6d281be3c251@collabora.com>
References: <20200707170845.28845-1-dafna.hirschfeld@collabora.com>
 <20200707170845.28845-3-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200707170845.28845-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/7/20 2:08 PM, Dafna Hirschfeld wrote:
> The struct rkisp1_cif_isp_ctk_config contains 3 fields
> ct_offset_{rgb}. Replace them with one array field 'ct_offset[3].
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c      | 9 +++------
>  drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 6 ++----
>  2 files changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 00b102eb67b6..8596ad87a860 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -408,12 +408,9 @@ static void rkisp1_ctk_config(struct rkisp1_params *params,
>  		for (j = 0; j < 3; j++)
>  			rkisp1_write(params->rkisp1, arg->coeff[i][j],
>  				     RKISP1_CIF_ISP_CT_COEFF_0 + 4 * k++);
> -	rkisp1_write(params->rkisp1, arg->ct_offset_r,
> -		     RKISP1_CIF_ISP_CT_OFFSET_R);
> -	rkisp1_write(params->rkisp1, arg->ct_offset_g,
> -		     RKISP1_CIF_ISP_CT_OFFSET_G);
> -	rkisp1_write(params->rkisp1, arg->ct_offset_b,
> -		     RKISP1_CIF_ISP_CT_OFFSET_B);
> +	for (i = 0; i < 3; i++)
> +		rkisp1_write(params->rkisp1, arg->ct_offset[i],
> +			     RKISP1_CIF_ISP_CT_OFFSET_R + i * 4);
>  }
>  
>  static void rkisp1_ctk_enable(struct rkisp1_params *params, bool en)
> diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> index a01711a668da..ec624f2579cd 100644
> --- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> +++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> @@ -420,13 +420,11 @@ struct rkisp1_cif_isp_bdm_config {
>   * @coeff: color correction matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer
>   *		and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF). 0 is
>   *		represented by 0x000 and a coefficient value of 1 as 0x080.
> - * @ct_offset_b: offset for the crosstalk correction matrix
> + * @ct_offset: Red, Green, Blue offsets for the crosstalk correction matrix
>   */
>  struct rkisp1_cif_isp_ctk_config {
>  	__u16 coeff[3][3];
> -	__u16 ct_offset_r;
> -	__u16 ct_offset_g;
> -	__u16 ct_offset_b;
> +	__u16 ct_offset[3];
>  } __packed;
>  
>  enum rkisp1_cif_isp_goc_mode {
> 
