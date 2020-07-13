From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 1/4] media: staging: rkisp1: remove unused field
 ctrl_handler from struct rkisp1_device
Date: Mon, 13 Jul 2020 08:07:07 -0300
Message-ID: <b2651b90-a514-1b9c-7d07-944e3b24dbdb@collabora.com>
References: <20200629065754.26621-1-dafna.hirschfeld@collabora.com>
 <20200629065754.26621-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200629065754.26621-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 6/29/20 3:57 AM, Dafna Hirschfeld wrote:
> The field ctrl_handler in struct rkisp1_device is not used.
> This patch removes it.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 45e554169224..eb0dbc42d09c 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -250,7 +250,6 @@ struct rkisp1_device {
>  	unsigned int clk_size;
>  	struct clk_bulk_data clks[RKISP1_MAX_BUS_CLK];
>  	struct v4l2_device v4l2_dev;
> -	struct v4l2_ctrl_handler ctrl_handler;
>  	struct media_device media_dev;
>  	struct v4l2_async_notifier notifier;
>  	struct rkisp1_sensor_async *active_sensor;
> 
