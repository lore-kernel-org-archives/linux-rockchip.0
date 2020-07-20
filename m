From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 7/9] media: staging: rkisp1: remove declaration of
 unimplemented function 'rkisp1_params_isr_handler'
Date: Mon, 20 Jul 2020 16:26:52 -0300
Message-ID: <004f403a-f4d1-67d1-1e6a-abb075cf1487@collabora.com>
References: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
 <20200718145918.17752-8-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200718145918.17752-8-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/18/20 11:59 AM, Dafna Hirschfeld wrote:
> The file rkisp1-common.h has a function declarion
> 'rkisp1_params_isr_handler' that is not implemented.
> Remove it.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index fe1a775de768..d18f901de70c 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -331,6 +331,4 @@ void rkisp1_params_disable(struct rkisp1_params *params);
>  int rkisp1_params_register(struct rkisp1_device *rkisp1);
>  void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
>  
> -void rkisp1_params_isr_handler(struct rkisp1_device *rkisp1, u32 isp_mis);
> -
>  #endif /* _RKISP1_COMMON_H */
> 
