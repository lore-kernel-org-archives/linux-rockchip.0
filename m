From: Yangtao Li <tiny.windzz@gmail.com>
Subject: [PATCH 1/6] iommu/omap: convert to devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:12 +0000
Message-ID: <20191223185918.9877-1-tiny.windzz@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org, krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de, mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, virtualization@lists.linux-foundation.org
Cc: Yangtao Li <tiny.windzz@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iommu/omap-iommu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
index be551cc34be4..297c1be7ecb0 100644
--- a/drivers/iommu/omap-iommu.c
+++ b/drivers/iommu/omap-iommu.c
@@ -1175,7 +1175,6 @@ static int omap_iommu_probe(struct platform_device *pdev)
 	int err = -ENODEV;
 	int irq;
 	struct omap_iommu *obj;
-	struct resource *res;
 	struct device_node *of = pdev->dev.of_node;
 	struct orphan_dev *orphan_dev, *tmp;
 
@@ -1218,8 +1217,7 @@ static int omap_iommu_probe(struct platform_device *pdev)
 	spin_lock_init(&obj->iommu_lock);
 	spin_lock_init(&obj->page_table_lock);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	obj->regbase = devm_ioremap_resource(obj->dev, res);
+	obj->regbase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(obj->regbase))
 		return PTR_ERR(obj->regbase);
 
-- 
2.17.1
