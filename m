From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: fix typos in file rkisp1-config.h
Date: Fri, 10 Jul 2020 09:59:10 -0300
Message-ID: <bba7cac8-7ce3-2314-dc88-9e0e69c2aab8@collabora.com>
References: <20200707181630.24514-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200707181630.24514-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/7/20 3:16 PM, Dafna Hirschfeld wrote:
> Fix two spelling typos in file rkisp1-config.h.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> index 7983498bda24..e68175c7c154 100644
> --- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> +++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> @@ -86,7 +86,7 @@
>  #define RKISP1_CIF_ISP_BLS_FIX_MASK                0x00001fff
>  
>  /*
> - * Automatic white balance measurments
> + * Automatic white balance measurements
>   */
>  #define RKISP1_CIF_ISP_AWB_MAX_GRID                1
>  #define RKISP1_CIF_ISP_AWB_MAX_FRAMES              7
> @@ -485,7 +485,7 @@ struct rkisp1_cif_isp_flt_config {
>  /**
>   * struct rkisp1_cif_isp_bdm_config - Configuration used by Bayer DeMosaic
>   *
> - * @demosaic_th: threshod for bayer demosaicing texture detection
> + * @demosaic_th: threshold for bayer demosaicing texture detection
>   */
>  struct rkisp1_cif_isp_bdm_config {
>  	__u8 demosaic_th;
> 
