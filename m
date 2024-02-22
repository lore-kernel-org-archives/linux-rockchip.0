Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6280C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzPvRA0gFrutB2T9jXGasbMI3BxJSjt0RryDgYL4MOk=; b=2goEzdoMa1BvTs
	k1mUeikiFGCoSwPL3dJW2qpqcpQ07p0NDzuWK42Re2KGjDw9Afvp7h/d4csCvJ/4XTpMQEfEiZ8aZ
	ezNhhjL7OIwamezGpqqpbE+cImeVnj7tgfK2QuzDoIkQD4LmevNVeWETREgUWPVqYceLvXqebmDhF
	+QoBtRMJ9eR27gOFWEVTp5/EQyUclsQhVr7qk2Qe+RS0xQEw40nkALJwof+gLaVlbwDKmO5aAz4Fx
	tKJfZWOVDKLUsIR0GfzasjawRU00dGBHDDTyOdIwoqwueQI1vRCaG72AArWu2gch8da+BPg1+hq+i
	XQbz/Lba3dXdzJL5olcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD48-00000005q4x-2cWl;
	Thu, 22 Feb 2024 17:41:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD46-00000005q1n-0Xc4
	for linux-rockchip@bombadil.infradead.org;
	Thu, 22 Feb 2024 17:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=xhLjauiol2hX/CcN6wSXepYqvX9ekQ41OuBb1dZBQzE=; b=VI1kErhte+r67yhuCNs18JYd6z
	vssCcE7J7V7UCKGUNVw6DFUXlARQeeKzXNVt8511EIwZ8IWNNEZPh57N/zXvqasgLjZ3ET4UrFcuo
	nhFDojQ3dk9paU8GyGEIDonuUWx5idNPEOuiZ4zPpkUFsK/mf/rWbfFvEj9ji06DVQlQMy/FIUy21
	OjBFhsS1FVry/0DjNy6MjJRPSR1zT9knOozBsA+U01hB9+G0SWXOAFOoiI/zTs99X2JptQWDAM77x
	FIzeND4hipGi9b3amCDh2+xbtFjXRJ6BpDYdehxbwL44ASOd7aLb3gu+HukTVCcaztwo8233Nnmci
	Wg/q1jmw==;
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD43-00000004DmK-0PL7
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:40:57 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-42a4516ec5dso62209141cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623590; x=1709228390; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xhLjauiol2hX/CcN6wSXepYqvX9ekQ41OuBb1dZBQzE=;
        b=p5PVt0UqsO7gtQVusyNcCmDcaxyB3AAOtBGengvG0/saB3EnSK1JpCBUsu6OJYX0RE
         BW+gYK0Rq4p95nOqWfTsO7HRISVS1nHe/V3fzypENgNG0/5DMfl2AZBvvRHMqWPjSLya
         y0NJMEkWePz0A6cXfvvYFC0W7koLOjXj54YuwyTXuZWw87ZplHQyuyVw3nkYU70JAquu
         oAF4yod/2zZWwuFc+2aMTBfUHamYWTU35ABLtbD2bgstsFNp+2fpkcsWHv8I0+1lv4Z6
         2yO7lfT6ar52I3Gv7oVy5prHSxtvWcFM7w8xKVobeiqWmL12D33OKm2HwZNtamIjPm/I
         000Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623590; x=1709228390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhLjauiol2hX/CcN6wSXepYqvX9ekQ41OuBb1dZBQzE=;
        b=YCrzayCrvaZDCMA8EOtePb3Df47FpWj4AuWL5cd/2Z4wkY3ajvdrMVwcjS5XE4XIVe
         zQzY1IFyF/MNutHeqnxnoB+t2yP5RSQOofVJJ2dfJNp9XAp2h30UXsSCy5s7tKi8q2k6
         UWVIwxwYEC8rSe2khXJhuoEgHttY8DyRarxY41pqcIZ7xG8JkuPwv/UTF9Eg3L0kpO8B
         ebLQoCFgBaHbMzcEJKvtq/rsAenVrNkDqMgpx0Zs5dmTwEvHqrBZ2sfnV3DvHv/WRa3F
         f4K7geKO4wWIIdzHnZQSRld/LJ/wvlFxnQU0bYSR8YiCcDVKFKZf3kSQGsFDRXXNduqG
         EyjA==
X-Forwarded-Encrypted: i=1; AJvYcCXinTbwW1y4D3Su+BX+Brbqs3t1AAJPS13qfZ73GlyC2wtN0zxH43cEIVuEt4r0J4GodPHlR30tTn+qyklDrTa/MWZnq/md4rhBxFpHqaRCrFMJ
X-Gm-Message-State: AOJu0YyTg/loYxZtJKyTsal5p9k1d5ZG8FtYo95ZLbqu4Mu6FkZB/tp3
	PrTa0+jfiY7l5R0A+dTip9MeilpJK2CrASEBiyyunJS+D+IUGuiv3svD6dVDjgM=
X-Google-Smtp-Source: AGHT+IEp4MwFnGzbjUWvOKNS7CvUx1mMeLXTjvER84y2unxVOxwU99/U/wStbNygCnfZAxx//dKL9w==
X-Received: by 2002:ac8:5b84:0:b0:42e:3bf2:89ce with SMTP id a4-20020ac85b84000000b0042e3bf289cemr5044762qta.49.1708623590514;
        Thu, 22 Feb 2024 09:39:50 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:50 -0800 (PST)
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
Subject: [PATCH v5 05/11] iommu/io-pgtable-dart: use page allocation function provided by iommu-pages.h
Date: Thu, 22 Feb 2024 17:39:31 +0000
Message-ID: <20240222173942.1481394-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_174055_183710_781E7DE7 
X-CRM114-Status: GOOD (  13.54  )
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
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
