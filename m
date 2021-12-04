Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C28C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Dec 2021 15:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RC0lZKMGbfTMyV8mw50nTy1DiWy4A2aZiwu7+nkTix8=; b=KRXuTs7j+yIfaS
	1Z9BpAKaZ1hGJ7LguQqFC42hOH3LuFh/VQFx4KCgFzEJUwfLo+4K1ZY0dCXpAEBW2ZP1vAFQ53EB4
	ZBNnekl07raQeId+C0d/9tqR9e2XIn9Qv6WgoTOome8ArUsTHx93QfeV5o3RLJmIJlkmznZzbGlBu
	95c9D2PBh2WyN6IDKb2jTX4M7VsnKry7M0KKgryqUaVh6F/l+jBlHypcogG4y28zQMwpYobaIaXte
	Ve4BvXQI9ozx43LfRHINX8uMl5u3BUMxA7cVCamcftQvtOZp1PNbmivKOn3TGlB+dN4e4tnB788pH
	a8e4hpH/7Q194+NSBHrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtWue-000SXM-RJ; Sat, 04 Dec 2021 15:25:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtWu7-000SPs-7C; Sat, 04 Dec 2021 15:24:49 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a00:c281:1409:4a00:6988:6ac4:851c:3f63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DD8B01F45BF3;
 Sat,  4 Dec 2021 15:24:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638631481; bh=1E+wYaMVZBLQy1MDTb6xEPfgm8aPG7uh2L3Go1Tg6oI=;
 h=From:To:Cc:Subject:Date:From;
 b=Tx+RJ08t1neArUXh2vBRPECZ1q2onTyXQrBcW7IiTAAHIGfE2FhTPvWPyIF4gEWl2
 g8RxGzGwOFpegsuE1s4hfSAD3NjKZ6C5uQLAdJTEb7pYHJsecj0hwRkFPnooE5/LCR
 PKHDhZ5QCW0co94RMSGORYs69+LTL/B8gBqzKhLECZjfdl7VFqNiUdybyYU7rnIUKV
 5UJ6sxz1m1trs3GVRlTZk2dRhe/XlP2DrjhKzpMIukvRVJ14skngYAzrdYfMicu+9k
 pcRXpR74sFBARdk9kpIYlilOnNa2L0vsCcTAFX2evBE0BgwSqGp/1UgLrDZA+hZUTB
 GUf+CcVfCEowA==
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: iommu@lists.linux-foundation.org
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 kernel@collabora.com
Subject: [PATCH 1/4] iommu/rockchip: replace 4 with sizeof(u32)
Date: Sat,  4 Dec 2021 17:24:25 +0200
Message-Id: <20211204152428.13899-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211204_072447_418550_EA6C37EB 
X-CRM114-Status: GOOD (  11.53  )
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

In log_iova, multiply by 4 is used to calculate the
addresses. In other places in this driver, sizeof(u3)
is used. So replace 4 with sizeof(u32) for consistency

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/iommu/rockchip-iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 5cb260820eda..bd22d0a6eaf0 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -580,14 +580,14 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 	mmu_dte_addr = rk_iommu_read(base, RK_MMU_DTE_ADDR);
 	mmu_dte_addr_phys = rk_ops->dte_addr_phys(mmu_dte_addr);
 
-	dte_addr_phys = mmu_dte_addr_phys + (4 * dte_index);
+	dte_addr_phys = mmu_dte_addr_phys + sizeof(u32) * dte_index;
 	dte_addr = phys_to_virt(dte_addr_phys);
 	dte = *dte_addr;
 
 	if (!rk_dte_is_pt_valid(dte))
 		goto print_it;
 
-	pte_addr_phys = rk_ops->pt_address(dte) + (pte_index * 4);
+	pte_addr_phys = rk_ops->pt_address(dte) + pte_index * sizeof(u32);
 	pte_addr = phys_to_virt(pte_addr_phys);
 	pte = *pte_addr;
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
