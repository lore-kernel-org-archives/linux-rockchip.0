From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v2] media: rga: fix NULL pointer dereferences and a memory
 leak
Date: Wed, 13 Mar 2019 13:35:51 +0000
Message-ID: <ff11d704-489f-836e-6c9d-1b2fb5e963b6@arm.com>
References: <6fc9f670-a199-b83d-ff0a-d4cdb8cb80d1@arm.com>
 <20190312065824.19646-1-kjlu@umn.edu>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190312065824.19646-1-kjlu@umn.edu>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Kangjie Lu <kjlu@umn.edu>
Cc: Heiko Stuebner <heiko@sntech.de>, Jacob chen <jacob2.chen@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, pakki001@umn.edu, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 12/03/2019 06:58, Kangjie Lu wrote:
> In case __get_free_pages fails, the fix releases resources and
> return -ENOMEM to avoid NULL pointer dereferences.
> 
> Also, the fix frees pages when video_register_device fails to
> avoid a memory leak.
> 
> Signed-off-by: Kangjie Lu <kjlu@umn.edu>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 5c653287185f..307b7ab0ab64 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -892,8 +892,17 @@ static int rga_probe(struct platform_device *pdev)
>  
>  	rga->src_mmu_pages =
>  		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
> +	if (!rga->src_mmu_pages) {
> +		ret = -ENOMEM;
> +		goto rel_vdev;
> +	}
> +
>  	rga->dst_mmu_pages =
>  		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
> +	if (!rga->dst_mmu_pages) {
> +		ret = -ENOMEM;
> +		goto free_dst_pages;
> +	}
>  
>  	def_frame.stride = (def_frame.width * def_frame.fmt->depth) >> 3;
>  	def_frame.size = def_frame.stride * def_frame.height;
> @@ -901,7 +910,7 @@ static int rga_probe(struct platform_device *pdev)
>  	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
>  	if (ret) {
>  		v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
> -		goto rel_vdev;
> +		goto free_pages;
>  	}
>  
>  	v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
> @@ -909,6 +918,10 @@ static int rga_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> +free_pages:
> +	free_pages((unsigned long)rga->src_mmu_pages, 3);
> +free_dst_pages:
> +	free_pages((unsigned long)rga->dst_mmu_pages, 3);
>  rel_vdev:
>  	video_device_release(vfd);
>  unreg_video_dev:

That looks good. However looking into the error path more closely it
appears that this was already rather broken. Here's the original:

> rel_vdev:
> 	video_device_release(vfd);
> unreg_video_dev:
> 	video_unregister_device(rga->vfd);
> unreg_v4l2_dev:
> 	v4l2_device_unregister(&rga->v4l2_dev);
> err_put_clk:
> 	pm_runtime_disable(rga->dev);

video_device_release() is simply a call to kfree(), but
video_unregister_device will then be called with the same pointer
(rga->vfd is set to vfd further up). Which will then cause a
use-after-free on the pointer.

It might be a good idea to test this error path, for example make the
video_register_device() call always fail and run with memory debuggers
enabled (e.g. CONFIG_KASAN or CONFIG_DEBUG_KMEM_LEAK).

Steve
