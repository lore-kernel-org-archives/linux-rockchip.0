From: Kangjie Lu <kjlu@umn.edu>
Subject: [PATCH v3] media: rga: fix NULL pointer dereferences, use-after-free, memory leak
Date: Thu, 14 Mar 2019 00:03:44 -0500
Message-ID: <20190314050344.29790-1-kjlu@umn.edu>
References: <ff11d704-489f-836e-6c9d-1b2fb5e963b6@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <ff11d704-489f-836e-6c9d-1b2fb5e963b6@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: kjlu@umn.edu
Cc: pakki001@umn.edu, Jacob chen <jacob2.chen@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

1. dma_alloc_attrs, __get_free_pages can fail and return NULL.
Further uses of their return values lead to NULL pointer
dereferences

2. In the error-handling path, video_unregister_device uses
"rga->vfd" which has been freed by video_device_release

3. The error handling for v4l2_m2m_init and video_register_device
has memory-leak issues

The patch fixes the above issues.

Signed-off-by: Kangjie Lu <kjlu@umn.edu>
---
 drivers/media/platform/rockchip/rga/rga.c | 26 ++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 5c653287185f..468365ceb99d 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -889,11 +889,24 @@ static int rga_probe(struct platform_device *pdev)
 	rga->cmdbuf_virt = dma_alloc_attrs(rga->dev, RGA_CMDBUF_SIZE,
 					   &rga->cmdbuf_phy, GFP_KERNEL,
 					   DMA_ATTR_WRITE_COMBINE);
+	if (!rga->cmdbuf_virt) {
+		ret = -ENOMEM;
+		goto unreg_video_dev;
+	}
 
 	rga->src_mmu_pages =
 		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
+	if (!rga->src_mmu_pages) {
+		ret = -ENOMEM;
+		goto free_dma_attrs;
+	}
+
 	rga->dst_mmu_pages =
 		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
+	if (!rga->dst_mmu_pages) {
+		ret = -ENOMEM;
+		goto free_dst_pages;
+	}
 
 	def_frame.stride = (def_frame.width * def_frame.fmt->depth) >> 3;
 	def_frame.size = def_frame.stride * def_frame.height;
@@ -901,7 +914,7 @@ static int rga_probe(struct platform_device *pdev)
 	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 	if (ret) {
 		v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
-		goto rel_vdev;
+		goto free_pages;
 	}
 
 	v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
@@ -909,10 +922,17 @@ static int rga_probe(struct platform_device *pdev)
 
 	return 0;
 
-rel_vdev:
-	video_device_release(vfd);
+free_pages:
+	free_pages((unsigned long)rga->src_mmu_pages, 3);
+free_dst_pages:
+	free_pages((unsigned long)rga->dst_mmu_pages, 3);
+free_dma_attrs:
+	dma_free_attrs(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
+		       rga->cmdbuf_phy,
+		       DMA_ATTR_WRITE_COMBINE);
 unreg_video_dev:
 	video_unregister_device(rga->vfd);
+	video_device_release(vfd);
 unreg_v4l2_dev:
 	v4l2_device_unregister(&rga->v4l2_dev);
 err_put_clk:
-- 
2.17.1
