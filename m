From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 2/4] media: staging: rkisp1: remove unused field alloc_ctx
 from struct rkisp1_device
Date: Mon, 13 Jul 2020 08:09:03 -0300
Message-ID: <a251e78a-1229-6165-f84b-92e5601f01fd@collabora.com>
References: <20200629065754.26621-1-dafna.hirschfeld@collabora.com>
 <20200629065754.26621-3-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200629065754.26621-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 6/29/20 3:57 AM, Dafna Hirschfeld wrote:
> The field alloc_ctx in struct rkisp1_device is not used.
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
> index eb0dbc42d09c..b7dc523dd8f0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -259,7 +259,6 @@ struct rkisp1_device {
>  	struct rkisp1_stats stats;
>  	struct rkisp1_params params;
>  	struct media_pipeline pipe;
> -	struct vb2_alloc_ctx *alloc_ctx;
>  	struct mutex stream_lock;
>  	struct rkisp1_debug debug;
>  };
> 
