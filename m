Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 156F7C10DC1
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGXvBqJvZ3EJEdhN/OasCvcc1nvOPfLEzhpofRDIyQs=; b=QsrgN75KlekWmU
	o2ufFw4k4SiwNK4yTCpwsYQ7xg0zVAYEXNy+3anqL+hqu0NVJxpqyvZWVlGmCuU9LS6f8kepgCu6m
	GYnbaPRCK6j8JldKtj57HezJGhFgEAujY8jNhNHybKZn70VsNUc9W/dythF/lJ8AdXJEAeTTbCXTh
	SiAOlirGwZ3DiDBOXZsMSuNPcPRpZJEo121zrA4/lUtb6y2Ny/zOUEVGgIMQ12pa76wOQ6LS9jdLO
	nmJpX6l2FzH81w63i+mUrcdR92BjPuYKwOlHdit8BNesKRwme5zqgVdioDYsuPAqCA20EANWg840A
	s9PP85z1jeZOIegnBA0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r851w-006IB3-39;
	Tue, 28 Nov 2023 20:50:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851q-006I1U-2I
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:49:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=EfTMP0IEjMSODjtdYrx10bu5wkmZdOPfzS7HMIYgctc=; b=mIlgtZBVnk62axWRwUvcdIrT9q
	rCYRU2PngTBUbxEUjA5DmULKz35aYt3XU5liWvJsmQv3fu92vY8f7kapQNsp0wbTYN72LKNpkhp3+
	qiuhObxrCc6hIung9Txfpev4RdObZtD7iOtTJZNY2Gnsd+FXmwUYk3B4Kpura3Z1c2vnyGijrJy+3
	J9QWOCaakKioVkOEM8gGCUNfelTpBTkAfpyzn+yXocinumk4HpqlhfoaSP3X6DLjLHcqprmQKsvVR
	R5aHmP3sQ8tVZejv0EDsA8tVrfl5gY5gFa3SspcGDhNjMzljNUboqxByoqY60a58+7Dirl2D5sSSS
	rliLYqdw==;
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851l-00Girs-0O
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:49:56 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-67a095fbe27so1639006d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204586; x=1701809386; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EfTMP0IEjMSODjtdYrx10bu5wkmZdOPfzS7HMIYgctc=;
        b=nxsGOZ4xc4I58rRmbVrVSx7OSuwNiQ+bc0+p6cz8dnz9Vd3DBkKqShHtFzS+K2LHWx
         VTPDEeqrgQyR/97pkronJBOjVi/qdLTd0tjPaj628Py6S5alaQhnCvKXEx0ysKjI2IrS
         ryFbx2JNbQ+h3FPou84/8TZyqAw03XaeaWN7rvqh1sbOC7SybVrnv73pIhIFLC0152nr
         rhYkJ4Go9uE/2EMXkJ29ag98GF3EkPQCxVmDhpiGxAH9GDvg0HsoRSssDBpb8MWmmoKS
         FbJo3gdoJ8CSgXfaKmMLueUh1Yx7HMW1WjCBgfQY30+StHiRaHLTuwOPNRBLfkqEq0N0
         A7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204586; x=1701809386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EfTMP0IEjMSODjtdYrx10bu5wkmZdOPfzS7HMIYgctc=;
        b=arfWAkI2UDu5b6aA1BJrc3hMwOUMoKE7YThTjfxe4dQpwI+iDvImS5KVw7SNCdXy09
         77iF7/WQJUZ3OEQqLsQqRXn8DqsHeU3OYmKBfRexXanzX7khODn4TI7WpswDQDo4m5wc
         ZbIznA3/WqP2bZR8unA0ZYMt5fknz6RkfjruyyGpRcOx/rcUKTaVSSXkAx/v7gwxv9TM
         /EE/JZu16gntqhVnHL5x5uv5X31TRs5KSddDu/b2DdAC1eJEI4Ms6vg1YQsMLthq3iJN
         dS5M3WGemwrExs4fEAs5qGnkK6YONAMmNa33Twf4vFCk1w/6yOAoMDUZIYHdGX0Vr2BA
         xYXA==
X-Gm-Message-State: AOJu0YzUEVJOd/bVy75Da5kbN9kxDqSPyGSAWX1t3f3QT5wCmR9i9z72
	nE9HGEEX7sbJan9qQuhFo9emnQ==
X-Google-Smtp-Source: AGHT+IEKeO0ndku7kDd+vg89Kzhd+WrQKp5SmuH7bGrf2GIbl4sfu3JTwF6Gf3JxLicYu9UrEBSdGQ==
X-Received: by 2002:a05:6214:1c0b:b0:67a:4546:9895 with SMTP id u11-20020a0562141c0b00b0067a45469895mr14672255qvc.12.1701204585983;
        Tue, 28 Nov 2023 12:49:45 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:45 -0800 (PST)
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
Subject: [PATCH 05/16] iommu/io-pgtable-arm-v7s: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:27 +0000
Message-ID: <20231128204938.1453583-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204953_777344_D744C00F 
X-CRM114-Status: UNSURE (   9.96  )
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

Convert iommu/io-pgtable-arm-v7s.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/io-pgtable-arm-v7s.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 75f244a3e12d..3d494ca1f671 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -34,6 +34,7 @@
 #include <linux/types.h>
 
 #include <asm/barrier.h>
+#include "iommu-pages.h"
 
 /* Struct accessors */
 #define io_pgtable_to_data(x)						\
@@ -255,7 +256,7 @@ static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
 		 GFP_KERNEL : ARM_V7S_TABLE_GFP_DMA;
 
 	if (lvl == 1)
-		table = (void *)__get_free_pages(gfp_l1 | __GFP_ZERO, get_order(size));
+		table = iommu_alloc_pages(gfp_l1, get_order(size));
 	else if (lvl == 2)
 		table = kmem_cache_zalloc(data->l2_tables, gfp);
 
@@ -283,6 +284,7 @@ static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
 	}
 	if (lvl == 2)
 		kmemleak_ignore(table);
+
 	return table;
 
 out_unmap:
@@ -290,7 +292,7 @@ static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
 	dma_unmap_single(dev, dma, size, DMA_TO_DEVICE);
 out_free:
 	if (lvl == 1)
-		free_pages((unsigned long)table, get_order(size));
+		iommu_free_pages(table, get_order(size));
 	else
 		kmem_cache_free(data->l2_tables, table);
 	return NULL;
@@ -306,8 +308,9 @@ static void __arm_v7s_free_table(void *table, int lvl,
 	if (!cfg->coherent_walk)
 		dma_unmap_single(dev, __arm_v7s_dma_addr(table), size,
 				 DMA_TO_DEVICE);
+
 	if (lvl == 1)
-		free_pages((unsigned long)table, get_order(size));
+		iommu_free_pages(table, get_order(size));
 	else
 		kmem_cache_free(data->l2_tables, table);
 }
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
