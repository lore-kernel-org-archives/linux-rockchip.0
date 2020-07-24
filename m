From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 1/4] media: staging: rkisp1: remove two unused fields in
 uapi struct
Date: Fri, 24 Jul 2020 12:21:16 -0300
Message-ID: <183bc35a-e3ad-1558-c132-245192d94d35@collabora.com>
References: <20200625185017.16493-1-dafna.hirschfeld@collabora.com>
 <20200625185017.16493-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625185017.16493-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,


On 6/25/20 3:50 PM, Dafna Hirschfeld wrote:
> The fields 'config_width', 'config_height' in struct
> 'rkisp1_cif_isp_lsc_config' are not used by the driver and
> therefore are not needed. This patch removes them.
> In later patch, documentation of the fields in struct
> 'rkisp1_cif_isp_lsc_config' will be added.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> index ca0d031b14ac..7331bacf7dfd 100644
> --- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> +++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> @@ -285,8 +285,6 @@ struct rkisp1_cif_isp_lsc_config {
>  
>  	__u32 x_size_tbl[RKISP1_CIF_ISP_LSC_SIZE_TBL_SIZE];
>  	__u32 y_size_tbl[RKISP1_CIF_ISP_LSC_SIZE_TBL_SIZE];
> -	__u16 config_width;
> -	__u16 config_height;
>  } __packed;
>  
>  /**
> 


I was checking the Rockchip 3A library API, and they use these fields on:

https://github.com/rockchip-linux/camera_engine_rkisp/blob/master/rkisp/ia-engine/include/ia/rk_aiq_types.h#L409

Which I'm not sure what it means tbh, so I would rather leave these fields (with a comment to say it is not used
by the driver) just in case it is useful in the future.
Ideally we should try to understand what this field does to make a decision.

Regards,
Helen
