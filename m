From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] media: rockchip/rga: Fix a reference count leak.
Date: Thu, 18 Jun 2020 14:29:56 +0200
Message-ID: <2014126.fRahu6ktRn@diego>
References: <20200613231350.15504-1-wu000273@umn.edu>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200613231350.15504-1-wu000273@umn.edu>
Sender: linux-kernel-owner@vger.kernel.org
To: wu000273@umn.edu
Cc: kjlu@umn.edu, Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hansverk@cisco.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 14. Juni 2020, 01:13:49 CEST schrieb wu000273@umn.edu:
> From: Qiushi Wu <wu000273@umn.edu>
> 
> pm_runtime_get_sync() increments the runtime PM usage counter even
> when it returns an error code. Thus call pm_runtime_put_noidle()
> if pm_runtime_get_sync() fails.
> 
> Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/media/platform/rockchip/rga/rga-buf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
> index 36b821ccc1db..bf9a75b75083 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -81,6 +81,7 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
>  
>  	ret = pm_runtime_get_sync(rga->dev);
>  	if (ret < 0) {
> +		pm_runtime_put_noidle(rga->dev);
>  		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
>  		return ret;
>  	}
> 
