Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E2FC07E97
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHG7/fVy9ihxzYGEcMQ7FYqo7pn+Rxjbc13BBcalPtM=; b=1wRtW41ZihHFxT
	E5ZHryzlM3IaWq8WGnvwS4q3PJIGl1HOiQahGIBkbPqUWf312+EjRx+UQK4b8tmuBv+1KvwVLKPVB
	HvjuWoK512V1xoxNSq8c8UFj6qaj/GP8B8GEW4ghOl6WrUmCEp9M+QhG2/wVx5DknIbGhSGHySb6l
	+zdHrPHauHBqI8laVH+NDddJVqH336cQzxy+FCDIWOtbvs1e5cSmxsmfuRNoYxnHnFxeHx9Qlr/JQ
	mWIllCRjNaxxKzmmdCXzPMkK12y1rwg24s3JxxYEyJ/jdmUls1L1P5vc2N8Qg/KpGS1o7MqxP6vDi
	3wqX6hQ0r0RM7CCfihLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r853G-006J2n-0m;
	Tue, 28 Nov 2023 20:51:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r853D-006J1I-05
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=jRGmXGqyJzQ9dzCxzy8J7vcwlH74KXpuX5+P/ckDUHQ=; b=g568lJWbGpvQuSbgLA+yKynWWS
	7dJqXKMhDlrYrm5aqWT5uGq0MHrGG5pRyl95tEXTgk8VH3knZOlpE5Q2QXwr0E6g2QNOqqr9La4qN
	0vBT1NzRuk+EaXgH792VnPVUZ7NMiS2f1OoLxEnWxfVN2zaZ5+VM+RcgVkP3buuAah3plYH0w2WxY
	OF84wZYvWn5qAJVINnNGso6o9RevZVvH3c7ZuCcBCdBUfZT2kU6VGO5ZbomO8XJs7ULOV8kR6WUFk
	+rUiiR7RDmhvJrqqqv3XuO6iCIwgV9SahfkpKrGc291lHQKIQX5yT2eFFijjFGJY7pf08xvaVmlRL
	K/mbO8gw==;
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851l-00Gis1-2S
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:51:21 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d9beb865a40so5406333276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204588; x=1701809388; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jRGmXGqyJzQ9dzCxzy8J7vcwlH74KXpuX5+P/ckDUHQ=;
        b=e8mpo1Lbal3PwZSo0ksHXO/pT4IEtmzdjHJWp2tvnEGyDx+hJQqf+KrMI/zfOoXVxz
         JSY4XQ3ncglGXfWyy1d1cKkGbc9W7tr1uaaLSIF5hv99+Md0954bcSJ61hydBm4LsIMN
         MUp/kETAnbZoI+24XBBF4ZCG9YF7NSJYN+7oqLzSXE3QeTns3zvLIjxDI6tQPSCylbT1
         fpTjrd3vFKC4ximcLIQCsoQbSR+Ex5SSfTavuIn9GgwgtMftAb7HkuClQYwsG3cXL+wn
         TYG1qh88SccV8bgCwXjhqpCvPx7xTbApQYZDy6QgmyxmT1PyI7K7xCnGNEafsjcDSpJ9
         70QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204588; x=1701809388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jRGmXGqyJzQ9dzCxzy8J7vcwlH74KXpuX5+P/ckDUHQ=;
        b=kb8MmVDW9dZ9AySCIE/PMZ3omY4t2PD9l6xxkg2Ax+AwBmsO94UKm+RCGXyv1F6HHv
         tQsWuOYd8aEOOCE2TfIQz/ad4AJnNw1xgLs2wm1VFmVl74qFRVNbZOsXaFoaecwHUjwB
         n0IteTTKNwryXEtIiAiPVoifpW1LbOVZ8SluAajYKgh9sX3LDmhAqOEkn/8wX5Js3UDh
         Ff9UgWXNGGzWs8SWkqB/bXkzqlQG5gBzmJxu63pN1eXNE6SN3ZKa7MauEPAJ9cYE8HMR
         vq5P+kyFMLzY8/WUbnq3D7kfKN+I7JXJv11BhIr8CrKSzDOqvCVXzVxJnSKRNhnSYVmw
         jBaA==
X-Gm-Message-State: AOJu0YwgglPxEAOO/D67XKelh/JKd4RGU0PyZGnao+7LMn68RAcMGNx/
	dXuR4T7Rn+86nZ9+WaTOE4uEmA==
X-Google-Smtp-Source: AGHT+IE78UUsr3+phF/56bFMU/5eN5UKiQDczVpHvT25XLH3DszV1HuF5Eb6PvW6XiPusog1uQd9qQ==
X-Received: by 2002:a05:6902:20f:b0:da0:c615:e4a6 with SMTP id j15-20020a056902020f00b00da0c615e4a6mr16658576ybs.24.1701204587831;
        Tue, 28 Nov 2023 12:49:47 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:47 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alex.williamson@redhat.com,
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
	jasowang@redhat.com,
	jernej.skrabec@gmail.com,
	jgg@ziepe.ca,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	kevin.tian@intel.com,
	krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
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
	mst@redhat.com,
	m.szyprowski@samsung.com,
	netdev@vger.kernel.org,
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
	virtualization@lists.linux.dev,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com
Subject: [PATCH 07/16] iommu/exynos: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:29 +0000
Message-ID: <20231128204938.1453583-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204954_283331_4232D517 
X-CRM114-Status: UNSURE (   9.64  )
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
