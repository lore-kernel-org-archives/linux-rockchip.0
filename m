Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 107C0C10DCE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 20:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DNCJAHK1y1iYQpw6LX0+m+gOfCjulEP1SrMXEJ0YIQ=; b=uxe/kBBN37B3oI
	P6/pFR0j1s5xI34I965ZwEHTUf0v5APv94CBjU7nmgiBwgu1jKjFcrHtURS2Ux0jFahRFgimGGUbA
	L6GmvNdFydlSgMSDa4U39N503oaZJINi6FjUcTncgkEcVyBW0mQ6piJf7SOpZfXgT5VcPzTM2AHQ2
	CWpOHjACgdxZrqR5D0oS09rglXueQZDkvGjegszwRhUj38Mthot8sL26DSEEjxya2ex7T9ojhXvYa
	axuhOozXCATB2pZ7bpyn7QeE9uLtMzLypEjLzqDIOqj4HE+fHQFy4mZMx33nTIzxleWHPKvcZlgQ1
	zrubuindsdlh5PttfsEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRO-00Boei-1d;
	Thu, 30 Nov 2023 20:15:18 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRI-00BoY3-1v
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:16 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6ce2eaf7c2bso872847a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375310; x=1701980110; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=agdpEgslqhHdhrn0hnWdDpIJa9Hen54IbPQiTYhpn3E=;
        b=RM15uRUNWQxVWy9gcgzMZNBMDPAuE9XCwncjYODw/CC5hic8MHt5PbpL61zyb3NQSW
         dWrTDM6Eq+jE6+6gWw/RszWxHP1qeQ3/kfVLMq/yT91LaxymUbca65C/KpikTDyZEk3x
         cgmsge10qtXKj85SNyGw+GLMaTPoz0a3LmJN5X1LiDTmKjhC8YGxbQ0rJGZFRjfHqp49
         cWe58Rg5FMVRzkWvPqQUtJ5iUrfAwE+FPItTc+8Z4sl/Vk2lB7RjnmY6qWpgmiVhg92a
         dC2uWKqvZ99Sw07mgagkHSt9FF0ZjY7vh5ERXu3Mx51JD2USlkfCq6CO8jHSrQgNxpl/
         UmwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375310; x=1701980110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=agdpEgslqhHdhrn0hnWdDpIJa9Hen54IbPQiTYhpn3E=;
        b=fZCHtzW/UZc7cTNuJg0sqg/rsDCi1m4mHWR5SgwlCJm9g/hgmTlL6O1sMUbzqQZKH9
         HJZFhjt2ikMQytbVQgjMm192rS84Z0w4OxMAJR/13oeY11f7A72bTuoR+qLF+LB1E3b/
         3jGAIWowJP22TdLiNNuCXiaZECK3iJzWUYpLJwfjUEqjSjZmw8lBcGECCLd8rKO7a5ik
         5CrnQnhduX5AllJ4GNI73oWqnFOq48w9BaR4AlpH5QPh69kbGNQbr7WFS4VQkhiTfL1D
         tX1p1CH7E05TdPEeYFFnEK7TlJdzWWOf+uyOV5jqA9SsjLQ897PALR8dOyRvH2MonNuQ
         m9OQ==
X-Gm-Message-State: AOJu0YwhS37UiCglhoXfWi1CY7qyKo56Ftw0ElkFWFgCMt83+UgsYzj4
	QuvyIjj07IRjOUqHVknDVgu9zA==
X-Google-Smtp-Source: AGHT+IGqd1nCfT5mpKZHzFpkRZAyFydlrTR6nVwlbdpa33SL4CJzD0tuFZYwet7aKrGY42Lko6YVCg==
X-Received: by 2002:a05:6830:2644:b0:6d5:11f6:eec7 with SMTP id f4-20020a056830264400b006d511f6eec7mr794143otu.28.1701375310765;
        Thu, 30 Nov 2023 12:15:10 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:10 -0800 (PST)
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
Subject: [PATCH v2 03/10] iommu/io-pgtable-arm: use page allocation function provided by iommu-pages.h
Date: Thu, 30 Nov 2023 20:14:57 +0000
Message-ID: <20231130201504.2322355-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_121512_661076_24350BB4 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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

Convert iommu/io-pgtable-arm.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/io-pgtable-arm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 72dcdd468cf3..21d315151ad6 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -21,6 +21,7 @@
 #include <asm/barrier.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-pages.h"
 
 #define ARM_LPAE_MAX_ADDR_BITS		52
 #define ARM_LPAE_S2_MAX_CONCAT_PAGES	16
@@ -197,7 +198,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	void *pages;
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
-	p = alloc_pages_node(dev_to_node(dev), gfp | __GFP_ZERO, order);
+	p = __iommu_alloc_pages_node(dev_to_node(dev), gfp, order);
 	if (!p)
 		return NULL;
 
@@ -221,7 +222,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	dev_err(dev, "Cannot accommodate DMA translation for IOMMU page tables\n");
 	dma_unmap_single(dev, dma, size, DMA_TO_DEVICE);
 out_free:
-	__free_pages(p, order);
+	__iommu_free_pages(p, order);
 	return NULL;
 }
 
@@ -231,7 +232,7 @@ static void __arm_lpae_free_pages(void *pages, size_t size,
 	if (!cfg->coherent_walk)
 		dma_unmap_single(cfg->iommu_dev, __arm_lpae_dma_addr(pages),
 				 size, DMA_TO_DEVICE);
-	free_pages((unsigned long)pages, get_order(size));
+	iommu_free_pages(pages, get_order(size));
 }
 
 static void __arm_lpae_sync_pte(arm_lpae_iopte *ptep, int num_entries,
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
