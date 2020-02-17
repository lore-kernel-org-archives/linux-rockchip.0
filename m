From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: destroy subdevs' mutexes when
 unregistering
Date: Mon, 17 Feb 2020 17:03:34 -0300
Message-ID: <e72cbe20-2e72-fef4-3994-335b0df5ce8e@collabora.com>
References: <20200217175113.8216-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200217175113.8216-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On 2/17/20 2:51 PM, Dafna Hirschfeld wrote:
> call 'mutex_destroy' on the locks of the subdevices 'isp' and 'resizer'
> when unregistering and when failing to register.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> This patch is a follow-up patch for the patchset:
> 'media: staging: rkisp1: add serialization to the isp and resizer ops'
> 
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 5 ++++-
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 5 ++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index aa7a842f97f8..36c0251911c9 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -1051,7 +1051,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  	mutex_init(&isp->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
>  	if (ret)
> -		return ret;
> +		goto err_destroy_mutex;

Could you move the mutex_init() the after the media_entity_pads_init() call?
So you won't need to add this label.

With this:

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

>  
>  	ret = v4l2_device_register_subdev(v4l2_dev, sd);
>  	if (ret) {
> @@ -1064,6 +1064,8 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  
>  err_cleanup_media_entity:
>  	media_entity_cleanup(&sd->entity);
> +err_destroy_mutex:
> +	mutex_destroy(&isp->ops_lock);
>  
>  	return ret;
>  }
> @@ -1074,6 +1076,7 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
>  
>  	v4l2_device_unregister_subdev(sd);
>  	media_entity_cleanup(&sd->entity);
> +	mutex_destroy(&rkisp1->isp.ops_lock);
>  }
>  
>  /* ----------------------------------------------------------------------------
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 87799fbf0363..0b4385153920 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -695,6 +695,7 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
>  {
>  	v4l2_device_unregister_subdev(&rsz->sd);
>  	media_entity_cleanup(&rsz->sd.entity);
> +	mutex_destroy(&rsz->ops_lock);
>  }
>  
>  static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
> @@ -727,7 +728,7 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  	mutex_init(&rsz->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, 2, pads);
>  	if (ret)
> -		return ret;
> +		goto err_destroy_mutex;
>  
>  	ret = v4l2_device_register_subdev(&rsz->rkisp1->v4l2_dev, sd);
>  	if (ret) {
> @@ -740,6 +741,8 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  
>  err_cleanup_media_entity:
>  	media_entity_cleanup(&sd->entity);
> +err_destroy_mutex:
> +	mutex_destroy(&rsz->ops_lock);
>  
>  	return ret;
>  }
> 
