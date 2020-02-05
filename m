From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: don't lock media's graph_mutex
 when calling rkisp1_create_links
Date: Wed, 5 Feb 2020 10:45:20 -0300
Message-ID: <fe913642-4092-afcb-90c7-5c51b8f3a2e5@collabora.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org



On 2/4/20 7:44 PM, Dafna Hirschfeld wrote:
> The function rkisp1_create_links calls media_entity_get_fwnode_pad
> and media_create_pad_link in the mc api. Those calls don't require
> locking the graph_mutex so remove the locking.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-dev.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 9d866396a5de..64e61ab29143 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -219,19 +219,17 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
>  		container_of(notifier, struct rkisp1_device, notifier);
>  	int ret;
>  
> -	mutex_lock(&rkisp1->media_dev.graph_mutex);
>  	ret = rkisp1_create_links(rkisp1);
>  	if (ret)
> -		goto unlock;
> +		return ret;
> +
>  	ret = v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
>  	if (ret)
> -		goto unlock;
> +		return ret;
>  
>  	dev_dbg(rkisp1->dev, "Async subdev notifier completed\n");
>  
> -unlock:
> -	mutex_unlock(&rkisp1->media_dev.graph_mutex);
> -	return ret;
> +	return 0;
>  }
>  
>  static int rkisp1_fwnode_parse(struct device *dev,
> 
