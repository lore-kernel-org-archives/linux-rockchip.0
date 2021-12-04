Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED1EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Dec 2021 15:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMx6l34i0bv/Koj1PKbIcR3AfGVpT48YpzbcW93S1P0=; b=MvVb8jEsKS6HW4
	JuQdYBNenMVJUuJ8Q7PqIV+tBgWPeM2kRNsdhVsNHjgRV7dz5tR8YkzG3NGVphQ+H1GxgAkU9dc7M
	z7rvY+G2ab6+DwZLcRWGsuYmlbI4GqD2Vlxk+aQBQvTo0XslV6+lUIujTIJ0CB2Zh3e1t1uEtNcA5
	xZVpXmVR4Kjv7VHMGFwtFZvuj58OPjYaCI6mvBM1vZwcWGCuAigA0UGl5Q2hWrDgclZCyX3W4DsYS
	XO5VwRwGMXu/f0UzYL/U680GnfjeU33lu+nuyr6aUbzV66rW6iPlWHQyytw0upy7sxODLUCP2n8dG
	j1NfDch20rzfVQVC+toA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtWuT-000SUO-Kn; Sat, 04 Dec 2021 15:25:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtWu7-000SPv-6T; Sat, 04 Dec 2021 15:24:48 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a00:c281:1409:4a00:6988:6ac4:851c:3f63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 460EA1F45C18;
 Sat,  4 Dec 2021 15:24:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638631486; bh=TJgzJWHgw20tjqwBYUENEs/cvyV4mlypJvEi9jBKaRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e067vp0TClN94lPv74YYkPxc3aJT8AuIVEJcLUyrKR3Uo2YPLVtDyr/L3fwFknt4D
 AeqlioS5PIbkAAhpQ7mKZbUMc26C1r9PUxQnqsAvUX67T2zoKO9lcsgWdc4PFaja28
 75VlAx2/R0Z9Tg3s9wHv7eNCVtDoGtM8Ill7VlDnzlkAB3EFB5rUUZjAj8s+lMXHM/
 5/ovMpVlhmIPIT9HyKBSWmNLtyV6Oo5e4EWjSSTCw2oPVjQpFkEAzZidZT5X8utAy2
 WB1yZN6kQxBY3uZwgGmug84KoEN49gkPdMIDu6kjThfc+1N3bV5b9Q5ShQpRs/Rpx8
 zZ93RcUzgB+ow==
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: iommu@lists.linux-foundation.org
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 kernel@collabora.com
Subject: [PATCH 4/4] iommu/rockchip: replace pt_address cb with dma_addr_dte
 when setting dt addr
Date: Sat,  4 Dec 2021 17:24:28 +0200
Message-Id: <20211204152428.13899-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211204152428.13899-1-dafna.hirschfeld@collabora.com>
References: <20211204152428.13899-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211204_072447_391279_91487C64 
X-CRM114-Status: GOOD (  13.24  )
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

The dt address is calculated using the dma_addr_dte cb.
So when setting the dt address to the DTE_ADDR_DUMMY
that cb should be used instead of pt_address.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/iommu/rockchip-iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index ba60f0faafcc..013f7608a2e6 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -510,7 +510,7 @@ static int rk_iommu_force_reset(struct rk_iommu *iommu)
 	 * and verifying that upper 5 nybbles are read back.
 	 */
 	for (i = 0; i < iommu->num_mmu; i++) {
-		dte_addr = rk_ops->pt_address(DTE_ADDR_DUMMY);
+		dte_addr = rk_ops->dma_addr_dte(DTE_ADDR_DUMMY);
 		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR, dte_addr);
 
 		if (dte_addr != rk_iommu_read(iommu->bases[i], RK_MMU_DTE_ADDR)) {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
