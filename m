Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB06C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ET9eSRjsZ+jbdpFVv0v7IBaFClnj/lQ98gySsw/OArU=; b=0SX1OECeCQje4E
	0K4Nhsz1ChypMOED3JbO+Wd2HhVQ3tUBZI9AAp1XvxWpnvueOVTxRfmEbBsi3Mmr6EqwC9InKQLEu
	X7Z4FdjzIL0j1fHOD75le1To8C1NbbEt8HokxH4Kzt8muoYiOxAK6Tb7/mnaRRZfDO46etuYTOBms
	ICgAfjWVx3NLdULq/ikAF1WvDHIEF0I0743RmFABOGJgZEa5o3JpaBRJte98zwkGSPjeIW/3xCzuE
	cuLbFbrt7vNXYlz1dejOrhcLm3h9wnVyjgzOOZWjVaXkyiaoP3v/koDAigB4y9CMzmx8UGoLjh8nx
	6g2S8TkHVf3cork4HBrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r852D-006IPd-1i;
	Tue, 28 Nov 2023 20:50:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851w-006I96-0B
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=Nk58INbxx30xLOHUnMGn9OdPuZubp6H+G9gT2CVk01Q=; b=duKDi5Ce68wt8q9viRZ+w7sVVL
	3KhgtC8FRcp7QJ9T6kHgcnX8jRihtCDsSqK9hBqY7MjWE2nFVUc1xnnYv+Xo0ttI/CwRS3W8+gOVo
	93XaiCL2B2gMGB09VCJKTBXK4AWPXDR+48ktuEJkhRRK8M4JyKRzc7SkUfKg0VUniVoMoYVERzrym
	hrcVkcCg6DxjO7PMyHftnVJzS4rPJRem5uq4nuD9eleAtyAEyEzbwY/aVmXsxstwNFXglJBDnqw/h
	+0+mjXMGjGSXleeIYBQWDkQi++PjAioP9ThLxdJWD9uZuHwuo6WWqBWclbhKfQ18NRZEDv8IJ5lnV
	MAZr5pFQ==;
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1r851o-00CiHw-7O
	for linux-rockchip@lists.infradead.org; Tue, 28 Nov 2023 20:50:02 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5cd59f77d2dso55745657b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204594; x=1701809394; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nk58INbxx30xLOHUnMGn9OdPuZubp6H+G9gT2CVk01Q=;
        b=GVoDdfywB1M5ZAYKvzf6E9IL3VP9xeopvvG6jCkxiMwpq2Rysc0xLjTNl4SVciPTho
         6sv8P+jzQY28bp06h1vWcwyCtPW0V4I4roUksOvpim2FJGN3QzFvvtT56TXWjETWDpeL
         DY9u9Tj8Gmuq7opZmSQpeGp1yTTy+F497LAltR7sbFkFlclwgWFQY3e/z8s7COsKaEE/
         tL1GiM6jX7/h7SxxybBjSDC54c6Hlh+OQ8WwHYUI5oGqzyjHFs75ZKfp35LqRrrQGZ7m
         kO5cqjXZqwBzQfETIObF9xeHNyyBd9r4NbHgPyg4Tk5QKk9q2aNtPDDeuDDBRdOX0I2m
         Lf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204594; x=1701809394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nk58INbxx30xLOHUnMGn9OdPuZubp6H+G9gT2CVk01Q=;
        b=LquPKhtea9JSsFHGead0h929G8gSC1ETGLIKLer1WtKXyiap5V8e4DFZW8y2nx1Hdx
         Zjpxxy5ADeoA0dneLBfhLcmoXl7e3dPdfUoOblvRJ3asvHTWU3YVrFGI0RIUIWjP48K6
         +jwbKkiM++4KIN6x0Z5doaB2+d9Tx76QevWl9AsCh2uOd5BgNSRlJ3tiVBZ1/Y3B3A/p
         tm0TVl0kZf9y0JMZRhiFrM/TPCblDodGcc/4K6UjpMVvtgoijl4xwbuz00vtO3O3r+f4
         wi4J5pkR31Upot5u0HXydOxYTzoeKtsOLXEAA58FqczNvVB1Jyl52copE9OZ+4DfmLCK
         /lJg==
X-Gm-Message-State: AOJu0YzW0uhokk51fGHo4+cyaHDAmSLK0H+wMQw10lbGNyk3vRSZUE+e
	63kqDkZ9drufe9UOzA4KMuL3oQ==
X-Google-Smtp-Source: AGHT+IFeRft5lu3DnWQgWnRJh58TGHHoSR4IZRyS1wE4nkLKveRfays9X3IHaY/+Xezkx1Q2h+wp9Q==
X-Received: by 2002:a81:a507:0:b0:5cb:d645:8cdf with SMTP id u7-20020a81a507000000b005cbd6458cdfmr16849996ywg.48.1701204594372;
        Tue, 28 Nov 2023 12:49:54 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:54 -0800 (PST)
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
Subject: [PATCH 14/16] iommu: account IOMMU allocated memory
Date: Tue, 28 Nov 2023 20:49:36 +0000
Message-ID: <20231128204938.1453583-15-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204956_302782_C6436062 
X-CRM114-Status: GOOD (  11.20  )
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
index 69895a355c0c..cdd257585284 100644
--- a/drivers/iommu/iommu-pages.h
+++ b/drivers/iommu/iommu-pages.h
@@ -27,6 +27,7 @@ static inline void __iommu_alloc_account(struct page *pages, int order)
 	const long pgcnt = 1l << order;
 
 	mod_node_page_state(page_pgdat(pages), NR_IOMMU_PAGES, pgcnt);
+	mod_lruvec_page_state(pages, NR_SECONDARY_PAGETABLE, pgcnt);
 }
 
 /**
@@ -39,6 +40,7 @@ static inline void __iommu_free_account(struct page *pages, int order)
 	const long pgcnt = 1l << order;
 
 	mod_node_page_state(page_pgdat(pages), NR_IOMMU_PAGES, -pgcnt);
+	mod_lruvec_page_state(pages, NR_SECONDARY_PAGETABLE, -pgcnt);
 }
 
 /**
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 1a4d0bba3e8b..aaabb385663c 100644
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
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
