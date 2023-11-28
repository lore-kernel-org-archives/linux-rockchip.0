Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06B02C07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5z0GxYVIKDPpKM9afOmzbiA3khb+Etcu3SnwCE2ZD4I=; b=vjzJ1TtCyKBeSa
	vZNbHX3paqwWQCsqQdXAesRHWXrJiHXMVaKhrg3pTcPLVkCZDzul8828vkVptVWTkvsT/v7+EnzDs
	ZS91yfSG3F7Ff/8fZOCEVx3uJsCP+gHyWnzJE3WveylLw/6am81FyM4azbf5WOupNBa9AGI6bHbDV
	6PChRu8IMiUsldgmb6MUBeFLhvu7MegWPNEnuw96yfiHlOIuNhwT9b4cmM4CaobWo1Ef7P0OxTDgM
	FzFW+mYw3rhoFpt2fsk1chkQcQmxVNdtnr+O/jwcBVfJ2FkR31ZD9/tO2q1PsbQrY6qJusnzAbSTU
	FZjU2TgTxrSSRixpvPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8522-006IGG-2T;
	Tue, 28 Nov 2023 20:50:10 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851p-006I1O-0g
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:50:00 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-67a35b68c34so18752416d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204596; x=1701809396; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YSGX0jW3To7/xuABL7QXXsr1KCFhu7Z9tThr0mLMrMc=;
        b=m0HfCEOxtkifXAHxe2/In861EZnza5mrMUHLQsHTB5mQr/Nq9C3RJn1Gs+9hfQEYqX
         4gGHlo54Oft7A+XVXWL2FtgVOAtRYXSiHzunngdXGbYL2n9RCWG3hnhVTOrFT3xuoDB3
         vXcTMLWAdtHJ5QPnu2MYHwEg8HzOvBteOGUMxDllIBQ6bALSSPTDOIGVins5P7yEFKGA
         TsGb4YvicpCo0Ufjfp/k3rfYnHsLcC5eiPel4h1FGQGImSaglcSP3XYWZIhTYggDXV4H
         B2qbHW5dtxTOAOAHf+l1EVEBC3s0AxZkHaQw7HSlkkiwT7bZyg4jAjKEFeNgvYUzVUO5
         TAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204596; x=1701809396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YSGX0jW3To7/xuABL7QXXsr1KCFhu7Z9tThr0mLMrMc=;
        b=tQPQwlXbbpFjn/fNzpmIUh2TT+Ia2mA+1A9NwB1kHsRU2YDIRwwsD7+lb56M2XQcV0
         Wpx2hK8hij3mUx6PsErA8uQbb/41CJLMxTNmhdR4bgmDZpTzPei+wPuu8HDJD8U5jS1d
         HOLjuJwn0QBr9ubhTP0TlGE4u9kfFkJjlVpyHch/+9jk0RrcFcqCABjPyOETftCT5VDN
         M3EdrWK2bTewMIwgchbozgbwOwOURNEhQybU5nXO2enJl8+zdWpDRRVy8yK13Xh536Or
         RsA96YQ4YDRLXivxkNGGhOsPGOEzsIgD76N65OeVZiqAexgddhUO6SOw5ioVkuCxZjEH
         KNvQ==
X-Gm-Message-State: AOJu0YyNigmh0yvSK23kQBfOaT3Sf0Sn+C/fzYDBZlzqZWJKTFv3j6bV
	rxhudFb4++/OI427UbDzg2Cz/w==
X-Google-Smtp-Source: AGHT+IH3XyzLx3HqaxxWdryJd33MqMJHkx6z6Xt3swBEGkMdx9JQSLka9GW0WH1FkTVqo27TzFUimQ==
X-Received: by 2002:a05:6214:246f:b0:67a:4ba1:84d5 with SMTP id im15-20020a056214246f00b0067a4ba184d5mr7928400qvb.16.1701204596396;
        Tue, 28 Nov 2023 12:49:56 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:56 -0800 (PST)
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
Subject: [PATCH 16/16] vfio: account iommu allocations
Date: Tue, 28 Nov 2023 20:49:38 +0000
Message-ID: <20231128204938.1453583-17-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_124957_252996_71A35A24 
X-CRM114-Status: UNSURE (   9.32  )
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

iommu allocations should be accounted in order to allow admins to
monitor and limit the amount of iommu memory.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/vfio/vfio_iommu_type1.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index eacd6ec04de5..b2854d7939ce 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -1436,7 +1436,7 @@ static int vfio_iommu_map(struct vfio_iommu *iommu, dma_addr_t iova,
 	list_for_each_entry(d, &iommu->domain_list, next) {
 		ret = iommu_map(d->domain, iova, (phys_addr_t)pfn << PAGE_SHIFT,
 				npage << PAGE_SHIFT, prot | IOMMU_CACHE,
-				GFP_KERNEL);
+				GFP_KERNEL_ACCOUNT);
 		if (ret)
 			goto unwind;
 
@@ -1750,7 +1750,8 @@ static int vfio_iommu_replay(struct vfio_iommu *iommu,
 			}
 
 			ret = iommu_map(domain->domain, iova, phys, size,
-					dma->prot | IOMMU_CACHE, GFP_KERNEL);
+					dma->prot | IOMMU_CACHE,
+					GFP_KERNEL_ACCOUNT);
 			if (ret) {
 				if (!dma->iommu_mapped) {
 					vfio_unpin_pages_remote(dma, iova,
@@ -1845,7 +1846,8 @@ static void vfio_test_domain_fgsp(struct vfio_domain *domain, struct list_head *
 			continue;
 
 		ret = iommu_map(domain->domain, start, page_to_phys(pages), PAGE_SIZE * 2,
-				IOMMU_READ | IOMMU_WRITE | IOMMU_CACHE, GFP_KERNEL);
+				IOMMU_READ | IOMMU_WRITE | IOMMU_CACHE,
+				GFP_KERNEL_ACCOUNT);
 		if (!ret) {
 			size_t unmapped = iommu_unmap(domain->domain, start, PAGE_SIZE);
 
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
