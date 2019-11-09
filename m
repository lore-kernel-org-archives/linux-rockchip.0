From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH] media: rockchip/rga: fix potential use after free
Date: Sat, 9 Nov 2019 12:08:01 +0100
Message-ID: <e89f6a90-4899-0945-e11a-67be6a28e7c0@xs4all.nl>
References: <1572969354-8967-1-git-send-email-bianpan2016@163.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1572969354-8967-1-git-send-email-bianpan2016@163.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Pan Bian <bianpan2016@163.com>, Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 11/5/19 4:55 PM, Pan Bian wrote:
> The variable vga->vfd is an alias for vfd. Therefore, releasing vfd and
> then unregister vga->vfd will lead to a use after free bug. In fact, the
> free operation and the unregister operation are reversed.
> 
> Signed-off-by: Pan Bian <bianpan2016@163.com>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index e9ff12b6b5bb..613b868fce33 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -901,9 +901,9 @@ static int rga_probe(struct platform_device *pdev)
>  	return 0;
>  
>  rel_vdev:
> -	video_device_release(vfd);
> -unreg_video_dev:
>  	video_unregister_device(rga->vfd);
> +unreg_video_dev:
> +	video_device_release(vfd);
>  unreg_v4l2_dev:
>  	v4l2_device_unregister(&rga->v4l2_dev);
>  err_put_clk:
> 

This isn't right, you need to update the goto labels as well.

With this change unreg_video_dev releases the vdev, while rel_vdev
unregisters it. Very confusing.

I'd also rename unreg_video_dev to unreg_vdev to be consistent with
rel_vdev.

Regards,

	Hans
