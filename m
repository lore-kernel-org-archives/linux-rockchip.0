From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] media: rga: fix NULL pointer dereferences
Date: Mon, 11 Mar 2019 13:15:58 +0000
Message-ID: <6fc9f670-a199-b83d-ff0a-d4cdb8cb80d1@arm.com>
References: <20190309063556.32487-1-kjlu@umn.edu>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190309063556.32487-1-kjlu@umn.edu>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Kangjie Lu <kjlu@umn.edu>
Cc: Heiko Stuebner <heiko@sntech.de>, Jacob chen <jacob2.chen@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, pakki001@umn.edu, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 09/03/2019 06:35, Kangjie Lu wrote:
> In case __get_free_pages fails, return -ENOMEM to avoid NULL
> pointer dereferences.
> 
> Signed-off-by: Kangjie Lu <kjlu@umn.edu>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 5c653287185f..d42b214977a9 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -892,8 +892,13 @@ static int rga_probe(struct platform_device *pdev)
>  
>  	rga->src_mmu_pages =
>  		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
> +	if (!rga->src_mmu_pages)
> +		return -ENOMEM;
> +
>  	rga->dst_mmu_pages =
>  		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
> +	if (!rga->dst_mmu_pages)
> +		return -ENOMEM;

I believe you need to perform clean up when probe fails, not just return
early, e.g. with a 'goto' to the existing clean up code at the end of
the function.

Also from what I can tell there is already a potential memory leak if
video_register_device() fails. You probably want something more like the
(completely untested) change below.

Steve

----8<----
diff --git a/drivers/media/platform/rockchip/rga/rga.c
b/drivers/media/platform/rockchip/rga/rga.c
index 5c653287185f..8df1945594ab 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -895,6 +895,11 @@ static int rga_probe(struct platform_device *pdev)
 	rga->dst_mmu_pages =
 		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);

+	if (!rga->src_mmu_pages || !rga->dst_mmu_pages) {
+		ret = -ENOMEM;
+		goto free_mem;
+	}
+
 	def_frame.stride = (def_frame.width * def_frame.fmt->depth) >> 3;
 	def_frame.size = def_frame.stride * def_frame.height;

@@ -911,6 +916,9 @@ static int rga_probe(struct platform_device *pdev)

 rel_vdev:
 	video_device_release(vfd);
+free_mem:
+	free_pages((unsigned long)rga->src_mmu_pages, 3);
+	free_pages((unsigned long)rga->dst_mmu_pages, 3);
 unreg_video_dev:
 	video_unregister_device(rga->vfd);
 unreg_v4l2_dev:
