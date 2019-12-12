From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2] media: rockchip/rga: fix potential use after free
Date: Thu, 12 Dec 2019 11:53:49 +0100
Message-ID: <5c170dd7-17b4-cef6-4f77-253aabb6ebbe@xs4all.nl>
References: <1573460902-18563-1-git-send-email-bianpan2016@163.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1573460902-18563-1-git-send-email-bianpan2016@163.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Pan Bian <bianpan2016@163.com>, Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 11/11/19 9:28 AM, Pan Bian wrote:
> The variable vga->vfd is an alias for vfd. Therefore, releasing vfd and
> then unregister vga->vfd will lead to a use after free bug. In fact, the
> free operation and the unregister operation are reversed.
> 
> Signed-off-by: Pan Bian <bianpan2016@163.com>
> ---
> v2: update the goto label names consistently
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index e9ff12b6b5bb..d2297abafc69 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -863,7 +863,7 @@ static int rga_probe(struct platform_device *pdev)
>  	if (IS_ERR(rga->m2m_dev)) {
>  		v4l2_err(&rga->v4l2_dev, "Failed to init mem2mem device\n");
>  		ret = PTR_ERR(rga->m2m_dev);
> -		goto unreg_video_dev;
> +		goto rel_vdev;
>  	}
>  
>  	pm_runtime_get_sync(rga->dev);
> @@ -892,7 +892,7 @@ static int rga_probe(struct platform_device *pdev)
>  	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
>  	if (ret) {
>  		v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
> -		goto rel_vdev;
> +		goto unreg_dev;
>  	}
>  
>  	v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
> @@ -900,10 +900,10 @@ static int rga_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> +unreg_dev:
> +	video_unregister_device(rga->vfd);

This is wrong. If video_register_device fails, then you call video_device_release,
not video_unregister_device. The unreg_video_dev case is bogus and should be removed.

Instead you need a v4l2_m2m_release() call to clean up the v4l2_m2m_init() result
if there is an error.

Regards,

	Hans

>  rel_vdev:
>  	video_device_release(vfd);
> -unreg_video_dev:
> -	video_unregister_device(rga->vfd);
>  unreg_v4l2_dev:
>  	v4l2_device_unregister(&rga->v4l2_dev);
>  err_put_clk:
> 
