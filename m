Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46DF4C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 20:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ET9eSRjsZ+jbdpFVv0v7IBaFClnj/lQ98gySsw/OArU=; b=eO9O+ulzkVAZXh
	QgTW6bRwGE0U7nOYQpi1wpy0n2tC0yD4jiXbQ4m62WI8j+ffC0yGVAhcvhWKOB4Z+Zxw/kz0VtBEn
	js2a84htw9twFEd7rAlUpROzrU7qQ+/+dBGu8Q5qvu4AZw4IyLbhrPuyPli7+1OVYYc/VKFtrR+qy
	OMRBe2tlEvXrwkazNs8wurQShzlyIzlvidu9MeB+heU9V/FIxlMQKjJD/H0/S5QTAwRESLU3gnH8Q
	07lXOOU6EU5SS9Ywm2HTVY/3YiHINUbYMtGchhmXPwMo/zL0OtonedxbLPYrPlyZtxcWKnmOVgkIE
	QizngNS5pxzwqmtfzQEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRX-00Bomt-2r;
	Thu, 30 Nov 2023 20:15:27 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRN-00Bocy-2c
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:21 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-67a3e0fb11aso7537116d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375317; x=1701980117; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nk58INbxx30xLOHUnMGn9OdPuZubp6H+G9gT2CVk01Q=;
        b=UgcZpNE4zOMXZQzrYiULdxHOe4xbQELizdDv4stT+zG+32V3+V4XstK/8sz5XHEnjB
         Hv9QSv4kf7/11qmSZhGlW8FfBLzmQuyNI+9pySAwYe0W8a2QShHTBDtApvCAD6FQw0/z
         6CW/ua/tdD6066guC/PYgC9LsWmxJXa+CSpbLidqZXgSKpCxyoJONYjxN0EE37QZ2JSY
         xRWeiR9WZdIh5LyXaYz5kpRwCjtQg8VC9LMw/cekRXhA7jUBF+v0Y717Lk2Pdtea4f/V
         2i2NCKYMrgpe3QXw9Q9wYErjr3i6bjk/ImqCv8prAc93FnFUNkmB14QrVhXg+ZIvTOEh
         0BnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375317; x=1701980117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nk58INbxx30xLOHUnMGn9OdPuZubp6H+G9gT2CVk01Q=;
        b=bzwXj/eiuxVvxcbOPIUimQBsp9SothDNQgZbNu5BA0KvaoeYpHNev+kyNsXQ4yobuJ
         QiyNJVBAbUIhNto+fJZ/99/w1iygfwPvhV+jU2D/BcrPncNlzaegI6My2iMT7AxfJTww
         /dPYgIEZlpDQrsCC9PnOlq1+a/AdoOmWpt8U99mTv2yCFCGznC9QLh+sUneTw/b7t3GO
         2PklsaL7MupFUHAyab9VOaoM0Bz4LfMRAgqLgMVi48BXWWNWiY9b4shd/E+1thLax+n4
         vjXbQJc5j+6y/TeNTUAAoi0kpaeQNzwqtF1mPSiX5Z/XbM0/GOZrqLvNRPLOhC/vEaEe
         q4Rg==
X-Gm-Message-State: AOJu0YwI2i+HnyycM8UdkLJlrrtfOtN1By95U10S2urPyeU486FwBCvr
	l4By/FWMYJhtreHCAF6Te9pxqQ==
X-Google-Smtp-Source: AGHT+IGvd2g71GGje9dR/iX9F2NrVDVxx6CHTrqO1K3GZh4lvqRPIVhnZdc8oub8jQLvnHQLKAhyCg==
X-Received: by 2002:a05:6214:16d:b0:67a:2942:988 with SMTP id y13-20020a056214016d00b0067a29420988mr18670319qvs.21.1701375317117;
        Thu, 30 Nov 2023 12:15:17 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:16 -0800 (PST)
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
Subject: [PATCH v2 10/10] iommu: account IOMMU allocated memory
Date: Thu, 30 Nov 2023 20:15:04 +0000
Message-ID: <20231130201504.2322355-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_121517_867475_3EA1C485 
X-CRM114-Status: GOOD (  12.10  )
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
