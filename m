Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C3EBC07E98
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJmvZc8Xw8lb7Hk4tKlPed7QSHEm1uONmQPSmCZ0ZmQ=; b=j15ChEJmyTB5h1
	rELzOIcxf7nqzW5m3ukLSOI1VjKGxdzZQFjrDcNr6I6MXtNkVybZ+BYhkZYxU25vGTr7UyLPlhOzX
	SodZss0iN9DYmWrNDdumla40xdcuT7KJca4KuXuoHeoo7UA/EVDMGm5UiEZFplMPFWyby/faywqmA
	STWQc5/31G5UJa3WIUyfolwX2F/xZUztHNUMOXQNmDJe4giIt7YWwuHkKB6TDeMwKPxpJ/F41cSib
	/RM6+UT31H0nPwIQ9bidmr/CrjnIt/9F4/hw502H4dWy6Xyq4aFGiwM1Tken54bJT4weZocIn/Yjd
	TbxuJJgNk8a5Nf69A/xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8528-006ILd-2W;
	Tue, 28 Nov 2023 20:50:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851v-006I7Z-0E
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:50:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=4JJWGGhifJfmWwzsRRAotq/YxAL9K3n4NSfU3ou+3rE=; b=NqEk1C12ZGqU53yzvPMxfXGzRY
	6yS4IttgjNsa0ZwgxQYjyVDpaxMEgtULGMvYCdWpKSG0xK3YbzQ9tOLF1Q+tPbv+ISWRPh+FG7H3N
	ueA/PQQlVwmDUqqEcj0lY9U/FTbHYlmcM0p2UM+R5xeV7wtH3t/teTXcZlflpWy7dn1z6lCkT1bje
	i4fnQGzEURySpNPKNaiJr48T+KYa/vtcUBuTkEgQxL9RxSmKGC1MqKiwRenh2M99pM16+/Ltgilyn
	nZbEHhKmWiQtZN/wsjnpO52qlk1Jjo2Ga8MGGzOBfWST08AQpAh3gMIo/RLZ0IszUNmKGdQZC1828
	jlvkefaA==;
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851l-00Girn-2R
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:50:01 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-67a3e0fb11aso16258356d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204585; x=1701809385; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4JJWGGhifJfmWwzsRRAotq/YxAL9K3n4NSfU3ou+3rE=;
        b=QCg5SvdKunDNSi0ZAaHIojPn0yWg07e7rnzKPtiMyE5GP7siB29oTgEdNooXhr3JAH
         Z4f+fC2uicnCKxBad6IEN7JId3g2lRSqzQb8k8SmkGJhlMpGBJtZevTbmsn2ZPyEetnt
         6VvOpAaE8qFsF4posTbsVY/ivqIX1lBwjUws/Ei6bY5IGe8Wp0PDXYl/doNTB9mUAgq9
         cZVx8HwDglCGKZGBBA2JmPFjikpCA4zSWUc7rza1AoZTLjNxL38tLR93t/CqARtDd2/D
         9sXAtcZ8tTPmLKTYaREEIVp/jQq0ocix+CbtFbzHfXQELLsfgF7uy90yf4ZiE3/uQFk4
         m3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204585; x=1701809385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4JJWGGhifJfmWwzsRRAotq/YxAL9K3n4NSfU3ou+3rE=;
        b=Y1j5PaR1a6Kfi/ozL83JM0/sak7MuJmGmVGNt5E/5J1T8IAASX8lG0S6YC4meBA3ot
         KGaTfG65AbGRG9q1ghBT8qXK2yqdCmY+5Qovj+dJcNfpoXauq/Ehc5ebPEEdHgJ/l20Z
         8tZ5QAQebGenKoLDzMfGOqM/dFXXQoNRQ5+0M/B25EpLXf3fGZ7Snf/HUcBxddz6XGke
         I/duQCJ01PCwXn2AMhBcRXf2MIeBQ7sv83Cv6qc0+KuvEYpoqVcciNAI/8Cr5g9E2CxO
         VxFvoXoBjs8Ll2/v0fbUKBmvn8YApUXEB5nU9wKvXqcNly7FLpNpIUhsXKjHTDDeqBNE
         DJYA==
X-Gm-Message-State: AOJu0Yz7VwiWnXLy61smKTi99SMvqvMm71woQ4BZMvaoV67LE6h/t2z+
	ue3ds1T2YAjVZgSFtzjaGGLOag==
X-Google-Smtp-Source: AGHT+IEDZ/ij59NC+/N0WE8v2site2Dd8U3b4CDvl6tiF76N0ZJEMNbYN0ZJKJUKEFAmf3sLjyNRCw==
X-Received: by 2002:ad4:5499:0:b0:67a:5744:264c with SMTP id pv25-20020ad45499000000b0067a5744264cmr3635072qvb.55.1701204585073;
        Tue, 28 Nov 2023 12:49:45 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:44 -0800 (PST)
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
Subject: [PATCH 04/16] iommu/io-pgtable-dart: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:26 +0000
Message-ID: <20231128204938.1453583-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204954_266977_A3FEABAC 
X-CRM114-Status: GOOD (  12.73  )
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

Convert iommu/io-pgtable-dart.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/io-pgtable-dart.c | 37 +++++++++++++--------------------
 1 file changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/iommu/io-pgtable-dart.c b/drivers/iommu/io-pgtable-dart.c
index 74b1ef2b96be..ad28031e1e93 100644
--- a/drivers/iommu/io-pgtable-dart.c
+++ b/drivers/iommu/io-pgtable-dart.c
@@ -23,6 +23,7 @@
 #include <linux/types.h>
 
 #include <asm/barrier.h>
+#include "iommu-pages.h"
 
 #define DART1_MAX_ADDR_BITS	36
 
@@ -106,18 +107,12 @@ static phys_addr_t iopte_to_paddr(dart_iopte pte,
 	return paddr;
 }
 
-static void *__dart_alloc_pages(size_t size, gfp_t gfp,
-				    struct io_pgtable_cfg *cfg)
+static void *__dart_alloc_pages(size_t size, gfp_t gfp)
 {
 	int order = get_order(size);
-	struct page *p;
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
-	p = alloc_pages(gfp | __GFP_ZERO, order);
-	if (!p)
-		return NULL;
-
-	return page_address(p);
+	return iommu_alloc_pages(gfp, order);
 }
 
 static int dart_init_pte(struct dart_io_pgtable *data,
@@ -262,13 +257,13 @@ static int dart_map_pages(struct io_pgtable_ops *ops, unsigned long iova,
 
 	/* no L2 table present */
 	if (!pte) {
-		cptep = __dart_alloc_pages(tblsz, gfp, cfg);
+		cptep = __dart_alloc_pages(tblsz, gfp);
 		if (!cptep)
 			return -ENOMEM;
 
 		pte = dart_install_table(cptep, ptep, 0, data);
 		if (pte)
-			free_pages((unsigned long)cptep, get_order(tblsz));
+			iommu_free_pages(cptep, get_order(tblsz));
 
 		/* L2 table is present (now) */
 		pte = READ_ONCE(*ptep);
@@ -419,8 +414,7 @@ apple_dart_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	cfg->apple_dart_cfg.n_ttbrs = 1 << data->tbl_bits;
 
 	for (i = 0; i < cfg->apple_dart_cfg.n_ttbrs; ++i) {
-		data->pgd[i] = __dart_alloc_pages(DART_GRANULE(data), GFP_KERNEL,
-					   cfg);
+		data->pgd[i] = __dart_alloc_pages(DART_GRANULE(data), GFP_KERNEL);
 		if (!data->pgd[i])
 			goto out_free_data;
 		cfg->apple_dart_cfg.ttbr[i] = virt_to_phys(data->pgd[i]);
@@ -429,9 +423,10 @@ apple_dart_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	return &data->iop;
 
 out_free_data:
-	while (--i >= 0)
-		free_pages((unsigned long)data->pgd[i],
-			   get_order(DART_GRANULE(data)));
+	while (--i >= 0) {
+		iommu_free_pages(data->pgd[i],
+				 get_order(DART_GRANULE(data)));
+	}
 	kfree(data);
 	return NULL;
 }
@@ -439,6 +434,7 @@ apple_dart_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 static void apple_dart_free_pgtable(struct io_pgtable *iop)
 {
 	struct dart_io_pgtable *data = io_pgtable_to_data(iop);
+	int order = get_order(DART_GRANULE(data));
 	dart_iopte *ptep, *end;
 	int i;
 
@@ -449,15 +445,10 @@ static void apple_dart_free_pgtable(struct io_pgtable *iop)
 		while (ptep != end) {
 			dart_iopte pte = *ptep++;
 
-			if (pte) {
-				unsigned long page =
-					(unsigned long)iopte_deref(pte, data);
-
-				free_pages(page, get_order(DART_GRANULE(data)));
-			}
+			if (pte)
+				iommu_free_pages(iopte_deref(pte, data), order);
 		}
-		free_pages((unsigned long)data->pgd[i],
-			   get_order(DART_GRANULE(data)));
+		iommu_free_pages(data->pgd[i], order);
 	}
 
 	kfree(data);
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
