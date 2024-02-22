Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D590BC5479F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59knTgRg9dq3MN9pRhjzklQSIiKWzTz7iSkd/viYaP4=; b=BMtTEmoT/+Llfe
	icr7lk6LDTF6vz2eS7LDCLLgseLqU57wfudovw/3X/qvoMFPvV8MGdwmI+tlWOAMqUPzp39dOvrnG
	FaxfZ/p9PdwZkLAsW0rPEJTTjpUly3wFqgpBIbaLK0WSyXFesXNBTaXZ/TK0mcVvHTHMl0QSdUV3r
	jJyOcKcpb9bILd9GJhtuyAqV3TrpGOcy8Bjf2trZhZqAZqZG65BogK/y/rwyl+zWMZgpV3COdPVTX
	BWF1gXqbDMYciB4eDp6b+AOYGhnFCN71V3IVciZ2dijZIYubeN9Jl7YEP4pWNu/qLr1QkDK2vvItN
	HtGJ4NUw9m0RspBGfzfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD49-00000005q5v-20CV;
	Thu, 22 Feb 2024 17:41:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD46-00000005q2k-33MO
	for linux-rockchip@bombadil.infradead.org;
	Thu, 22 Feb 2024 17:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=C9sOCaXXTnuRzyvLt2S+i0eLigQNp6D64P7FATFt28E=; b=LkMHQ2w8Rr7PeJBwXwUn1Zgu2h
	gkEvc+LSIHE1zYFd6CbPoYP4Y2KPYeWCetmw12uX8XStQSXWv36+sS5sLwgRQoapZ/FtpDeq+lXon
	JNpXGO/SIISLm8fgXj/sz6FrhgppHdWPozLiGMlVWt5HPFaxznBr/vcK79tTEssXQUroTjwr2+quC
	PdBUn8fh8PKwzSU+3PuCfVFA2I4/V2/jp5zIFMOHcgObsWVMXfoQnY6CgGT+mv0MhxJGfNpJALWFU
	v/eS4F4Cjgatz0r3XtPaRXhUbvHG6Q6QeZpgTpEcKe0Yrk0aW5RwMLMG4Za3nWYxcD3DGcB3rQpFM
	E1vm6snQ==;
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD43-00000004DmI-0YP1
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:40:57 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-42a0ba5098bso46270141cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623589; x=1709228389; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C9sOCaXXTnuRzyvLt2S+i0eLigQNp6D64P7FATFt28E=;
        b=xp0usoG5wzAIHt0KTqqff7K4+7d4+3+FC74h7YWj4P/0Jy9/xBWzRvlQMwYiOiKCHJ
         RecCFf3U90SiMZEBvRdtlaOxvr6NHUydHuXpfVEMIBeiM5HUnwdbDBy1/sQJVi46A9Mw
         ULF32stF+N4DNHR1jIaMT5UyE9BsYlJVhagn8fT6Ft+ajkSPH60RazHcF2s6KHop6P9l
         tRwECb7otHyZs2DlFVL7FqMgkJe3+P3CuU2C+ylASZAC1nHmTKRw7C69JPIypxemXqPF
         0fXzEbnlDi9+LsB9m6uAdYo9CewJtxfZd63zpmy3A0lwONeMoyjYUOOgnkEYX9tv5tM+
         SIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623589; x=1709228389;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C9sOCaXXTnuRzyvLt2S+i0eLigQNp6D64P7FATFt28E=;
        b=Chi4ZzKNRlGcad08hk754NWNfsO0Yr72tZMadvzJodvgZHbPa+18EVS22eJfpNsdVl
         bHQWJZuQXUc2SsVuW1CKhoLQphIW66TLCf53yjD4i60nlfcA9Py9pGJQpDT3NEsdX8Kl
         G1PlW8eBz1bZjlYXTGyWgaVewRbM6gbBfhKP3VWSps6T/viWBDQbPhlM/fWG5MKlXEAT
         e2PgMRkWAxWmtDL9rZUQXzjFj0zokfpcZUE+vZ7TabKZpbGR0CR2SwGOxSI5fNiilGDx
         fFEINprFsKtHN/9iyuDGcQdax25Y/p6evC63Xb7Ugscube38hm3mQ9TF1lq2LCt+XUNN
         OQcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMmy64KzLDhGaQit+cENS0jD8OFZzrgl0yWffg9ySoZFIfvVM4AORJrNRAYnk17Awqso2WhIhLVAPHsvlk+X8SKKvJLhWATg8c4QF2UaW7fDQt
X-Gm-Message-State: AOJu0Yz4jKq79/v7wr4NPmpHN4yg/g242VF6JJSken/PZW2AZ2939zKb
	6gEvaNy6NHeLPBE6rl1c/MpO1K8uQq62RbAdnGH4V+inQhZOUEsJ/i7C3GD2HfQ=
X-Google-Smtp-Source: AGHT+IEnNHT8mmpNAC8qGBK3waMn+7XKEftGRHH+gMR5BoK6c8bTMJMeqnbIkBxo5nuTApw4Lzgcmg==
X-Received: by 2002:a05:622a:103:b0:42d:b355:1538 with SMTP id u3-20020a05622a010300b0042db3551538mr27425174qtw.55.1708623589605;
        Thu, 22 Feb 2024 09:39:49 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:49 -0800 (PST)
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
Subject: [PATCH v5 04/11] iommu/io-pgtable-arm: use page allocation function provided by iommu-pages.h
Date: Thu, 22 Feb 2024 17:39:30 +0000
Message-ID: <20240222173942.1481394-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_174055_187874_9F96926F 
X-CRM114-Status: GOOD (  10.29  )
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

Convert iommu/io-pgtable-arm.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/io-pgtable-arm.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index f7828a7aad41..3d23b924cec1 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -21,6 +21,7 @@
 #include <asm/barrier.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-pages.h"
 
 #define ARM_LPAE_MAX_ADDR_BITS		52
 #define ARM_LPAE_S2_MAX_CONCAT_PAGES	16
@@ -198,14 +199,10 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
 
-	if (cfg->alloc) {
+	if (cfg->alloc)
 		pages = cfg->alloc(cookie, size, gfp);
-	} else {
-		struct page *p;
-
-		p = alloc_pages_node(dev_to_node(dev), gfp | __GFP_ZERO, order);
-		pages = p ? page_address(p) : NULL;
-	}
+	else
+		pages = iommu_alloc_pages_node(dev_to_node(dev), gfp, order);
 
 	if (!pages)
 		return NULL;
@@ -233,7 +230,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	if (cfg->free)
 		cfg->free(cookie, pages, size);
 	else
-		free_pages((unsigned long)pages, order);
+		iommu_free_pages(pages, order);
 
 	return NULL;
 }
@@ -249,7 +246,7 @@ static void __arm_lpae_free_pages(void *pages, size_t size,
 	if (cfg->free)
 		cfg->free(cookie, pages, size);
 	else
-		free_pages((unsigned long)pages, get_order(size));
+		iommu_free_pages(pages, get_order(size));
 }
 
 static void __arm_lpae_sync_pte(arm_lpae_iopte *ptep, int num_entries,
-- 
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
