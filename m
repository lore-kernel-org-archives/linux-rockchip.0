Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 912F4C4828D
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppwcP/NdeXH1GxWNpdqChA6J4TeGIf3ryVK04Sh1KAM=; b=bgBh3V0VQMEF+e
	wKojeb5tOGcKQosb4bXeHL1c61M/NDmsZoRHuUSqaCYth891zy+D+EzRkNVwAEh2FwJ/d3ohPgv1h
	SBpMs0njHPNlL4fmOTIFxHkNqcv7H6TpnrUKxwzqICHVCWHl52I8fvvMZzUqRsH8Qd9khEwf2NMQq
	OjJVqwb40R9+jiUNJ6TPgOOsV0dwWI3qxqxrlCgPvMHFMz7sinyIfFJiqv0EAGFRPyGvUoF3/4e55
	xBKLMryv7epgpwBWAZCC8SdxQu84dp4uEKzP9HFNCodbN9oe1xFK/SvKjmXFRWGkdij1IYJk5l5R8
	gFNyTAJXYS5GhlQ/UQvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvH-0000000BKPJ-3sR8;
	Wed, 07 Feb 2024 17:41:23 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvA-0000000BKDs-0Ute
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:19 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7857964f57aso34352585a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327674; x=1707932474; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HRs2+3L7reOpWDJLX1eglKVbVfztnuhe5Gbs6bYq4mk=;
        b=I76vrgEO2YA5HUlUbLW380iheg7z5XAWM29fbdqnXEdDYANNVKc+Tw2FCs7/xS+IQh
         43NvMXRL9UVfxWKSHz2TIzU+wldvUUif/T+oyCjBCfk8kiRup1bY0k+C82am5tLX3X/r
         OrhhIuxSHWEDdIGg9Wi7pwxLQtdvNmgYCw8nTG7Jqr7VS6R+ynYBV35WyyALDkeTcD8l
         0a6QTiAQDwVEAG+tQB5l7xLizxy5XesVF5tRTKKYBJgLQinq8qSJa1G7ttxhXOGQCIkx
         440CKpra07+EfI9jSbQnjmPiEzFQgh9Zyx3yzWyWpdL0j2SyBYRwHvVoWk+meUJ6WPEe
         uaEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327674; x=1707932474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRs2+3L7reOpWDJLX1eglKVbVfztnuhe5Gbs6bYq4mk=;
        b=ulvbzmd11kRUThVgyw4UDACH2PtdlAhEy/QGwF+UlMDEe1MtOIc18jhw8/CwccugBH
         iE60y1xN3HITdHMP+FArSB0Aq2YuoXrgzGCkuticCou9HU0hSepls5eHCzglwVLMF5KM
         uuUI1MoyuBLBajlULdcr/QkFUxcFZrPUok7pTxYPmm+aF9VtKWZWT/kCwLAkaMw2ARqF
         dzU7HBSxk9+b4/+2PVIW51DA7XRxy5f1xYwYy9s8Lu3s0oJd6ta/6j2kNuVWmEf9/gBv
         qlLZWMCpSeMgzk6rqu+OyQmVcEpOz5sOpSX3io2TXMMvlwrgxUs+t1pL3dOlVok8b5GR
         +p2g==
X-Gm-Message-State: AOJu0YwOiFC4olEJmEN8+nrjgU91nUeWZCUiQ57SwaPnogbElTWOcOGp
	4uJRcu9R+hhIwsQjjMFmoqZP9fNu/WcMIUt+mVzP9Kw/h/FOS9EJMyrNL0OrRd0=
X-Google-Smtp-Source: AGHT+IHjEFIw63ES6/svy+aJUbNe0c3qyC0BVt1dJGlizw8NcPZWt7xtHW6wZZRb5sI3CTWzt+qhwQ==
X-Received: by 2002:a05:620a:8d5:b0:785:9e66:95d8 with SMTP id z21-20020a05620a08d500b007859e6695d8mr1885336qkz.48.1707327673940;
        Wed, 07 Feb 2024 09:41:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVc5nMONWxYqW32x/6V7C+9nsKXLKoua7ZIdfEJQ9x8/76Jss63+h6JD1mwJGehXsdSfnoSE6+lpv6Sp1vmZpeaIMONknbVszHoRqTt5fTy8P12Vq+8tTBuH7Uy4QgZ6fXnpFyK380IN74Don8Zz0sp/QqAdGZSQPsBKW8sjK0Fst0EbZ95wEEG8YOmR/P2K++j2TCeaX3xfIWpaQbA4nhqcOc0acSAOLM83i2FUlU6UMphppieS3cN7iuYDfW0oEQgrLqh9GLJc0dHqVBbY9sQYR6Fdh+6ZhcEk9HvMUnkTYfVj3uRBfn3nZYgvk8J50svOXjNvbwCqE72I1PhyrfREcu8sv4mo83W7LLp26mCaaRaLhCFbCdBTVM67IPzB/v7k3n558PzJ+iSs9ZY/jx/sRmUzJgfYvnYEuUdriETHQv5iiXvKDxws/t5ycciWe07r26/gYd7DiqDZYqc54wrZakFHgVcdyHngL7pa9VuPchRKaGPU+7w9c2Hzx4I6X1pscVNNtydVeaBUks33NqUx39wSKcNdEfcvSWm2+GTDzrOAxxRWrbr/t2ufdNbl0aDfRNhzbEZyzWLVwNv7fMAHTpJ6omPUzOqVXTEyojAN9ghrOeGm7Dk7xVk3uIqvRy0DSPI8E+Ze+jwOc0pGkL++sx17P19vuN5F/WKF70+28kLiFtKPh9EEQMzE9Y+eGyK7u4jcJcdmhWeLzz9Y9xuQ429YF6B7vdicCw4DsR6QHTJ91JqRu7YmoMKTGscsZGBWVPk5I4iXH+RgowpMH0OHu8dOQT03o3NRZZ3TaDetzJRsZFy1j44IFOIQ3EV6DNJ9EjTCG//WzyV9wD2pFnbL+Of4xb/EpC9P62qIVMoWPBpO6KemXj5aQ+LEwYdUBXma3LPINQtkBPh/qWeSt2PBWoCqF0UZTeCakLLkwC4IkPycERVRKkrcA0R9qdTW+gehB
 zBIIjQzpGRxu8l7H8HwrUiovJ7fXKfCLuaCVsXH9ExLnfN/ZaGHlIleJ96WFudMmoD1G61fCa/wZ7yyJt7xQwppSTHNqYVRIuB9/1fvOhzh08uUXo5ePZgiP9OkKTN8Zy0LPuIQVUhgt4xH+BK1s6cypKWqf5wIxZBH2qjEPeOKI/sJ7D5CUKDS/PxMSV4xM4AObmMSQ6XDZY5bkJQYcGkAhwZ5RGigbS/5NgMI0Q16vYJRG5+JDv6lRT9ua8vg7jGy1zzv/ZH7GebBVJ15gy/mZW4P58ZyHkrIWYMtjRNiy4LchEOcm3vlX3jSaGGuzqY8X4RGVcrkaRZ+Siz5FY7UZaWnCoG3k4aMUGcm0IU1zwsz3RnrOR1YyhTAihG7LRMINuGCeYroByqcTuKYMaJIdQBiGr8oZuSWloHGpuOLRmJcdPTtxdEXvC1xiyJ+MEbmpS9Rrpw/f92KkqyRaC1mk94U5VPxRjV5upOa72CWOm+
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:12 -0800 (PST)
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
Subject: [PATCH v4 05/10] iommu/exynos: use page allocation function provided by iommu-pages.h
Date: Wed,  7 Feb 2024 17:40:57 +0000
Message-ID: <20240207174102.1486130-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094116_358400_4335A1C3 
X-CRM114-Status: UNSURE (   9.62  )
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
2.43.0.594.gd9cf4e227d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
