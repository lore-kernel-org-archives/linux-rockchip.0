Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE0B7C04FF9
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=van5RpjjvyNFIxBFl3ipyiQyYyPkED/g1dC4N1G1fVA=; b=LAkFjWfBN8PrxJ
	pth098Itkk2r7lypAamsV0gD2aGA8rH+ssjpkql2IMNoNxT1JjIk0UVFuW1KO8kctLOlWR6fY2GqY
	SpmspLL4wj820OFVYxq+nO9wM6aPqZ5+fVg8X+h+CwGufrAzLQfQMhQgYMHAziJjNn2XMF6aounvX
	98DSnG5PZrnBhiksYn0p5YfrgW/Y4KNqJhJjSVzWb5luLAGGOZuPbNug3bZpboZM67L4750/r026Y
	hoZGX9VwW219T2mgIOeUyJ5rsJGpBv6yysHk2Z2BIhltee47mckr+kVGV6B7EKqg0OJJD1M8T/a4I
	sbOD5dvLJcflXbbYmhnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRDE-00000001nth-45g5;
	Sat, 13 Apr 2024 00:25:44 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRD6-00000001nmj-1VkN
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:25:41 +0000
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-78d70890182so127603585a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712967934; x=1713572734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Msq3s0T9jYWGepWyMOjVGhKtsGemyt6YXf5qXgBQII=;
        b=kylUE1vQPg5ZXnu6gv2jab6y+1qneOl7nAjjxESHk/mF6efqF6oY1IpgdyQKUf+3iA
         Fl8LK78e4rEELGfhHIbxCmwmzIYylKaVQ2SvHgMt1/rGn0amt005GKMEceAnBME1wH3V
         hTJ2KW5AP3LRVY+5nt172wkcwRyDrpsxUPXBp8nshG3beTGXpuyMuZgIkmkz9YHzlfz+
         PaUqhUjtoqXA/GMTvBjzGpacu4I3VQibJyLlmfLqCMdYyMug+iZlEh07V8rwqej8flc8
         dq5HsjkOhgY2G3EVcyMc6lGQ7ISvWo1dPrV0P93D8UKBBeBZ2YuKAVYVcdBZBBroitGs
         uOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712967934; x=1713572734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Msq3s0T9jYWGepWyMOjVGhKtsGemyt6YXf5qXgBQII=;
        b=iXRfyTDqsSuNwZCfFWo/isXPOcW3dE1HToia065GPxZPv3pNHK+OTcwoELbxgPkWSj
         F1lkSE01Eb1XuAMiZ3SZayRy1Of40YopBbl44zFY/A5sVOC5kHLVli6Rxg0+AqBsFRF8
         5IlFI306S2xu0J5PVKWEdGbR2Q9Ya2wKYqyUbTC2APl78zGedduucx+nV+dO/45zyIOu
         Dr9AyLh8jSkRfv4VXn2YOzHFJDf+zSaRMM5pJBnpqgRae5xqyp7HEcowE4Dn6+fSMJEp
         /5RErY6sHgc5YauurGGaP5JxxLVUuwpDPitexBKB13yrmGOveT5xT3c7GxZ+DCKH+zH2
         dr8w==
X-Forwarded-Encrypted: i=1; AJvYcCWhZxu+CXooZA7SNmnW4sZ7s/Pc7/MwATRs8r5N719YNbD6woDKFwkWVceO/fPOBeXryt01730Ds7KUfqZwKFJeUI/FrwwHEk+EeWLbXscUNa+O
X-Gm-Message-State: AOJu0Yyat3jD6vSKJBc4EevQTBebK0PselhJueWqRwD6Qt4f4T98RLVi
	Up8cuu6uH7sfAq49SfTOAZyVN3WgjoT48qguuZ6IVnQmkAzf2ePbS1PhnedFYnE=
X-Google-Smtp-Source: AGHT+IFLWyccRHbQF5BJmQAmIq2yaafFcDxYEvTdEMzon+yR8BjvOaupqITKjDvsX+13T7c1AAimFg==
X-Received: by 2002:a05:620a:4606:b0:78d:77f1:6043 with SMTP id br6-20020a05620a460600b0078d77f16043mr8190515qkb.6.1712967934070;
        Fri, 12 Apr 2024 17:25:34 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:33 -0700 (PDT)
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
	yu-cheng.yu@intel.com,
	rientjes@google.com,
	bagasdotme@gmail.com,
	mkoutny@suse.com
Subject: [PATCH v6 09/11] iommu/tegra-smmu: use page allocation function provided by iommu-pages.h
Date: Sat, 13 Apr 2024 00:25:20 +0000
Message-ID: <20240413002522.1101315-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
References: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_172536_556811_CF47DAE7 
X-CRM114-Status: GOOD (  10.83  )
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
Acked-by: David Rientjes <rientjes@google.com>
Acked-by: Thierry Reding <treding@nvidia.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/tegra-smmu.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/tegra-smmu.c b/drivers/iommu/tegra-smmu.c
index 14e525bd0d9b..f86c7ae91814 100644
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
+	as->pd = __iommu_alloc_pages(GFP_KERNEL | __GFP_DMA, 0);
 	if (!as->pd) {
 		kfree(as);
 		return NULL;
@@ -290,7 +292,7 @@ static struct iommu_domain *tegra_smmu_domain_alloc_paging(struct device *dev)
 
 	as->count = kcalloc(SMMU_NUM_PDE, sizeof(u32), GFP_KERNEL);
 	if (!as->count) {
-		__free_page(as->pd);
+		__iommu_free_pages(as->pd, 0);
 		kfree(as);
 		return NULL;
 	}
@@ -298,7 +300,7 @@ static struct iommu_domain *tegra_smmu_domain_alloc_paging(struct device *dev)
 	as->pts = kcalloc(SMMU_NUM_PDE, sizeof(*as->pts), GFP_KERNEL);
 	if (!as->pts) {
 		kfree(as->count);
-		__free_page(as->pd);
+		__iommu_free_pages(as->pd, 0);
 		kfree(as);
 		return NULL;
 	}
@@ -599,14 +601,14 @@ static u32 *as_get_pte(struct tegra_smmu_as *as, dma_addr_t iova,
 		dma = dma_map_page(smmu->dev, page, 0, SMMU_SIZE_PT,
 				   DMA_TO_DEVICE);
 		if (dma_mapping_error(smmu->dev, dma)) {
-			__free_page(page);
+			__iommu_free_pages(page, 0);
 			return NULL;
 		}
 
 		if (!smmu_dma_addr_valid(smmu, dma)) {
 			dma_unmap_page(smmu->dev, dma, SMMU_SIZE_PT,
 				       DMA_TO_DEVICE);
-			__free_page(page);
+			__iommu_free_pages(page, 0);
 			return NULL;
 		}
 
@@ -649,7 +651,7 @@ static void tegra_smmu_pte_put_use(struct tegra_smmu_as *as, unsigned long iova)
 		tegra_smmu_set_pde(as, iova, 0);
 
 		dma_unmap_page(smmu->dev, pte_dma, SMMU_SIZE_PT, DMA_TO_DEVICE);
-		__free_page(page);
+		__iommu_free_pages(page, 0);
 		as->pts[pde] = NULL;
 	}
 }
@@ -688,7 +690,7 @@ static struct page *as_get_pde_page(struct tegra_smmu_as *as,
 	if (gfpflags_allow_blocking(gfp))
 		spin_unlock_irqrestore(&as->lock, *flags);
 
-	page = alloc_page(gfp | __GFP_DMA | __GFP_ZERO);
+	page = __iommu_alloc_pages(gfp | __GFP_DMA, 0);
 
 	if (gfpflags_allow_blocking(gfp))
 		spin_lock_irqsave(&as->lock, *flags);
@@ -700,7 +702,7 @@ static struct page *as_get_pde_page(struct tegra_smmu_as *as,
 	 */
 	if (as->pts[pde]) {
 		if (page)
-			__free_page(page);
+			__iommu_free_pages(page, 0);
 
 		page = as->pts[pde];
 	}
-- 
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
