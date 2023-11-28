Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 062F8C10DC2
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfEwdLO8ShTwRgmzNuybOunLPmZECIbibfZAYE18uNM=; b=WmJJDPIKEXp7Lg
	i9hEykxNWfOS/Cwmz8k0znSAzn781Cd2b4JO+zWyY8ANBh7UY1NI2cQXryK0tZufSQKQ8EyzZ0luo
	Vr0bqhwz61jV54hU2bTMj+Zf0NOUA6UaEZtNZzjjtp1nNfXF+IpvhTK+GRLjdlzaveU5JoB5HBMRV
	ASU07XBoO+6BXansuL5RTsN2hfkyuBNcfVeGNrjgI3Gz0OMkDJWbMbDRFmCDSSCi8iY5L0d5pvDM6
	FQagjZSlfuwLtb7ksffM0CQWwCNT5BYsHQ1IKgTpbkf22UztoRIsbWy4qSsbx83LgAuLRxlxjs+gd
	beyq3E7JcAcl+aOfXARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r851w-006I9x-0A;
	Tue, 28 Nov 2023 20:50:04 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851j-006HvZ-36
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:49:57 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-67a51ad638eso1806236d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204589; x=1701809389; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GuhRNW8EraGxCVOazJoq98oeC/940DRf0iOPJkOnyXY=;
        b=m3iWfw+QWWKzVq3wv4P4IvSFyX14P5awiJ2DLf97QSscDfNQNJNQccRoLb3xLGNEjD
         uZdLC6sOhzb+kzC/B781+LjusO8xetaQ+IcOviKisC0uZ+IA4hZOhUFULANiPJj0vMDJ
         VNFkuXQdqmKEklByBBmHz8UtGguwirTU2UfOF8n9M8J3VSkCalUpp8Mi0VqPAL3oYGFF
         fR5K5/JdYq0mCn6+inzopqQzEET3a4+tL0cH54h3z5lUNZk76DydfbFIf/1TKmLL8TyC
         wUqKV6wJNeTTOaL5yj7WQ64HdGY/pOa84F9/+7KOBMdDhwY7/iJwLOHqyuf8xJ+9+9M5
         c3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204589; x=1701809389;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GuhRNW8EraGxCVOazJoq98oeC/940DRf0iOPJkOnyXY=;
        b=jJrYdZrmKG3dce7FdRJyDeu6nYiSF+HwKR0hnxxwCRmFYE8gV4wy/yeYOn/sb6fFV5
         X/6nf8bJB3AofS04mtWvnb4ZiZdw+LftZEa6u4Twdt8o+1+h1IaP/rml/fMndZvn9cl6
         XqH5r5oE7CsTMU/2OZ8vIBr87GdHOv0GHhHVA3bv3jDl8lsHLa8U7waP/ZYQIzw8wpMV
         4fO3KDnnVbGfE8vr+682tMWScL3ULe61BTKGjaYcmDJo4Qo0tvtBUj6odJnH5HiyIYgd
         tWenF/Z4AfwxQ1fR5dEHXGkvyvNQL1i1xDptvu2fp0i32WYSHkRm/QKxJgJaPc+qmkvn
         AIOA==
X-Gm-Message-State: AOJu0Yw3GjJafV0kwEjG4jcXLZOeyN4z+KtLQZTzdNNhKvMP8tS7l/2r
	5pIdK6kQNeiWarP7KFXbbySXTQ==
X-Google-Smtp-Source: AGHT+IGPu3upFAdCP6yNYmrLD/qlosIlP36YcCIt0RdR7fCBV7LNnnJ4icXgqHOsHyLuFzh/n11wOA==
X-Received: by 2002:a05:6214:1c0b:b0:67a:4546:9895 with SMTP id u11-20020a0562141c0b00b0067a45469895mr14672496qvc.12.1701204589666;
        Tue, 28 Nov 2023 12:49:49 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:49 -0800 (PST)
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
Subject: [PATCH 09/16] iommu/iommufd: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:31 +0000
Message-ID: <20231128204938.1453583-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_124952_047182_0287791F 
X-CRM114-Status: GOOD (  10.54  )
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

Convert iommu/iommufd/* files to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/iommufd/iova_bitmap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/iommufd/iova_bitmap.c b/drivers/iommu/iommufd/iova_bitmap.c
index 0a92c9eeaf7f..6b8575b93f17 100644
--- a/drivers/iommu/iommufd/iova_bitmap.c
+++ b/drivers/iommu/iommufd/iova_bitmap.c
@@ -253,7 +253,7 @@ struct iova_bitmap *iova_bitmap_alloc(unsigned long iova, size_t length,
 	bitmap->iova = iova;
 	bitmap->length = length;
 	mapped->iova = iova;
-	mapped->pages = (struct page **)__get_free_page(GFP_KERNEL);
+	mapped->pages = iommu_alloc_page(GFP_KERNEL);
 	if (!mapped->pages) {
 		rc = -ENOMEM;
 		goto err;
@@ -284,7 +284,7 @@ void iova_bitmap_free(struct iova_bitmap *bitmap)
 	iova_bitmap_put(bitmap);
 
 	if (mapped->pages) {
-		free_page((unsigned long)mapped->pages);
+		iommu_free_page(mapped->pages);
 		mapped->pages = NULL;
 	}
 
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
