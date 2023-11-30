Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D202C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 20:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3atg+k5Jz/z5+TCcGL8YeCexRXBiVkjFV0U3OD2hEg=; b=i5Fd3Q+7CZz1ww
	XJzV8OI/6HTBEbGekHeDHXQVPC4vnaVIOkQE0mDjQ/adBidAZgb9SS7TS4nU+y1QcX1YGOgTEsArF
	3G3if+T7W9YI4l08QMNaAprgAarIMnw1vWSU17XF9kEpB+y4qVRZvZbcjj+3tx0MdJkkpEMEwlrge
	sckc9gdImHGrTbZ14B/SzVae204M0W83cHqogOUAzrjLwmw37rcRRCE8xoygCSOlOwdYqI63OMvTx
	aoKT/8zpRBPKbJVHXU5QskJqQyUQ/vVM/xRIHFT7bRg02BviyL8ZUVHU0jViofGMtTY6janp5F2cM
	GGMecRWPpcMoW7762RUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRd-00Botp-2O;
	Thu, 30 Nov 2023 20:15:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRZ-00Bonq-00
	for linux-rockchip@bombadil.infradead.org;
	Thu, 30 Nov 2023 20:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=CTqyv+/QBqQRpLXIT6J0+RNMQRf6NZoT619SVstW8Ks=; b=YTmpWji/G5+gNRObdow4sxuYiG
	OIk+UuLlAk8P9PQOfEUJ0mzesUSmstVoatP8IEC7yoSXaUhyVAYax449Luu1grnmRrQEPG+fVStx4
	i21cg3GXfbj66vVcLgkfVg4BX01k4eZ1TAEzKWIBmrTZnXaujlby9BLIbyL5EDtE8CIjuOSRjWzHr
	6HXgXkCQ344hUsuLRElBpBwA+ZjoA6l5Ud1zlOxSBbDflyff1engyE5Ze9z+YgZLEA6rlbRAcCuMG
	6kO+8cq90n6JbUmdCUwyN3waJzxClGj4C695azD8zBKzW6vUFa5fLEUXD0jT4wJUyMiCe+LZeJNZ1
	0ZfEHM5w==;
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRS-0018VZ-1Q
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:27 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-67a8a745c43so6156836d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375315; x=1701980115; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CTqyv+/QBqQRpLXIT6J0+RNMQRf6NZoT619SVstW8Ks=;
        b=kFkiQZnBGezzBpf3oepO9zqCMx5gRHBGhwiFAdWln422AVT2W1xPyVft0O3VXcLIjj
         QI19dr2d2V5PYLzu5VXeJo5W8z1UZQOSBuOxcXuXwxxOLc8Yu/A9cz7s1QaOI1Vac4nD
         6zQ2NSa67hAzMtwRfl28T85DdMw0/8xjYXMDxoIAemECJmuvhwDXu66miyIiSrCClY/T
         vfRLmjCm9jonIlsI1Nd1AYZ/6h5KkxHjmEYbpNV8nUJfLUTNoEa7xlmPvGWAAK+8omfS
         r80APSObH/afnwLU7t8PqzZ5kROjJIyLK7cGEV3zKIe9mUfeu2j3fX/WMp3DkrGZIPnA
         8K3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375315; x=1701980115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTqyv+/QBqQRpLXIT6J0+RNMQRf6NZoT619SVstW8Ks=;
        b=NlhhZ+jMN2DnoBio+e8RY+pStCuUJCqAan3AnwzEB0QiVQ/JV6AGtAz5H/NwVQ9/En
         WXNRfU8A8GIZf/JgHs0OgyGkgsSJ81jNnzRuisiAtsbyzugKdbvqVourxCMJz3XLtPmq
         teXCRMnf8hg5sdh2K3aXfAhAy1XQNjKR2m9IAU+IzGyBXaePvCH+g+YRqdaJBfdnEx+d
         GWTQqH5SDGrBeoH4xdzwpunoAA07HIfTABi1Is3W2Eks+hi2FNH98dTIrj2XdzKNRFn4
         +joK0ngnI3WxRrPLwQOx7npDEeOrtP5huNP8B3Z393NOi0n8cAVMDtUOgaM6tiHgkMD1
         VNpQ==
X-Gm-Message-State: AOJu0YxJ2KpUroNYSVZBCf57yjQPD4dPglwwghUC0G2No9Sx36lggPeR
	1TMGOrxJXA258PTbVz5FI6VH9w==
X-Google-Smtp-Source: AGHT+IE4JYPLoA/tNY4x2pKdpnHf/W/XblnfOPtcPXpbeLos1tHq3JCEAsQT3LPHq1ybHp62KX3VJw==
X-Received: by 2002:a05:6214:4115:b0:67a:3a51:8773 with SMTP id kc21-20020a056214411500b0067a3a518773mr24916856qvb.5.1701375315320;
        Thu, 30 Nov 2023 12:15:15 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:15 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alim.akhtar@samsung.com,
	alyssa@rosenzweig.io,
	asahi@lists.linux.dev,
	baolu.lu@linux.intel.com,
	bhelgaas@google.com,
	cgroups@vger.kernel.org,
	corbet@lwn.net,
	david@redhat.com,
	dwmw2@infradead.org,
	hannes@cmpxchg.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jernej.skrabec@gmail.com,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	krzysztof.kozlowski@linaro.org,
	linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	lizefan.x@bytedance.com,
	marcan@marcan.st,
	mhiramat@kernel.org,
	m.szyprowski@samsung.com,
	pasha.tatashin@soleen.com,
	paulmck@kernel.org,
	rdunlap@infradead.org,
	robin.murphy@arm.com,
	samuel@sholland.org,
	suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev,
	thierry.reding@gmail.com,
	tj@kernel.org,
	tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com
Subject: [PATCH v2 08/10] iommu/tegra-smmu: use page allocation function provided by iommu-pages.h
Date: Thu, 30 Nov 2023 20:15:02 +0000
Message-ID: <20231130201504.2322355-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_201522_829371_9A5105FC 
X-CRM114-Status: GOOD (  11.15  )
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

Convert iommu/tegra-smmu.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/tegra-smmu.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/tegra-smmu.c b/drivers/iommu/tegra-smmu.c
index 310871728ab4..5e0730dc1b0e 100644
--- a/drivers/iommu/tegra-smmu.c
+++ b/drivers/iommu/tegra-smmu.c
@@ -19,6 +19,8 @@
 #include <soc/tegra/ahb.h>
 #include <soc/tegra/mc.h>
 
+#include "iommu-pages.h"
+
 struct tegra_smmu_group {
 	struct list_head list;
 	struct tegra_smmu *smmu;
@@ -282,7 +284,7 @@ static struct iommu_domain *tegra_smmu_domain_alloc_paging(struct device *dev)
 
 	as->attr = SMMU_PD_READABLE | SMMU_PD_WRITABLE | SMMU_PD_NONSECURE;
 
-	as->pd = alloc_page(GFP_KERNEL | __GFP_DMA | __GFP_ZERO);
+	as->pd = __iommu_alloc_page(GFP_KERNEL | __GFP_DMA);
 	if (!as->pd) {
 		kfree(as);
 		return NULL;
@@ -290,7 +292,7 @@ static struct iommu_domain *tegra_smmu_domain_alloc_paging(struct device *dev)
 
 	as->count = kcalloc(SMMU_NUM_PDE, sizeof(u32), GFP_KERNEL);
 	if (!as->count) {
-		__free_page(as->pd);
+		__iommu_free_page(as->pd);
 		kfree(as);
 		return NULL;
 	}
@@ -298,7 +300,7 @@ static struct iommu_domain *tegra_smmu_domain_alloc_paging(struct device *dev)
 	as->pts = kcalloc(SMMU_NUM_PDE, sizeof(*as->pts), GFP_KERNEL);
 	if (!as->pts) {
 		kfree(as->count);
-		__free_page(as->pd);
+		__iommu_free_page(as->pd);
 		kfree(as);
 		return NULL;
 	}
@@ -599,14 +601,14 @@ static u32 *as_get_pte(struct tegra_smmu_as *as, dma_addr_t iova,
 		dma = dma_map_page(smmu->dev, page, 0, SMMU_SIZE_PT,
 				   DMA_TO_DEVICE);
 		if (dma_mapping_error(smmu->dev, dma)) {
-			__free_page(page);
+			__iommu_free_page(page);
 			return NULL;
 		}
 
 		if (!smmu_dma_addr_valid(smmu, dma)) {
 			dma_unmap_page(smmu->dev, dma, SMMU_SIZE_PT,
 				       DMA_TO_DEVICE);
-			__free_page(page);
+			__iommu_free_page(page);
 			return NULL;
 		}
 
@@ -649,7 +651,7 @@ static void tegra_smmu_pte_put_use(struct tegra_smmu_as *as, unsigned long iova)
 		tegra_smmu_set_pde(as, iova, 0);
 
 		dma_unmap_page(smmu->dev, pte_dma, SMMU_SIZE_PT, DMA_TO_DEVICE);
-		__free_page(page);
+		__iommu_free_page(page);
 		as->pts[pde] = NULL;
 	}
 }
@@ -688,7 +690,7 @@ static struct page *as_get_pde_page(struct tegra_smmu_as *as,
 	if (gfpflags_allow_blocking(gfp))
 		spin_unlock_irqrestore(&as->lock, *flags);
 
-	page = alloc_page(gfp | __GFP_DMA | __GFP_ZERO);
+	page = __iommu_alloc_page(gfp | __GFP_DMA);
 
 	if (gfpflags_allow_blocking(gfp))
 		spin_lock_irqsave(&as->lock, *flags);
@@ -700,7 +702,7 @@ static struct page *as_get_pde_page(struct tegra_smmu_as *as,
 	 */
 	if (as->pts[pde]) {
 		if (page)
-			__free_page(page);
+			__iommu_free_page(page);
 
 		page = as->pts[pde];
 	}
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
