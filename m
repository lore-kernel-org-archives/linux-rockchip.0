Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75F05C47073
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 20:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGoZNXrbko/Q9S68ZPHwn4Ae6mBzotAKJG3FER3aJk0=; b=ChXNWRthL8g/G5
	MoF6b3aeht6qDVXPa6QsoL752v602UAwBAo9DlPOsqo+CWF5xia3ezXRfT0IJ94Ye7uf90008EMUR
	N5YK2pM890040Ql+vm5/4kfKqkdux+yHeQ+fuOjgtgi4EBxkXy8zlWIe13ERf1j1wpHW7FnmCHSVT
	EzgE9TFKPgd8xbAWmv+e1QbyqONhDQPmWiF5mskOANVdKWU5rsHQQ/FwlmnvMR080rUGVUCgjsKNT
	56twgvSYCOTMkxDv85Rna4UoOi0bAw6Lvzte7aqnKcyMT/pWaDrJPHVMCHHYKOyDM5xqlaMVwRiNi
	Oe0j6QFtJG6G7cOpxpMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDdH-00DUBg-2m;
	Tue, 26 Dec 2023 20:02:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDdD-00DU6s-1D
	for linux-rockchip@bombadil.infradead.org;
	Tue, 26 Dec 2023 20:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=BtxKf3FqZi0ydpudkf0bXoEdqlC2cPc9JiSI0VbRHzc=; b=UtbcMrF1ngTpg6NuQVHQzNtUeA
	MaZ1f2v1WP+j5vZLYMH60CWmSFwDtZOJaXzk4zr2sMAkEu3Fsyg1dJHop4oaNsIEnlmGgXOOvk5oO
	+YHvVE9hzyHYzfP+Jk1HJu5vPOq5UAhJQGUxzMkB/I96VcG4pNCaUBz2Qta/rwfInahYIBDJDlie0
	U1AlXLCfAnBMw3RH5e+EYUN5vztdBkETIygdosLH2eEwOnJLdr23B7DN+58Am3fip7oHsKRk7VqTP
	DIc2mPmgel8nVTO7J9C945ILGDy1gyxKI0FmM6XydqhNRpm8cUJv+de5Hy8lv0GE188hckdcDd8Ks
	Kmaowekg==;
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDd7-000T3m-14
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 20:02:25 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-781045f1d23so451250585a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 12:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703620937; x=1704225737; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BtxKf3FqZi0ydpudkf0bXoEdqlC2cPc9JiSI0VbRHzc=;
        b=IyJ+zw4M895tZQPgT0Cqx/8w20sEwzvLn2gXK2HXmsOGRzLCMESZgarkunJ4YpVt4e
         kMnmV9z78R0C5PavpqwhmCbz6os54a6GJgG+qgfzd6kcln2dNrI0BTVKN42samL3tmfa
         wgHh6abUL3361tACcXcjLNyFjCCHi0yNbgjy2PwjJRsTi5s6LxPnQTgq0Bskm+EYwiM6
         3BYDH7p9bmMNkEvtYr/iWkc7ytJrcq/Sy5GaOBD/6Z6InpF6jg4qrO8wfuUQaBpApla2
         ft6ovwBJvMOslyG+t66YmyXTuSL/qdeS77iCzSkpxyHQmkU0l+vVTyPg4nofQtO2Li0p
         M7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703620937; x=1704225737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtxKf3FqZi0ydpudkf0bXoEdqlC2cPc9JiSI0VbRHzc=;
        b=SyYYgjhBzFbeAM60wNAae/hWaMjLmV8as0ryeyTzhvTmvXtvap6id3DNwLhmYs6pIw
         7Kl23pi4QXW4VjKm1QMhQ8QGxtls6mXJAqwFo7q8eyHuph88rV+4NWJAsSm3f/FcN6ua
         Q/HtqB+62bxyehKimXFgpPJYT85/uRBijYRh5XRd1xfKlgN9JO5bMM/mjbA1v3i1zMYt
         2v+xJSFMNTTKv8W8BxOnGugys6NW1lgukliDDecNUfbrGpPBAi0hxDE800mJO8duSikm
         kZDfj6W0H1oQqmXWSyMiBhLvPa6ht1Lc5M17D962vmGMsLYAurAhVbUI5IlumdmD48iF
         jheg==
X-Gm-Message-State: AOJu0YwsXGKGxQtgQ3EtAXgCxtLvdN2aSlMljOVWtn1or6Sdla/41Cn9
	gyXmkElp3aklwCzsVXI+mpvvoIqNNFal6w==
X-Google-Smtp-Source: AGHT+IF6SHRllSaxJq4UXQlu+eJlDbGhCpDAe3qqJtRfc6g3mN6rB4PyhEEN8AN1FQVjUmVdCTe1Ag==
X-Received: by 2002:a0c:e90e:0:b0:67f:d69e:9c45 with SMTP id a14-20020a0ce90e000000b0067fd69e9c45mr6794763qvo.11.1703620937325;
        Tue, 26 Dec 2023 12:02:17 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id t5-20020a0cf985000000b0067f696f412esm4894539qvn.112.2023.12.26.12.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 12:02:17 -0800 (PST)
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
	rientjes@google.com
Subject: [PATCH v3 10/10] iommu: account IOMMU allocated memory
Date: Tue, 26 Dec 2023 20:02:05 +0000
Message-ID: <20231226200205.562565-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226200205.562565-1-pasha.tatashin@soleen.com>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_200221_633138_BDBD05B9 
X-CRM114-Status: GOOD (  11.61  )
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

In order to be able to limit the amount of memory that is allocated
by IOMMU subsystem, the memory must be accounted.

Account IOMMU as part of the secondary pagetables as it was discussed
at LPC.

The value of SecPageTables now contains mmeory allocation by IOMMU
and KVM.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 Documentation/admin-guide/cgroup-v2.rst | 2 +-
 Documentation/filesystems/proc.rst      | 4 ++--
 drivers/iommu/iommu-pages.h             | 2 ++
 include/linux/mmzone.h                  | 2 +-
 4 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
index 3f85254f3cef..e004e05a7cde 100644
--- a/Documentation/admin-guide/cgroup-v2.rst
+++ b/Documentation/admin-guide/cgroup-v2.rst
@@ -1418,7 +1418,7 @@ PAGE_SIZE multiple when read back.
 	  sec_pagetables
 		Amount of memory allocated for secondary page tables,
 		this currently includes KVM mmu allocations on x86
-		and arm64.
+		and arm64 and IOMMU page tables.
 
 	  percpu (npn)
 		Amount of memory used for storing per-cpu kernel
diff --git a/Documentation/filesystems/proc.rst b/Documentation/filesystems/proc.rst
index 49ef12df631b..86f137a9b66b 100644
--- a/Documentation/filesystems/proc.rst
+++ b/Documentation/filesystems/proc.rst
@@ -1110,8 +1110,8 @@ KernelStack
 PageTables
               Memory consumed by userspace page tables
 SecPageTables
-              Memory consumed by secondary page tables, this currently
-              currently includes KVM mmu allocations on x86 and arm64.
+              Memory consumed by secondary page tables, this currently includes
+              KVM mmu and IOMMU allocations on x86 and arm64.
 NFS_Unstable
               Always zero. Previous counted pages which had been written to
               the server, but has not been committed to stable storage.
diff --git a/drivers/iommu/iommu-pages.h b/drivers/iommu/iommu-pages.h
index 4e70cdf7acac..b4289d577e2c 100644
--- a/drivers/iommu/iommu-pages.h
+++ b/drivers/iommu/iommu-pages.h
@@ -27,6 +27,7 @@ static inline void __iommu_alloc_account(struct page *page, int order)
 	const long pgcnt = 1l << order;
 
 	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, pgcnt);
+	mod_lruvec_page_state(page, NR_SECONDARY_PAGETABLE, pgcnt);
 }
 
 /**
@@ -39,6 +40,7 @@ static inline void __iommu_free_account(struct page *page, int order)
 	const long pgcnt = 1l << order;
 
 	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, -pgcnt);
+	mod_lruvec_page_state(page, NR_SECONDARY_PAGETABLE, -pgcnt);
 }
 
 /**
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index f0b54c752e22..da68f9977206 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -199,7 +199,7 @@ enum node_stat_item {
 	NR_KERNEL_SCS_KB,	/* measured in KiB */
 #endif
 	NR_PAGETABLE,		/* used for pagetables */
-	NR_SECONDARY_PAGETABLE, /* secondary pagetables, e.g. KVM pagetables */
+	NR_SECONDARY_PAGETABLE, /* secondary pagetables, KVM & IOMMU */
 #ifdef CONFIG_IOMMU_SUPPORT
 	NR_IOMMU_PAGES,		/* # of pages allocated by IOMMU */
 #endif
-- 
2.43.0.472.g3155946c3a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
