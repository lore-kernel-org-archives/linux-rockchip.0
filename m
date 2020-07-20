From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 8/9] media: staging: rkisp1: group declaration of
 similar functions together
Date: Mon, 20 Jul 2020 16:29:51 -0300
Message-ID: <92007778-61ec-8f76-ee27-a722fdb77793@collabora.com>
References: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
 <20200718145918.17752-9-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200718145918.17752-9-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/18/20 11:59 AM, Dafna Hirschfeld wrote:
> In file rkisp1-common.h, group declaration of register/unregister
> functions together and group other functions together to make
> the code easier to read.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index d18f901de70c..67419cf1a739 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -304,11 +304,13 @@ void rkisp1_sd_adjust_crop_rect(struct v4l2_rect *crop,
>  void rkisp1_sd_adjust_crop(struct v4l2_rect *crop,
>  			   const struct v4l2_mbus_framefmt *bounds);
>  
> -int rkisp1_isp_register(struct rkisp1_device *rkisp1);
> -void rkisp1_isp_unregister(struct rkisp1_device *rkisp1);
> -
>  const struct rkisp1_isp_mbus_info *rkisp1_isp_mbus_info_get(u32 mbus_code);
>  
> +void rkisp1_params_configure(struct rkisp1_params *params,
> +			     enum rkisp1_fmt_raw_pat_type bayer_pat,
> +			     enum v4l2_quantization quantization);
> +void rkisp1_params_disable(struct rkisp1_params *params);
> +
>  void rkisp1_isp_isr(struct rkisp1_device *rkisp1);
>  void rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
>  void rkisp1_capture_isr(struct rkisp1_device *rkisp1);
> @@ -318,16 +320,15 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis);
>  int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1);
>  void rkisp1_capture_devs_unregister(struct rkisp1_device *rkisp1);
>  
> +int rkisp1_isp_register(struct rkisp1_device *rkisp1);
> +void rkisp1_isp_unregister(struct rkisp1_device *rkisp1);
> +
>  int rkisp1_resizer_devs_register(struct rkisp1_device *rkisp1);
>  void rkisp1_resizer_devs_unregister(struct rkisp1_device *rkisp1);
>  
>  int rkisp1_stats_register(struct rkisp1_device *rkisp1);
>  void rkisp1_stats_unregister(struct rkisp1_device *rkisp1);
>  
> -void rkisp1_params_configure(struct rkisp1_params *params,
> -			     enum rkisp1_fmt_raw_pat_type bayer_pat,
> -			     enum v4l2_quantization quantization);
> -void rkisp1_params_disable(struct rkisp1_params *params);
>  int rkisp1_params_register(struct rkisp1_device *rkisp1);
>  void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
>  
> 
