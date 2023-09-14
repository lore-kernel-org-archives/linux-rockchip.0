Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 005E0EDE9BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLiGek9IYahg0EmVKkqjACd14a0lLPD2SmxYu96pX/U=; b=sFwc7i48iRB96K
	Bg4D9JI1iy49qOajIeBWSe+rAJgBKv/4ipX34o8G+otRg1Joob6qk6TrRbCGjiArB9+sCh0R6DQ7A
	pEJF4Xa1KUHDbavtXfFHSh34jygycJ+PFmXUXZLyICgI1iet+d9xfzOsXCn7skqFxO6azRZMaT7n6
	nsUSHWHf/KGs/Zc0zTL/49OB7VoDjDbUBAJB3Lc1vnfu4yIbFil64uIV7CyV0J4NDSSLBhRXoVMGu
	50Ixmitrb7zGvlXHIKPgIIZu3rnjn4p1tltavBQuk9gUpi9vhlrdmBOEisp0kDb2ECKf/i2GBgAnM
	J+OMazO+wM637v3plczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfF-008Lp5-1h;
	Thu, 14 Sep 2023 12:41:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf5-008LeK-0S
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:36 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qgles-0008Mc-Ro; Thu, 14 Sep 2023 14:41:22 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:34 +0200
Subject: [PATCH 02/13] media: rockchip: rga: extract helper to fill
 descriptors
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-2-abfd77260ae3@pengutronix.de>
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_054135_201134_32D1DA0F 
X-CRM114-Status: GOOD (  16.83  )
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

As the descriptors only handle 32 bit addresses, addresses above 4 GB
cannot be addressed. If this is detected, stop filling the descriptor
list and report an error.

While at it, use provided helpers for iterating the sg_table instead of
manually calculating the DMA addresses.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 47 +++++++++++++++------------
 drivers/media/platform/rockchip/rga/rga.h     |  8 +++--
 2 files changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 81508ed5abf3..df5ebc90e32d 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/pm_runtime.h>
+#include <linux/scatterlist.h>
 
 #include <media/v4l2-device.h>
 #include <media/v4l2-ioctl.h>
@@ -15,6 +16,25 @@
 #include "rga-hw.h"
 #include "rga.h"
 
+static int fill_descriptors(struct rga_dma_desc *desc, struct sg_table *sgt)
+{
+	struct sg_dma_page_iter iter;
+	struct rga_dma_desc *tmp = desc;
+	unsigned int num_desc = 0;
+	dma_addr_t addr;
+
+	for_each_sgtable_dma_page(sgt, &iter, 0) {
+		addr = sg_page_iter_dma_address(&iter);
+		if (upper_32_bits(addr) != 0L)
+			return -1;
+		tmp->addr = lower_32_bits(addr);
+		tmp++;
+		num_desc++;
+	}
+
+	return num_desc;
+}
+
 static int
 rga_queue_setup(struct vb2_queue *vq,
 		unsigned int *nbuffers, unsigned int *nplanes,
@@ -114,11 +134,8 @@ void rga_buf_map(struct vb2_buffer *vb)
 {
 	struct rga_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 	struct rockchip_rga *rga = ctx->rga;
-	struct sg_table *sgt;
-	struct scatterlist *sgl;
-	unsigned int *pages;
-	unsigned int address, len, i, p;
-	unsigned int mapped_size = 0;
+	struct rga_dma_desc *pages;
+	unsigned int num_desc = 0;
 
 	if (vb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
 		pages = rga->src_mmu_pages;
@@ -126,23 +143,13 @@ void rga_buf_map(struct vb2_buffer *vb)
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
+	num_desc = fill_descriptors(pages, vb2_dma_sg_plane_desc(vb, 0));
+	if (num_desc < 0) {
+		dev_err(rga->dev, "Failed to map buffer");
+		return;
 	}
 
 	/* sync local MMU table for RGA */
 	dma_sync_single_for_device(rga->dev, virt_to_phys(pages),
-				   8 * PAGE_SIZE, DMA_BIDIRECTIONAL);
+				   num_desc * sizeof(*pages), DMA_BIDIRECTIONAL);
 }
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
