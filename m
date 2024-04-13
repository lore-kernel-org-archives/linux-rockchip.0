Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C2F8C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vVoHvLThktQdEwN2QV/3c6+Wrv4sBFKokx653F/48M=; b=SCIdz3kDcH55f2
	s1nEvwSpRnqwhFpEN9i8TV7v0pH93zXgsVJLaetM8783Vck2fjSyuhYRuHKfeFDJa2cpHNagoRkmZ
	4QRvg8Vs32N1wMih7BoOVCdyNoUs13YankH3r/SyeWb3spGVgPV+HchoZr+j459Kj5x4NJyl0MPmp
	CmDccoaSns9e2Ut6rTCcsSo7sflsmAxKvbhf9y74p2ohr5dH1/s9OnVsNFBQIenQAXVqqYjHH8nHB
	qprG5ufM5oPm7EaqDhUJccz3uoWaAgIcvsNmjYG4eJHH+9C0Twe0FHZ67gtt9Lo0yqYIUztpGAehX
	6B6bvTzfY0eyfpqJOYoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRKs-00000001pxT-3sqJ;
	Sat, 13 Apr 2024 00:33:38 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRKq-00000001pwt-2xre
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:33:37 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6ed32341906so1491634b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712968413; x=1713573213; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/4w+T4tucdgPG/H173cldAS0HyQQ6sjlO97Kz+1k94=;
        b=V0GVsuXLeRdm3xfcv0G8W+E5qROWkFoR2Jjn9XvmcVcgIXro81+0RNeRb0Sr+6YUPI
         PUeucWrsAGfqm1g46Nb0eyrxG5p0Bzo5fw59s7h8X1QWm2EAl4KbZdN+AawgFfFlU8xq
         gUAHHkSq0MdiK+kWCbztC0FRlac3EWF7TsWEr1k0cRomkOSr2JneUCc2lvr0f744OQOW
         lI2O53HqVCJRQvWS3iQ8+NWStvLVPaoOKjhRmyOIPRdawUJyWDyR4ltqhVpp0fAi2wYK
         I+Gfax4vdobWPloqqtnGJvRP8/KIAFhGPLU+7wCQIWVhCCFrS6eRyeCpvlPwGIyhIKMy
         5Ghw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712968413; x=1713573213;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/4w+T4tucdgPG/H173cldAS0HyQQ6sjlO97Kz+1k94=;
        b=A1/2PQ+M2Tw7uNnXEiC7hOAoOjLNbiHEKN54db+sCEekhK3wTyz2CRoxlPjAtgFFoA
         EtT3mLZ3d4WanXv3otg97W9BZEYEZajMzQmhsZJKwOJpRP/zc//IzMyhFa+61jY1yLwG
         4aaXPxg2lo2b/5dp9gHEJVl/52YIsvFGg+qKkvsz+I8T+kwQSGw+gJpqTZjnRgy7n52L
         Nz8RrqD9037GhF2BSkC0DcfD/k4+FRWAzkBAknVvT6GM8vIBhDPpoBrJ4SkNEe0wNagQ
         IyEZwz6akTuStDWUoxwTLhomiUNFWBpzOkpMhC8MkQHvMjdJO67gY+7TAACdBStdsAky
         4wCg==
X-Forwarded-Encrypted: i=1; AJvYcCUE5TbOROjtJSVBpy3twqVDlJNduPARpdy5nxPLsJodrLZUqIKRMqiIwOcxun7biG+sV9Olc/1T4S+Iic8PXjgjh+ac0Ergb13nkHlQ9I2xxq2Y
X-Gm-Message-State: AOJu0YwNfA7N/4bq9GRTjaE2g8GkDHvCGIYHZ0t1hd8EulB2ikdcazyK
	5arakqdAvUk+gtg9dwuKFJyrrLXbfMUcfZN00PI3PB6pI6yqyxKXp9jM7ggx3Fsg3wbmHlXVmaQ
	8
X-Google-Smtp-Source: AGHT+IGQ8QPk+98rhr31FfHy1KfwN56vAk+9hMwwlY09C3v6VEVpJ5zGBKiShhcihkczGu9koLGDjQ==
X-Received: by 2002:a05:6870:2254:b0:22e:8ba0:921f with SMTP id j20-20020a056870225400b0022e8ba0921fmr4264166oaf.52.1712967929611;
        Fri, 12 Apr 2024 17:25:29 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:28 -0700 (PDT)
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
Subject: [PATCH v6 04/11] iommu/io-pgtable-arm: use page allocation function provided by iommu-pages.h
Date: Sat, 13 Apr 2024 00:25:15 +0000
Message-ID: <20240413002522.1101315-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
References: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_173336_757205_FB26B2E6 
X-CRM114-Status: GOOD (  10.01  )
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

Convert iommu/io-pgtable-arm.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/io-pgtable-arm.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index f7828a7aad41..3d23b924cec1 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -21,6 +21,7 @@
 #include <asm/barrier.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-pages.h"
 
 #define ARM_LPAE_MAX_ADDR_BITS		52
 #define ARM_LPAE_S2_MAX_CONCAT_PAGES	16
@@ -198,14 +199,10 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
 
-	if (cfg->alloc) {
+	if (cfg->alloc)
 		pages = cfg->alloc(cookie, size, gfp);
-	} else {
-		struct page *p;
-
-		p = alloc_pages_node(dev_to_node(dev), gfp | __GFP_ZERO, order);
-		pages = p ? page_address(p) : NULL;
-	}
+	else
+		pages = iommu_alloc_pages_node(dev_to_node(dev), gfp, order);
 
 	if (!pages)
 		return NULL;
@@ -233,7 +230,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	if (cfg->free)
 		cfg->free(cookie, pages, size);
 	else
-		free_pages((unsigned long)pages, order);
+		iommu_free_pages(pages, order);
 
 	return NULL;
 }
@@ -249,7 +246,7 @@ static void __arm_lpae_free_pages(void *pages, size_t size,
 	if (cfg->free)
 		cfg->free(cookie, pages, size);
 	else
-		free_pages((unsigned long)pages, get_order(size));
+		iommu_free_pages(pages, get_order(size));
 }
 
 static void __arm_lpae_sync_pte(arm_lpae_iopte *ptep, int num_entries,
-- 
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
