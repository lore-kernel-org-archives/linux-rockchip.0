Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AC68C4828D
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrq5IhD3oXHMK4v1jAXM1tNw4nxrdJ48/FUg1L8DWlU=; b=cvJW7dJFBVyZcr
	w414iaRXBhk6PYUyqQ6mzv3sJ0RDuxEydZShsZXBnbRBjJ3C9H5JJadYkNwr9ZdYbuPu/EO6nYcjS
	1reLw4SMvk2tkywDeaMHyzG2xFINdjnPVhp8v+7P6oxXitzkZgrOmEdkZDigD6jIB9zpqgCnbR0If
	SWzE9yckzcXq/KIs5mynO0kXAduBQU8oGlYZZ9F/VCHzPTjqagVGJYBA/NX4isgECOILdwQ2ilqOq
	ca5nMngr2wvd2YaWX6j6D//mkSkduCQVo37O0s7Y0sUUrpcdijeZTuHjPSg6XKAapTuz0v1eaa/xT
	DSH+w9q11hQnrFU7pH2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvT-0000000BKba-3onA;
	Wed, 07 Feb 2024 17:41:35 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvE-0000000BKKz-3cs6
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:26 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-783def87c8cso46581285a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327680; x=1707932480; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HrRTSlkta7nD8c1SJPx3AxPn1tn9y9LkFmhcOlF4lks=;
        b=BJ41boaX3/xbY9dvcFr0Qo4Q0IlibZJzYhS2eppvkW4HEHbCjvL3qg/X9xxJtFbKCt
         HXL9GAS2PHJ3zcx/Q1sgvAd3c2lzadYl5DE8QhcP/+sx+RAFgtFnth0Q26PO9ONRHbWD
         9FmyYpYa4QCLTOC+GgpkymH9/mc8io74DBi3OpWqpnKIpur4eERmzIqZ8SvE4RBneVZL
         BR/4uFK5YcsD9mQfVjbEsg1IKSh0HYZMIWS8jLgR7VGhjM5CR9WWeuhXTPw5lZkxwmFA
         4k+8KIxMnQlqF/BlWP3lp6+bOVPXP6+cDaVTP+daBydF5rHhzV5ZAKwZgpC0Ls1H+j7/
         OB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327680; x=1707932480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HrRTSlkta7nD8c1SJPx3AxPn1tn9y9LkFmhcOlF4lks=;
        b=HmD7LncgjJ1teM1RbzPlNZTCkXh3lYRVsHSvGi4WQU/XZvxXmM5d56gMcFHVhRMHpL
         JKp4JXjfUQeOkg5xGbReo4Zn/AFmEpWK3FmXrgNr4O5Nas7HvrXVR5SpGKSwnDcmHlQS
         Kk2drvDKbQbxOgQTePvNjDWWZPt0l1MvOp7ebkY5zl4Stic+yQj/bIfTM33LTnEc/vR1
         1P0H8cyEsyJey0eW2+J9xoxLqgSSRhwWvXIBrioN3YmAtA5kL/5kKC6pYhEnkaEWbnax
         e+Yd04miX2P+6l2/wJ88DVVJownJva+CIgkVWNHxynNjkKZi5SQRQ+G0+pWoSU82U6Rs
         WNDw==
X-Gm-Message-State: AOJu0YzITzzaaoQm1zBRK4WbysJirrRdkrbKg4vmR4dfAc1t7/ZWc2jl
	uOa+s0vNiBtHaVMO31QgToGUYIvxnN3pIwR81xfZCyWZ1AnbR6vXvnc4bKywA7g=
X-Google-Smtp-Source: AGHT+IHhb+pueaISZV6Y8tJp2t2CFo0mWlpmACo7IYuyoV1N2oy7KZrIG0XVhtVG+SmB5cwuhpqy+Q==
X-Received: by 2002:a05:620a:12c8:b0:785:3887:de18 with SMTP id e8-20020a05620a12c800b007853887de18mr6401324qkl.65.1707327679899;
        Wed, 07 Feb 2024 09:41:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUCDfKWFIl6QUubNKHOK+J/TQZfBk6GOATQV7+UROelHHizxj2bMScNb5yjy+7wEKvrKAVO938EhFK3MDp4QvVuIEMns3aJNEfZ4lLhVczSUx4hYdn3X7Qx8HTpAiobpDi+dY9UU0JFYWP3sxFQVS1xxl7fcBVSx0blttAqIQWkGbtG/8OFxy5YJX+xNhtsJb3t9pvZsef+YcrlQh+9z7K1HEh5YIvRBqpPod3dD8oKW9DDybH9+3HAaHHBY8iiIHdHyvvhg/Qqh/tY8U66rdo6r4QvsxgmBFMyxznrxlOPKUwMUFVhM2YvFghVr6hKgb6KzPzIvg28q6LrAw8lD7weD0eI2MrfirCmooqnAA/zgK7D0KurMOIDpabn9VkUHuhE88OEKQ8h62/Wa2gdcl4YDdMkJY4DDjELGulQmsDVBCrUtil9loYc5aX8Gh2jq/ztHo3kv5ymJnfZ/h7e7WZdfaZvxSbUL64wc23AYR/EczgayCdZpmGXX2jQE3/KPfSIPAL6DXV6qvHIwUWL4vG18mc7tiVYDE//uM4hJo7eMbISiBgH4sundju5RQWqxyjeA3VcVHj+VPU4vBDpsrZVdnHRZeaGTV3rwC8oZXb19D/7KR1Wm7euJ76N5bgFnA7vjZhfsEp+F03DZsEUpCkkLYMsxrQWrLbAZIy488QP+Zdz41QqcwwktLByJIdIxAeRSxHxin8RRSgrxaqXRKius9NFl4oDbRCD6svZoHMd4UnX0vfYrQ0s8umvFi83/7gbRVCzXY4TP8NJFByhRuhTVTALB1EBu6ny+PtNXEQLdFexeijpQwT5/ahI+mpZ9ajMM7oM3At8FGk5pnU/BL1Nonz5Y8fjdV6tPG/C5Zk6RhURg9qAf+9R8Omad1eFWXxT9K6yqaix3pq9xGAZ8o3pF+xFI149xhPQNCmvLnHRgEmJUeIIm7boC4KgdrC5bBoaux
 c6ozrLySOAxoy5JAAUBKnlhPctpWnwmvtfHeBXAM+mRt1+c/cu3MhP0MSUMt9WZHns3r/985c1KNIPq0blR6t+yh5SOQk7YDqh0wPxUpt4Kax6NjryE1iCgR1+E5QeDElNdAVf+hiKcPe5+DO4dGivJK8C2DQW1E5U+dX94X2hiWwHcHd0IHOFqpQBMw3MYyXVibLuxNZq6E5ml+47r+bMOyL/Bqfi3ViLUhztHQ6nikGjlZcsJYY7JUssc0W5vg58IiiHspK92+rwN2jGd4sH3ALx4bgyCF0SF9flcBEtXUjRUNSmob4ETrVkz7HKMS7If6nnJcyM0Vbo0UMoOZmd5knYt1xz+hu+YULQesXnetGwV4BBbVo0WA5dRc2eIzIsQXmdql1aXqiSjGCn5mug3+d3TEVV9PvmDpKEou6WN731U4KQNAZjHoQUf6UFZNlFysQJQPL4NE73c76duMdmUXiGxzZFehKgNvB7y4Wu+1/j
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:19 -0800 (PST)
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
Subject: [PATCH v4 10/10] iommu: account IOMMU allocated memory
Date: Wed,  7 Feb 2024 17:41:02 +0000
Message-ID: <20240207174102.1486130-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094121_270927_3F7D8190 
X-CRM114-Status: GOOD (  13.05  )
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
index 7336f976b641..e3eb93857a73 100644
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
2.43.0.594.gd9cf4e227d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
