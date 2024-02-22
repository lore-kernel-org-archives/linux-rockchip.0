Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9CF0C5479F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1z8OQoQ1AmX3erkWXqNTqjQ6ztp90Q3TjJk+9qAlL60=; b=1W2SvfThW6V6B6
	ON/eQIYYEPUJlLQ1iNn4t32yEzhw44ja4J5YFRhSpk2zf9bfdqXiviyzfAwWIVSFFOglpyvQGAJeM
	cDtZxQAwGG+AHrqtTsVYbiUQnOPVus3if7jCcf1DWLidSS7ynoSnsU0UOw/+NwK1YVX0a3+GCwBrk
	YTd5CUz/jNw9MjktuA3H97t2iU/ut3i16jFGwBtmtds4LRgc5zm0mFTDJvBKgvdoutUXuxBBuWmFJ
	3fuDR6o33VJi/I15ORmuRyYb/OZQIxz3RVQ9bpvokaO6EbH8y+lsMqp4mnd4FZvEctg6Q9KS09Arx
	NcS5a1lMMEe0U5REZ5jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4I-00000005qFE-0dSQ;
	Thu, 22 Feb 2024 17:41:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4C-00000005q9K-22V8
	for linux-rockchip@bombadil.infradead.org;
	Thu, 22 Feb 2024 17:41:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=V0ReaiTECyup4iu8c9tFSBLtkPVhLn8yFZIGfl9p6vs=; b=Op/CHeR0H47xMkmbLg3B1T4BZA
	Odeb9ltR9ymIPX0spmyO2C8bVzw44QzXUuWV/7qijqA2/mnDpRbJUoelBj/7b18OZ4EqlI/A5Xh0X
	B2fzMReziMR67hAna8OHhuPjJJG7V4OY0xKPdz7biZN4WzBQYCDA0O3GcWXUbEkmjX/4SKhx86guR
	HmaYfW/ZS4bW04yLnpaWw0wHM7Eb2oKMbd8OpxSzquzj45R2l06Vv4Mpxzxl02ZBlqLxe5jXdJsd6
	zeMbVmvkXvVAYwRtxlPHARK73GFFOpir4YscyCP65mJzA3rZqaJkcyH5QLcDL+xcgl9DTZStGvi3Q
	7YUOwq5g==;
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD45-00000004Dnr-431H
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:41:03 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-42e323a2e39so200201cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623595; x=1709228395; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V0ReaiTECyup4iu8c9tFSBLtkPVhLn8yFZIGfl9p6vs=;
        b=ETNvksn0g/ewXrmdJD/Ona9w3SahAfaYTTBgRZ46qOk3JDrM0n8qed/x27U8jgL0I3
         +scVlywc6LQ4fHqvNstJwPMCC2SclTta5PBk8n2CCp/VBk/jtJG0HxedFhKmIM+pPdFi
         j2K85n8gm0slfpF/guG/GrWEkntIXoD90keb0oy6ZbkR/Sy57Ea65Ilvfn28M3yfaSAA
         caWI92foACgVUqfhtm6dIWi/3imuLG2mT+euUyvhX5Ef1m5PJt4lwQI+/IGov7BqjQ1n
         M0u3GNXqnhfI4/WM+7fv4y410S0TWRcFeIsqnRNeLoW68IjRMEaOdjG4+tC/b/qD4C9d
         eEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623595; x=1709228395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0ReaiTECyup4iu8c9tFSBLtkPVhLn8yFZIGfl9p6vs=;
        b=WEEFnCN8Y/BezvdrohBWXj8YgvnWknRcTa9y/00nBRqlkOcy7qkFrNB0FhdlpjDvKe
         tAHvMRsawogfZ4US9taVCn5JobfMd8E0rTt6zX6Tzkjjggl+9NFkSk+V3kQ9FQWDo9P1
         Q6rP+G9AWtvkSMviKWjypsuKllQGQLsow8uq9Xv7xzIObHXSUHqP3Mhu3ESQWifbjHXI
         hwXYAd7Zzs1v8YxzySMDY53uMcr/W7Yx+wy4VOOPSHqcjuV+95Ef8fdpGaVb0ep2BEaw
         OYNMfZjSYFRPg9nc68hTAso6HC4+1QsDNYQ9Bo5V708flHYeo6Bgmkbz704HGXE6mYdn
         BKtA==
X-Forwarded-Encrypted: i=1; AJvYcCW15wsDqi5Z74EEjPjmhXy4UyM06Z/U/vWUv9+ThYy0Vj4a9dA5Gjj1oWPLsKH6sGA4Oq9/ISaJtu8Nr3DwaJXfqw40IcTc+b/xWay+Ugl0ZiPt
X-Gm-Message-State: AOJu0Yw+ZVUI8sf4BU6rLytEil0/g8zvI48AuKKt36IsxQL/gZuObr+6
	IfGpLEqwyoWmVpyGm89K7Jn3GqBFl7LvLpduNBx8I3tKCZN6gN5E6zUkznup9ho=
X-Google-Smtp-Source: AGHT+IEfgzE/uC4xDSwqJvxbjnpMCM7aGgkDw9ad0MN7VOXeeW4kWverRuOWKwGaZsiVILRRW0AILg==
X-Received: by 2002:ac8:6c2:0:b0:42d:f128:eccf with SMTP id j2-20020ac806c2000000b0042df128eccfmr3903788qth.33.1708623595045;
        Thu, 22 Feb 2024 09:39:55 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:54 -0800 (PST)
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
Subject: [PATCH v5 10/11] iommu: observability of the IOMMU allocations
Date: Thu, 22 Feb 2024 17:39:36 +0000
Message-ID: <20240222173942.1481394-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_174058_260545_835A7F6F 
X-CRM114-Status: GOOD (  11.45  )
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
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/iommu-pages.h | 30 ++++++++++++++++++++++++++++++
 include/linux/mmzone.h      |  3 +++
 mm/vmstat.c                 |  3 +++
 3 files changed, 36 insertions(+)

diff --git a/drivers/iommu/iommu-pages.h b/drivers/iommu/iommu-pages.h
index 35bfa369b134..daac2da00e40 100644
--- a/drivers/iommu/iommu-pages.h
+++ b/drivers/iommu/iommu-pages.h
@@ -20,6 +20,30 @@
  * large, i.e. multiple gigabytes in size.
  */
 
+/**
+ * __iommu_alloc_account - account for newly allocated page.
+ * @page: head struct page of the page.
+ * @order: order of the page
+ */
+static inline void __iommu_alloc_account(struct page *page, int order)
+{
+	const long pgcnt = 1l << order;
+
+	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, pgcnt);
+}
+
+/**
+ * __iommu_free_account - account a page that is about to be freed.
+ * @page: head struct page of the page.
+ * @order: order of the page
+ */
+static inline void __iommu_free_account(struct page *page, int order)
+{
+	const long pgcnt = 1l << order;
+
+	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, -pgcnt);
+}
+
 /**
  * __iommu_alloc_pages - allocate a zeroed page of a given order.
  * @gfp: buddy allocator flags
@@ -35,6 +59,8 @@ static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
 	if (unlikely(!page))
 		return NULL;
 
+	__iommu_alloc_account(page, order);
+
 	return page;
 }
 
@@ -48,6 +74,7 @@ static inline void __iommu_free_pages(struct page *page, int order)
 	if (!page)
 		return;
 
+	__iommu_free_account(page, order);
 	__free_pages(page, order);
 }
 
@@ -67,6 +94,8 @@ static inline void *iommu_alloc_pages_node(int nid, gfp_t gfp, int order)
 	if (unlikely(!page))
 		return NULL;
 
+	__iommu_alloc_account(page, order);
+
 	return page_address(page);
 }
 
@@ -147,6 +176,7 @@ static inline void iommu_put_pages_list(struct list_head *page)
 		struct page *p = list_entry(page->prev, struct page, lru);
 
 		list_del(&p->lru);
+		__iommu_free_account(p, 0);
 		put_page(p);
 	}
 }
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index a497f189d988..bb6bc504915a 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -203,6 +203,9 @@ enum node_stat_item {
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
index db79935e4a54..8507c497218b 100644
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
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
