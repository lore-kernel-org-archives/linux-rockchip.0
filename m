Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 920D4C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiC0fQ2kvdIr84+XCtEgv+c+F5Nb2+30k+uamjGzaE4=; b=NfTxMre7b/8nAw
	LWL+g528mc3RtTZ22ZsGuQW+mGCGxpSGT3UZFPX9sYZ5ZOBHwKdAh/Snn8Oz2hv4ysTcMTLaOVRS6
	nLjxYauv5ngJopVd0qcfbuQ1Ck9edWvRBnjWpNhyaAkjwt4yHk0yjwsWobP3zlu17qiFSPVSckQEb
	bTllFzp30dsM8W+EMtRrc5VtwSAYNbvWe5AahsKN6Odb5ic6SKwtfS22z9D3BxA5OyMiatpuqLmA2
	h3BbR9ve5FoKkBgIUwwP17ZhAQufbHMFWtNTfIbZXohyCEegaHvd6pEyDjyVF/ibW7DlgxQ5qoemy
	Bol0Q8pXtAaPf+kOVKkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8525-006IJD-2O;
	Tue, 28 Nov 2023 20:50:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851u-006I6k-1g
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=B42Ompk/0S+0FHWlF0c0WCUF97rKJOKtrfjrMLAbFqA=; b=icBgP6Gi8FLIkhqJqvnAWdJgFc
	eZTzljKluFnJenejB3fkZo54vkXfvz4OENo6ib1c2UGv49/D/oA7A77yAgjbD6oPW7GOogoE7HH2H
	1NHBn/7VeO5nE4wrJexlnn2rre7DV9xUWVEGDNfBuGjI4XH4JslCN8YtwiV8UuZl2aO0m/Y40vAgz
	PM9ecZce9REtCv/Z6VSlYxcbp0gNC/1STZpEk+R8O3fqs9rDbI5aOHRGdg2B5L2yFg+ztsbgT/e1z
	mx/PyXSuB0J8ul9etA3rZ6791Lt14qjb0mcwMw+Rkz6t6zzJ38JjwNFDffMQG3wd+LdCwAaFHF1yu
	DxE+vL1A==;
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1r851n-00CiGe-Sv
	for linux-rockchip@lists.infradead.org; Tue, 28 Nov 2023 20:50:01 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-77d895c298eso202738785a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204593; x=1701809393; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B42Ompk/0S+0FHWlF0c0WCUF97rKJOKtrfjrMLAbFqA=;
        b=PhY5Uv8ktgavWfKF2Fnp5bIuyCpDlTRSG2lLrOvbl5k0mravi5TVuLhAJt/m/a+1mW
         XKO6Ep4G9gdo8/aFczHQBQbd7Ub60MkjuAV9zLo8vnBFVJxjNMlx06gT+deL6W2vtnXe
         g8GMxKF1m6acoGIw5hypeZg/Q/C22CuISQZCVrGMfyoSxjkez5dOhZQp8ywm9FdS3qcU
         6oHCZiU9ITQ7IYypj38+i7EzYvJJfe2v14oisfGZ2mFzLSJmpuo5gLr+hWgyp5zTMhr0
         3E3sdeA5V3Kv0ds5iF+5UOfSLr1UOg3lKG3uuamm2/4so8rlHLra9F11fZhOxOlyqyVd
         8b9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204593; x=1701809393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B42Ompk/0S+0FHWlF0c0WCUF97rKJOKtrfjrMLAbFqA=;
        b=mXKaq7SnU6IIYuTDCBvqqYBLI/mnCbQ6A0dusNmBkKhlNG/paqB/Kv88RgmOODdE98
         Li0TKimez1c+9/K+0B355sT9sqEk0bJCDKz3V4sXTup11QuFtbeSwtkz1ntOUMpW9XpY
         2VsxIfza4ct7R9qBfkhc+dWNgMFPn7qsyWAxzbybH0IIEr+PfrIHjQvvLVrURJS1Fh+v
         0cpVf6yhxeCVD002PIudJTQK/HJU3ra60QEJosvl4jJTw+hG4JigfI3ZTn4lw7k1MTG0
         PC6Wv19cVTw1UO36ljVBx+kCDMfeas2XKgK61321BaaIgEb2asiHbR9jFvJWs9nPYkUO
         wjzA==
X-Gm-Message-State: AOJu0YzT4wyl9vgPHd+IX+L0wrJFRZYzu0JHxo/i23PoRAVmJzvEeqAI
	SovP7qEMpo2Gt+PxJ3TsZhwuDA==
X-Google-Smtp-Source: AGHT+IEnkegi/uFQPrDyc6H7OPo4j0lB/ryXbrV4xgswOmTSvbgLDCpwj8bvXcZGxvDXiQNLdJDbew==
X-Received: by 2002:ad4:4a6f:0:b0:67a:5ae8:d346 with SMTP id cn15-20020ad44a6f000000b0067a5ae8d346mr3075756qvb.62.1701204593484;
        Tue, 28 Nov 2023 12:49:53 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:53 -0800 (PST)
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
Subject: [PATCH 13/16] iommu: observability of the IOMMU allocations
Date: Tue, 28 Nov 2023 20:49:35 +0000
Message-ID: <20231128204938.1453583-14-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204955_949292_4C8F44AA 
X-CRM114-Status: GOOD (  11.44  )
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
