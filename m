Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF70C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H70JQjinCFspmojj+eWtfJoUa0BeepF33xNsgFfNh3o=; b=on7SbeR0IBJXax
	yuelvqBAicZDg87Fc3pWv2BS/Rnh5t83Ib4oJrWvgmRRmW56yjTtEHz7hBPhRZyh5pEgsRP5L3tE0
	XN/Zn/kmuY1zsWCs2PEVsTakw+fsunkocrrjuhsmLKDkqlUhlJHdqUVG9iIxLhWR/QMMjljDB3I4p
	RPDdztQhV9OtAXxcRqVXjLyEBFv5uVlvqvWxg1UvcDJzXpSjG+jVbt4HCge1zx0s2N95WgIPs7ueg
	ZeerqPWX0OZ05bBhpeo80orGzBZP3Kk31NWXn0wijNjprbxxR0Gu44I/JoHTB05EA+x+1p9HEH9Mq
	g8qza6CK8KyIYGvbsy2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRR6-00000001qqv-0yfn;
	Sat, 13 Apr 2024 00:40:04 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRR1-00000001qpJ-31bv
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:40:01 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-7d6578e8262so59941239f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712968796; x=1713573596; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=63yVyQgEqo2cT7rWVkBtS9/N+xrka1mo9DBNzoSqbsM=;
        b=yo1LCZllHigKBNs9YjT5RwSG9nGpsqCiM2E/275Ig6jxHd1BcfkOW6vSFnmetT3ruX
         dJiqvBKfpqsC3r1kynzdTWU1Tf8rezgSuEIy9bMBmBOJmWY8xj1k2kxz1HULZf1g44kw
         tci1KnX2qwvtcVgosQcO/14fKh9s2QMzd7oWuMMiJxOxfrtvMLr4B3OFTR406VCJrkef
         Qs5fIke1Fch/GiePpOj3yDmmnH/PYIHBovOgGBXoCQaQjbLeLo/fuxyvuSJiU5KVzbOu
         cNgwYyVP6B0CS8Vsst7lX0Pszmzen3PlTAXQ9wD5wpU/tkPb4pECWv4VaRtMKhsoTodz
         vuPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712968796; x=1713573596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63yVyQgEqo2cT7rWVkBtS9/N+xrka1mo9DBNzoSqbsM=;
        b=Y1fXWRWKfk6SIOq9f9yp58AlDw5I+g6tn3NIXOLRH+bW/ASoPmK5GtH/uCyEXA3guQ
         9Pp82HLYEZ6p4XqnBc6/7UbA4puA0zZbZP2q12CdwTSFH4l20YsS6M+yFZt0eV+dnyID
         8PtBR2Lj/v145FUdzfarQdkcCgyGzgZFDfPNJ4Wndq1CNLhR0dd0cm1iX6c4FjQ0nk1q
         eYjlo7nWAbPKVId6H0desjFF/xwr8SeNiSSa2shWk60ktTKwS+7uXTDxHDlZ0mdrZduW
         l39gRLm6xaNipkaGzvJI8RwuJHh3H7Al5G5y27L+Gu6FzBArHpeViBH7bi9CM80hzvPi
         nCWA==
X-Forwarded-Encrypted: i=1; AJvYcCUs3cWnv4vv5NCHE9Yc8jWq2F61pE7YhEbSapz2eAL0gXTBzN6oD+Go3TQO3rAluSRyCiQQAigezU4h4zd58s8f2jp++IlQbdd7FkLcCtl7ZHgV
X-Gm-Message-State: AOJu0YzpNyYaVw5KKbvFgkVSa0PRxyrwN6xSIOpKOBj+7/Wl2ZAP2hPr
	MkQTcbFidIcLpT92yG7K2RFCUFoNCEzkKZyckdWYWESsdeDgC54+q8nholTsoheiQwI8kFwnfqb
	1
X-Google-Smtp-Source: AGHT+IGmmSLufriFZ7xkUlQYwmHrJvWk6RRFIShCPmF9PtgFnBnMl8wu2EFFWe8ZzLIq79vC6G5l9Q==
X-Received: by 2002:a9d:4d87:0:b0:6eb:5654:d77f with SMTP id u7-20020a9d4d87000000b006eb5654d77fmr4234028otk.15.1712967931426;
        Fri, 12 Apr 2024 17:25:31 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:31 -0700 (PDT)
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
Subject: [PATCH v6 06/11] iommu/exynos: use page allocation function provided by iommu-pages.h
Date: Sat, 13 Apr 2024 00:25:17 +0000
Message-ID: <20240413002522.1101315-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
References: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_173959_773321_ED8605BC 
X-CRM114-Status: UNSURE (   9.36  )
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

Convert iommu/exynos-iommu.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/exynos-iommu.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/exynos-iommu.c b/drivers/iommu/exynos-iommu.c
index d98c9161948a..c666ecab955d 100644
--- a/drivers/iommu/exynos-iommu.c
+++ b/drivers/iommu/exynos-iommu.c
@@ -22,6 +22,8 @@
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
+#include "iommu-pages.h"
+
 typedef u32 sysmmu_iova_t;
 typedef u32 sysmmu_pte_t;
 static struct iommu_domain exynos_identity_domain;
@@ -900,11 +902,11 @@ static struct iommu_domain *exynos_iommu_domain_alloc_paging(struct device *dev)
 	if (!domain)
 		return NULL;
 
-	domain->pgtable = (sysmmu_pte_t *)__get_free_pages(GFP_KERNEL, 2);
+	domain->pgtable = iommu_alloc_pages(GFP_KERNEL, 2);
 	if (!domain->pgtable)
 		goto err_pgtable;
 
-	domain->lv2entcnt = (short *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 1);
+	domain->lv2entcnt = iommu_alloc_pages(GFP_KERNEL, 1);
 	if (!domain->lv2entcnt)
 		goto err_counter;
 
@@ -930,9 +932,9 @@ static struct iommu_domain *exynos_iommu_domain_alloc_paging(struct device *dev)
 	return &domain->domain;
 
 err_lv2ent:
-	free_pages((unsigned long)domain->lv2entcnt, 1);
+	iommu_free_pages(domain->lv2entcnt, 1);
 err_counter:
-	free_pages((unsigned long)domain->pgtable, 2);
+	iommu_free_pages(domain->pgtable, 2);
 err_pgtable:
 	kfree(domain);
 	return NULL;
@@ -973,8 +975,8 @@ static void exynos_iommu_domain_free(struct iommu_domain *iommu_domain)
 					phys_to_virt(base));
 		}
 
-	free_pages((unsigned long)domain->pgtable, 2);
-	free_pages((unsigned long)domain->lv2entcnt, 1);
+	iommu_free_pages(domain->pgtable, 2);
+	iommu_free_pages(domain->lv2entcnt, 1);
 	kfree(domain);
 }
 
-- 
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
