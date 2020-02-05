From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: improve inner documentation in
 rkisp1-isp.c
Date: Wed, 5 Feb 2020 10:48:30 -0300
Message-ID: <2889763e-e3a8-50e3-180c-7dd1be8b2e1b@collabora.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
 <20200204214446.20381-3-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200204214446.20381-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org



On 2/4/20 7:44 PM, Dafna Hirschfeld wrote:
> Improve the documentation in the beginning of the file
> rkisp1-isp1.c
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 2b0513e826fe..844556389b0b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -28,9 +28,9 @@
>  #define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
>  
>  /*
> - * NOTE: MIPI controller and input MUX are also configured in this file,
> - * because ISP Subdev is not only describe ISP submodule(input size,format,
> - * output size, format), but also a virtual route device.
> + * NOTE: MIPI controller and input MUX are also configured in this file.
> + * This is because ISP Subdev describes not only ISP submodule (input size,
> + * format, output size, format), but also a virtual route device.
>   */
>  
>  /*
> 
