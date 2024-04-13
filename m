Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A72B7C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bK64A7mLXf8Nzl3DXrg9cT5Y5hSaQbD60UX5ckGJDI=; b=LrVq9P6AQh8kj0
	JB70Zr62PvbNKj2rppj6vGbV7dM7tyzypcABhlh9dwo6KgU+rRsflcqumMHIk2I7Iigdde5ZUCD2h
	eVsAKwdyPhlNHLKR9XtDkR2ifgr20Z8WFqq1ytdlQJw1U9xmGwwKE+JHVuoG2cBvqXFYTG4MH4XEp
	t81C8m30R96zQjtLBYNxgFLV6WOv68rBYXBDsgMRbWU14q1xBQidD1bUSVvktxZ/6z80lpLQNZQ62
	BoCQtuntvEVYERjKRdTgzxydAaB5mZe+0g6rjCZMf0VTwQk/v3rj3MdGGmj3/abYjlIroubKQJuPC
	XnDp76xKFDadQs4kd1eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRK6-00000001plZ-0KDb;
	Sat, 13 Apr 2024 00:32:50 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRK3-00000001phY-0ubY
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:32:48 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6ea2375d8d0so1238355a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712968365; x=1713573165; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GxsyMTKANsChLuxDrkmJaktgLM+pVsQuG3GqfblYy+c=;
        b=EDeAiSLNuTqH4C43CjS5GwTkso2Qtky9l++2LVW2fFCMkzlZtrJ6WlQD95j5wfSbud
         HZUYtmxygPBZ6Vngb4nX4E6qUEu/178YSPKmOXNUkljpnnkJZCIxtJvJ4Is540g3kFiu
         BmAhpMc22DQm9Af8VB5C6mtOIPIERI2DbWZm4u7I495FxjKgSp07fFAJWQFL0nHLEt5P
         QYu8QWBSOPaLs2ryw05GPMo36vSPYehJg/bCbTnOmmEXHGdPZu++OKa3ZCZkmJ+8anCF
         qU0oFo40oXTg33ePJC0JWDqbnWcVD3AajG9+KdEB89tEP8bQ/CpERw88QPtnVL9rYQzk
         DmQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712968365; x=1713573165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GxsyMTKANsChLuxDrkmJaktgLM+pVsQuG3GqfblYy+c=;
        b=qo1RgDhA2jXp5EIXLwuFq8OKr5QCJp4pXWVKqqiDEp8jGHFSNOwj3CP0fp39OtfKoF
         t4Ow9NSqa+PyXiGR9IJLqhFzkfyUr/0D1iudFT5fzWdL0sPCzaiHPd4AuR14mbfc/sm7
         kStembjjcdItmDLoxJgp66jq9N60t6pEOu7ZKAesR0ZqqW1gOTHPtFWs1KhQnunwdB75
         OoeeRUMPbG1QDxlXAc8ByGMZAH0OYmekDUOgceZ9bCLL/xQ8EuahY6WvFWe9duSXbQt0
         z3rxdriMWz0UOrifPNhaKlMrIa769l6HKxvg+wEuPevwVfHQudqJ/rz3PchHzGJ3fpZ8
         hH9A==
X-Forwarded-Encrypted: i=1; AJvYcCUz3TCH23P4qnHJx9xlmBQdohVSGV0EY6kdgBGxxPRUQV+KOUetJyMUh32mlOBtthyroBuXLHWDtWMEI1cN5FbHYQJQd3rMcxxdOOYRDv0iSGxF
X-Gm-Message-State: AOJu0YyU+9KjCSSQZ9001LpUMTT83iJhlF/JNlrZR1jsY9oIrZzppv8X
	Tv74nXg4pY+lF6R40LKOzhAyBIT9ZIcsdnlamdpMIkDjW7F/V5A+PLpbJMc2riJF94GYNYmSxxx
	U
X-Google-Smtp-Source: AGHT+IEkNWXvNi+BSDc9at/eU/P3rQB2xk7v0rRabM9OChaVToo3gqnYxXYIGwdXJVnOXaB2E6eCQQ==
X-Received: by 2002:a05:620a:45a4:b0:78e:a3d3:eec1 with SMTP id bp36-20020a05620a45a400b0078ea3d3eec1mr5189213qkb.47.1712967932439;
        Fri, 12 Apr 2024 17:25:32 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:32 -0700 (PDT)
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
Subject: [PATCH v6 07/11] iommu/rockchip: use page allocation function provided by iommu-pages.h
Date: Sat, 13 Apr 2024 00:25:18 +0000
Message-ID: <20240413002522.1101315-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
References: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_173247_281471_CF07247A 
X-CRM114-Status: GOOD (  10.78  )
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
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/rockchip-iommu.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index da79d9f4cf63..4b369419b32c 100644
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
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
