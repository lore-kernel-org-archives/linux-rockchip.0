From: Yangtao Li <tiny.windzz@gmail.com>
Subject: [PATCH 5/6] iommu/mediatek: convert to devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:17 +0000
Message-ID: <20191223185918.9877-6-tiny.windzz@gmail.com>
References: <20191223185918.9877-1-tiny.windzz@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191223185918.9877-1-tiny.windzz@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org, krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de, mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, virtualization@lists.linux-foundation.org
Cc: Yangtao Li <tiny.windzz@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iommu/mtk_iommu_v1.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index e93b94ecac45..3d6bb08b2a54 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -553,7 +553,6 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 {
 	struct mtk_iommu_data		*data;
 	struct device			*dev = &pdev->dev;
-	struct resource			*res;
 	struct component_match		*match = NULL;
 	struct of_phandle_args		larb_spec;
 	struct of_phandle_iterator	it;
@@ -573,8 +572,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	data->protect_base = ALIGN(virt_to_phys(protect), MTK_PROTECT_PA_ALIGN);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	data->base = devm_ioremap_resource(dev, res);
+	data->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(data->base))
 		return PTR_ERR(data->base);
 
-- 
2.17.1
