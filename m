Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C04C54791
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlDHS2ai7+Wy/XUGWm4Cq6WjGbv6mrJkJtvfDUfZHnY=; b=Y/koOhzcsd3bfQ
	OKRTupD70xXRC71FczIGbI8Z4d4tLfKCjA5d7UzIspZUWjQBVqxqCApVY+2wYuFs7ullgZ3gesrZv
	rj4MxBeqRB4Zw3K9r7bLK54R/PKUAmlIKB+nTX+uQ9uR00lbwubCrx97JoeiaRfb/tExx+5H4pkSN
	4L47Cl4GmbZKUb6BqPdjOt2fz4pDocSMCkfPrNY8zZOZcaLmMPrScFVt195aV9IF+4QEgbAjSbhr9
	dGnRAn4HtsMj6LZ84BTJW7GL2UqbdEzGOhdCHQx39WZWPd2SJz4og8iydrQ1abyy1eQYh6UuBQFCh
	thYql0YVLW0DQOyrLwrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4B-00000005q9V-3zGp;
	Thu, 22 Feb 2024 17:41:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4A-00000005q5r-0TdM
	for linux-rockchip@bombadil.infradead.org;
	Thu, 22 Feb 2024 17:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=uv35HUKrFfNdue1C7Aw2CpDwCbY0H46wtzckiJmEetQ=; b=JJ9RXgUCqk24f8DG8MQf6YM/3v
	+5NmGWz6Off3Cnsm4CSUqTzO0QbQoqBWnYGFRZrAZVSrQFr2Mco+Ew8h6tqv6hNRI7BPrVcZCVxIF
	WK2T3xGfhWkx02ctHXlGZKY2/Zxvp3FUD0TuI70tmge/+gwppxBfcK1qyXpTDY8l6VctZuN1+oh3t
	A/xs3La4XsDO2zvs9tL7DO6d7EJdxVtd6RUF6ltu9BGuIf99Y+uBYgE2W2xXt53qy06Fhp+NAar1e
	T6u0UkWfQMDWHITk/imCtBidaQ+QoWYiN0YM+Xnxo5pnAkorxpfbICZ6YXUWLsAHBTWsjr1p+YGwr
	+tOgEPXg==;
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD45-00000004Dnn-42mY
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:41:01 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-42c7f8588c5so18181241cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623594; x=1709228394; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uv35HUKrFfNdue1C7Aw2CpDwCbY0H46wtzckiJmEetQ=;
        b=CDzal5PXlavjx/11wwISEy7umPYaxsCEPkaz5/L6ivZqxnCizAAslm99mxlv5yW1Uc
         dPWPJZItpyfYGuyBYBqa2/IAjYn7cqrtvMq4fWRyn7yfiD96fzw4EMJAPnGYlJeTrNQH
         brGyj+17e0mrSq4W87VTkvz/buYfNvHMhGBP1ouBZDPQQRUbH0mPdl/o2koNhGwvBBOl
         mG2UjqiQ6JYnIKeh1LLwJ2GKkKxz+xVSBpB44BEI3sWaisNDTL7esza1Rwz3ZlzOsYNI
         2Mun9yfyqCNDMMy25RPPLdsfB1F+QY5zES4SdvQ/9DwAI0FPvAapZ+tpSe0mi7aSwLiu
         N+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623594; x=1709228394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uv35HUKrFfNdue1C7Aw2CpDwCbY0H46wtzckiJmEetQ=;
        b=VS/ubeiOG1K8xxI+H/Sb/tRCeDPcyowcD531qFzqL9p/D20/3OsEqZbQjOU2BMcbkK
         4eJ3JSyBL3WlT+wWraH11fvacrsaC3pI5xhhVYqhilCtISnLN3rXn2QGBpIHUrGCan5w
         0pB9iuWZ1OfyQ3rI4U73S9xvGp+sPlu0tOktplCSj2EGBslmAcXh5kQfe99Dge6Q7Z0p
         hEJ+Uo8MdO+5Mzc7sy+X8R4OtUcMCQzEDY+lO1VgQECbHtdKn/8WwwYdbwxGt6OTQXnr
         Ze2uQoNcBZanFovajhiehg7gwxfSjywD4NGBA0LEgSoExSzB9NpjeDxiSkFNxxl6LrBs
         suGg==
X-Forwarded-Encrypted: i=1; AJvYcCXzAOuTIIUABzHAaV6ddX1mqrrzuqbBquee4sRGOin4Ce3g3MqxmTeP06RVKYp62smpuWn6x+KO4TMZ3sHlHOjnePS7F6stQYCgqooZI/Awgz8O
X-Gm-Message-State: AOJu0YyS0IKsDG8Gd/mgH0qQuby2cfBKZUX4c15vMJKneocOirLDR6Et
	PMRpY6U4q7Bn9723EsHUJyV2U6xD9o+HeLV8Kn2kwWIzdGlxZe9W8bE6KpoqGh8=
X-Google-Smtp-Source: AGHT+IE+Akg5+Cr9C5q9XoLFcnfSS9pk8lVxXF1AmEM7lT1XFT68HyiX2ha271XqH9ioEWyp0Wi6uw==
X-Received: by 2002:a05:622a:148e:b0:42e:1d1a:d414 with SMTP id t14-20020a05622a148e00b0042e1d1ad414mr12238355qtx.15.1708623594202;
        Thu, 22 Feb 2024 09:39:54 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:53 -0800 (PST)
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
Subject: [PATCH v5 09/11] iommu/tegra-smmu: use page allocation function provided by iommu-pages.h
Date: Thu, 22 Feb 2024 17:39:35 +0000
Message-ID: <20240222173942.1481394-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_174058_075564_90714B5A 
X-CRM114-Status: GOOD (  10.44  )
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
index 310871728ab4..8be74d472f21 100644
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
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
