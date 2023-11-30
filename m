Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44432C10DCE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 20:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHG7/fVy9ihxzYGEcMQ7FYqo7pn+Rxjbc13BBcalPtM=; b=nRMi1/hSIEM9J4
	RVF6A9cezyixNJJYj+SEhob4YxOp0Zass9SObCOu9X3NaztkS9BmbnQiF5NGGVy7LdQ0/fBvWQ5RU
	dFfYjEztwkLLP4Ad6zOE46i2m03KQTX105jUIuhsmJfxp8f3DgmVVKZfZ2Ge8wRQYyvkBgqFL5VAp
	sW/Nwv96dQDvIC5IwdfOz5hDsrTdD/3Q1wsbdzWPEEpijNTZOjuo3ubYmgFU14hTZDDJhQXOFAO16
	dX1EOOwWr4wjU4Xst8VDBgEGcodbMvlr0/nijEutYz46nZyNJPAD/oKERP+JmhZ0yxCwHD3WHu8e4
	mKwSoQ02H9PjaDxpc9Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRS-00Bohi-2s;
	Thu, 30 Nov 2023 20:15:22 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRK-00BoZN-0R
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:19 +0000
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-77dce4d41d5so65687385a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375312; x=1701980112; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jRGmXGqyJzQ9dzCxzy8J7vcwlH74KXpuX5+P/ckDUHQ=;
        b=SsP3Cnqnh48HlLY/Kkd4Sebh/JVt2zuhBsWlSuQC7NgzFUGOCjBODLOrf31cAIVE+w
         UgK6LhJ6eawcjtcPrnof/IjkJen42f90325hR0ryBfolatTzxYog6lYQUGaWcNYjAjRx
         C4MWcqOmQDb5I2BzjsS9Uw2oRiRomw8nXXa+GoDdgwrnlezDzEjeYK2g3GrS1b/ywQm9
         /pzJklREvO9fHubwJuF64aaTyBkAJxr1HYNZ95BIZGItyWc+LcBwwFLjdskyDBPilh53
         04CJvZjgT7HfgdSP60QEPI7jAb9Tdk3jNHWJkCnfdfjL7JwrtjTwQbfbpy+WkAXmlFsW
         9NhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375312; x=1701980112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jRGmXGqyJzQ9dzCxzy8J7vcwlH74KXpuX5+P/ckDUHQ=;
        b=PZHNHRBied9WDDmpXw0h0n1HJp+7e4Jm9HkwVud8sI9X4tT8wPR8gVxXbvi6tVLqwl
         iuJG0YhWu63ig+d+kftEy/GqL6jcrBIY5yBkBoxtPggixWd3VguaVfLQDiCZ5eRFdT0I
         g/AWYR7Bngj7ye9P4ZjnSGiJlzIPFTeXhN51FyQfPm4Xzsaiu2d5cxfRzGRTwHKFDk8y
         uodUoKKCiiN6gj5XZD4rfbiSg3Erzl2mhkkGZKqiTJuLVukxViFgRz04U8r/hsLx+Jnd
         odq3cE7lkkRdFg/md95YABthl0yYuhqWEPgJQI/VvKyhT+Y8i4SkW7+taYQwvQN8LBDd
         aa1g==
X-Gm-Message-State: AOJu0Yw9PU8sUgsDnJSasaPITGr5aHcvj8mPNAcM6n7XxbXcK3qmJAFH
	FVKJAZrfm7+3hvYrbfCx3aaOTQ==
X-Google-Smtp-Source: AGHT+IGcwSJfMg7Wvu1IirdGyJp85Q7AXnz+gps4Wsq6RDzrMQCHyomSRCyLZSC9k8WgNjE2V5K0wQ==
X-Received: by 2002:a05:6214:2e11:b0:67a:93fa:b331 with SMTP id mx17-20020a0562142e1100b0067a93fab331mr288846qvb.6.1701375312521;
        Thu, 30 Nov 2023 12:15:12 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:12 -0800 (PST)
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
Subject: [PATCH v2 05/10] iommu/exynos: use page allocation function provided by iommu-pages.h
Date: Thu, 30 Nov 2023 20:14:59 +0000
Message-ID: <20231130201504.2322355-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_121514_190738_FE7B5F98 
X-CRM114-Status: UNSURE (   9.93  )
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
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
