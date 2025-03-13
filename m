Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA5A4C28B28
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 18:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLWIawbFVz6CxV4ZWt+HwVMawcR47NwCR1XecbOlRKM=; b=Ctxp2suG+hcBZX
	+8TTH6/SjDn8jcT/G3DPZpHbhtkL8Slo4LPvtYNpjO9xIND7tltUK4A5PsNd+g9FDQ74BB7AtUgJj
	FoEBIAZ2bc5SfPIFI4c/UD7COXaPltJEUpeg1qiDi5fbfSMkIYmH4zBuEok6aao5OTJdd9ZO5YVxa
	pyWUzRyVJiFJDoPk0XWO/FLfKMiCPDglIbYP7PaTSp0zHRmXEXdRuYvOQVaoeSBtb0NE30gtdWFKD
	3J/a7AIWLuviL6T/qGzeh+Gq5zqbaEav3C2i65HiDfbiqvGtGMU8Vyu+IkWrqgzM7Z9zFeTdG3RpN
	n/hlcDmiUWlEtur8dIOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsmu6-0000000C6XN-43r5;
	Thu, 13 Mar 2025 18:03:34 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsmOs-0000000C349-2MuZ;
	Thu, 13 Mar 2025 17:31:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65DEE1A2D;
	Thu, 13 Mar 2025 10:31:28 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1F9283F673;
	Thu, 13 Mar 2025 10:31:17 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: joro@8bytes.org,
	will@kernel.org
Cc: iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de
Subject: [PATCH 3/3] iommu/rockchip: Retire global dma_dev workaround
Date: Thu, 13 Mar 2025 17:31:06 +0000
Message-Id: <25dc948a7d35c8142c5719ac22bc523f8524d006.1741886382.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1741886382.git.robin.murphy@arm.com>
References: <cover.1741886382.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_103118_710375_C4736AD5 
X-CRM114-Status: GOOD (  18.85  )
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

The global dma_dev trick was mostly because the old domain_alloc op
provided no context, so no way to know which IOMMU was to own the
pagetable, or if a suitable one even existed at all. In the new
multi-instance world with domain_alloc_paging this is no longer a
concern - now we know that the given device must be associated with a
valid IOMMU instance which provided the op to call in the first place,
and therefore that instance can and should be the pagetable owner. To
avoid worrying about the lifetime and stability of the rk_domain->iommus
list, and keep the lookups simple and efficient, we'll still stash a
dma_dev pointer, but now it's accurately per-domain.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/rockchip-iommu.c | 34 +++++++++++++---------------------
 1 file changed, 13 insertions(+), 21 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 9d2120a9232a..af4cc91b2bbf 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -88,6 +88,7 @@ struct rk_iommu_domain {
 	dma_addr_t dt_dma;
 	spinlock_t iommus_lock; /* lock for iommus list */
 	spinlock_t dt_lock; /* lock for modifying page directory table */
+	struct device *dma_dev;
 
 	struct iommu_domain domain;
 };
@@ -123,7 +124,6 @@ struct rk_iommudata {
 	struct rk_iommu *iommu;
 };
 
-static struct device *dma_dev;
 static const struct rk_iommu_ops *rk_ops;
 static struct iommu_domain rk_identity_domain;
 
@@ -132,7 +132,7 @@ static inline void rk_table_flush(struct rk_iommu_domain *dom, dma_addr_t dma,
 {
 	size_t size = count * sizeof(u32); /* count of u32 entry */
 
-	dma_sync_single_for_device(dma_dev, dma, size, DMA_TO_DEVICE);
+	dma_sync_single_for_device(dom->dma_dev, dma, size, DMA_TO_DEVICE);
 }
 
 static struct rk_iommu_domain *to_rk_domain(struct iommu_domain *dom)
@@ -734,9 +734,9 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	if (!page_table)
 		return ERR_PTR(-ENOMEM);
 
-	pt_dma = dma_map_single(dma_dev, page_table, SPAGE_SIZE, DMA_TO_DEVICE);
-	if (dma_mapping_error(dma_dev, pt_dma)) {
-		dev_err(dma_dev, "DMA mapping error while allocating page table\n");
+	pt_dma = dma_map_single(rk_domain->dma_dev, page_table, SPAGE_SIZE, DMA_TO_DEVICE);
+	if (dma_mapping_error(rk_domain->dma_dev, pt_dma)) {
+		dev_err(rk_domain->dma_dev, "DMA mapping error while allocating page table\n");
 		iommu_free_page(page_table);
 		return ERR_PTR(-ENOMEM);
 	}
@@ -1051,9 +1051,7 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
 static struct iommu_domain *rk_iommu_domain_alloc_paging(struct device *dev)
 {
 	struct rk_iommu_domain *rk_domain;
-
-	if (!dma_dev)
-		return NULL;
+	struct rk_iommu *iommu;
 
 	rk_domain = kzalloc(sizeof(*rk_domain), GFP_KERNEL);
 	if (!rk_domain)
@@ -1068,10 +1066,12 @@ static struct iommu_domain *rk_iommu_domain_alloc_paging(struct device *dev)
 	if (!rk_domain->dt)
 		goto err_free_domain;
 
-	rk_domain->dt_dma = dma_map_single(dma_dev, rk_domain->dt,
+	iommu = rk_iommu_from_dev(dev);
+	rk_domain->dma_dev = iommu->dev;
+	rk_domain->dt_dma = dma_map_single(rk_domain->dma_dev, rk_domain->dt,
 					   SPAGE_SIZE, DMA_TO_DEVICE);
-	if (dma_mapping_error(dma_dev, rk_domain->dt_dma)) {
-		dev_err(dma_dev, "DMA map error for DT\n");
+	if (dma_mapping_error(rk_domain->dma_dev, rk_domain->dt_dma)) {
+		dev_err(rk_domain->dma_dev, "DMA map error for DT\n");
 		goto err_free_dt;
 	}
 
@@ -1105,13 +1105,13 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
 		if (rk_dte_is_pt_valid(dte)) {
 			phys_addr_t pt_phys = rk_ops->pt_address(dte);
 			u32 *page_table = phys_to_virt(pt_phys);
-			dma_unmap_single(dma_dev, pt_phys,
+			dma_unmap_single(rk_domain->dma_dev, pt_phys,
 					 SPAGE_SIZE, DMA_TO_DEVICE);
 			iommu_free_page(page_table);
 		}
 	}
 
-	dma_unmap_single(dma_dev, rk_domain->dt_dma,
+	dma_unmap_single(rk_domain->dma_dev, rk_domain->dt_dma,
 			 SPAGE_SIZE, DMA_TO_DEVICE);
 	iommu_free_page(rk_domain->dt);
 
@@ -1256,14 +1256,6 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
-	/*
-	 * Use the first registered IOMMU device for domain to use with DMA
-	 * API, since a domain might not physically correspond to a single
-	 * IOMMU device..
-	 */
-	if (!dma_dev)
-		dma_dev = &pdev->dev;
-
 	pm_runtime_enable(dev);
 
 	for (i = 0; i < iommu->num_irq; i++) {
-- 
2.39.2.101.g768bb238c484.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
