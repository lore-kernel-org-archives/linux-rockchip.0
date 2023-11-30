Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37440C07CA9
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 20:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ass+AAn5SBFxsJu4mAWstV6FxpjrqhWhhf6SfXaKUAM=; b=SFJ8oX+ObCJ/uj
	l/zOClUIFgOL7qCO4XV/UZqDz1KYNsApPNBgDq17r/sGV7pz9myOBQDECLvKUchUU8EcWOHUc2G21
	XPXTbNHCOtBKcpQDNDGYrncz+3LhxPdRNFooaE8dC/CQsnPEEMEHOh7e8UkyP/Jl7QYp+OCi/jyvX
	M+rSS0+Ql1vX2SMU8JKXqFVtcCpPQBi6YOG7M7CW2ibGRofsMjLaoB+2NMVfdrCgmLcCAwZVYYVXJ
	jmU+Tr9BU5bNzPfUInK9aDJ1OSVn7c6paokPXsMAbxTztEZjsXhooAcuNZoiw6XcrLKm0i+qNNOec
	J67IuAt1DMuIeZ0MAWog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRc-00Bosd-2T;
	Thu, 30 Nov 2023 20:15:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRY-00BonC-1N
	for linux-rockchip@bombadil.infradead.org;
	Thu, 30 Nov 2023 20:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=WwZxW20NTsAI6OtU2mg3WBn7dc7VhXurLb9lJcGaB3s=; b=kziE4wOWrPGkHpjH0DxbY+h28N
	M4UlA+fjWdFWeAV5Jb7p5/aqdAHC3YqEHNclBgMO6ZdtDNVB0CJDWybSi0XFluGwCe4B5Nd8YTKKz
	bocvr5H5WATiWtvLMYbMNdcvCHjRStNnSPMWorqC/zlCGEOwqM7caU+laPH/tBJYqkUrQd34HgsKv
	wUPYVuvyrTuiRgd3RRfWYm4uu5dNYOScYxL8BB9QiE+0yBEwdUxR783vyY0EMosLQDuqiDUi2+GIX
	Or3ZGkV2+p0SrtCQYdjYO5GeSUHNxluUXF+wwxLFuMdvvLeYMy9oHCKqRtPBcYlOnfd+Js/wzoYaG
	xqX2Djdw==;
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRS-0018Vb-1R
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:26 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3b842e28917so794528b6e.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375314; x=1701980114; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WwZxW20NTsAI6OtU2mg3WBn7dc7VhXurLb9lJcGaB3s=;
        b=duuc9c6zo/69pFlm0lNLVQQU1HJ1tG+PofWEUGfCoHfGjBd1WqNE/X/66sLgNEWL/p
         XeF+zeE4Rr7QHkJBOz1AGtVkwYOwdKIfhTTTpqccHtGFx1OAMaTx4YVRkAwC+P9MYBuq
         N0L9iJiwKYVaqs2ndTWzqSGRCUQMt4KmtXKThSqSsFTZw9Wei4bOQR6qePz7CmRVr2ez
         tRZn1fQCMTAa/G3Ihdx09+vENGOAMRwWQJxugMY7eT6cLE+r87Uq8APMFWKNzVGCibC2
         WyUKGitei4JKDHDAsjU6Mdx9/69VqkzMABOOZzHonaQhnGIaAUm9IkzwFpp8jBF3uHkX
         hgsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375314; x=1701980114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WwZxW20NTsAI6OtU2mg3WBn7dc7VhXurLb9lJcGaB3s=;
        b=ZofaAGqMku63Uo5Ym6qDZXT95b82Spv4jTqPmWNzzHyJ+z7JgOcFMzRTs0E04Kc1Nw
         M8PuW6swcr5Ip6emWV44J5go+YCzAfcmhwjbqJy1hSWZNYofGtFHf1s2uiqtwneMNy7P
         dxiOWQi1KYQn/Z6xYwfDi6VTRhcGhoCuDHfZk4LVhb4C2IAjhxJo1EGkKbBb3irR5o3D
         47CQ8zyOgNQ42jwm3QLbZHt54mLiuSQvxmAB7/sTd+VXr0N3cAyeZjTotki3wNAcqbry
         2RQxny7oVHYawl8gYjAaNYEiIGZP0KlS2a7zmG+/hFiTcnKfPlXO3n71oej/+AM4j0ZB
         gqkQ==
X-Gm-Message-State: AOJu0YwUMzKR7Z3dBajNJWLWI3iQDYbwafIt7qhERscMKPkSycP+S4IL
	P3/55HvNNbkRD6apmfbDSNfUnw==
X-Google-Smtp-Source: AGHT+IGTxsoHsoEZ+jaTqaWghyHDgBjLPZzal0bywx3elLmQBrrmBhd0Hv9BOGHbfQGzeWmE2Kea2A==
X-Received: by 2002:a05:6871:3281:b0:1fa:5890:7840 with SMTP id mp1-20020a056871328100b001fa58907840mr16958744oac.35.1701375314449;
        Thu, 30 Nov 2023 12:15:14 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:14 -0800 (PST)
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
Subject: [PATCH v2 07/10] iommu/sun50i: use page allocation function provided by iommu-pages.h
Date: Thu, 30 Nov 2023 20:15:01 +0000
Message-ID: <20231130201504.2322355-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_201522_780948_5585EB0E 
X-CRM114-Status: GOOD (  10.22  )
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

Convert iommu/sun50i-iommu.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/sun50i-iommu.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index 41484a5a399b..172ddb717eb5 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -26,6 +26,8 @@
 #include <linux/spinlock.h>
 #include <linux/types.h>
 
+#include "iommu-pages.h"
+
 #define IOMMU_RESET_REG			0x010
 #define IOMMU_RESET_RELEASE_ALL			0xffffffff
 #define IOMMU_ENABLE_REG		0x020
@@ -679,8 +681,7 @@ sun50i_iommu_domain_alloc_paging(struct device *dev)
 	if (!sun50i_domain)
 		return NULL;
 
-	sun50i_domain->dt = (u32 *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
-						    get_order(DT_SIZE));
+	sun50i_domain->dt = iommu_alloc_pages(GFP_KERNEL, get_order(DT_SIZE));
 	if (!sun50i_domain->dt)
 		goto err_free_domain;
 
@@ -702,7 +703,7 @@ static void sun50i_iommu_domain_free(struct iommu_domain *domain)
 {
 	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
 
-	free_pages((unsigned long)sun50i_domain->dt, get_order(DT_SIZE));
+	iommu_free_pages(sun50i_domain->dt, get_order(DT_SIZE));
 	sun50i_domain->dt = NULL;
 
 	kfree(sun50i_domain);
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
