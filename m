Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CED7C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:41:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E8A8861132
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:41:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E8A8861132
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cz7N3JFmeiNuxenxP5DgRjLHISs4ugVIOfuuRhw6fYE=; b=JRmnyJH9ERpa55WcgI1Pbn39ON
	aLd6cjdCd2iJ206M33Xq4VaorAgl9AKspp+Lw1k8BFMkMJjmvRw+ioNGfm9dUPmP35Y5NdM70TAAt
	Dn35nQ5rAMWYsHegxeVqe9EtPEYIZWuXutaZaSpEGR4hhl9a8gOwSeGA0089QkTTmYx/iYzyb4tig
	DXlvMyUC55bXAKR4v1VUJA4bnSC4t7CaEG44W2V60HLkqjObw/+SGMEHQsRmDv73Eo2+amaZ6f09w
	2cYaHGh61OjpTMODSWXrhoAeLpfDnaE/0yJBUmFBOiy2Y0tWEU0FPZkHHTSwEZwe+XhI/Vb2KaZiy
	S6OOCWTw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk5PV-005aO3-D0; Fri, 21 May 2021 13:41:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk5OR-005Zqp-Gm; Fri, 21 May 2021 13:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=wayPogJguFalYxwrnVKz8fx8rHJqAxTW5AFWv6b9CBc=; b=qVpqUk7JXElmyr2IHZ+D7aVGca
 iDTsEHpXiE1rUh0iqntRUuMYEyT8bwYEiIRq4j5CZ6Uxc/GctaTSIfao5qa8j6NqOyCdUGW5dDVGA
 T0JNgNwiIxC96F0hT+Rwj2GkKkdT7/f81RBZzMafI0hKIQy19rgvjXdU1uKzwI/LSaqe+fnempzTY
 1kuAYm7Bsa9SwZe3ylH3h3Jl6SIPekB+L9ZdVZiXqck8zYDgQcDH4fJSdVL89twk5ClOVUsNMio8n
 FOgvktmGPWiWYncB7XtqVjIHSgBAW2OdnWqNTPGXncARSGspdJL4alaPFdK26WDm1JqSXOcmw1cZk
 CL/T23TA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk5ON-00H9jn-AF; Fri, 21 May 2021 13:40:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 25CC41F44087
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com, robin.murphy@arm.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 3/4] iommu: rockchip: Add internal ops to handle variants
Date: Fri, 21 May 2021 15:40:27 +0200
Message-Id: <20210521134028.3710011-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210521134028.3710011-1-benjamin.gaignard@collabora.com>
References: <20210521134028.3710011-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_064043_640972_5221A463 
X-CRM114-Status: GOOD (  22.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add internal ops to be able to handle incoming variant v2.
The goal is to keep the overall structure of the framework but
to allow to add the evolution of this hardware block.

The ops are global for a SoC because iommu domains are not
attached to a specific devices if they are for a virtuel device like
drm. Use a global variable shouldn't be since SoC usually doesn't
embedded different versions of the iommu hardware block.
If that happen one day a WARN_ON will be displayed at probe time.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
version 6:
 - Remove #include <module.h>
 - Remove pt_address_mask field
 - Only use once of_device_get_match_data
 - Return an error if ops don't match

version 5:
 - Use of_device_get_match_data()
 - Add internal ops inside the driver

 drivers/iommu/rockchip-iommu.c | 72 ++++++++++++++++++++++++----------
 1 file changed, 51 insertions(+), 21 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 7a2932772fdf..7b537dd168ca 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -96,6 +96,13 @@ static const char * const rk_iommu_clocks[] = {
 	"aclk", "iface",
 };
 
+struct rk_iommu_ops {
+	phys_addr_t (*pt_address)(u32 dte);
+	u32 (*mk_dtentries)(dma_addr_t pt_dma);
+	u32 (*mk_ptentries)(phys_addr_t page, int prot);
+	phys_addr_t (*dte_addr_phys)(u32 addr);
+};
+
 struct rk_iommu {
 	struct device *dev;
 	void __iomem **bases;
@@ -116,6 +123,7 @@ struct rk_iommudata {
 };
 
 static struct device *dma_dev;
+static const struct rk_iommu_ops *rk_ops;
 
 static inline void rk_table_flush(struct rk_iommu_domain *dom, dma_addr_t dma,
 				  unsigned int count)
@@ -215,11 +223,6 @@ static inline u32 rk_mk_dte(dma_addr_t pt_dma)
 #define RK_PTE_PAGE_READABLE      BIT(1)
 #define RK_PTE_PAGE_VALID         BIT(0)
 
-static inline phys_addr_t rk_pte_page_address(u32 pte)
-{
-	return (phys_addr_t)pte & RK_PTE_PAGE_ADDRESS_MASK;
-}
-
 static inline bool rk_pte_is_page_valid(u32 pte)
 {
 	return pte & RK_PTE_PAGE_VALID;
@@ -448,10 +451,10 @@ static int rk_iommu_force_reset(struct rk_iommu *iommu)
 	 * and verifying that upper 5 nybbles are read back.
 	 */
 	for (i = 0; i < iommu->num_mmu; i++) {
-		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR, DTE_ADDR_DUMMY);
+		dte_addr = rk_ops->pt_address(DTE_ADDR_DUMMY);
+		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR, dte_addr);
 
-		dte_addr = rk_iommu_read(iommu->bases[i], RK_MMU_DTE_ADDR);
-		if (dte_addr != (DTE_ADDR_DUMMY & RK_DTE_PT_ADDRESS_MASK)) {
+		if (dte_addr != rk_iommu_read(iommu->bases[i], RK_MMU_DTE_ADDR)) {
 			dev_err(iommu->dev, "Error during raw reset. MMU_DTE_ADDR is not functioning\n");
 			return -EFAULT;
 		}
@@ -470,6 +473,11 @@ static int rk_iommu_force_reset(struct rk_iommu *iommu)
 	return 0;
 }
 
+static inline phys_addr_t rk_dte_addr_phys(u32 addr)
+{
+	return (phys_addr_t)addr;
+}
+
 static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 {
 	void __iomem *base = iommu->bases[index];
@@ -489,7 +497,7 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 	page_offset = rk_iova_page_offset(iova);
 
 	mmu_dte_addr = rk_iommu_read(base, RK_MMU_DTE_ADDR);
-	mmu_dte_addr_phys = (phys_addr_t)mmu_dte_addr;
+	mmu_dte_addr_phys = rk_ops->dte_addr_phys(mmu_dte_addr);
 
 	dte_addr_phys = mmu_dte_addr_phys + (4 * dte_index);
 	dte_addr = phys_to_virt(dte_addr_phys);
@@ -498,14 +506,14 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 	if (!rk_dte_is_pt_valid(dte))
 		goto print_it;
 
-	pte_addr_phys = rk_dte_pt_address(dte) + (pte_index * 4);
+	pte_addr_phys = rk_ops->pt_address(dte) + (pte_index * 4);
 	pte_addr = phys_to_virt(pte_addr_phys);
 	pte = *pte_addr;
 
 	if (!rk_pte_is_page_valid(pte))
 		goto print_it;
 
-	page_addr_phys = rk_pte_page_address(pte) + page_offset;
+	page_addr_phys = rk_ops->pt_address(pte) + page_offset;
 	page_flags = pte & RK_PTE_PAGE_FLAGS_MASK;
 
 print_it:
@@ -601,13 +609,13 @@ static phys_addr_t rk_iommu_iova_to_phys(struct iommu_domain *domain,
 	if (!rk_dte_is_pt_valid(dte))
 		goto out;
 
-	pt_phys = rk_dte_pt_address(dte);
+	pt_phys = rk_ops->pt_address(dte);
 	page_table = (u32 *)phys_to_virt(pt_phys);
 	pte = page_table[rk_iova_pte_index(iova)];
 	if (!rk_pte_is_page_valid(pte))
 		goto out;
 
-	phys = rk_pte_page_address(pte) + rk_iova_page_offset(iova);
+	phys = rk_ops->pt_address(pte) + rk_iova_page_offset(iova);
 out:
 	spin_unlock_irqrestore(&rk_domain->dt_lock, flags);
 
@@ -679,14 +687,14 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 		return ERR_PTR(-ENOMEM);
 	}
 
-	dte = rk_mk_dte(pt_dma);
+	dte = rk_ops->mk_dtentries(pt_dma);
 	*dte_addr = dte;
 
 	rk_table_flush(rk_domain, pt_dma, NUM_PT_ENTRIES);
 	rk_table_flush(rk_domain,
 		       rk_domain->dt_dma + dte_index * sizeof(u32), 1);
 done:
-	pt_phys = rk_dte_pt_address(dte);
+	pt_phys = rk_ops->pt_address(dte);
 	return (u32 *)phys_to_virt(pt_phys);
 }
 
@@ -728,7 +736,7 @@ static int rk_iommu_map_iova(struct rk_iommu_domain *rk_domain, u32 *pte_addr,
 		if (rk_pte_is_page_valid(pte))
 			goto unwind;
 
-		pte_addr[pte_count] = rk_mk_pte(paddr, prot);
+		pte_addr[pte_count] = rk_ops->mk_ptentries(paddr, prot);
 
 		paddr += SPAGE_SIZE;
 	}
@@ -750,7 +758,7 @@ static int rk_iommu_map_iova(struct rk_iommu_domain *rk_domain, u32 *pte_addr,
 			    pte_count * SPAGE_SIZE);
 
 	iova += pte_count * SPAGE_SIZE;
-	page_phys = rk_pte_page_address(pte_addr[pte_count]);
+	page_phys = rk_ops->pt_address(pte_addr[pte_count]);
 	pr_err("iova: %pad already mapped to %pa cannot remap to phys: %pa prot: %#x\n",
 	       &iova, &page_phys, &paddr, prot);
 
@@ -785,7 +793,8 @@ static int rk_iommu_map(struct iommu_domain *domain, unsigned long _iova,
 	dte_index = rk_domain->dt[rk_iova_dte_index(iova)];
 	pte_index = rk_iova_pte_index(iova);
 	pte_addr = &page_table[pte_index];
-	pte_dma = rk_dte_pt_address(dte_index) + pte_index * sizeof(u32);
+
+	pte_dma = rk_ops->pt_address(dte_index) + pte_index * sizeof(u32);
 	ret = rk_iommu_map_iova(rk_domain, pte_addr, pte_dma, iova,
 				paddr, size, prot);
 
@@ -821,7 +830,7 @@ static size_t rk_iommu_unmap(struct iommu_domain *domain, unsigned long _iova,
 		return 0;
 	}
 
-	pt_phys = rk_dte_pt_address(dte);
+	pt_phys = rk_ops->pt_address(dte);
 	pte_addr = (u32 *)phys_to_virt(pt_phys) + rk_iova_pte_index(iova);
 	pte_dma = pt_phys + rk_iova_pte_index(iova) * sizeof(u32);
 	unmap_size = rk_iommu_unmap_iova(rk_domain, pte_addr, pte_dma, size);
@@ -1037,7 +1046,7 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
 	for (i = 0; i < NUM_DT_ENTRIES; i++) {
 		u32 dte = rk_domain->dt[i];
 		if (rk_dte_is_pt_valid(dte)) {
-			phys_addr_t pt_phys = rk_dte_pt_address(dte);
+			phys_addr_t pt_phys = rk_ops->pt_address(dte);
 			u32 *page_table = phys_to_virt(pt_phys);
 			dma_unmap_single(dma_dev, pt_phys,
 					 SPAGE_SIZE, DMA_TO_DEVICE);
@@ -1127,6 +1136,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rk_iommu *iommu;
 	struct resource *res;
+	const struct rk_iommu_ops *ops;
 	int num_res = pdev->num_resources;
 	int err, i;
 
@@ -1138,6 +1148,17 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	iommu->dev = dev;
 	iommu->num_mmu = 0;
 
+	ops = of_device_get_match_data(dev);
+	if (!rk_ops)
+		rk_ops = ops;
+
+	/*
+	 * That should not happen unless different versions of the
+	 * hardware block are embedded the same SoC
+	 */
+	if (WARN_ON(rk_ops != ops))
+		return -EINVAL;
+
 	iommu->bases = devm_kcalloc(dev, num_res, sizeof(*iommu->bases),
 				    GFP_KERNEL);
 	if (!iommu->bases)
@@ -1277,8 +1298,17 @@ static const struct dev_pm_ops rk_iommu_pm_ops = {
 				pm_runtime_force_resume)
 };
 
+static struct rk_iommu_ops iommu_data_ops_v1 = {
+	.pt_address = &rk_dte_pt_address,
+	.mk_dtentries = &rk_mk_dte,
+	.mk_ptentries = &rk_mk_pte,
+	.dte_addr_phys = &rk_dte_addr_phys,
+};
+
 static const struct of_device_id rk_iommu_dt_ids[] = {
-	{ .compatible = "rockchip,iommu" },
+	{	.compatible = "rockchip,iommu",
+		.data = &iommu_data_ops_v1,
+	},
 	{ /* sentinel */ }
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
