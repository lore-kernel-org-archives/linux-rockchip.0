Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55562C10DC1
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DNCJAHK1y1iYQpw6LX0+m+gOfCjulEP1SrMXEJ0YIQ=; b=G+1aT4cB4zbsJN
	3WINpXZqf7bKqBi1ZlBfXvNT1z4EbfZxKrDq2Vz1dASbg45gIdC/mofhGgUoVLWFAjAAXGgyerPZl
	cawnARmCy195kTazLe7Px4Mpp/lLQnhFRKL9Mhu7CS7oB9u4B/x924T0b6QveWHiCk7g0X4kBM373
	0jSQJHAr1bd3oU8svEo3ipG4UC9sZQ3sS1Q0OvAgAUIheCOISnLtJJ4j87DL10FVMA5bwK9r4yxvT
	zPkei+PIO5l1vX95RGbW9Uyk/LsgBwX+OsciLtNUdJl/WPVuBURnbNeo4vWLW/Hqnh3LpztyZTzby
	JJF16EtBH3VakPB8iMkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r851n-006I0L-2l;
	Tue, 28 Nov 2023 20:49:55 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851f-006HrM-2e
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:49:52 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-77d6f853ba0so17354485a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204584; x=1701809384; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=agdpEgslqhHdhrn0hnWdDpIJa9Hen54IbPQiTYhpn3E=;
        b=kadnfykaxgSvhy6rKbqSXLGVeHatrVtrTxOZVmhKP0yL70q9U/2aUPZDxU/s/JZI7p
         VLOPaMG5qLHBw/LPs8Wzo85bRqTdHKlVpJ+9llDINY6ytC/KLIXfa063+qzNSPcdc1h4
         KSuappG4yfc+sqUf5UGzyFwgfPpsMjqh05UAg8eCi2z3tqwsEwklvgwlQmqFsWfXA5nB
         cFRpzuzD603UwL99XvZJveyqXIOHYv7+zoMBEiG/bmJ2TJLDvsU5nX4i8KANXqISdjJn
         U7dR0TuJJm8ZgxmL+G7EQJ9HE46+pYEAL6bLkOK4IqlSm11BFJLeiriYI+s1H1oqIQBF
         KBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204584; x=1701809384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=agdpEgslqhHdhrn0hnWdDpIJa9Hen54IbPQiTYhpn3E=;
        b=PZWaK2QZcdVo4vOO3y6397B5GF20hHJaEfR9nEGi8LCLWkE/lEoMW1UwZKtlaDgBBc
         Z6OixiBipEACBGEKZrgB6ze9yMmt9PT5m6TV4OWyR+bulQPKnrYOomfUIPiDR9/XdhqE
         7VTTM8IOkbEUUh1tWM5W0TkZU/TBtqoEy8fBnyn7tdTHuQOi1/1DU6JRuvAnSwR6U7wg
         qm0C1fh6ZIHkcmChCJStMQWHF1a9Ppv0Z+/A1e2QUzfem9+JrOXameh5XiPo+lHesMAx
         3GS6ISVkh+QahutBIo21DmVHFHSZDatwZtBpv6eLsy0F9hYJFcj+H9dzUoPXnU6zMg6k
         QnBQ==
X-Gm-Message-State: AOJu0Yx3RQ7w3TwWgv6qDXFImO9O/TTUkpCibMReT7ZP8LrOeZwr+AKv
	0QQV1D9QMTBUcLUuSpDvlgS+Fg==
X-Google-Smtp-Source: AGHT+IGsN1gYKfhSPZCpUVGbGKIu06D7uLG0xM+OZwtg49W/WqG56O+xCl6uRGYTfUcoNhDPZKc9YQ==
X-Received: by 2002:a05:6214:2249:b0:67a:52eb:7a00 with SMTP id c9-20020a056214224900b0067a52eb7a00mr10312900qvc.7.1701204584210;
        Tue, 28 Nov 2023 12:49:44 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:43 -0800 (PST)
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
Subject: [PATCH 03/16] iommu/io-pgtable-arm: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:25 +0000
Message-ID: <20231128204938.1453583-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_124947_872789_02B45335 
X-CRM114-Status: UNSURE (   9.32  )
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

Convert iommu/io-pgtable-arm.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/io-pgtable-arm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 72dcdd468cf3..21d315151ad6 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -21,6 +21,7 @@
 #include <asm/barrier.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-pages.h"
 
 #define ARM_LPAE_MAX_ADDR_BITS		52
 #define ARM_LPAE_S2_MAX_CONCAT_PAGES	16
@@ -197,7 +198,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	void *pages;
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
-	p = alloc_pages_node(dev_to_node(dev), gfp | __GFP_ZERO, order);
+	p = __iommu_alloc_pages_node(dev_to_node(dev), gfp, order);
 	if (!p)
 		return NULL;
 
@@ -221,7 +222,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	dev_err(dev, "Cannot accommodate DMA translation for IOMMU page tables\n");
 	dma_unmap_single(dev, dma, size, DMA_TO_DEVICE);
 out_free:
-	__free_pages(p, order);
+	__iommu_free_pages(p, order);
 	return NULL;
 }
 
@@ -231,7 +232,7 @@ static void __arm_lpae_free_pages(void *pages, size_t size,
 	if (!cfg->coherent_walk)
 		dma_unmap_single(cfg->iommu_dev, __arm_lpae_dma_addr(pages),
 				 size, DMA_TO_DEVICE);
-	free_pages((unsigned long)pages, get_order(size));
+	iommu_free_pages(pages, get_order(size));
 }
 
 static void __arm_lpae_sync_pte(arm_lpae_iopte *ptep, int num_entries,
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
