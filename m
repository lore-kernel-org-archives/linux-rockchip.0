Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB48EC4829E
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IYOTCq3c6GRe+vnwAjTYJ4DQQjWqINrFCs45XNrLmY=; b=daCCf1Ch6HQwE0
	weJ+5bgssDQm4Br5a7OZl+P/vMsfmfsDt0fEeIZ643LPI/qF5AxfKV17b+aq5URHjk/JcUjmg8goG
	hXQD+JvSsVQtbetzllVtsz0S1QRmuxoXVbpP5O/wz7Hxi2HjhAZ7fq5BZFUFHbKSjKfSCfi+CAKWZ
	GjP8zx9k5gy391UHCNXTi9u3xlfWlijCC2hL9DgwPBr8iWsUpdgso98r/JfkkWYOvgh0xGIu2V6OQ
	loZKEJUD+PQEIoCsMwOO1iYSWxA0FdDeaitnj/2T2k0LigJ6aqBh4P5CdchnC0RPlSnggk+SGSfe7
	TsgOWpOqvk1YHVPW0WFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvG-0000000BKNd-2Or0;
	Wed, 07 Feb 2024 17:41:22 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlv9-0000000BKF3-3VK6
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:17 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-783f3d27bfbso41680985a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327675; x=1707932475; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xz6G05O4wA+60kCmvmgiGx9JBrU5EV4e3uvGda8jyEo=;
        b=QZa9bltu+NhMv++XFyO9Twnw1x0jO4tPCrCKHrXF+fnu1Bfv6lzMxTVsyY+G1ZR5Bc
         STnM2LyO1VoDiPmuVG68VJ0+by9Mj8eEh3C9c23+QwslXB/r6SCyynegHaxELFbgaSen
         EA/rtGn8CDrVV6d4bn16/Y/yofXKk3SMtU0mOVX+N+j8UZIB725PhsEQGj3+cGeDfvPt
         A+3l2pLPUJKltEAd+1nkLtz3YHFcwqyjyi7uA/CPcux6vrqsBkEMMojBAMJ2PPpp0pPq
         d2I8lrYFGuQDLMIj6yz9WG2bFc6t+dckbHhNt41tTg56v84vIPgWCQoqWEwNW5Z2BGsy
         zaHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327675; x=1707932475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xz6G05O4wA+60kCmvmgiGx9JBrU5EV4e3uvGda8jyEo=;
        b=wBg1mW9yExot4CI7lEWNlf8MYp2Ix66eL20csCcPvfhYqsdBDFmN02sCaFgI5cWyzh
         nICBrmrnzw5rJuYtD3xFUb+Uw74Wt/6Nfb0371voNXxOtxrKP8vAfSZC11Y0NR8J81ee
         SA9hPIO4elnr8ROtFMUtNwBbsiFTtbNSseoZ+17UtquACG9VvNrocRPL+bULcr+lVabe
         LOy+pMbpFXPvyT7lZe/4TRrh2AKg3/TMzY8bBIUV29QBC7kccxFWYwouxUQ9E5ynZ1jZ
         KTmqHfwoH4tSTBPLszyZl8/9tHdRcLY+dhisc0ZnjaqP9HwOlzOq9dN3ig+QJUsznPAU
         jcuw==
X-Forwarded-Encrypted: i=1; AJvYcCWwgeHSqEX7wJHjk845Z1DuksMO83D7PagPtmBTuq1de1pUljT4AZOvjoMasa0az7ywsM69yHa9pFF1oCX4+Bh/IAzCC3iiUqDWidvSG6Z6mYue
X-Gm-Message-State: AOJu0YyZsOReYXArlKsfrF0Ajb7yW5zMPZrO3NDwdNDxPdnmI6et+fWD
	HGC0pFNZJi+a/srb6r6Kpw2hJ5VyAmluyNmEkPThlP7TW1r7hmBprDh+GRn3yI4=
X-Google-Smtp-Source: AGHT+IGm7HEOEjYyU6ceEAyCJbj5ZSiZHtVoT/GGu/ljbSy4K2SHMHGE1ZU+Mc3GOvN+MGgdJxPt7Q==
X-Received: by 2002:a05:620a:458f:b0:783:c945:f774 with SMTP id bp15-20020a05620a458f00b00783c945f774mr7801189qkb.16.1707327674945;
        Wed, 07 Feb 2024 09:41:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVrjHWstAmPKNKmmOZss+LrnMGoMozP5bewBJMtBvsxnSH4qAA9cpPi1oYJJyh0BUiRXx8vEuPicCaLWIj7WkRsbPVXs5pF2kWy9iUO8oTShW2B8fsnkt7jYBRZir8Fz5+c72ScE95t4q5LHZ9pZO7lVdBZaewRpE/NRTtfPSseusbUyGGDy6h+O4ovY7nXnFPIJ86SUz3Dtek5Hgc7y2J+Z+WTwUQs9aZpp8P8Z9mAsQP7dpGv5qpZgJJc+KhJ+3YbNawEbDn6BoSaBFcWYvC2iawUphmoa955poBq4d8NK0bieLstlnhd0+F4aMp03PTWFtKgeeGN5BNwOh+yuYSDzJGEgx+Q5FLBw8GUMq8ADEBNdGsxltHxrZkxkDb2Xzr59XaH5uUTXdxZtdNzyKd/WvxprwrkKL/Y0V496ab8itUl+7v63ZAXPuiao/r15D99xjNwwYyQ8MaIZMWx5oBm0W4viPnDezsxhm1S6ldjOX2GYSvbBKZjZKgO8JfaqW7YgAadHrhnWydYP7q897L26rp4R+PTyEyDm1Ttr1BvzrEkF14wY7DMd4cE9vnRmgyMpc9MIV1AS8Yeol//B7sedMHGx9YUlhHmMld6IvICVHr9cPlSBhKJhEgP95TiG37l5tWnPBTjqAnvQXaQ3/ssibX8uYPmb2YjK65W4/kv6al+yX4cpi8g1qWOJc/jWs0DVzguf/yN9hfoKE+C5iMFHsXGhQa+lvEGly3VLu8DY96oAirk3p7ee+Vr4Nq1Eem+lyudfRY8QGxu3vMiiocWWsFzPg+N0ka5b3Ss0zDaGpOtLPitRJvp9TSELiK4t5+VNOo5T7rOmnLnYkmtovz4hQgWWiD7cFKVpP8pPPeuXJf+RIb459I54+kbjtiIBSnxktVzV12pdR/i32lYdnVpfsSTS2IeyOGtJQzkFdR4D+1gKDfQFxHWHeFI5zESLmyLNW
 Ao7b6FgzEQATp9gXBFjnlk2upisqGrCNtgs4ViYBAYCn9VIpKTTVJx8QL1GCc6lwCUdWzqqZUFQlS3tf8uWIjDjC6W1SRrYk4pE1Y7e8reWeyw9aF+as40OW4Ezw8RGpi0muxi4Y1aZNhTeh56EfSELm+bOXEfcS787PLN7zzTynHNy2FN+1NnoUfBaolqV9bj4KixvnEsdzHzOZstfc5xGz2ZLCGLAhOGO7jdNWScuTX7NExkhEbv3PnLl9I73PUAjg+brm+juf8r9qQgk+jmy4lk6xDFQ7ssb2ubfZ9vQvNU2uJBgWMc4JqfaH5NW72z05Ap4JDXNghrCFVpeYufB7XyHzfwtAT+J8ApXxOu9QYjpzOWKVDxbi68ugpqpPv65NucRhhZdFJ9QHW8MZrIvjX6h2JEqzGbspJ+yissL6+wfnzJmBK8zVJlAOnxnmzfF5TCDMHoHoER7Lr1dMpSAzmj0/EAtm4Af6trtfEIkamc
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:14 -0800 (PST)
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
Subject: [PATCH v4 06/10] iommu/rockchip: use page allocation function provided by iommu-pages.h
Date: Wed,  7 Feb 2024 17:40:58 +0000
Message-ID: <20240207174102.1486130-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094116_031312_59E91B09 
X-CRM114-Status: GOOD (  11.04  )
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
2.43.0.594.gd9cf4e227d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
