Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0694C47073
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 20:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Q6j4ZO2wCLVJmlFbdH0svMNYlqV7doukyu+qsAvBsM=; b=jfMcDnrU3EAx91
	T7VAP1jAP+0meFv4WOlaApyIcrAf2qUW+1gkJaShyw9AwiN8Bub2DbVfnpSg0bVIkoLt0otl5nwus
	ys8oaR9v4b5DCvbMAPFKh5wRJJDHD6ncE1YO458T9yaufcn4a52IU4/sBDfdnx8Vy8VzedE8BM65e
	fR6f+Gi0EhsFinM/CSXKhXt1IJZGIQKkmOEdupGw65Hj2Wc1kjEdO49CL5ZAPXabBtrUGGxQ9hlni
	va9jC2EKm7a/cKQBAWZKkuLDg/VQ+ZQXCCIrAjwjYlhlsgnxO7u7zMjwFGp86ELsShSUGekRKlDDe
	m6qt7UX1O62/PENvBF9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDd7-00DU2x-2V;
	Tue, 26 Dec 2023 20:02:21 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDcz-00DTvI-1e
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 20:02:18 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-78132affa95so226096285a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 12:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703620931; x=1704225731; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ypS1Neib8HIDm9UmxS/HJDs2d4K6sNmK80zg2UdXDks=;
        b=MMljJUEIjyn1o0GmeP2zg+XO1LktmCC9HJ6wzZmnhLOb2U3s7rdAhXwuI9VYwIiL+X
         LOBlGP2TEKJRReFsOnHUY5Ilny1U6xwyfgj4G+NxmlaJ5mhbUTX1nCxy+MD8MEDjaQq/
         WzMe7dDQeTQo9YJHjqjzgPd8+3/tqoDxopMBxhWLdwF2TMCEseQ+K9wxFnxgNys/zK8E
         0gbOXroEmku1Xnv7aZgyusrnyPVH/Q015W9p50/7Gz4ZHurpEpENPvw5exTdux82r+C2
         7s78j2etGUt1cSM0C2ky26jUtFDU5RVMUWAyZZaBdYfg9reR5WmD6hdJjHV8bitnxjtz
         aXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703620931; x=1704225731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ypS1Neib8HIDm9UmxS/HJDs2d4K6sNmK80zg2UdXDks=;
        b=TCesLZ6xt1DeGV6Dg83shf5RfIRVe9r9q39DDyeh1Uy4g2ctUxQTUnhaGCsdVFJAgk
         BwwtVAlVkuQZIbLbi9jb9SGUdPiLIA0IsqXi9uARV43+dp1KHzf3Aw36F8Zj57Di9Vbz
         Ht30R+nxEn8Fu1jB82dRbA5DBQAYgWu4C28IUcBTtA9iu3yoVIljcLTxgwGtFRngDUTg
         7mgRLSEyPeQrUBYbqJik+dqSJFqOC1pwAVSXnc1SkQDZrXrSSfLYsPqONs9+ULh7fS7R
         AwlW0YB80EE7aAXOaz5EJ3kXlAtGQ4+FnuqgSvX+3T8CAnh+7qPbjyI2EnvQErs0n9cx
         JOag==
X-Gm-Message-State: AOJu0YwYOLVwE3R1fCktJrtHdhFwUoM8gB5zh0vYZzlDGfTmQSCLFtYK
	LIl9RsXLgGQfB6myMveizB7BsxJQui5Y0A==
X-Google-Smtp-Source: AGHT+IHSQM+LgRuNVnF3iWBSyAs/u7g89umL2iScajvlGIrSq1uiM5Mc659FcM2VTca3M8kj7d2P0g==
X-Received: by 2002:ad4:5ae7:0:b0:67f:7c5c:3449 with SMTP id c7-20020ad45ae7000000b0067f7c5c3449mr13308631qvh.14.1703620931126;
        Tue, 26 Dec 2023 12:02:11 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id t5-20020a0cf985000000b0067f696f412esm4894539qvn.112.2023.12.26.12.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 12:02:10 -0800 (PST)
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
Subject: [PATCH v3 03/10] iommu/io-pgtable-arm: use page allocation function provided by iommu-pages.h
Date: Tue, 26 Dec 2023 20:01:58 +0000
Message-ID: <20231226200205.562565-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226200205.562565-1-pasha.tatashin@soleen.com>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_120213_575206_D94EBFE5 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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
---
 drivers/iommu/io-pgtable-arm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 72dcdd468cf3..21d315151ad6 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -21,6 +21,7 @@
 #include <asm/barrier.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-pages.h"
 
 #define ARM_LPAE_MAX_ADDR_BITS		52
 #define ARM_LPAE_S2_MAX_CONCAT_PAGES	16
@@ -197,7 +198,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	void *pages;
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
-	p = alloc_pages_node(dev_to_node(dev), gfp | __GFP_ZERO, order);
+	p = __iommu_alloc_pages_node(dev_to_node(dev), gfp, order);
 	if (!p)
 		return NULL;
 
@@ -221,7 +222,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	dev_err(dev, "Cannot accommodate DMA translation for IOMMU page tables\n");
 	dma_unmap_single(dev, dma, size, DMA_TO_DEVICE);
 out_free:
-	__free_pages(p, order);
+	__iommu_free_pages(p, order);
 	return NULL;
 }
 
@@ -231,7 +232,7 @@ static void __arm_lpae_free_pages(void *pages, size_t size,
 	if (!cfg->coherent_walk)
 		dma_unmap_single(cfg->iommu_dev, __arm_lpae_dma_addr(pages),
 				 size, DMA_TO_DEVICE);
-	free_pages((unsigned long)pages, get_order(size));
+	iommu_free_pages(pages, get_order(size));
 }
 
 static void __arm_lpae_sync_pte(arm_lpae_iopte *ptep, int num_entries,
-- 
2.43.0.472.g3155946c3a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
