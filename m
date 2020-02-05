From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: fix test of return value of
 media_entity_get_fwnode_pad
Date: Wed, 5 Feb 2020 10:45:41 -0300
Message-ID: <c814ef05-24ab-d8d8-f839-c2228d0ad15f@collabora.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
 <20200204214446.20381-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200204214446.20381-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org



On 2/4/20 7:44 PM, Dafna Hirschfeld wrote:
> media_entity_get_fwnode_pad returns negative value on error
> and the pad numeber on success. Therefore change the error test
> from 'if (ret)' to 'if (ret < 0)' .
> 
> Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 21837d4dc9e1..9d866396a5de 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -128,7 +128,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>  
>  		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>  						  MEDIA_PAD_FL_SOURCE);
> -		if (ret) {
> +		if (ret < 0) {
>  			dev_err(sd->dev, "failed to find src pad for %s\n",
>  				sd->name);
>  			return ret;
> 
