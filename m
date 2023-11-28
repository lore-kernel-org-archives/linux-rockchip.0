Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1449EC07E98
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Shtc3NholxBFBzes/Wl+wGxHMVk/0nVmW903j243rKs=; b=2xPk1pYbduwPG4
	CBFMfedeTaBhUqbvlz/yUtQDViBy1SGS1WNazpaeRvIMpxmdQr6k4voTGDP9ply/es/p2tvLBxBB6
	qdzQXx+F2jloitf6AKdTEaWIEYOAWDME43nfztQOdUIAS+h4RetBoPPHz5ufyNYbNGtboHUxEgf0L
	tgLqKbPWgqhrBfVOrMvbzopCg8j99WHG7zBnBi8jXZzlU7cevi1PP0oDiPEThc7ELaTBoycRgHB6E
	bIywXwtfNPkqtAA2Ws5SucPPOzCfzsy6adZTe8xZXs9tCN8CeMSHPsBsvd7LYNMsorMM05F2B/pGz
	nbCwh+7uEG2A3MJHp0Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r852E-006IPx-0H;
	Tue, 28 Nov 2023 20:50:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851w-006I9E-0N
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=ETdhPmFEsQhEIbzNxRgoLUCae/wd+Ix3V20Xa0Oz0Bc=; b=QY58w6SnJmZl5iq/6he8sGtbnJ
	tJIlfkuJRH58iniAe7cTFOjTPL2o2jGG/0ZvHDt3pyDEMubzb9/YRYnpHZfip7yyoH3+EVZDWMWj/
	E1lAq51uzeuB9lIl07U3ENPxOTapiLxN6iSwSsA4AgA2HQYoabbM9mNSyG5ECOT3gHlVQK8q7fkVR
	D+3+kuQB+YjPeo+dZ9pGsBZJTqfN9CcWx37uZFa2xmupjKptZ030ov4NK3tojNE+TzL6W5J/FRoYK
	uT7PW0x9Pg9ViAAMIaMBefE06/cRi5iREtHnhMvnkRZAwiyV/GuBd8nVtThRqeDpmrgT81Yv6usmL
	tUOnMxog==;
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851l-00Gis7-35
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:50:02 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-67a34fbaf12so18842886d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204590; x=1701809390; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ETdhPmFEsQhEIbzNxRgoLUCae/wd+Ix3V20Xa0Oz0Bc=;
        b=OpbGa707nUNMVLXwGhUeMRTn7/jU6gwmIZJd1ukkHdoMTq3C87ISfWuVFMtvHlirgU
         KUk1Cz1Tv4vNgCUU93oqJkf7B1SoNIXew27yYToMpyiu6fweHTUzX85Z/iK/gR+94x3k
         byBPa1vYRJd1DfSiC8lostvJLcvnAI1Sw2gY7OF0xkfxzDRgCQHLfD5/yLyFrAUMCVN4
         87aGg+4OlhLKTsAWowTI7MjiRjAUtJc2AnaNvGPMvZPOH7NshfIVw8SnZDufrraUKPws
         VtaDF5BILq6dP5ZkmYPqQsWMZdr2fu5F0LeL4PImfhKo8ZyUXbHVe2MdngWVzvT6rSC+
         SwBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204590; x=1701809390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ETdhPmFEsQhEIbzNxRgoLUCae/wd+Ix3V20Xa0Oz0Bc=;
        b=fw2CgdYWYIhUNox8kCe2dkdD27zjZJM/JNLYGOOU/P2HLaa5TES5+V5IGwzXH08d3D
         g+PVH9KlHvPSha/b8PE4ydQPcfBgjY39OPqnuafZ3t2cGB0IHrn181qR2xOsvrVTUV7G
         D0oOrH/qpBkx/q643v3YPWGLIVItHR0y3fVaKDNiTs/6n7vhwnaJgTcXNuEqnGu3uudg
         /IQKlx814ROXkPy5iF5M6v72ZV6SeSBxIa4ahTDciLnufxfYFjhY6BtYdfAIQJe3V9vg
         9hY5dYz7L9shutU1FyH54icTM9MoKOFoJ4hNFK4zCwUNKQ8LsqvGvFn+Lrf8p2Ver9ue
         nquw==
X-Gm-Message-State: AOJu0YxtV+ta7jYo1YItXhPADMDzT3VD9omVDukJ4Xr2mAo+LpLGBpLZ
	6NsgtWcH2HzPG4OJbvtjAMfSHQ==
X-Google-Smtp-Source: AGHT+IF20t0VWjgac0dRIZCA1JkcXVtwNJBGTcAuMHzFzEm0RhGR7NzU38i0clAtj6I8+ULrxoVFmw==
X-Received: by 2002:a0c:ebc3:0:b0:67a:2129:c05a with SMTP id k3-20020a0cebc3000000b0067a2129c05amr14629363qvq.53.1701204590697;
        Tue, 28 Nov 2023 12:49:50 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:50 -0800 (PST)
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
Subject: [PATCH 10/16] iommu/rockchip: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:32 +0000
Message-ID: <20231128204938.1453583-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204954_524385_892929CB 
X-CRM114-Status: GOOD (  11.24  )
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
 drivers/iommu/iommufd/iova_bitmap.c |  2 ++
 drivers/iommu/rockchip-iommu.c      | 14 ++++++++------
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/iommufd/iova_bitmap.c b/drivers/iommu/iommufd/iova_bitmap.c
index 6b8575b93f17..4d5d1be807fe 100644
--- a/drivers/iommu/iommufd/iova_bitmap.c
+++ b/drivers/iommu/iommufd/iova_bitmap.c
@@ -8,6 +8,8 @@
 #include <linux/slab.h>
 #include <linux/highmem.h>
 
+#include "../iommu-pages.h"
+
 #define BITS_PER_PAGE (PAGE_SIZE * BITS_PER_BYTE)
 
 /*
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
