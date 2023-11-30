Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC533C10DC1
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 20:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zyvu8oHFUYYzvRqVEWX2sRJOD5qtDswt37ZoRmSNWDw=; b=4fAARCUL6nKiZa
	CO9MXgs32EV79x9TGkEkfUEd6LefdVzGBJ79mlJBZwyoLQmPO9I2GF+A2KKUUmI/WarjUi0rH/8q+
	e1Kr9XfhQxR52ylYqLfyIczrJ9hOORPm9LnwuM3eJCb6gUOrpHJ/muXTiMwum3FMVAsjyvM2+uinH
	C/d7oyxVghJKPW+t/Vfsb2zeCMNK/UCvy8SFVVFItiix3EhNqhgbOIcfYVa303OppdZuClUlbCsfQ
	SarB0r0t0TxiBNocDynCy8jTXx6mF4tdNG2jvGELPEPC8hjOojb1jx+uqA5klM2/FTAwOYVC3YaNo
	LG/zDGnzlASML2OTV6Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRY-00Boo6-2n;
	Thu, 30 Nov 2023 20:15:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRV-00Boj7-0u
	for linux-rockchip@bombadil.infradead.org;
	Thu, 30 Nov 2023 20:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=8aM4P70fu6Mpyhz2ZxBL57luN308AqDDoR+bdvrzfCU=; b=bKxGeb0k7mr7I+5ittNRWEMrBg
	fyh9rYkIlMvjdJZTXY8yIW8boAl39ami8Kq82j22/flWi4lsqxjGDnct1y2UGPigX7qnd1GrItqf4
	m5aST+6a7fOBy9WbpwnzLjnkBHU2K2+wZmFaZydCsMgGT57oth0bqnKqpPen5Xr+GdiiyWie2xSKM
	2sCnh30QYzDzSw//agR4Tl7vm97Y/axh23rE7m0090rp3pvkaj0DmmSc/IuYDoBkScs+lqVbnFc2K
	MSUPukPMMwEfjNAvDt2LQYlVTS3hzfrHd+VyI8+nltOwAJAVls1yqLSwbGqd70aR8IyHIAv8MYZN8
	ZnDZGdmQ==;
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRQ-0018VP-2e
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:23 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-67a338dfca7so8174926d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375313; x=1701980113; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8aM4P70fu6Mpyhz2ZxBL57luN308AqDDoR+bdvrzfCU=;
        b=b80+cTHOjDPJwashORLmuhsNiVYsxbm9Qjoxt6qBOQ/zbE3xoCfAC+2L6SwHlLExeD
         1PUpc9qhVmLETaONqwf41zf5TNMpZ3vTP+gYlTE90Gjp6O4WCTSHIa1g+d9HfU5yZ5o0
         8TwcKQN4UsV9x0L4s1P7RPZVginijNGmr54II2drSW66iISdNyMrI7cBnkiqSBKenvyW
         ENkpDmNIAHVaZUdF9TsPErWoZTjYeSpo8T99Ic3mlaLxyE4sSZ1jB+WVz/+37f8hvXUS
         Srmc/L9wfx42TOrNHhLQJqzeJeobdYBVGfVZvMLLszXRgKRGeFemWQFlBscQ7bKIT4FL
         t2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375313; x=1701980113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8aM4P70fu6Mpyhz2ZxBL57luN308AqDDoR+bdvrzfCU=;
        b=BhUjF6P+jJUY+KxcrMgrQ66UfaZTuukG51a5Uw78HmlO3yfwmS2xlcpAyLjm5sGHgd
         HJvYgSz1miVf/bC6DRas2LoTS9Nc/Hicv5c7iMe78Rrj+PFFCnGlfJv5DA4bgXswZcTO
         ygSFzqMz/rsulULrv/+9AsICvWoHDAbr2JQke7j4b4cETv5mTunWniuV8866QFkid+tb
         /qBOTi1Ng6FdWV4TEs75P4vnJdlRiUE6G1cXRwkMXIkm/7GveZf+QOsNAGFZZ3jJRY7E
         uGIFyiCXp9althR2P7S7DBCgWx0FEmCmTG1WF/w/8FmhvNcXt0ICo/Se5TmsErvyudGc
         VKpw==
X-Gm-Message-State: AOJu0YxVQSoQ1XJYNaP0uw1bZfvjnwdJ/ZG4zhYmFqojH/Ptwnt6f+bP
	R2AyyjD20XihmViz5C81rlWNfQ==
X-Google-Smtp-Source: AGHT+IEBs6D/FyJYqfxI4mL3iV1h7OCPfLZXSrKHIqLtLdmOiu4XOIwm8bZeJ7cSdUFCvrQdbklyMg==
X-Received: by 2002:a05:6214:5294:b0:67a:255c:c43f with SMTP id kj20-20020a056214529400b0067a255cc43fmr20595303qvb.18.1701375313540;
        Thu, 30 Nov 2023 12:15:13 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:13 -0800 (PST)
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
Subject: [PATCH v2 06/10] iommu/rockchip: use page allocation function provided by iommu-pages.h
Date: Thu, 30 Nov 2023 20:15:00 +0000
Message-ID: <20231130201504.2322355-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_201521_264588_FEDB5CE6 
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

Convert iommu/rockchip-iommu.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/rockchip-iommu.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 2685861c0a12..e04f22d481d0 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -26,6 +26,8 @@
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 
+#include "iommu-pages.h"
+
 /** MMU register offsets */
 #define RK_MMU_DTE_ADDR		0x00	/* Directory table address */
 #define RK_MMU_STATUS		0x04
@@ -727,14 +729,14 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	if (rk_dte_is_pt_valid(dte))
 		goto done;
 
-	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | rk_ops->gfp_flags);
+	page_table = iommu_alloc_page(GFP_ATOMIC | rk_ops->gfp_flags);
 	if (!page_table)
 		return ERR_PTR(-ENOMEM);
 
 	pt_dma = dma_map_single(dma_dev, page_table, SPAGE_SIZE, DMA_TO_DEVICE);
 	if (dma_mapping_error(dma_dev, pt_dma)) {
 		dev_err(dma_dev, "DMA mapping error while allocating page table\n");
-		free_page((unsigned long)page_table);
+		iommu_free_page(page_table);
 		return ERR_PTR(-ENOMEM);
 	}
 
@@ -1061,7 +1063,7 @@ static struct iommu_domain *rk_iommu_domain_alloc_paging(struct device *dev)
 	 * Each level1 (dt) and level2 (pt) table has 1024 4-byte entries.
 	 * Allocate one 4 KiB page for each table.
 	 */
-	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | rk_ops->gfp_flags);
+	rk_domain->dt = iommu_alloc_page(GFP_KERNEL | rk_ops->gfp_flags);
 	if (!rk_domain->dt)
 		goto err_free_domain;
 
@@ -1083,7 +1085,7 @@ static struct iommu_domain *rk_iommu_domain_alloc_paging(struct device *dev)
 	return &rk_domain->domain;
 
 err_free_dt:
-	free_page((unsigned long)rk_domain->dt);
+	iommu_free_page(rk_domain->dt);
 err_free_domain:
 	kfree(rk_domain);
 
@@ -1104,13 +1106,13 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
 			u32 *page_table = phys_to_virt(pt_phys);
 			dma_unmap_single(dma_dev, pt_phys,
 					 SPAGE_SIZE, DMA_TO_DEVICE);
-			free_page((unsigned long)page_table);
+			iommu_free_page(page_table);
 		}
 	}
 
 	dma_unmap_single(dma_dev, rk_domain->dt_dma,
 			 SPAGE_SIZE, DMA_TO_DEVICE);
-	free_page((unsigned long)rk_domain->dt);
+	iommu_free_page(rk_domain->dt);
 
 	kfree(rk_domain);
 }
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
