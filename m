Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CCA2C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Dec 2021 15:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8Co3WWSh5KCN3QKQRINbA+rKJ1hR921Ds2oG36ET0k=; b=hkb4SM74yPFBir
	5Y8i5h8YFqRioTf8zagKpJlY5+QGim0UpfqSUM3sgJTuDSBvA99tLc2RQt9kOylFycOU5bYGrhohe
	D1rAJ63dhYlzx9GjGjqEsTUV8Uucauh6eKCLAw5cHbhzUSNlk7VA/PNe1NdogLwuPZYK+B6QOrYwV
	Ec04oDnIV8hlkMUQvrT9BVNeJBtpdolkk0yImEZIUjdNhGcdH4Bw7JflMaAucgZCvuODZJ0P63SpK
	netgpahimWZHiW35ImYotVbliSCPJZNsC1XYJilUnfeGPk2TquNv/e8xTa8xb0JJnHL5LHvFL4DUy
	Pe/O1cpTce1qlQL6nrRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtWuq-000ScE-Hz; Sat, 04 Dec 2021 15:25:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtWu7-000SPu-N4; Sat, 04 Dec 2021 15:24:49 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a00:c281:1409:4a00:6988:6ac4:851c:3f63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 307051F45C0C;
 Sat,  4 Dec 2021 15:24:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638631485; bh=9ICs/y4HUDZ5NV8MZBtkV53PWQ6+UIINUtCdzKskXtw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S4+QEALCIB7I8isBb8M+sZZTnmXTzAEHomEidsXLEP7XLjEkZVVeHjIEFa2ki6zRC
 hRajHtxBZJ8ON4fKVx/IW7W8vayTMySQO5nfl1Q4J0/HJoH3zurAE/aRZrf+KSG+jn
 KUIFloASV69am+tAedU114mhAu4PpaEqpVoxByO3hAk4vdKbLiT0MS5Jq6tNtcSdF0
 h2E7h/cI3vN4g/XGN2vFHbxbIAONMYIeSCZEpNPu6YszHXlzG3THlu5mBqIQFd1OeC
 9eqmmabmZZMOEB+JqhBsQ6VdWPacG7MpQSo7IxvzlWn2ZED4v567A+KBr+i1feMKtk
 PQ42R1SZFtZmA==
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: iommu@lists.linux-foundation.org
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 kernel@collabora.com
Subject: [PATCH 3/4] iommu/rockchip: rename dte_index to dte
Date: Sat,  4 Dec 2021 17:24:27 +0200
Message-Id: <20211204152428.13899-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211204152428.13899-1-dafna.hirschfeld@collabora.com>
References: <20211204152428.13899-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211204_072447_921446_F08AADB9 
X-CRM114-Status: GOOD (  11.26  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In rk_iommu_map, the var dte_index is actually
set to the dte and not to the dte index. Rename it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/iommu/rockchip-iommu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index bd73cf9c54f5..ba60f0faafcc 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -852,7 +852,7 @@ static int rk_iommu_map(struct iommu_domain *domain, unsigned long _iova,
 	unsigned long flags;
 	dma_addr_t pte_dma, iova = (dma_addr_t)_iova;
 	u32 *page_table, *pte_addr;
-	u32 dte_index, pte_index;
+	u32 dte, pte_index;
 	int ret;
 
 	spin_lock_irqsave(&rk_domain->dt_lock, flags);
@@ -870,11 +870,11 @@ static int rk_iommu_map(struct iommu_domain *domain, unsigned long _iova,
 		return PTR_ERR(page_table);
 	}
 
-	dte_index = rk_domain->dt[rk_iova_dte_index(iova)];
+	dte = rk_domain->dt[rk_iova_dte_index(iova)];
 	pte_index = rk_iova_pte_index(iova);
 	pte_addr = &page_table[pte_index];
 
-	pte_dma = rk_ops->pt_address(dte_index) + pte_index * sizeof(u32);
+	pte_dma = rk_ops->pt_address(dte) + pte_index * sizeof(u32);
 	ret = rk_iommu_map_iova(rk_domain, pte_addr, pte_dma, iova,
 				paddr, size, prot);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
