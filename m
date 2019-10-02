From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH] iommu: rockchip: Free domain on .domain_free
Date: Wed,  2 Oct 2019 14:29:23 -0300
Message-ID: <20191002172923.22430-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Joerg Roedel <joro@8bytes.org>, Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux-foundation.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

IOMMU domain resource life is well-defined, managed
by .domain_alloc and .domain_free.

Therefore, domain-specific resources shouldn't be tied to
the device life, but instead to its domain.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/iommu/rockchip-iommu.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 26290f310f90..e845bd01a1a2 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -979,13 +979,13 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 	if (!dma_dev)
 		return NULL;
 
-	rk_domain = devm_kzalloc(dma_dev, sizeof(*rk_domain), GFP_KERNEL);
+	rk_domain = kzalloc(sizeof(*rk_domain), GFP_KERNEL);
 	if (!rk_domain)
 		return NULL;
 
 	if (type == IOMMU_DOMAIN_DMA &&
 	    iommu_get_dma_cookie(&rk_domain->domain))
-		return NULL;
+		goto err_free_domain;
 
 	/*
 	 * rk32xx iommus use a 2 level pagetable.
@@ -1020,6 +1020,8 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 err_put_cookie:
 	if (type == IOMMU_DOMAIN_DMA)
 		iommu_put_dma_cookie(&rk_domain->domain);
+err_free_domain:
+	kfree(rk_domain);
 
 	return NULL;
 }
@@ -1048,6 +1050,7 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
 
 	if (domain->type == IOMMU_DOMAIN_DMA)
 		iommu_put_dma_cookie(&rk_domain->domain);
+	kfree(rk_domain);
 }
 
 static int rk_iommu_add_device(struct device *dev)
-- 
2.22.0
