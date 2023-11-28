Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD074C07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LF7xtOsPMsGG5Q5W2qUh1tMUmLkEzNfHLkVqJfqtLcA=; b=LbdguIv+xVyDHk
	lge/yJm+vhNJobkWNPYZR9Xx6tnUPOWV/FH4YE/uEeubeEQlT0cfHUcaKhikH1SxYJRQvtd47pQF4
	GB4hgOGFIfsnB1MsFR36SorvCSW32hHvt9Zo/QPLbHu1SJ69PROga5MUd3bWRouJ0ET2dGnNz+4LO
	NgL346LLhDR3smuNz/1WL7hg5/oaXEWEiPDNK2l61+evaqH8h7GZ18I+S3yDnc+x46jc6eCWPgzdd
	VB/HxTASK52vytvAu5QwKGaau1jcjsSqaIp8EttIvEFYCJPk4dpVBY3vq7lGN2xD6HlfhaCzT5uc9
	LWLHYKip6xihrX6cLcrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8522-006IFT-0U;
	Tue, 28 Nov 2023 20:50:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851r-006I3y-2A
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=9pzjq4U1m3Jk3/Q2EGDhq/3TlS/Ht1C4D8j4bsFObkQ=; b=mnCx7LBWXOB5QKFe64crKuzK5J
	oNew4FDv4/xQNLnH9TtGLqyKB9PDv86uNtpQPE7fqinRQsj11q0kVvMN9le+jBLhnUa9Oz5DvM5Yp
	ZZofg0PJN97fBg1eSvYYrP3cHs/wf4yxKOtQy0+FWrgZo3fJqacdr4lQrF+W5nBF/++IIGW+9ioej
	U39ZGO7nsSXVnrjQP1EoTyptn0j0snBpbbEf2j3YpHvNUbiBwQBuGdb8ybSWq5b8Fq/ZF9S8X2g9S
	TypC9WxTcYC/oYeyX6we9gVG4QluouK1tKD3Hx6uNTcQqftz7moTG2ekJ8g1Lyi9aR/GuT0tpcpcc
	jHKQNs3A==;
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851l-00Girx-2R
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:49:58 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5cc636d8a21so49945967b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204587; x=1701809387; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9pzjq4U1m3Jk3/Q2EGDhq/3TlS/Ht1C4D8j4bsFObkQ=;
        b=eQR421R9IvhezBXk6DCrNjuA9Vt8hnbqghu8MuAJMCWhFclI1p1GqnF8pEEr9ojVPK
         QQqqlrMpAsOgzkmJse4O7ZreCt/4yAd0bcKYHINrBA0qohf89sgOM3Paa7/mfuc+Eo3A
         CHrLMv58p3IWCK5dTbl5c0Rw6CeHyKdGOYg5a2WyFRjft0ccxxdz0VN4lJ/rcA4cYu4r
         dw/8Ifo1OjqyTJdl965Ljcb3PgXcY30DtCqR8ALnMskERxFUg6mqBHB3wlCx/Wka9voI
         GqSqHp5aXV1XKiy1X6EctuCO4rZHwssbZMdwgJyJCIGwYtByekO8fmD3DJlDwWiJYKlJ
         uTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204587; x=1701809387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9pzjq4U1m3Jk3/Q2EGDhq/3TlS/Ht1C4D8j4bsFObkQ=;
        b=qR7simbCFVHjVRbTO1HdDAomNhA486iOrE7+QVus8UTHAuxQBzKMP/P3KYYu3AX0F6
         UFEVijsBhh4JFbcW1IZLwwYSGbyAtV7k/SKvmnUnbAellqRAUYpVC9Rby+xlPBVoJmKS
         ukmcWDEERTkLa1/k3fdtRy9duSzYAqnsuo7bYwo3aHIlAMbc6rmT3sr5f1vEtwTLmfPi
         R0oO8kqGVyIgVaOwnYhVsESWOIEJhwWrItDaxRmnlUpnqoHaxYLdYo5AqQSe9O/hOKyf
         UcfSCVFPUkxxfIry34K0o/xeBch1FVCs2S3zkTlSAOpapGsC5fHBcjsnExJacKqEgrZp
         E+gg==
X-Gm-Message-State: AOJu0YwIUwYMIo0rJEAv6AwG1OuVs7NRA8+2YRuZQPrJdqSd73NaSxkc
	30XZ2zmZZYs6kh/CVF7edGxfSg==
X-Google-Smtp-Source: AGHT+IE/Byn/8N8Vta6BS83r49MMC2Wgiev3AoCZv/F2NdDhJZ9+kkS7XfcNeLYX07tpu8Z2obgTjA==
X-Received: by 2002:a81:87c2:0:b0:5c0:fc45:a249 with SMTP id x185-20020a8187c2000000b005c0fc45a249mr12000775ywf.40.1701204586847;
        Tue, 28 Nov 2023 12:49:46 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:46 -0800 (PST)
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
Subject: [PATCH 06/16] iommu/dma: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:28 +0000
Message-ID: <20231128204938.1453583-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204954_134163_5A0B389F 
X-CRM114-Status: GOOD (  10.28  )
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

Convert iommu/dma-iommu.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/dma-iommu.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 85163a83df2f..822adad464c2 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -31,6 +31,7 @@
 #include <linux/vmalloc.h>
 
 #include "dma-iommu.h"
+#include "iommu-pages.h"
 
 struct iommu_dma_msi_page {
 	struct list_head	list;
@@ -874,7 +875,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 static void __iommu_dma_free_pages(struct page **pages, int count)
 {
 	while (count--)
-		__free_page(pages[count]);
+		__iommu_free_page(pages[count]);
 	kvfree(pages);
 }
 
@@ -912,7 +913,8 @@ static struct page **__iommu_dma_alloc_pages(struct device *dev,
 			order_size = 1U << order;
 			if (order_mask > order_size)
 				alloc_flags |= __GFP_NORETRY;
-			page = alloc_pages_node(nid, alloc_flags, order);
+			page = __iommu_alloc_pages_node(nid, alloc_flags,
+							order);
 			if (!page)
 				continue;
 			if (order)
@@ -1572,7 +1574,7 @@ static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
 
 	page = dma_alloc_contiguous(dev, alloc_size, gfp);
 	if (!page)
-		page = alloc_pages_node(node, gfp, get_order(alloc_size));
+		page = __iommu_alloc_pages_node(node, gfp, get_order(alloc_size));
 	if (!page)
 		return NULL;
 
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
