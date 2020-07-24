From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 4/4] media: staging: rkisp1: change type of fields in
 'rkisp1_cif_isp_lsc_config' from u32 to u16
Date: Fri, 24 Jul 2020 12:48:57 -0300
Message-ID: <5e7061c6-89e4-486f-e642-ed2374da38a7@collabora.com>
References: <20200625185017.16493-1-dafna.hirschfeld@collabora.com>
 <20200625185017.16493-5-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625185017.16493-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 6/25/20 3:50 PM, Dafna Hirschfeld wrote:
> The fields in struct 'rkisp1_cif_isp_lsc_config' need to hold
> values of 12 bits, therefore it is enough to declare them as u16.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

I see this comes from:

#define RKISP1_CIF_ISP_LSC_TABLE_DATA(v0, v1)     \
	(((v0) & 0xFFF) | (((v1) & 0xFFF) << 12))

That is used in those fields.

Acked-by: Helen Koike <helen.koike@collabora.com>

On a side note, it would be nice to update this header in libcamera as well.

Thanks
Helen

> ---
>  .../staging/media/rkisp1/uapi/rkisp1-config.h    | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> index bca2e805c0f5..c032c8403f17 100644
> --- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> +++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> @@ -274,16 +274,16 @@ struct rkisp1_cif_isp_sdg_config {
>   * refer to REF_01 for details
>   */
>  struct rkisp1_cif_isp_lsc_config {
> -	__u32 r_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
> -	__u32 gr_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
> -	__u32 gb_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
> -	__u32 b_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
> +	__u16 r_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
> +	__u16 gr_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
> +	__u16 gb_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
> +	__u16 b_data_tbl[RKISP1_CIF_ISP_LSC_SAMPLES_MAX][RKISP1_CIF_ISP_LSC_SAMPLES_MAX];
>  
> -	__u32 x_grad_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
> -	__u32 y_grad_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
> +	__u16 x_grad_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
> +	__u16 y_grad_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
>  
> -	__u32 x_size_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
> -	__u32 y_size_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
> +	__u16 x_size_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
> +	__u16 y_size_tbl[RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE];
>  } __packed;
>  
>  /**
> 
