Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4FCEC54791
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9BJYU/UmPFCHYx9DQ2iE4SWjDuR1ewFngsGeeB6dlI=; b=UnSdjEgyWZ5//y
	olxE2K5S5ADwuW6GlchnsbS0bqiTI6SgqXBxVzd3jCBxZsbZwbR0FQiJrVYsJ83Sz1bC4pDvhjMIH
	Vhq653XDkuPY3rh9rwb8Z/hBLiDu41p/yv0aK9KdQCM6xF9djquB0NGNfUhrhNfTbgsothzXoC4wR
	GKiod6OqzVHc4U4Eg0DR2oDG/tI/hi4gYqJOW8hZvTWZkZozbQbpLzkPGaMbwfiaJaRfZ+D40hVBq
	pwcCpaWIpiMjXGiaoMcM0N6GbXlKQZ+TQS/r9rPdmveM4EZ2wex8sJDo1U9jy5JyYWVehgWL2BrWq
	Lno4PZ+0nIGaSsfxsHJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4B-00000005q8X-17nN;
	Thu, 22 Feb 2024 17:41:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD49-00000005q5U-3V7w
	for linux-rockchip@bombadil.infradead.org;
	Thu, 22 Feb 2024 17:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=1VAat8TBDVTapf/cNKrpWJJOpQ7pgkQwxbfklHwcriQ=; b=aoNV8OOUIfT3Y22Aa20pDBrA6G
	l/L7YQ7AKcevQaHj6vr3mvzWR/W9jy85oH7WUIxK4KpyrwCD/8j60ZMETKGVYC+JusHqfzpusTIjn
	X18q57OW9qw6OcM76g+RLy2BPChYWtcUbhrWtFNaLW8170AW7YdeTd+QLp4IbM5axiUFgEof1YgY3
	mTAmQO3Hzgg/nfm8G0ieZ6nn7lCugqtTBzA4j7caCJRTw/d9u51E/21QkSFLvIJ1rrPQTRPOWam3L
	salg5r5HUqapiYFXkgOmpQt2+W4fU8YUPCh1TYbaqpL3yGd8ohRtbdEOn1eC1Zao4drheWrk75v5D
	OUFkBJ0Q==;
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD45-00000004Dnj-42cY
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:41:00 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-42a4516ec5dso62209441cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623592; x=1709228392; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1VAat8TBDVTapf/cNKrpWJJOpQ7pgkQwxbfklHwcriQ=;
        b=pCTYCSkI2Fh/D9bhSCqzOw14nsOaRzEPR3p2SzgDrlow5ACSzZxdZs6Zz86rV8oBQE
         9YzJLUAHa3Um1wZmNkFpIEQUlj40LVJtZ1siEAyrL7a95WgAsOeFKoYEQ9wwNUVdtOcE
         Zi4TqOwYUfED2RyWyGz1OXn/UQyBa9DMsFWrsO9QJiyX1YBmI5G4cDbClFYZzP1p3lmE
         En/RtR2bjXzqZ3pLh1tiUmCnxGkmrcki5Kdi7dE8dOtbmAzM4uZ1Q3qF8oZQk7J1E8/M
         Hx6w8SQLDZUqIftYbTow+K5C3iThleyoO8YU1rWOBYIAGKDI3raafs5z9XTj3tCP5TSs
         Aw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623592; x=1709228392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1VAat8TBDVTapf/cNKrpWJJOpQ7pgkQwxbfklHwcriQ=;
        b=H0fTndBMsALWPS9r1qJj6Faq6Kudk7Fzu+6JJUlQWMBBLsB6fIbhoohylnO+tpAIBH
         F/crmDa78TMvjuljoDKnpoY6W1UbRRuTwscM+4TnqZrKiE0yLyrQK16wFofG2t9gl0oM
         RHlbJdxI5dgDxVQBlABSyzbZS9U2jV+DtJS0USJKDg7sYfJJrqIGJwnNiRV+48hKAkuL
         lJH2trFx4FvIwxwA07aUk1SiaouyCVnUmRKfWiYi+qDmZ9hjPdxdwgQwQpW0mjU719Vt
         VIsKai9kz8FBaA7gCqIIizb9kLfz3Sa3/X4Ts9sW77fsB9XdlK5EY0YLtkz1T2/epd2z
         RlgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWolJqmVXbK4T3b8dH4T67oeR2fMfXsAC1jNwGq3imyZChiuAsFpSwm4TLTguCcYT3qupbhVrySTOJlMNJxzAiwPylLYC+4m4BEh9Rbc+Ofi6gH
X-Gm-Message-State: AOJu0YwjX9kXcbVNAs/NHzqIFQgqywPFPaHDWVQxSeobHKT/hmQLd+yU
	Xb5DlFFX0nKaJWQDUaikSmDS6xhVfGUFYOL85s1BdOI/qiaZtk/SKJy/cqTnFk4=
X-Google-Smtp-Source: AGHT+IHz4D/tAkiJUKSEKYTo9KdtwALGRXWZMTTOk9WSdUZLPjcPPGovrQbnMAx6QcYLnGz/9iyYUQ==
X-Received: by 2002:ac8:5f4c:0:b0:42c:7b12:70eb with SMTP id y12-20020ac85f4c000000b0042c7b1270ebmr25812453qta.3.1708623592225;
        Thu, 22 Feb 2024 09:39:52 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:51 -0800 (PST)
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
Subject: [PATCH v5 07/11] iommu/rockchip: use page allocation function provided by iommu-pages.h
Date: Thu, 22 Feb 2024 17:39:33 +0000
Message-ID: <20240222173942.1481394-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_174058_050286_5B607B24 
X-CRM114-Status: GOOD (  10.48  )
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
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
