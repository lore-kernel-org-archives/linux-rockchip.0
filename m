Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A91C4828F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eb+qB3hXGiL+VoKN+KIrId6Fu0GWtDwKp85qwzIMX4I=; b=Vpuqe4tSZZhZh0
	6lKm0Fs7x/1z1xSHrm9t57rBrQnr0avYsA/WqFGS20O3VOIelpFScPvBBYxPTXTPKl8aCSlTfHAyE
	STHxbfZcpPGrQViX2pVqTTV1dCIi1n2AMYKoC85Ur1eaip0rGiWWTe3K4E6kUcNK+f1CHSEndzORb
	oNrGH7RazfVweX7S5Ol9rIiaLaOIE2gl/BRoJKFfK1uW1V8Twr1KS33ddGHY7DfS5FDdAMtP4RL3Q
	OKnrx0RAQAO8MGPEkfcIITvgtb3Iy2ROex1EAY4ed40TC7E8EVOCeVhY5PtuBbYFi883Si2fMzPH2
	k3ne/vbJtWV7u0HhWySA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvN-0000000BKUx-3GcP;
	Wed, 07 Feb 2024 17:41:29 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvD-0000000BKJX-3GOp
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:24 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-783ef8ae70aso55308985a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327679; x=1707932479; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aOJ5ut398ow/2WlP29EDaCAozkqg/KeyQvQPT/mKdCU=;
        b=nKK7aK9vWFNfJp+VcB3ry8B5p/mNyJeK7/uUQ7WmffIORpDaWRNlhJl+s+IbiiGoR6
         2fTOLVpMNcVwiiFZ7WQVG8KfdC4/8zjAF5h0Fur1JmqQjaE5K1II8ZYuZlNNmAFO1hhB
         8aclMUWcLlQtdEp8WJ/l1IfmqcYngox6UxqSGl++VywQAHWQ9UAUydsgp6acN9bCcRDF
         wHSJ5HecRI8cSR5GfS1c8OrpGGkwGBOd4Xj01r2g7VDbWlVJ3jV0RLLn7v42XvXMuZS/
         ZvF56PNqCgm20wYtQ0diVSyLbCtdHyhaPdesC48kh0zINhaZnpaGGg/Y57e6/u9IpGw5
         DiVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327679; x=1707932479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aOJ5ut398ow/2WlP29EDaCAozkqg/KeyQvQPT/mKdCU=;
        b=bGTxSMl61MnHRNPaX9xE+MgY/uGiFDUs3hjOZWnjcNX59vSJ7sOyxIpW8JbuFlU7Nc
         ngwN6wa+qwp/0e6zsDUaNyU6nCKsyjW/Q7rZjED2SjdzyV9ZwBJMtVZyCRVC7iuq6t4c
         J/AryKZ13DBdfTuqAYc64mj7Jcobn7sB9bb44iDOLcR8t4/cEeOSdIfkZI8F72rM0C0+
         a5Vm0ehLcHeKouUeU8KaDkMOYKSC9tgrksOoFO4a0zta9apJEotcieZr9FtAxWXrBC9h
         nZK+n8VEzGD5mKXNDkZD4OmJoGYv3QC+PwB7PxIvBNgPdZ4n5JtYnZLlt0xCxiWsl+2h
         dZhA==
X-Gm-Message-State: AOJu0YyZMuEUw2AxOkWalOUe1g8dQtMcN1XjNY6TCia9MHbZEb6LTWIV
	/BEXZ8Yx3alzM+wIeEY9uJ24PYVgEhNuOOF/1dmCNrejpYpwgH7x+jOI7QVzwq0=
X-Google-Smtp-Source: AGHT+IGzHmYfHKKzBsKfi2sS1p/R7NZ/BV205sSyGSsoTpCiCT38UMcgyp+aJmcRhxrEuO8FJ5t6XA==
X-Received: by 2002:a05:620a:190e:b0:783:549a:aa3f with SMTP id bj14-20020a05620a190e00b00783549aaa3fmr6972919qkb.67.1707327678787;
        Wed, 07 Feb 2024 09:41:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX5l5W9Ag0S1GSuk5ze64Pqkrc0g2WtQQ/c427L6Wd+pcn5y13WR4x4V+lQaH1CcBBG5XXPSlgnlFtQgmmtEQb6/2LSLxJ10zLMWQZ8PdceFohV3IOcvUrAvNBCceQnwz5PJ+IIMQwQYJUvxZuVNp2jbd/U7E0vX/YRkDOFSFIshcKcKG2qswuchLCaZI1W0y8aa587Wr7wrEtsX8r4bweBTcsf8UaI+ns0u+SHUw+Fd98rEDOWGSH86cbJqLx+yxCrP6JKLabCKo0gQ0exvrWKQG8EFrJAMCTgsQDEay4sOC7d1p+AMXIaNnmuIsVuIoDJ2k0xpNk6ZfzFdRjT2/0tObrAQTGlZxe1100kS23WYT5U3shsLvQAqEpLxW3C/F2u4E1SvpMeSQCGdYshpROXy8qT5LlLdErr+vz3+feGVxWOjgKuYmCEXRqCrsGwKsEFJ6NqvP/O345Oaw15ZwYZhEiMpSHbWmCz3iXvnM8DQ5k2G9kCUfTEhbrpnwFfplTvFcLDWPiRTXBrZWKrKupRBfEtSP6zcP/McBN4ArHkINjn/oV4kCQipJoSCWb5xsCYPpSqJmHveceVJb/mM2qMjvu2DMe3jgySfVXxZ16iNz5JtG9degRa0XrH3iCwEBeitTK6goM0eoGtVIWbGExhGvKS2qxPKN8m+p5hn6aQT/xvruo5ghDNFxbC6ClB6AqNECLyg7ZdWg+kyt5nzHVMuu2nQ9eTGnjhfu5/NksQjr8r7Yjdk/lt1V4avjeXyxAwec0bzW03SdqtLnEZ4ix0sQuIFWSeOkd8+jJo7ka8RLo0vJLSxU5cmnYYSiaAE9/WZpm4mtbZpHCBn6jw+3gXjiDTCAZQkKybZD+IW9+Ua47DSmVzWh+SujH1HqbbQ6J3aX7fsM8cL+5mpo7aAXcFTOdhOfpejLAJybs8RuPZULp7k2HKZFLZcj/3smDH+QlgAA
 v+viEzlHnhxD8gwig/TVFwXduy2fJIryQb6xREtFO2kvs7rR0ze1qIhdPdoAdHpRi5zLY2FAaEzpNEe2mCr/hobwhz309FnEBGy3p4duYtaZy1zL2a4zFrNv5tiNnNcl0oJQIymIZEpA0gTG5Efh7EhezVq+BSrf/HYiigfcwHL2Kk0NSzTpZ1MdpdyJIqYVNw8qE0NZs/+w1hYGvTx09SD5Nyi9xL3/BRW2rCQxgyeyXpqGjk4oyXoKnR3l8WNiJ1iJD0nmckKOAXNplAPi/pNtSQ2aFjtC+ApLt075lhvFnm6wSPA8FBaPLrsV4jV48R7yNVf4gpZmuobPWdbcSx3DBmdJTRV3njPssZ/V2j2NiSDHtOBbh1aUz+Ua+gQUiepqzMS1Bw7UsDY3XjEzkvcpINTtsFGpTHvY3dZcb6W0ggjjMkZ309cd/5G3Qjk/+SEAoMU1Z40QF5/SV8NcemsKNKcbEDW6SFstkb0TygjllY
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:18 -0800 (PST)
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
Subject: [PATCH v4 09/10] iommu: observability of the IOMMU allocations
Date: Wed,  7 Feb 2024 17:41:01 +0000
Message-ID: <20240207174102.1486130-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094120_046367_10CEC417 
X-CRM114-Status: GOOD (  12.63  )
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
index c412d0aaa399..7336f976b641 100644
--- a/drivers/iommu/iommu-pages.h
+++ b/drivers/iommu/iommu-pages.h
@@ -17,6 +17,30 @@
  * state can be rather large, i.e. multiple gigabytes in size.
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
  * __iommu_alloc_pages_node - allocate a zeroed page of a given order from
  * specific NUMA node.
@@ -35,6 +59,8 @@ static inline struct page *__iommu_alloc_pages_node(int nid, gfp_t gfp,
 	if (unlikely(!page))
 		return NULL;
 
+	__iommu_alloc_account(page, order);
+
 	return page;
 }
 
@@ -53,6 +79,8 @@ static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
 	if (unlikely(!page))
 		return NULL;
 
+	__iommu_alloc_account(page, order);
+
 	return page;
 }
 
@@ -89,6 +117,7 @@ static inline void __iommu_free_pages(struct page *page, int order)
 	if (!page)
 		return;
 
+	__iommu_free_account(page, order);
 	__free_pages(page, order);
 }
 
@@ -197,6 +226,7 @@ static inline void iommu_free_pages_list(struct list_head *page)
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
2.43.0.594.gd9cf4e227d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
