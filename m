Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D505C27C76
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 22:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wzbwK5Xmj/8zju8nLsqCuzJomeoG3Nafjak9lxkelUg=; b=qMPT9c8NK71pjn34y4pmhqn8K0
	sRX5NmcMBwGT26e/z4iaCAL56B/VA2SUhQY1NoxvMbv9qsZBckOoxIBVHOjGz1trK17A+B6X89O5i
	SGU9iLxyZRVglZ/Ve0wyA5o5NP1fEdzfJGggZmdKHH2UzXxYtBRcY+h3cEZIXBPT2xg6e9o82QoWJ
	Yg178LS0x9iZOLot7Av+xTOD8P6zPnQDKkem8tplZu8YYk01hOQdwOhwreeLdXoGdqtOIxpIpt0bF
	9z4oVSiKMdzv/BhU05gH08H8Tk+Wj2LCc3PtbPIKJGnHlTWy8fTO+MIXKWqgWrE1WDGNHiQb05Q/V
	69yMnBSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo6a-008y7B-Ju; Wed, 25 Jan 2023 22:18:56 +0000
Received: from wrqvxttq.outbound-mail.sendgrid.net ([149.72.167.116])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo65-008xuP-2A
	for linux-rockchip@lists.infradead.org; Wed, 25 Jan 2023 22:18:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=iWGLuXTri0QUMLM39KAoA8ZFb9x7Tah4lh6B9HcxKQo=;
	b=K4Ny8Mtl1aiXfHXItfDpXjJ10RGpTDkRmOO67w0SxVYQvYPBAKnxELPudKnuwaNl2IMH
	sRMyZ7vq+daNQ5zjBoTmzHxjAT8O/GVI/wZjiNwhr25pRefpKPMZMReOVPjjYsOmodS2JZ
	nLIWv0+VsevauLdEC6pLlkzZ61iqJatXwCYlHBAyDeBOvkTl8V7HlqgCQolXnkP2B6/V/L
	QBKBpbhRIFrPsknfSpoLXPpszR8KKcapgEERSne4jD3yPo3RETvjk5zLzUGCbMULcEF+bz
	Aw2+KYpkHRqsShpevf6jhIxedb6UiFLLUuVrpk8WAyqnGc/4BcJ+J1f+/ZyCy4cQ==
Received: by filterdrecv-557d69979-xq98h with SMTP id filterdrecv-557d69979-xq98h-1-63D1AAAC-2B
        2023-01-25 22:18:20.997120133 +0000 UTC m=+5958759.859829075
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5-2 (SG)
	with ESMTP
	id xuI068K6TJa03t-X8Y6_dg
	Wed, 25 Jan 2023 22:18:12.617 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/3] iommu: rockchip: Remove unused variant ops
Date: Wed, 25 Jan 2023 22:18:21 +0000 (UTC)
Message-Id: <20230125221809.3275481-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125221809.3275481-1-jonas@kwiboo.se>
References: <20230125221809.3275481-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h5zjs67zwtlOkuZFU?=
 =?us-ascii?Q?ltLNHMI26EIuXvOLJYE8xK+1f74lSRt1OEfR2k8?=
 =?us-ascii?Q?D6p+sIeDJGB1E3YPUWSHA3xnh8kDvavhu3Hi1Gr?=
 =?us-ascii?Q?WtoYXCf5QyrgX=2FV5Zz99RRszDDaoqYEnLjXUD5b?=
 =?us-ascii?Q?Ch+oJZ2qRj55CUIBgBAqohhnWMTrVgZcGLSPkFF?=
 =?us-ascii?Q?M1T8aGygxd3zkkUg5xngw=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_141825_281304_63B53589 
X-CRM114-Status: UNSURE (   9.04  )
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

The dte_addr_phys and dma_addr_dte ops is now unused by the driver,
let's remove them.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/iommu/rockchip-iommu.c | 33 ---------------------------------
 1 file changed, 33 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 3f92b95e6b67..ca47f198455e 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -98,8 +98,6 @@ struct rk_iommu_ops {
 	phys_addr_t (*pt_address)(u32 dte);
 	u32 (*mk_dtentries)(dma_addr_t pt_dma);
 	u32 (*mk_ptentries)(phys_addr_t page, int prot);
-	phys_addr_t (*dte_addr_phys)(u32 addr);
-	u32 (*dma_addr_dte)(dma_addr_t dt_dma);
 	u64 dma_bit_mask;
 };
 
@@ -530,33 +528,6 @@ static int rk_iommu_force_reset(struct rk_iommu *iommu)
 	return 0;
 }
 
-static inline phys_addr_t rk_dte_addr_phys(u32 addr)
-{
-	return (phys_addr_t)addr;
-}
-
-static inline u32 rk_dma_addr_dte(dma_addr_t dt_dma)
-{
-	return dt_dma;
-}
-
-#define DT_HI_MASK GENMASK_ULL(39, 32)
-#define DTE_BASE_HI_MASK GENMASK(11, 4)
-#define DT_SHIFT   28
-
-static inline phys_addr_t rk_dte_addr_phys_v2(u32 addr)
-{
-	u64 addr64 = addr;
-	return (phys_addr_t)(addr64 & RK_DTE_PT_ADDRESS_MASK) |
-	       ((addr64 & DTE_BASE_HI_MASK) << DT_SHIFT);
-}
-
-static inline u32 rk_dma_addr_dte_v2(dma_addr_t dt_dma)
-{
-	return (dt_dma & RK_DTE_PT_ADDRESS_MASK) |
-	       ((dt_dma & DT_HI_MASK) >> DT_SHIFT);
-}
-
 static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 {
 	void __iomem *base = iommu->bases[index];
@@ -1370,8 +1341,6 @@ static struct rk_iommu_ops iommu_data_ops_v1 = {
 	.pt_address = &rk_dte_pt_address,
 	.mk_dtentries = &rk_mk_dte,
 	.mk_ptentries = &rk_mk_pte,
-	.dte_addr_phys = &rk_dte_addr_phys,
-	.dma_addr_dte = &rk_dma_addr_dte,
 	.dma_bit_mask = DMA_BIT_MASK(32),
 };
 
@@ -1379,8 +1348,6 @@ static struct rk_iommu_ops iommu_data_ops_v2 = {
 	.pt_address = &rk_dte_pt_address_v2,
 	.mk_dtentries = &rk_mk_dte_v2,
 	.mk_ptentries = &rk_mk_pte_v2,
-	.dte_addr_phys = &rk_dte_addr_phys_v2,
-	.dma_addr_dte = &rk_dma_addr_dte_v2,
 	.dma_bit_mask = DMA_BIT_MASK(40),
 };
 
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
