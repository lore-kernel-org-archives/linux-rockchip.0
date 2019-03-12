From: Kangjie Lu <kjlu@umn.edu>
Subject: [PATCH v2] media: rga: fix NULL pointer dereferences and a memory leak
Date: Tue, 12 Mar 2019 01:58:24 -0500
Message-ID: <20190312065824.19646-1-kjlu@umn.edu>
References: <6fc9f670-a199-b83d-ff0a-d4cdb8cb80d1@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <6fc9f670-a199-b83d-ff0a-d4cdb8cb80d1@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: kjlu@umn.edu
Cc: pakki001@umn.edu, Jacob chen <jacob2.chen@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In case __get_free_pages fails, the fix releases resources and
return -ENOMEM to avoid NULL pointer dereferences.

Also, the fix frees pages when video_register_device fails to
avoid a memory leak.

Signed-off-by: Kangjie Lu <kjlu@umn.edu>
---
 drivers/media/platform/rockchip/rga/rga.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 5c653287185f..307b7ab0ab64 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -892,8 +892,17 @@ static int rga_probe(struct platform_device *pdev)
 
 	rga->src_mmu_pages =
 		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
+	if (!rga->src_mmu_pages) {
+		ret = -ENOMEM;
+		goto rel_vdev;
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
@@ -901,7 +910,7 @@ static int rga_probe(struct platform_device *pdev)
 	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 	if (ret) {
 		v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
-		goto rel_vdev;
+		goto free_pages;
 	}
 
 	v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
@@ -909,6 +918,10 @@ static int rga_probe(struct platform_device *pdev)
 
 	return 0;
 
+free_pages:
+	free_pages((unsigned long)rga->src_mmu_pages, 3);
+free_dst_pages:
+	free_pages((unsigned long)rga->dst_mmu_pages, 3);
 rel_vdev:
 	video_device_release(vfd);
 unreg_video_dev:
-- 
2.17.1
