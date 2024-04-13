Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51D2BC04FF9
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5LtM8MxiqYjSrGxPim5ke+8d+fwDVQxwsMG83XuaYk=; b=BSGdBMZNuFVPoC
	mkSopFY00Vf8ei8PVnwDNczbNH0wqXBAesuX+By73sLJiq0iUWa11MYJkrcPuxJMp+AoC1CTukWcm
	Gy28VOzklY3ojM8EIsTD5pGlojieguw4Rfj9Y7hg2TveNSgDuYMapTI69fi534LIKBIROg1Y1ncME
	d2lLVMIix1eSQ567TqDLDXJJIhPWJgfZ3HzpyR8Zd4RwraCKsFHoFdvsu+TqsOpUHaVLkWG1Y0ZQ2
	zCNxnqbF3Lp/yJzYjgv3AR3N/IdAyCXIbQVKTXq/VUmcLH7hL+GTMkZ6r4ChvFqtctoxRJ2cVG/Ie
	neuRxTK1hsqk7OPAeHHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRK6-00000001pm0-47rU;
	Sat, 13 Apr 2024 00:32:50 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRK3-00000001phb-2p79
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:32:49 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4346b686dbdso7463181cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712968365; x=1713573165; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BdzMORim0dHB7uEOtMEVFDL6Z2C9ADZmlFONNgiqMWY=;
        b=nwFsXXovOxVCTPNX2dokh4YEOY37way1qzyNekqE7UMppUO+sSZBo2b37Y6z/8TV40
         idVSPOqduw/MbRPa3Xa18iGWaRgunHWHnIecRlq8lG+jEYsnysOjtbCwcXfkJbW9uWpp
         K24MUFVaqU9QeARVVryeQpCfv/wk63wqyo567GrjMrgA5WJo433SzfKkJo/sBi5Ri2wS
         1UeaxxTwT5cP/UjHnTUgMiWt2+P2GNXlGhArF8XLAn1kMp6AQS8Q+aDHUB2920mQ6Pst
         n34z3mcQraLW3ro+PPxLpMMtnZ7uMoPagwAQRFB56m1JCIL+7gVd++VDovIEKWvlFMh0
         2ixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712968365; x=1713573165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BdzMORim0dHB7uEOtMEVFDL6Z2C9ADZmlFONNgiqMWY=;
        b=PTXyMJfArveN4JnxCah/R1VgX8mDJ+HQudu2mv4Gu0qz8tvr/6nZgNS3u2+T88WMAe
         xozGBZQAJ6e5V2npRodQawOJlD/Kqq5cF0O59dBmhUu1P/50XFOaUoKMucoapySUrtpI
         cDD9sNGXDeT+BiKc5pbZgflfitlYPOSleNQfN1G3kZYlWNW8QH6NSBEwEaSYC45tEGNd
         tNV2Ic76Se7LPEl8sCMdC42HSSWHznwulbNOtqWPjYgFClP6J4CqOvCdTOSszhCzIYhs
         M+MdIZ/XdTz6oh3LPx5Nz0p1NG+5dZs/sqm3ZZLaQpzv24Vmf+RSMe0XsBAwcIxZfNMb
         c4cg==
X-Forwarded-Encrypted: i=1; AJvYcCVxlKdgMdB4j8B6vjaJ886Q+PdO/YYCUgUrlRwTTDhct07xg+oQLm9lf10NwhRne1sKD/hnxCTsc2YNCuxJ3Aa+GOKwjzd5V5g5zNj/JqC6dqeR
X-Gm-Message-State: AOJu0YwOs90+T0yJp6xTrQzMF2c5T+iGMUlHbAFLy5x3hzVrNpCTiQ97
	pEmoO5CuGCxZ1oFEKYqVAxN7eYFi3rJzgFqqPkAS/OryUM3LrilNuo3HqC1Pfll3H/QbckExdkK
	f
X-Google-Smtp-Source: AGHT+IH5Os3iRz2ANP4F2z0zw+BDU7+6X7QWkqdDRIDhPQUP0t1/fto88yhC6Si55lvEExsYEHVs9w==
X-Received: by 2002:a05:620a:28d6:b0:78e:d7dc:44ff with SMTP id l22-20020a05620a28d600b0078ed7dc44ffmr198409qkp.75.1712967930559;
        Fri, 12 Apr 2024 17:25:30 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:30 -0700 (PDT)
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
Subject: [PATCH v6 05/11] iommu/io-pgtable-dart: use page allocation function provided by iommu-pages.h
Date: Sat, 13 Apr 2024 00:25:16 +0000
Message-ID: <20240413002522.1101315-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
References: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_173247_738858_9FC53E8D 
X-CRM114-Status: GOOD (  12.45  )
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

Convert iommu/io-pgtable-dart.c to use the new page allocation functions
provided in iommu-pages.h., and remove unnecessary struct io_pgtable_cfg
argument from __dart_alloc_pages().

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Janne Grunau <j@jannau.net>
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/io-pgtable-dart.c | 37 +++++++++++++--------------------
 1 file changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/iommu/io-pgtable-dart.c b/drivers/iommu/io-pgtable-dart.c
index 74b1ef2b96be..ad28031e1e93 100644
--- a/drivers/iommu/io-pgtable-dart.c
+++ b/drivers/iommu/io-pgtable-dart.c
@@ -23,6 +23,7 @@
 #include <linux/types.h>
 
 #include <asm/barrier.h>
+#include "iommu-pages.h"
 
 #define DART1_MAX_ADDR_BITS	36
 
@@ -106,18 +107,12 @@ static phys_addr_t iopte_to_paddr(dart_iopte pte,
 	return paddr;
 }
 
-static void *__dart_alloc_pages(size_t size, gfp_t gfp,
-				    struct io_pgtable_cfg *cfg)
+static void *__dart_alloc_pages(size_t size, gfp_t gfp)
 {
 	int order = get_order(size);
-	struct page *p;
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
-	p = alloc_pages(gfp | __GFP_ZERO, order);
-	if (!p)
-		return NULL;
-
-	return page_address(p);
+	return iommu_alloc_pages(gfp, order);
 }
 
 static int dart_init_pte(struct dart_io_pgtable *data,
@@ -262,13 +257,13 @@ static int dart_map_pages(struct io_pgtable_ops *ops, unsigned long iova,
 
 	/* no L2 table present */
 	if (!pte) {
-		cptep = __dart_alloc_pages(tblsz, gfp, cfg);
+		cptep = __dart_alloc_pages(tblsz, gfp);
 		if (!cptep)
 			return -ENOMEM;
 
 		pte = dart_install_table(cptep, ptep, 0, data);
 		if (pte)
-			free_pages((unsigned long)cptep, get_order(tblsz));
+			iommu_free_pages(cptep, get_order(tblsz));
 
 		/* L2 table is present (now) */
 		pte = READ_ONCE(*ptep);
@@ -419,8 +414,7 @@ apple_dart_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	cfg->apple_dart_cfg.n_ttbrs = 1 << data->tbl_bits;
 
 	for (i = 0; i < cfg->apple_dart_cfg.n_ttbrs; ++i) {
-		data->pgd[i] = __dart_alloc_pages(DART_GRANULE(data), GFP_KERNEL,
-					   cfg);
+		data->pgd[i] = __dart_alloc_pages(DART_GRANULE(data), GFP_KERNEL);
 		if (!data->pgd[i])
 			goto out_free_data;
 		cfg->apple_dart_cfg.ttbr[i] = virt_to_phys(data->pgd[i]);
@@ -429,9 +423,10 @@ apple_dart_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	return &data->iop;
 
 out_free_data:
-	while (--i >= 0)
-		free_pages((unsigned long)data->pgd[i],
-			   get_order(DART_GRANULE(data)));
+	while (--i >= 0) {
+		iommu_free_pages(data->pgd[i],
+				 get_order(DART_GRANULE(data)));
+	}
 	kfree(data);
 	return NULL;
 }
@@ -439,6 +434,7 @@ apple_dart_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 static void apple_dart_free_pgtable(struct io_pgtable *iop)
 {
 	struct dart_io_pgtable *data = io_pgtable_to_data(iop);
+	int order = get_order(DART_GRANULE(data));
 	dart_iopte *ptep, *end;
 	int i;
 
@@ -449,15 +445,10 @@ static void apple_dart_free_pgtable(struct io_pgtable *iop)
 		while (ptep != end) {
 			dart_iopte pte = *ptep++;
 
-			if (pte) {
-				unsigned long page =
-					(unsigned long)iopte_deref(pte, data);
-
-				free_pages(page, get_order(DART_GRANULE(data)));
-			}
+			if (pte)
+				iommu_free_pages(iopte_deref(pte, data), order);
 		}
-		free_pages((unsigned long)data->pgd[i],
-			   get_order(DART_GRANULE(data)));
+		iommu_free_pages(data->pgd[i], order);
 	}
 
 	kfree(data);
-- 
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
