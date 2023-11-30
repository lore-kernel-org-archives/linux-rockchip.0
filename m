Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37DF6C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiC0fQ2kvdIr84+XCtEgv+c+F5Nb2+30k+uamjGzaE4=; b=16Y24oAoI12fLO
	BklOXMiivo6dF/G8uNJBvvG5HLCtJt5AGoP/2stf0jQJnT9B1jhPqiCySsD2slKyoXfBUbVJ2RdE2
	JZe0lVfOGFIJjmiAKWZtZUf0Hv7v74hM1Zp9mdNDRw5hCvigrK88sdRzwF+KOnp6TxRKyHSmS87uq
	2lLmYKBXXw52w7+shNNaAAtLhuq7HhHuJNQsWkKMfiEyARKhZiFNiYE/NUY1OG3U6Q9nk89mF8eSc
	wLAIOa1xhZlZgPKDlMY3fCEV7/D57/nBpWf/4yyK8O7wQFki8iil9cbs2gvCOD/KQtPS0SRsUfRVs
	KB6dUhAsvV4Y+ld0Rhzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRX-00BomN-0J;
	Thu, 30 Nov 2023 20:15:27 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRN-00BocP-2b
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:21 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6d7f3a4bbc6so796536a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375316; x=1701980116; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B42Ompk/0S+0FHWlF0c0WCUF97rKJOKtrfjrMLAbFqA=;
        b=jtv5/x0mlC5vbDpxdhbuG+3Twm7wSLedYJBDoydppka+nSN0q3gcqgSaeaKpdk8U7L
         NdiHGZTWrtnSGmH36fHf2AQGbBsGnkEOL8M1Myx0hPbWhRaTxwaEy6zGJi2NX/gAsYr/
         sxj7jKUCpi0RuRir1+vW+PWUOdXk7uNNR9uw0knFviYkRMfo0VWEeKBD4xIkyucs9+8Y
         a9sAHRh+dvVrwOxbBfrOL2yqsimydvHHjuikrEz2OlSoWM4nZ3MW10FxrZT258FKi7pq
         gSq8e9XPdlEFuTDcM/uNYrP2LoaqzRbOF5n4nJfUAh702eh2F1y11ahs/8K8Jmvo6oMr
         WhHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375316; x=1701980116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B42Ompk/0S+0FHWlF0c0WCUF97rKJOKtrfjrMLAbFqA=;
        b=OcuLIvwxPLBOxzV3Ar/mYd2AEk3YVsEqjNRPfnpU+vu2jvRn8v/7PzMMShZBAKfWeT
         4ua0ANCYL1X/3ErMAaQ4lmmqfJr7vlS9/DokdtI2K1foI5xb8MYx/ruZMQ3T9NgCAILG
         uaFCeyUwpdPc1hhAEI7Cs+k5jDFm+Q9FAIwGU4PwZ6UjJJJWSBFu+dXatqfg3Gfw4KXX
         d8PGwevP2e7sFFpmJmK+vAEuDzaAUJLGWv4nAKvwHPQXvy2cN8f+3ZiJaSxuhUlWUgxA
         d9lorKmj64yjvxlGIMKecS/aE0hFGlhKCd8ToPu3k1aYJH6HIOYOJot0zAKyqn3+ibJw
         r29g==
X-Gm-Message-State: AOJu0Ywl4gfrQnchzEVUtBqGSFWgJqqbRG3TMAdK80neSKZ4+7ipbWsi
	h00sb+asOklbv80Hdur9IC42Xw==
X-Google-Smtp-Source: AGHT+IFm2VZamMYGPMsf9vCHQb4stofA9P0lnINgFWclhv2SjMIVDU5Q4H8UbP8D1DLG6NZm/4QG2w==
X-Received: by 2002:a9d:7dd2:0:b0:6d7:f02f:dcc3 with SMTP id k18-20020a9d7dd2000000b006d7f02fdcc3mr809535otn.28.1701375316245;
        Thu, 30 Nov 2023 12:15:16 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:15 -0800 (PST)
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
Subject: [PATCH v2 09/10] iommu: observability of the IOMMU allocations
Date: Thu, 30 Nov 2023 20:15:03 +0000
Message-ID: <20231130201504.2322355-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_121517_864255_90A832D7 
X-CRM114-Status: GOOD (  12.95  )
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

Add NR_IOMMU_PAGES into node_stat_item that counts number of pages
that are allocated by the IOMMU subsystem.

The allocations can be view per-node via:
/sys/devices/system/node/nodeN/vmstat.

For example:

$ grep iommu /sys/devices/system/node/node*/vmstat
/sys/devices/system/node/node0/vmstat:nr_iommu_pages 106025
/sys/devices/system/node/node1/vmstat:nr_iommu_pages 3464

The value is in page-count, therefore, in the above example
the iommu allocations amount to ~428M.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/iommu-pages.h | 30 ++++++++++++++++++++++++++++++
 include/linux/mmzone.h      |  3 +++
 mm/vmstat.c                 |  3 +++
 3 files changed, 36 insertions(+)

diff --git a/drivers/iommu/iommu-pages.h b/drivers/iommu/iommu-pages.h
index 2332f807d514..69895a355c0c 100644
--- a/drivers/iommu/iommu-pages.h
+++ b/drivers/iommu/iommu-pages.h
@@ -17,6 +17,30 @@
  * state can be rather large, i.e. multiple gigabytes in size.
  */
 
+/**
+ * __iommu_alloc_account - account for newly allocated page.
+ * @pages: head struct page of the page.
+ * @order: order of the page
+ */
+static inline void __iommu_alloc_account(struct page *pages, int order)
+{
+	const long pgcnt = 1l << order;
+
+	mod_node_page_state(page_pgdat(pages), NR_IOMMU_PAGES, pgcnt);
+}
+
+/**
+ * __iommu_free_account - account a page that is about to be freed.
+ * @pages: head struct page of the page.
+ * @order: order of the page
+ */
+static inline void __iommu_free_account(struct page *pages, int order)
+{
+	const long pgcnt = 1l << order;
+
+	mod_node_page_state(page_pgdat(pages), NR_IOMMU_PAGES, -pgcnt);
+}
+
 /**
  * __iommu_alloc_pages_node - allocate a zeroed page of a given order from
  * specific NUMA node.
@@ -35,6 +59,8 @@ static inline struct page *__iommu_alloc_pages_node(int nid, gfp_t gfp,
 	if (!pages)
 		return NULL;
 
+	__iommu_alloc_account(pages, order);
+
 	return pages;
 }
 
@@ -53,6 +79,8 @@ static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
 	if (!pages)
 		return NULL;
 
+	__iommu_alloc_account(pages, order);
+
 	return pages;
 }
 
@@ -89,6 +117,7 @@ static inline void __iommu_free_pages(struct page *pages, int order)
 	if (!pages)
 		return;
 
+	__iommu_free_account(pages, order);
 	__free_pages(pages, order);
 }
 
@@ -192,6 +221,7 @@ static inline void iommu_free_pages_list(struct list_head *pages)
 		struct page *p = list_entry(pages->prev, struct page, lru);
 
 		list_del(&p->lru);
+		__iommu_free_account(p, 0);
 		put_page(p);
 	}
 }
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 3c25226beeed..1a4d0bba3e8b 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -200,6 +200,9 @@ enum node_stat_item {
 #endif
 	NR_PAGETABLE,		/* used for pagetables */
 	NR_SECONDARY_PAGETABLE, /* secondary pagetables, e.g. KVM pagetables */
+#ifdef CONFIG_IOMMU_SUPPORT
+	NR_IOMMU_PAGES,		/* # of pages allocated by IOMMU */
+#endif
 #ifdef CONFIG_SWAP
 	NR_SWAPCACHE,
 #endif
diff --git a/mm/vmstat.c b/mm/vmstat.c
index 359460deb377..801b58890b6c 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -1242,6 +1242,9 @@ const char * const vmstat_text[] = {
 #endif
 	"nr_page_table_pages",
 	"nr_sec_page_table_pages",
+#ifdef CONFIG_IOMMU_SUPPORT
+	"nr_iommu_pages",
+#endif
 #ifdef CONFIG_SWAP
 	"nr_swapcached",
 #endif
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
