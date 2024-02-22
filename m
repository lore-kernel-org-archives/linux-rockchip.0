Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3A24C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uwTEHBUi1qR8XHEQWBdoes8wS2w9/xmI4I7O6nY6vc=; b=DJkVGJCws2z9uk
	ThNNNd6suiTebGE9rTchiF7nDJswUlNirSyoLuOC2dLumVdtel6kWU7MDV66FNpLrXoixe5/T2uOa
	lYZdLeR1IZn8GrlTclhWUqYzSpOsPwpPj0+vha0GWYSHji4HWpde6AboZsOOQxZvgKQH+rPF2M63N
	7oJEbTAxNb6nnDBvVsDe3amOdKau7FzYnDkPswZIjXOc7Bpsi+H44PKAweS6eAt8XhFLS+2BPW61x
	uK/HHuAGgIXJlpQ+wl52iU+tSNs3sxkR1d5C4+gyCK5jUP36u7a1IHz8qamkGI7qGmXrOY2j9F+q9
	5iwRCaqr1AO67byqkRAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4J-00000005qHg-2nkh;
	Thu, 22 Feb 2024 17:41:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD4C-00000005q9q-3R1i
	for linux-rockchip@bombadil.infradead.org;
	Thu, 22 Feb 2024 17:41:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=SZ2pQJ9+dxF//EaiCt/uq+OdRpwnCyd+9hrUk8R734o=; b=u+JudMTauaCcZcTWtbwPxJQZm5
	jG3NeoLgiLSl+B2kNpXSnaNdSDTFdWt4FhkkFj3+/sDrqJSyLjZTdVVRQaEvVpkRvOq76KXfVNGeY
	iiZWFWpruJjYKIII/a1eSiZmgKjFM9GgMbOzFmC0igfvV6M6G/yTCGnVEkcuMRvNNQTQ3moSXqXxd
	eIFPrQaMudcLc36tvva8uccUE6LpXxCt5YJqqkRBc/mQFn/bxxjmQmnLi8kvvR2I9Hq1ATrJxsOD7
	rkmX4yfiyPSwTTjLekK02x9wxWkKD4QYziZF8w71qFqabht9BOJekY5vyqwXxe6w/s2gQdym4uX43
	lDlSEOwA==;
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD49-00000004DqN-0rnH
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:41:03 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6087192b092so22361217b3.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623596; x=1709228396; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SZ2pQJ9+dxF//EaiCt/uq+OdRpwnCyd+9hrUk8R734o=;
        b=aCc9E9KoqkHsXfA0Ws2zYUhKs74pR0HB0LB55cGGHQ/SeooBKAidulySeUTNrttYjQ
         8LPVj7alQAANR9fXOd+8ndVxlR7VV1XlSUFGSRI3pNtpbvuqg9bxk6lnzZwxQ8pCBuh8
         qsghCotRV+/ZN/Y1TWUz4EBik4RSJEtxM57fMqHIwpxdrDUxzzMoWH1XY47pqOfu6lVi
         /VgAUr4n3+ZY68bL+bBtbNUF5JswKP+gNDvx+oyAROGfAnAyKjxb3VShCOU6kCDKfte9
         vdXdHuHE2lyUEnWMo8cYZ/59HsfxfnBLVDpt2mMd0p1JecW6AtOJpWztdNnamhmD/4n4
         5JWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623596; x=1709228396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SZ2pQJ9+dxF//EaiCt/uq+OdRpwnCyd+9hrUk8R734o=;
        b=g94dBnm96qyK2/z/iQs/Q2z78QYTLAz1fE+YRJsYtUODJcTkfuj8z2Uqf0AlfI2DdL
         KFJ23ZdaQ9L9RasAdBCpD8hYC0xh/6DOYGd0zV1PfZ9FQhz/69z6kqa9VQhMeq32KZjm
         AsrMHdPjLMb7OUk8hR/6ukRZux+FOCg8ILhzsUrOXA+b9T3XrxpSu4xtkUy+4svjFigO
         LjAI2ufxejtEf/aM63Rsm6sQGjCitoewp4wvkTNefs54FoLUucRGYixxYKPCZgMksIVs
         P6xDl3evGL+qvWGtZpVJtjwEqfYHkHj043rrZ5itDHcmdL77nKWj+So/ppq26krOR+iu
         B4pw==
X-Forwarded-Encrypted: i=1; AJvYcCVkkJoeWOo/CmLbCYtW7sJQO4M8Ex1GeRoouwAbIj+yNAoSEM09rBXVyk0D7UONJTIEQxQ8npJdEaecvEYIPUVxuHujU1iB1pkBPNMB9Ag2oRpi
X-Gm-Message-State: AOJu0YwBz1ABVgJpChb4HaDjN0D4i/X5PH2U0voaPhP41n7JX6yPgRWr
	Bcv1E2UxHaDvFm0tUlcwE3vtmSShhJdLrdlv0HWVN2HeLjXFttg6KfxsTZC3Pvs=
X-Google-Smtp-Source: AGHT+IEtAUUqy5uqw2b6AFNUjnG1318TVskHRq83YxSHDfvItzdqlBQeiT8forYQaEVyJnoFBVJVWg==
X-Received: by 2002:a81:431a:0:b0:607:ef06:eb8 with SMTP id q26-20020a81431a000000b00607ef060eb8mr20801514ywa.40.1708623595945;
        Thu, 22 Feb 2024 09:39:55 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:55 -0800 (PST)
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
Subject: [PATCH v5 11/11] iommu: account IOMMU allocated memory
Date: Thu, 22 Feb 2024 17:39:37 +0000
Message-ID: <20240222173942.1481394-12-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_174101_288286_72A7A2C0 
X-CRM114-Status: GOOD (  11.70  )
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

There is a difference between GFP_ACCOUNT and what NR_IOMMU_PAGES shows.
GFP_ACCOUNT is set only where it makes sense to charge to user
processes, i.e. IOMMU Page Tables, but there more IOMMU shared data
that should not really be charged to a specific process.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 Documentation/admin-guide/cgroup-v2.rst | 2 +-
 Documentation/filesystems/proc.rst      | 4 ++--
 drivers/iommu/iommu-pages.h             | 2 ++
 include/linux/mmzone.h                  | 2 +-
 4 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
index 17e6e9565156..15f80fea8df7 100644
--- a/Documentation/admin-guide/cgroup-v2.rst
+++ b/Documentation/admin-guide/cgroup-v2.rst
@@ -1432,7 +1432,7 @@ PAGE_SIZE multiple when read back.
 	  sec_pagetables
 		Amount of memory allocated for secondary page tables,
 		this currently includes KVM mmu allocations on x86
-		and arm64.
+		and arm64 and IOMMU page tables.
 
 	  percpu (npn)
 		Amount of memory used for storing per-cpu kernel
diff --git a/Documentation/filesystems/proc.rst b/Documentation/filesystems/proc.rst
index 104c6d047d9b..604b2dccdc5a 100644
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
index daac2da00e40..6df286931907 100644
--- a/drivers/iommu/iommu-pages.h
+++ b/drivers/iommu/iommu-pages.h
@@ -30,6 +30,7 @@ static inline void __iommu_alloc_account(struct page *page, int order)
 	const long pgcnt = 1l << order;
 
 	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, pgcnt);
+	mod_lruvec_page_state(page, NR_SECONDARY_PAGETABLE, pgcnt);
 }
 
 /**
@@ -42,6 +43,7 @@ static inline void __iommu_free_account(struct page *page, int order)
 	const long pgcnt = 1l << order;
 
 	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, -pgcnt);
+	mod_lruvec_page_state(page, NR_SECONDARY_PAGETABLE, -pgcnt);
 }
 
 /**
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index bb6bc504915a..a18edcf12d53 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -202,7 +202,7 @@ enum node_stat_item {
 	NR_KERNEL_SCS_KB,	/* measured in KiB */
 #endif
 	NR_PAGETABLE,		/* used for pagetables */
-	NR_SECONDARY_PAGETABLE, /* secondary pagetables, e.g. KVM pagetables */
+	NR_SECONDARY_PAGETABLE, /* secondary pagetables, KVM & IOMMU */
 #ifdef CONFIG_IOMMU_SUPPORT
 	NR_IOMMU_PAGES,		/* # of pages allocated by IOMMU */
 #endif
-- 
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
