From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 2/4] media: staging: rkisp1: isp: check for dphy bus
 before initializations in s_stream
Date: Fri, 7 Feb 2020 09:57:29 -0300
Message-ID: <9b18a62a-cb7b-f175-8080-d5281e91422e@collabora.com>
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
 <20200207085951.5226-3-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200207085951.5226-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org



On 2/7/20 6:59 AM, Dafna Hirschfeld wrote:
> In rkisp1_isp_s_stream it is better to return error in case the
> bus type is not dphy before initializing the registers.
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
> index 56bd95d01f65..c98e3c16f520 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -963,14 +963,14 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  	rkisp1->active_sensor = container_of(sensor_sd->asd,
>  					     struct rkisp1_sensor_async, asd);
>  
> +	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
> +		return -EINVAL;
> +
>  	atomic_set(&rkisp1->isp.frame_sequence, -1);
>  	ret = rkisp1_config_cif(rkisp1);
>  	if (ret)
>  		return ret;
>  
> -	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
> -		return -EINVAL;
> -
>  	ret = rkisp1_mipi_csi2_start(&rkisp1->isp, rkisp1->active_sensor);
>  	if (ret)
>  		return ret;
> 
