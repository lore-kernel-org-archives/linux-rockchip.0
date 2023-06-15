Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3154EB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 20:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ByNFzx2DnLs+L9PgBPHfelnguKKOMEmQ1ASr3+xsS7I=; b=R9d0/sXTU2ckfw0kRZrg/Rkmex
	J0CroNTBAEXVj1v5LvOY7P+vcTnjw1yGY05qICf27Rpr1q9jE8KpiyPzf58Gp5lbZYy8EAadTxb0n
	RclIfCeHFm3CBP1K/gDv3zHgGV/OufffZqQ1OoUwgH3xIiaqtylpgGGfIznqH0StX9fBxXwUv11ba
	zSoycWB3v/HGteclw/6/J2aebJ9c0kRXDEn9eFv4ZXJ8fRDCN+wvf7t6NxTBV2I1fhMRRM0T7AGc4
	hOshfxJ2Efknp0rRf3atlvq6G6vlaT/fpt7ObYHj/tx3oUBSFHpuv7UVX4VH3ERYZ/BlHJUEXpyvC
	hUk3+NIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tJE-00FzZs-1j;
	Thu, 15 Jun 2023 20:11:08 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tIx-00FzPI-0m
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 20:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=InoMtFPn0qTi9rWJ9dL8ZNuMI6SUv/MQcYAVE6/OKuo=;
	b=HiCP8luTDml4dCPktTvI4G2UlOh2JqkOCf/aGXztdfKU9pDKYRW1eYvbwGA77RClrwUq
	ALcRzlSdAjaPwSy12HtHnldT3u/ghdJxx8AVijFBmON6CitofS5IIg7T6xmDyCL9r8mkYu
	Pn31l4ZYbpCyYAuAjOtSgiIJN/+HHf9XwCoLUOJJrkMwkO3KKAIKmdl2Qq0X7c8PnkPNEX
	EeSiTxErTQHQW384TL3a/ErkaCV3oCRTFsTRw9DEepQHGT6MwvTCaRveHm1JBEjtURvBfm
	hKsrYjTBfjHGnjzSrfnZVxqNmPSVEmMiTMVwrX81/HPVVZMCn0HNbhG71JEU7dTw==
Received: by filterdrecv-84b96456cb-bvsrh with SMTP id filterdrecv-84b96456cb-bvsrh-1-648B7046-1F
        2023-06-15 20:10:46.550315811 +0000 UTC m=+3097935.073942733
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id iwNkUP0QQjuksV59p23YJg
	Thu, 15 Jun 2023 20:10:46.259 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 1/3] iommu: rockchip: Fix discovery table address encoding
Date: Thu, 15 Jun 2023 20:10:46 +0000 (UTC)
Message-Id: <20230615201042.2291867-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615201042.2291867-1-jonas@kwiboo.se>
References: <20230615201042.2291867-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h2WrMIoUX2Eyj8rSF?=
 =?us-ascii?Q?yVoSoz7tVbeJqQR7WFNCHUyheNyk=2FbPq147L39v?=
 =?us-ascii?Q?x2smspVWTq7LOi9K7FyO33CWUW1L7UhWsoV5hWc?=
 =?us-ascii?Q?l9n+0L4fjwoyz2Q=2FbJRXyoXrTFOg60cS3lL1cL6?=
 =?us-ascii?Q?9UosjCpoVKDSGjWDmyFZEayscrMlyevGCSJDCza?=
 =?us-ascii?Q?SJU6i5NwYEvxvQc2SpviA=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>, Joerg Roedel <jroedel@suse.de>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_131051_438521_12A07649 
X-CRM114-Status: GOOD (  14.12  )
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

The address to the discovery table is currently encoded using the
following bit layout.

 31:12 - Address bit 31:0
 11: 4 - Address bit 39:32

This is also the bit layout used by the vendor kernel.

However, testing has shown that addresses to the discovery/page tables
and memory pages are all encoded using the same bit layout.

IOMMU v1:
 31:12 - Address bit 31:0

IOMMU v2:
 31:12 - Address bit 31:0
 11: 8 - Address bit 35:32
  7: 4 - Address bit 39:36

Change to use the mk_dtentries ops to encode the discovery table address
correctly. Also update the bit layout comment for the page address.

These changes render the dte_addr_phys and dma_addr_dte ops unused
and will be removed in a following patch.

Fixes: 227014b33f62 ("iommu: rockchip: Add internal ops to handle variants")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2:
- replace currently with correctly in commit message

 drivers/iommu/rockchip-iommu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4054030c3237..d46319f77e5c 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -278,8 +278,8 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
 /*
  * In v2:
  * 31:12 - Page address bit 31:0
- *  11:9 - Page address bit 34:32
- *   8:4 - Page address bit 39:35
+ * 11: 8 - Page address bit 35:32
+ *  7: 4 - Page address bit 39:36
  *     3 - Security
  *     2 - Writable
  *     1 - Readable
@@ -577,7 +577,7 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 	page_offset = rk_iova_page_offset(iova);
 
 	mmu_dte_addr = rk_iommu_read(base, RK_MMU_DTE_ADDR);
-	mmu_dte_addr_phys = rk_ops->dte_addr_phys(mmu_dte_addr);
+	mmu_dte_addr_phys = rk_ops->pt_address(mmu_dte_addr);
 
 	dte_addr_phys = mmu_dte_addr_phys + (4 * dte_index);
 	dte_addr = phys_to_virt(dte_addr_phys);
@@ -967,7 +967,7 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
 
 	for (i = 0; i < iommu->num_mmu; i++) {
 		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR,
-			       rk_ops->dma_addr_dte(rk_domain->dt_dma));
+			       rk_ops->mk_dtentries(rk_domain->dt_dma));
 		rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
 		rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
 	}
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
