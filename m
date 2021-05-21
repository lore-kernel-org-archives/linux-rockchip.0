Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE691C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:50:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B4B860C3E
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:50:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B4B860C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BcbEEmFWWU04p76YnRWnxyat4pCD/pZHn0ZNMuHJHsY=; b=Hudi+USmCgS/ev1nzW9QPlCvo+
	qj6vi8QNvo2mbYBhY6k+HfD+W31b+c0igXuXw5UpieiQHNhsBeUtHExbraPuKFBtl9pp5xPdpdWc+
	P8ygBhRWrGviSO+i/IL4u41mGgzAmt/J5JtzcPssYrEikhq39kRd/XcFgs+BcAh+N7q7afBPHN3YU
	hUWH/fnKO+anp1qw16Pqz/NIsgoT/wqqhPoc/uxQeaEE1QISAxy4p7q9+yCVBgk1L9zFfVPHH6YAT
	7RBBEvUsMpeDyrAqyLTro1ZdjMfLkLQvSjDVoR5Q7ghrt2H8qlM3Qs9cKlKRFBoKIA1aOrA+IZBIo
	aWXXiSPg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk5XY-005eiE-JW; Fri, 21 May 2021 13:50:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk5XB-005ee6-LV; Fri, 21 May 2021 13:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=HfKjbZVL79H6Qt1NggQLul2v//pDtg0csqGTTKwDhOU=; b=NjJQ6eHTQOdxkSuEPEZk0fvSn/
 OZv0PtzUbZf2qZbn8iP94y598FuBkcI4PT8oIJk2BQzRRzviiwdVcXPCBXd5E0vRZlxFyCWqn/b1V
 80Z9cgg2DYkcbksVni9Hcp2VF59sHOe/7W4C1FbR8fzl1UPs+ycqSnIqzqGFYnqfh8qupU3/cCdxM
 TQPHL/033GF6sXJ0rjIAUHh+JZ2y8ToPncOnfCVVOU6sCN1EpEnnc4QwQgNcE3Q+MYU91K91QQ2Jc
 k+Pete4GFlHltfvkPYgmPg76LvlK3jBXhW+5glH/dhDErVcgAyZcRJtOQ+DpUqmKFSbIxrbhc5oi5
 3k6XOzOg==;
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lk5X9-00HAOb-05; Fri, 21 May 2021 13:49:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8609B11B3;
 Fri, 21 May 2021 06:49:45 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5D9113F73B;
 Fri, 21 May 2021 06:49:44 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: joro@8bytes.org,
	will@kernel.org
Cc: heiko@sntech.de, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 benjamin.gaignard@collabora.com, xxm@rock-chips.com
Subject: [PATCH] iommu/rockchip: Remove redundant DMA syncs
Date: Fri, 21 May 2021 14:49:39 +0100
Message-Id: <5c29a9ff0a20df0167635b1901f94b5195c1fb28.1621604979.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_064947_101802_BFC1012A 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

When we allocate new pagetable pages, we don't modify them between the
initial dma_map_single() call and the dma_sync_single_for_device() call
via rk_iommu_flush(), so the latter is entirely pointless.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/rockchip-iommu.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 7a2932772fdf..e5116d6a6260 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -682,7 +682,6 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	dte = rk_mk_dte(pt_dma);
 	*dte_addr = dte;
 
-	rk_table_flush(rk_domain, pt_dma, NUM_PT_ENTRIES);
 	rk_table_flush(rk_domain,
 		       rk_domain->dt_dma + dte_index * sizeof(u32), 1);
 done:
@@ -1004,8 +1003,6 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 		goto err_free_dt;
 	}
 
-	rk_table_flush(rk_domain, rk_domain->dt_dma, NUM_DT_ENTRIES);
-
 	spin_lock_init(&rk_domain->iommus_lock);
 	spin_lock_init(&rk_domain->dt_lock);
 	INIT_LIST_HEAD(&rk_domain->iommus);
-- 
2.21.0.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
