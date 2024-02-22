Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 494B6C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hImvPxw4ElZ/dS2oO9DMBPQTS0PSPY6wX/fERf1LuaA=; b=siruvZVHNGYA7a
	yi6y/cZOYvaQWzDOPYOV3LdN4l58mgIAEMHpd6kZDGzYmv30H+b3zN/UHS650Mwxidfkje5GIeuqZ
	EW4JfIjiLgGrEO0VFbYdO9bEYUwNF5wMkGvDTx42R4Y3+S59qnwojVgwQ0AyngpF/gDft5wO4atCC
	vOp1gHALAFFZEr0c0LNr4R1PyYl2A230jtICyQhWZ5dNjuVj3Y5o+sGkhAF7xj0mTe3Sx2MSOSQcE
	ndjSA4qkpSyY614xusBPpa/MOXtsFkJ3tz2zfjpoGoK8utUAvrtDODRq6u3ad1PT4dX2TJxOQwVnV
	BJj31YiW7wd3NNbnxyFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4D-00000005qBU-2iNK;
	Thu, 22 Feb 2024 17:41:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4B-00000005q86-2aoZ
	for linux-rockchip@bombadil.infradead.org;
	Thu, 22 Feb 2024 17:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=g7w3BmgXmvWecR5SKtsZ1cNA/rDbNvV1OeS7wJNdwTQ=; b=VEZn1EJFuLZXNJwQENFpYITNxh
	hv/0WDgecTTb1b2ByJgP5YqOBr0/B7u0ySebPW99TVbD1UXLN397OUeMbzHIpJ3ezdZvDw+TSdR3Y
	3BesXtVo24AOH+Ewxl0qViSBfEgZJvp0ij9DLwMiBrDJDgLp8zjRlEPqQf7sMGc+rEsJOH79AaWRl
	YmJcvqVtX2IItItEc0uuSYMebB5je9YqAQvjL1mWqZwEczcs3/GcR44IwlvYuMMY5wHKbbhQUm2oE
	qBlr2k4yCiOYcbNeuzX29NdjT2Yezi6NBI4N8XP170cTDqsairBPw1AWGdtgcJAMLRxZN57FyB6O/
	MkAzyRYQ==;
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD45-00000004Dnq-43A3
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:41:02 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-42c758f075dso10246951cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623591; x=1709228391; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g7w3BmgXmvWecR5SKtsZ1cNA/rDbNvV1OeS7wJNdwTQ=;
        b=k9RH59x7yzXDMdWcP5k6FToKK554MnvOLc9ckAApIYvC6FpKp3JmaTHrMHqvq36YIY
         x6LJ5Fb8dprPhafNgnmAHsiahSmXaYpU+Pf+4mOVT/fHerUFhdUVM08MbBOmkpbLpbY5
         F9XbKqTj/fRorvuDKhb5H23GZuoHJ4aLazAsqV565fyoD6qNZTqYgDTyqQxHCcVf5sec
         BC+r9V5tHSTmC85F+u/JSp80nRbxeARZ8PS0Dj+BeyuQ0oWbKrFqcKzCFMs42Dg7qx3f
         Fe9/cIzxt6l0RZ7JUR5JDM4xvJIZoguyKN02VijeBwZxUEWzqrAxclOyHvabaX3vJsP9
         nZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623591; x=1709228391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g7w3BmgXmvWecR5SKtsZ1cNA/rDbNvV1OeS7wJNdwTQ=;
        b=UTP90S1E31ha33GwRJULncgm+RxCQkkrlb2hgTH/ACzR4yQXzwPCR4PBZY8bxhlLxJ
         GVTBu1jDI3ZFtoK5TEPa1PwhTbqS8d0rKapIr1QSpycmC3srE+UswRv2woCC0F0k0XdN
         +uAaXoN4HQKV4aP0mdZrUy+2YUeFLjlRuhv87HjJNHu/YpuXYeWayyVOT5cbXWGQllPU
         gbV1ke7DNGHlUdAueQj2h7txa0rWxbg3a4qCoUO/YumABo8njNcK4bW8c2hhRIAXCngd
         FyybhYeug1O/LyZMzPuS1Mw/vs1nm9cD6iTAcVN0B4LMoBIhIJX72o0fn5WhmTAuJT6z
         5AJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9Qd61oW7ipT7+ntyuOv98J32a1fjlS5xTDGq2tqKuzs3E5XhiRglZYgr98sJRth6HmdCGvl41YU7RwiEr5e+3lBqzwcvD2UkXFP568bYUyYTZ
X-Gm-Message-State: AOJu0YysJg3+PGbAGwexCt7lnfxu8S5P5hAv4n1NFkm5ZCatzaMRyJV3
	wCNVJx+Lzl7YwWiOxotjBuItGkvwhDa11xbsdZ+lsKLapJXed4BNwU78Nui21Ts=
X-Google-Smtp-Source: AGHT+IG90zBa6YLMZGIfCYT7Th/1b5UWVffhOhrq9tGqR1mvmgjPkxAiIwv1iDqI+0/4uYQJoXyfRA==
X-Received: by 2002:ac8:4e82:0:b0:42c:8054:8a with SMTP id 2-20020ac84e82000000b0042c8054008amr5212735qtp.27.1708623591384;
        Thu, 22 Feb 2024 09:39:51 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.50
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
Subject: [PATCH v5 06/11] iommu/exynos: use page allocation function provided by iommu-pages.h
Date: Thu, 22 Feb 2024 17:39:32 +0000
Message-ID: <20240222173942.1481394-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_174058_104903_796A630C 
X-CRM114-Status: UNSURE (   8.96  )
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
index 2c6e9094f1e9..3eab0ae65a4f 100644
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
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
