Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7067BCDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjxgiAhqV8f0d/KIClJ1RYAaw01wbjNiEqgAzTq00TU=; b=kA+7V/h+Dra1/K
	21oupuEIXDguRkkELPvRMd7Ao9psjELHx6OmBV9Y1iEortwpzmkt75zRgz3aMVjLkIEah6OYLoSD9
	M8vN0hSwArNgElL26Jo+09Duvga96wbifE9Z0nfY4EVdltBS+faWSMEYtjaE7pXxakLrHIJ4tkn/Y
	6AH+PKWS8YgOYu+XxPq02ucyTzDZ5WvmzLrTCg0j+Qgmv6ieE9PeRdlP3QCanQ3tNMv7MEgPVf8Rw
	JwTrWc5nS9nFvc53np31Ru4/jKLTpQOWT2GTUC7ZtjTC1Fjsohw5bUVgoIpZU6AV4Xm6dj1hx/NNv
	3w3J6mBwpViVGN6ojP1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFum-003FrQ-38;
	Fri, 13 Oct 2023 11:01:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFuh-003FlD-2M
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 11:01:06 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qrFuT-0006xJ-Vo; Fri, 13 Oct 2023 13:00:49 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Oct 2023 13:00:23 +0200
Subject: [PATCH v2 02/13] media: rockchip: rga: extract helper to fill
 descriptors
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v2-2-bbfa6abf8bbf@pengutronix.de>
References: <20230914-rockchip-rga-multiplanar-v2-0-bbfa6abf8bbf@pengutronix.de>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v2-0-bbfa6abf8bbf@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_040103_768147_D0F7CBE1 
X-CRM114-Status: GOOD (  18.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The IOMMU of the RGA is programmed with a list of DMA descriptors that
contain an 32 bit address per 4k page in the video buffers. The address
in the descriptor points to the start address of the page.

Introduce 'struct rga_dma_desc' to make the handling of the DMA
descriptors explicit instead of hiding them behind standard types.

While at it, use provided helpers for iterating the sg_table instead of
manually calculating the DMA addresses.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- Remove check for upper_32_bits()
- Fix cast to dst_mmu_pages/src_mmu_pages
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 43 ++++++++++++++-------------
 drivers/media/platform/rockchip/rga/rga.c     |  4 +--
 drivers/media/platform/rockchip/rga/rga.h     |  8 +++--
 3 files changed, 30 insertions(+), 25 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 81508ed5abf3..fc3f38f6b5e1 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/pm_runtime.h>
+#include <linux/scatterlist.h>
 
 #include <media/v4l2-device.h>
 #include <media/v4l2-ioctl.h>
@@ -15,6 +16,23 @@
 #include "rga-hw.h"
 #include "rga.h"
 
+static size_t fill_descriptors(struct rga_dma_desc *desc, struct sg_table *sgt)
+{
+	struct sg_dma_page_iter iter;
+	struct rga_dma_desc *tmp = desc;
+	size_t n_desc = 0;
+	dma_addr_t addr;
+
+	for_each_sgtable_dma_page(sgt, &iter, 0) {
+		addr = sg_page_iter_dma_address(&iter);
+		tmp->addr = lower_32_bits(addr);
+		tmp++;
+		n_desc++;
+	}
+
+	return n_desc;
+}
+
 static int
 rga_queue_setup(struct vb2_queue *vq,
 		unsigned int *nbuffers, unsigned int *nplanes,
@@ -114,11 +132,8 @@ void rga_buf_map(struct vb2_buffer *vb)
 {
 	struct rga_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 	struct rockchip_rga *rga = ctx->rga;
-	struct sg_table *sgt;
-	struct scatterlist *sgl;
-	unsigned int *pages;
-	unsigned int address, len, i, p;
-	unsigned int mapped_size = 0;
+	struct rga_dma_desc *pages;
+	size_t n_desc = 0;
 
 	if (vb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
 		pages = rga->src_mmu_pages;
@@ -126,23 +141,9 @@ void rga_buf_map(struct vb2_buffer *vb)
 		pages = rga->dst_mmu_pages;
 
 	/* Create local MMU table for RGA */
-	sgt = vb2_plane_cookie(vb, 0);
-
-	for_each_sg(sgt->sgl, sgl, sgt->nents, i) {
-		len = sg_dma_len(sgl) >> PAGE_SHIFT;
-		address = sg_phys(sgl);
-
-		for (p = 0; p < len; p++) {
-			dma_addr_t phys = address +
-					  ((dma_addr_t)p << PAGE_SHIFT);
-
-			pages[mapped_size + p] = phys;
-		}
-
-		mapped_size += len;
-	}
+	n_desc = fill_descriptors(pages, vb2_dma_sg_plane_desc(vb, 0));
 
 	/* sync local MMU table for RGA */
 	dma_sync_single_for_device(rga->dev, virt_to_phys(pages),
-				   8 * PAGE_SIZE, DMA_BIDIRECTIONAL);
+				   n_desc * sizeof(*pages), DMA_BIDIRECTIONAL);
 }
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 25f5b5eebf13..36d7f255af90 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -873,13 +873,13 @@ static int rga_probe(struct platform_device *pdev)
 	}
 
 	rga->src_mmu_pages =
-		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
+		(struct rga_dma_desc *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
 	if (!rga->src_mmu_pages) {
 		ret = -ENOMEM;
 		goto free_dma;
 	}
 	rga->dst_mmu_pages =
-		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
+		(struct rga_dma_desc *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
 	if (!rga->dst_mmu_pages) {
 		ret = -ENOMEM;
 		goto free_src_pages;
diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
index 5fa9d2f366dc..22f7da28ac51 100644
--- a/drivers/media/platform/rockchip/rga/rga.h
+++ b/drivers/media/platform/rockchip/rga/rga.h
@@ -40,6 +40,10 @@ struct rga_frame {
 	u32 size;
 };
 
+struct rga_dma_desc {
+	u32 addr;
+};
+
 struct rockchip_rga_version {
 	u32 major;
 	u32 minor;
@@ -81,8 +85,8 @@ struct rockchip_rga {
 	struct rga_ctx *curr;
 	dma_addr_t cmdbuf_phy;
 	void *cmdbuf_virt;
-	unsigned int *src_mmu_pages;
-	unsigned int *dst_mmu_pages;
+	struct rga_dma_desc *src_mmu_pages;
+	struct rga_dma_desc *dst_mmu_pages;
 };
 
 struct rga_frame *rga_get_frame(struct rga_ctx *ctx, enum v4l2_buf_type type);

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
