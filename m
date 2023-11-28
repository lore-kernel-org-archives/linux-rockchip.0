Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3C0C07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3atg+k5Jz/z5+TCcGL8YeCexRXBiVkjFV0U3OD2hEg=; b=KIMumjr6KnILq9
	7ibwLbdsCE62MXvcj+UlxZDTDWbVF98RgAWo+qWxGbGjEIaraZYBSTVkOrj+V1DzXPNqENgpNUpRE
	994Ydfu3bTCBpiIS+uB5kdaO2w6KnbD3kbR9hb+8giK9Dyw8hI4YN+MXvmdSlFoiXv27qC2DpMTs0
	hXX7FMP8PNn2PQdJxczXXkN9XdAPLpUOoHuulcwm9Ily89R5bRM4g4V58A60mqhcqgz77HpaTboqw
	7j55noC+hIGHiCXvEmTvS2leDF9KiM3zBLbYH9n0q4ErFOSjTY6UUEw0nPUXohHXK+6Crgz2njF2/
	RLs5bacfUtjUyo1B3nnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8524-006IIV-37;
	Tue, 28 Nov 2023 20:50:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851s-006I4w-2Z
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=CTqyv+/QBqQRpLXIT6J0+RNMQRf6NZoT619SVstW8Ks=; b=lpNaaZPMhc4KCqWoSHgLkg7gX/
	BIwrav7TyL4AxV+E1d8pL1UGdbRy733hOBFUgpO9ATwnXTNdoWrASMcudZdRCfo46MHeWSQTIR+jJ
	ATfqaSp7JhEOro71T2cqqG+gAuzpXS0PixPNtXHU1R9qviJ7vscn46Xii9p8J21QCTHdOLUoyycei
	2QdyzeYTdOVYBu91jb8oCvicMEliLJhxhfVfV4CqelaelU8ylPfMpnnb0ofUWYT65qXCmSIm6lKEd
	b4ZkaIV9HI13FMiHfCoTI63oxpVxbBk+rroZ3SUia0WvZMdQn0ieRkBmIe4x+7w35Qaf6jrNBdEwh
	VjSXm1fA==;
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1r851m-00CiGT-WB
	for linux-rockchip@lists.infradead.org; Tue, 28 Nov 2023 20:49:59 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-67a51ad638eso1806706d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204592; x=1701809392; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CTqyv+/QBqQRpLXIT6J0+RNMQRf6NZoT619SVstW8Ks=;
        b=YJZxrFH02GGjOQzNpVMKNm7oy9wuU6chmm1SpI8thyFnpyw1FRR96AfGeN8XCEMDo8
         foD7ZmtpnHGKcrbIJSciOU3XG8EJcLi642GvuUB8JtOOxE/BNIwA7ST30Y/RADXxc5is
         qgGFG17gDLuI84J2HxAYqII3+zrdLUXIMTawZAJPIN8ANN5DN8btObY2EnkxeF34TvQ7
         efPfSEpIeShefFIeWt/iS88t/lc9eT6lm7//V38e6RlcQPdlKprC+P8ApqSQbhuXUzf4
         TzY0sPCi0XwjnLCc6jjGjY+kimNiY2NUFrc9MehYSkITjzjL91V9OdP3gcEgtImLz+5z
         sNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204592; x=1701809392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTqyv+/QBqQRpLXIT6J0+RNMQRf6NZoT619SVstW8Ks=;
        b=DurStHSqCFevM4jc0t0Rjd53DskxYt04biwi/SilHTxbamYFFJ320IpmG26tx+GTyv
         HCIroe4KQA32Ldpmv1X/rj9SgBDn5YZqmPFe7O0EJVzEPsPgr8262Ei8ZYVLjbMg8a77
         82QeThHGhCPOyeh4Ix8jprbva2JQX8CrcUUdtZfH0XbBnDnHhK5swaSMJu/AGNOt7yh3
         hOv0jd4mpe3RmtUInLMXctw8xz8d/+WdNSZyf7D3XOetGGXmP3cB5aGJQ2HyYOMekKRZ
         nDwSPOytjXuSSE3u0DlBCTaJ36ZfymSIUeN/6RxshA/rSlw1rZ2CTn5FqSqI4uaJP5DU
         1Ncw==
X-Gm-Message-State: AOJu0YymCWwkuST+uBCclRnpp+skOrf3sNRbuw9mzlvMqKWESyz9gRKm
	+oEXJm0O9sl34jrXfx8X3w/tgQ==
X-Google-Smtp-Source: AGHT+IE3AYmHHgK/QSP8+MPcS+KRS5b9M1xHWJUdTuMzT9sQ+l/sj698GMRB0ddulu50PHGvh8bO9Q==
X-Received: by 2002:a05:6214:c86:b0:67a:4f19:d862 with SMTP id r6-20020a0562140c8600b0067a4f19d862mr8115033qvr.18.1701204592666;
        Tue, 28 Nov 2023 12:49:52 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:52 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alex.williamson@redhat.com,
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
	jasowang@redhat.com,
	jernej.skrabec@gmail.com,
	jgg@ziepe.ca,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	kevin.tian@intel.com,
	krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
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
	mst@redhat.com,
	m.szyprowski@samsung.com,
	netdev@vger.kernel.org,
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
	virtualization@lists.linux.dev,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com
Subject: [PATCH 12/16] iommu/tegra-smmu: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:34 +0000
Message-ID: <20231128204938.1453583-13-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204955_181101_3C05D6F8 
X-CRM114-Status: GOOD (  10.66  )
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
