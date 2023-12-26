Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 163EAC4706F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 20:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdZBG229u44qwQFw4oX9uZbiED9WrqMcAVLJddU2Sv4=; b=2Pv5NOSsFQvWRA
	vXGwK4vT5epk/dEbobGxDAheULcMXpkPVEEcTCbNyQt1bruAyxPsYFcNttF0jBC66tD/VGUgbmYwQ
	VCZRauMTMXzqiCEaIhuz5WSiP0g1eNn0SqGTKKYUxjOfXs1ZOwz70Z5kVOKkRvNe3Y+BN9HRioR09
	mofGZUmmPVodVDkoBnjAHCPO9NAA3Qy5jFspX9cyjbva+pMWhIv16ryk5gBQXKnwjLIPxCjs3ZHM+
	eObEEFQ81dRUnk6J5729rL5frccWb5y7YKZEQEWNoFzDUZerH6iqwRDGF9WRmOgJg5LUflBNgvy5o
	DV542ktc81uBQTPETfXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDdG-00DUAV-2K;
	Tue, 26 Dec 2023 20:02:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDdD-00DU6k-0e
	for linux-rockchip@bombadil.infradead.org;
	Tue, 26 Dec 2023 20:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=4Px5z3jJNMJ+cqkQJ8fykFQGitjbal7TFA82XDDTiIs=; b=gHirE8g8Gg6u76p75X6iIl44pT
	gVVUnSD4ihvDaNetYy5v4slTQrBFKrzunkc1G8gmuW+lP+qG87fXDhfklcCmGH9AMILtJzS7ifLJZ
	Tvp9I6/cXumPw8YwdmStJ/vyQ6y+Jd4xqmjdrM9aulrpxkOZL7BO5TCoJqxgcqvOsKJEE1woEOIQG
	Bt6/aFWaMKuNSyhRAlU+cRRMKjf1YqvZUyRJDLXfFPIX47wpBKd+y1zAZALRN1KY4YTQ5rGAdwRiO
	ASWBEKO9O8wBJqiNn0EaujUEyaEmYzzOCT10WIOsKtkHSH/lKlwPxpB1GuiiVETb7zVkv41kBX/kQ
	70KfIIUA==;
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDd7-000T3j-0a
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 20:02:25 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-594cac3cbaeso188057eaf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 12:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703620934; x=1704225734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Px5z3jJNMJ+cqkQJ8fykFQGitjbal7TFA82XDDTiIs=;
        b=bIdpR0IKK6Cz0JsJIDjjc+T0yZGUJr7f/PSbBqGvY+z91tBh+olL3feMdZ6TFiPbUC
         F3E/OqpMD4PqN3ekyXgiqatFU1WuO6LcOCwINrbIxK1fXZ/t9fLqbr1PGzGyem8zf2KB
         Wbf+VECNS12hhW5z81z3HwfoT0yVqHt/zkKdqvwqnoY+18yvGu8jVbEtBsMbilu7xUgd
         ueENUEERSYf0W4Q37DI5trPOT5C7wW+qiqd9s/qdyG6o3UymrvPjMX2ctSe09n+14uzq
         d2S8stwQMlYUJoad7VJAuw+6ZRb2UAqJn7578OQejzjTy0pkSJUXD2mdikUMINAgCSRr
         SaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703620934; x=1704225734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Px5z3jJNMJ+cqkQJ8fykFQGitjbal7TFA82XDDTiIs=;
        b=pbTWnD0XQvt1yjbtbskJdDFOHRoogaetMnqCB/OQ/xEX6wxl3WWbOQSwLg+fBbRXDx
         cifYWbrdI5UgAWyAnx+ugzLLtAIbKVQ6HAdDqCdfH9IyBN2T1Vycddld0kq2COuuSYoy
         EoAiMYpSM0kFGd2RG320AG/mzoHm807x+WsfajCf60nFFEqpn5ldUA6whEbWelnoPGs/
         MbaCf9LJP8tRmvCGL/ZEo+A8M0/f/ArOSB5UQjiQLWQ8idZO6SLluJa3YtuLRmCjFX38
         ClEbCqG+u2QkqJQO99jTbyPIlwj6I+vWDTmDxNtLjFdPoTt5L50lf3PlixUupX6P/Bqg
         5VRA==
X-Gm-Message-State: AOJu0Yypzbm2KHzvhG2GnRwLiA6uxk2nbfhuL1B2I6pHaaMri5yDaRAj
	cruYDqpViQsVPghJaaM00812Cyl6W0yFbQ==
X-Google-Smtp-Source: AGHT+IGuyxzVTrkGD7GeRYCWL+kwqdfuJTNbDB34T0ltwnMiuh8TxVV6prFt2lzUE/2C05msUhTBCA==
X-Received: by 2002:a05:6358:70c4:b0:174:edbf:a9a2 with SMTP id h4-20020a05635870c400b00174edbfa9a2mr2577495rwh.48.1703620933708;
        Tue, 26 Dec 2023 12:02:13 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id t5-20020a0cf985000000b0067f696f412esm4894539qvn.112.2023.12.26.12.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 12:02:13 -0800 (PST)
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
	rientjes@google.com
Subject: [PATCH v3 06/10] iommu/rockchip: use page allocation function provided by iommu-pages.h
Date: Tue, 26 Dec 2023 20:02:01 +0000
Message-ID: <20231226200205.562565-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226200205.562565-1-pasha.tatashin@soleen.com>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_200221_631482_7D48BC32 
X-CRM114-Status: GOOD (  11.02  )
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

Convert iommu/rockchip-iommu.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
---
 drivers/iommu/rockchip-iommu.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 2685861c0a12..e04f22d481d0 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -26,6 +26,8 @@
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 
+#include "iommu-pages.h"
+
 /** MMU register offsets */
 #define RK_MMU_DTE_ADDR		0x00	/* Directory table address */
 #define RK_MMU_STATUS		0x04
@@ -727,14 +729,14 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	if (rk_dte_is_pt_valid(dte))
 		goto done;
 
-	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | rk_ops->gfp_flags);
+	page_table = iommu_alloc_page(GFP_ATOMIC | rk_ops->gfp_flags);
 	if (!page_table)
 		return ERR_PTR(-ENOMEM);
 
 	pt_dma = dma_map_single(dma_dev, page_table, SPAGE_SIZE, DMA_TO_DEVICE);
 	if (dma_mapping_error(dma_dev, pt_dma)) {
 		dev_err(dma_dev, "DMA mapping error while allocating page table\n");
-		free_page((unsigned long)page_table);
+		iommu_free_page(page_table);
 		return ERR_PTR(-ENOMEM);
 	}
 
@@ -1061,7 +1063,7 @@ static struct iommu_domain *rk_iommu_domain_alloc_paging(struct device *dev)
 	 * Each level1 (dt) and level2 (pt) table has 1024 4-byte entries.
 	 * Allocate one 4 KiB page for each table.
 	 */
-	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | rk_ops->gfp_flags);
+	rk_domain->dt = iommu_alloc_page(GFP_KERNEL | rk_ops->gfp_flags);
 	if (!rk_domain->dt)
 		goto err_free_domain;
 
@@ -1083,7 +1085,7 @@ static struct iommu_domain *rk_iommu_domain_alloc_paging(struct device *dev)
 	return &rk_domain->domain;
 
 err_free_dt:
-	free_page((unsigned long)rk_domain->dt);
+	iommu_free_page(rk_domain->dt);
 err_free_domain:
 	kfree(rk_domain);
 
@@ -1104,13 +1106,13 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
 			u32 *page_table = phys_to_virt(pt_phys);
 			dma_unmap_single(dma_dev, pt_phys,
 					 SPAGE_SIZE, DMA_TO_DEVICE);
-			free_page((unsigned long)page_table);
+			iommu_free_page(page_table);
 		}
 	}
 
 	dma_unmap_single(dma_dev, rk_domain->dt_dma,
 			 SPAGE_SIZE, DMA_TO_DEVICE);
-	free_page((unsigned long)rk_domain->dt);
+	iommu_free_page(rk_domain->dt);
 
 	kfree(rk_domain);
 }
-- 
2.43.0.472.g3155946c3a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
