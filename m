Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49215EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 18:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N3PaTDztqg7vP9V1ubK4atS+JFZbnJI6Wiz1K/dDgtg=; b=VFYlk3/8WqTBAtNGUBUj0UeEOG
	kYb/TvuNltscjzlfA4X22AwHBWIHr1DS985nF3DjCDwOgw0FKCGTns4N5nygoPAHnXtGDfXQKaDZq
	r2E+xzpB6zGcX6QDWyUTO7AJ8j3FN2bLTklK9SLaqkP82RFcmZikgGCPRdhQRaE8iIuMmKH9+qCU6
	w1TFL007JRKTwNC39DqzOKx19tqEsJsEqBkpISqcmy2mI2uuDNuS+0VQ8pXYG+84dqDQCLfMabCbn
	ellDlMZmAPWh2qupr38WD7c8Os5zoyDrP7FUsjvbDlX46dcbIJ8IoT4tTmns2G9yEM3KFwPE0GG+S
	3pPU8D4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAacZ-00465v-0X;
	Sat, 17 Jun 2023 18:25:59 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAacR-00460r-0Y
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 18:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=LWxFuiloBtSlshgsCgy8wxWXAkKewftYNZ4msk9aWKQ=;
	b=GaMWjNHnbbFPSJA9K/qlyA84uPJpLjs4KPkeTd8Wk9SvFCPkIuKbldOevd3I3E4o4htd
	oWRRu9hCsSd3HKxhb7Q1jPjQOm2DGc00YeHL9aQOnUGRZXpDUFBb7CFb33/zfBqXEleklg
	uCN1Aox48HXpontb38o1y467t3aCNYPZI0kReJawkT15zquV6JSpmo+g5lFV1R166gzpwp
	hwLfT/xf8iIPgmmVTXeR226yEFj0cRl/WVu3V/a4RWXPaR9bsA4plrTpPdQiVzMutSXAiK
	UaBL1yZyNgyyk+mnpFFgQG2fg1cZ41+mhjsQDJdo3VV3yhR+aSW0zMLVMFydABEA==
Received: by filterdrecv-84b96456cb-vm9rv with SMTP id filterdrecv-84b96456cb-vm9rv-1-648DFAA9-8
        2023-06-17 18:25:45.571793879 +0000 UTC m=+3264420.325817917
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-9 (SG)
	with ESMTP
	id GaPCRIizSC-ctweejSKLYw
	Sat, 17 Jun 2023 18:25:45.250 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 1/2] iommu: rockchip: Fix directory table address encoding
Date: Sat, 17 Jun 2023 18:25:45 +0000 (UTC)
Message-Id: <20230617182540.3091374-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230617182540.3091374-1-jonas@kwiboo.se>
References: <20230617182540.3091374-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h0Zdccs3IepNUXkdY?=
 =?us-ascii?Q?Kdo=2Fxe54HqwcNSufpeRferWqQCC7Tu4j3VYXjoX?=
 =?us-ascii?Q?mCMNHo6iMb1iri4cGfy3o2n1rCEimXl8DC6M156?=
 =?us-ascii?Q?7ApJjte8YDaOKelY05+cTJwh=2FFsGlQUEPcwpxhL?=
 =?us-ascii?Q?wRbJcRDTXHeYeOZpng2cEyhUFP3O4fMNY7ezLNB?=
 =?us-ascii?Q?cZe5qoUCoG31rflCaLUGw=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>, Joerg Roedel <jroedel@suse.de>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_112551_339348_DCDFB7B1 
X-CRM114-Status: GOOD (  15.91  )
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

The physical address to the directory table is currently encoded using
the following bit layout for IOMMU v2.

 31:12 - Address bit 31:0
 11: 4 - Address bit 39:32

This is also the bit layout used by the vendor kernel.

However, testing has shown that addresses to the directory/page tables
and memory pages are all encoded using the same bit layout.

IOMMU v1:
 31:12 - Address bit 31:0

IOMMU v2:
 31:12 - Address bit 31:0
 11: 8 - Address bit 35:32
  7: 4 - Address bit 39:36

Change to use the mk_dtentries ops to encode the directory table address
correctly. The value written to DTE_ADDR may include the valid bit set,
a bit that is ignored and DTE_ADDR reg read it back as 0.

This also update the bit layout comment for the page address and the
number of nybbles that are read back for DTE_ADDR comment.

These changes render the dte_addr_phys and dma_addr_dte ops unused and
is removed.

Fixes: 227014b33f62 ("iommu: rockchip: Add internal ops to handle variants")
Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
Fixes: c987b65a574f ("iommu/rockchip: Fix physical address decoding")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- squash removal of unused ops into this patch
- update commit message

v2:
- replace currently with correctly in commit message

 drivers/iommu/rockchip-iommu.c | 43 ++++------------------------------
 1 file changed, 5 insertions(+), 38 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4054030c3237..ae42959bc490 100644
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
 
@@ -278,8 +276,8 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
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
@@ -506,7 +504,7 @@ static int rk_iommu_force_reset(struct rk_iommu *iommu)
 
 	/*
 	 * Check if register DTE_ADDR is working by writing DTE_ADDR_DUMMY
-	 * and verifying that upper 5 nybbles are read back.
+	 * and verifying that upper 5 (v1) or 7 (v2) nybbles are read back.
 	 */
 	for (i = 0; i < iommu->num_mmu; i++) {
 		dte_addr = rk_ops->pt_address(DTE_ADDR_DUMMY);
@@ -531,33 +529,6 @@ static int rk_iommu_force_reset(struct rk_iommu *iommu)
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
@@ -577,7 +548,7 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 	page_offset = rk_iova_page_offset(iova);
 
 	mmu_dte_addr = rk_iommu_read(base, RK_MMU_DTE_ADDR);
-	mmu_dte_addr_phys = rk_ops->dte_addr_phys(mmu_dte_addr);
+	mmu_dte_addr_phys = rk_ops->pt_address(mmu_dte_addr);
 
 	dte_addr_phys = mmu_dte_addr_phys + (4 * dte_index);
 	dte_addr = phys_to_virt(dte_addr_phys);
@@ -967,7 +938,7 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
 
 	for (i = 0; i < iommu->num_mmu; i++) {
 		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR,
-			       rk_ops->dma_addr_dte(rk_domain->dt_dma));
+			       rk_ops->mk_dtentries(rk_domain->dt_dma));
 		rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
 		rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
 	}
@@ -1405,8 +1376,6 @@ static struct rk_iommu_ops iommu_data_ops_v1 = {
 	.pt_address = &rk_dte_pt_address,
 	.mk_dtentries = &rk_mk_dte,
 	.mk_ptentries = &rk_mk_pte,
-	.dte_addr_phys = &rk_dte_addr_phys,
-	.dma_addr_dte = &rk_dma_addr_dte,
 	.dma_bit_mask = DMA_BIT_MASK(32),
 };
 
@@ -1414,8 +1383,6 @@ static struct rk_iommu_ops iommu_data_ops_v2 = {
 	.pt_address = &rk_dte_pt_address_v2,
 	.mk_dtentries = &rk_mk_dte_v2,
 	.mk_ptentries = &rk_mk_pte_v2,
-	.dte_addr_phys = &rk_dte_addr_phys_v2,
-	.dma_addr_dte = &rk_dma_addr_dte_v2,
 	.dma_bit_mask = DMA_BIT_MASK(40),
 };
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
