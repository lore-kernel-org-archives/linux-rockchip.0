Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4820DC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5E/MK1d0rsYUg05xOSJLvC5+8xjKQ0D1Bgt0WhX5Kc=; b=rOez4xYnkK6iUT
	wcjQlPtct0vTE/OGax0g+EbkJVoSEGJykaUW6NdnMn6tNVGf3uuQS+Guqfi1Z7ArwGKiAu2aIhVlY
	l9Ve8m28z26Pv+tLmNahsMmO++VxhOA5mjdU4IHpryHJNYAwlgJLlj/ODGlCnyZytlErJgJaK64p3
	sMPAblywn8BxCNY5681mGedj8dPQNKPCxZAjCnFpXpqBQJDHRR+Mo0kGA4icm6aofTPLqCKobBmyJ
	n/BHhE6E87h2MhVg6wY30NeDIMNfAksibahRjM2IxOtoTNoyJN++7fjzy2PNmdKxLsWBGoJmVf4PJ
	3Ie8AhjylopPK0DvRYVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRJg-00000001pcx-31KI;
	Sat, 13 Apr 2024 00:32:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRJf-00000001pce-3WSu
	for linux-rockchip@bombadil.infradead.org;
	Sat, 13 Apr 2024 00:32:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=oW/KEiSNsnRBw/l+ZCWeQ/h6Gx3xayfzLPqYuXkw+Zo=; b=J1325wfDzLvgsG/iL44+sbo8XF
	NYn3kb7d+Rat4pitGW0NS2qAAe1YQIjGXMM9IYE7+ThzRCRM9NHBLxStOyjjdY2oP5odEE+QxNqqy
	VwMnHMVJr2oiXm8BWlNjI8fODKMRpfXvBfxzS0ZAL5l+ZIJzy5xX4aaKMK6wmFuZ17xpzCFNoHEGQ
	t0BNAT9BZbogAZEC6HxOAZD0q96odivIEeVLAeThf8c4Mx/v5tL07vxCJp8NzBtcetp1LQzJ+pWqr
	s1bxRVceh0rnEX7pCwoSrvbXAZFmSTQNiCWbGsbnJCBiGvS7zSANiU2UP5mM6wJ+KvkeOgOAqFK5c
	oestP+/Q==;
Received: from mail-oo1-f52.google.com ([209.85.161.52])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRFn-00000009NVf-3ji0
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:32:10 +0000
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5aa12c21ff4so937030eaf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712967936; x=1713572736; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oW/KEiSNsnRBw/l+ZCWeQ/h6Gx3xayfzLPqYuXkw+Zo=;
        b=TvzE61uDCnAbNGBHIDKHQu9e+d9aBbqHKd0QBbri3RI1WSyrrqqrMz3n6oYbhkW69u
         F5zblhTN13UgjJ939rAfiS0W+v9rTWi36+EbV4YOnD9LUuw8yY0wDEGgcyEzLw1DrrgC
         eDylkKO3YBt0rVWZ9TqhSrPlbzJY3Ku8r/CISiLrK/CFUgHrS+WprZ6MN955dHrDJO65
         zwzxxeZetE1rCKafKx2HwiqD2jUk4SJCnYxStIhLFmNl05aS/6RZvMM+XJOQxobV/GLz
         o79sq7/M7Zw3+itmkYSgGOpgEDoHlDkrf7SdgOO4JHMlckBz+0RBMPVWJS2+3UVRaeAM
         5muw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712967936; x=1713572736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oW/KEiSNsnRBw/l+ZCWeQ/h6Gx3xayfzLPqYuXkw+Zo=;
        b=OAQrUuo3M2bJMrPzY9d74SGPgUNiHSLL1o/cP1P/PieRXy23yzsZP7uo51FUJHaNRq
         S+UMBrMjIlVaXsvNmD6w6rZl9UYJyn37zY7GjVUcBHXo6xblme7bmzTc2fMcpAQovmHD
         e90mo6dyjStdfKPqp2lSbGVvXnRxhmzu+R7iRI8mlpnSIJqNBmZTSCPJeHX7IF/G6YX1
         XmU2HCxE+qh4l/cL7T1zrFU511tbOYp9nXiif/8g3qL9m95ZFLDAkXp5N9PKnskg6K+r
         1cppPDcaEFR2ibq4kQ74aCLynrhiVE1B/1rfty1/Oxm2FKIxJJHFuwquriCoIDm1ULGW
         aWXg==
X-Forwarded-Encrypted: i=1; AJvYcCUknffFKQUr4czt6YfLaiOt23EOM6dT+PhgLkN4NYqaDElPQXHuNh+Fnb+Y72qb5FOmkzciLM8Mz68j7Y72SwAsoosXo5QmT+ibDURWj54JcuNi
X-Gm-Message-State: AOJu0YxrFhNwq/LzC841aX+kcvKEur6QilLvSnFmq3ie0ptHnDPZPnKt
	LjxLKjVLiDIgW+kvA6KiMkJBe2K4GUWeTJMq1S+HSbx1XBivWmGiZFs90ML8wWE=
X-Google-Smtp-Source: AGHT+IEyUReT/k6LJnKcktKQV3wXgSN/KWZ97Vz9yLFBdXAq+5mOndsoGpnTEJQKhqddAuehqON2DA==
X-Received: by 2002:a54:4393:0:b0:3c7:203:789 with SMTP id u19-20020a544393000000b003c702030789mr42394oiv.37.1712967935759;
        Fri, 12 Apr 2024 17:25:35 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:35 -0700 (PDT)
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
Subject: [PATCH v6 11/11] iommu: account IOMMU allocated memory
Date: Sat, 13 Apr 2024 00:25:22 +0000
Message-ID: <20240413002522.1101315-12-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
References: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_012937_636139_1F5342B5 
X-CRM114-Status: GOOD (  12.72  )
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
index c6a6b9df2104..707e39280a9a 100644
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
index 1264b0f6b6c3..82ebf0033081 100644
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
index be17195f6f86..8f9c9590a42c 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -205,7 +205,7 @@ enum node_stat_item {
 	NR_KERNEL_SCS_KB,	/* measured in KiB */
 #endif
 	NR_PAGETABLE,		/* used for pagetables */
-	NR_SECONDARY_PAGETABLE, /* secondary pagetables, e.g. KVM pagetables */
+	NR_SECONDARY_PAGETABLE, /* secondary pagetables, KVM & IOMMU */
 #ifdef CONFIG_IOMMU_SUPPORT
 	NR_IOMMU_PAGES,		/* # of pages allocated by IOMMU */
 #endif
-- 
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
