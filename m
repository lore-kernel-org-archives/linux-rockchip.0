Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D91DCC61DBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 09:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmuKjgp39l5gHXGj4j2+7r26FXc01JxLMiAws9pd224=; b=GwDmu3DsAL71rO
	NjJXQEz7mzP4sGIorfPcKNOUGBSvE26k2VK8F9/V9a5D/wyJT2n5mG08gh9cO+RWQ8l7xCHmKfpe9
	P0TH/hbzWg7jaY95Cb/FaqFEOelFKKHsn4g40Rc0zR1UMVaQa9a/Tuu/vVbcBPyyNS8zl4X0qeMuu
	kf5CSc0I9nwwwTs+nOxPo3rE9zSaMFuEUZ3wfxwPFD222e3i03443HAUJ4aPsYc8qAKRu22oUOqbc
	WNyx27aIiBExb26RWLe4eOkT10oireYsbpvgo5ewQ5Xz8zXuKv72YRNnS5lNDxf4EC/6ndymeGIx4
	6f7P/9Yhv7uEFAJtZIBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynM0-00000000TXu-1KFw;
	Tue, 25 Aug 2026 09:22:00 +0000
Received: from mail-m158141.netease.com ([47.251.158.141])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynLw-00000000TVc-2PP1;
	Tue, 25 Aug 2026 09:21:58 +0000
Received: from xxm-vm.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4b3ea0c38;
	Tue, 25 Aug 2026 17:21:51 +0800 (GMT+08:00)
From: Simon Xue <xxm@rock-chips.com>
To: "Joerg Roedel (AMD)" <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Simon Xue <xxm@rock-chips.com>,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] iommu/rockchip: Reject unsupported physical addresses
Date: Tue, 25 Aug 2026 17:21:32 +0800
Message-Id: <20260825092132.154150-3-xxm@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260825092132.154150-1-xxm@rock-chips.com>
References: <20260825092132.154150-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0aa03839decd09d3kunm5f4590cc6e035b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGhgYVh0ZThkfH0kdGElKSlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=R2elSKmydlOShUEg7zA3bDkULpCd6DBaQT7jS6kVndqubgpLOU1ViqOpTU1jN5AB+UYJlQ/4wtf2iO6vybLges5EK+CsCvVFlUhlvwsIi2NF1qhOAeL0/ULxqH75QCS5Q5XNC5nwH7xF3/XqI+2olm1lFYtUHSeo+2OMMPIgqA4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=7w+wf9NhBJhq6R/N1nHnJzHmLG2h+bHuesUOXs57sgQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_022156_915798_8EA6E2AF 
X-CRM114-Status: UNSURE (   9.87  )
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

A paddr with bits above the range the hardware can address is silently
truncated, pointing the device at the wrong page. Reject it using
paddr_mask before writing any PTE.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 drivers/iommu/rockchip-iommu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 9a5aabb2b9c8..93dde18ce33d 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -794,6 +794,10 @@ static int rk_iommu_map_iova(struct rk_iommu_domain *rk_domain, u32 *pte_addr,
 
 	assert_spin_locked(&rk_domain->dt_lock);
 
+	/* Reject addresses the hardware cannot support */
+	if ((paddr + size - 1) & ~rk_domain->rk_ops->paddr_mask)
+		return -ERANGE;
+
 	for (pte_count = 0; pte_count < pte_total; pte_count++) {
 		u32 pte = pte_addr[pte_count];
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
