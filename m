Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C36C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:41:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BD0161163
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:41:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BD0161163
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gkc0+Rkca+1CTJ17wLgUOx+ng29cnoEQ8SUJnGIQHyk=; b=AFh1BluLAoh/yyw9kIiUi88Fb9
	pCxaPLJdvaz7U7BZ6r+m4Ih4OKdUAfGWHMGqTtvUWoo0W//0uHn8+R5IdmG0yOpLgAIrwg+9HaXAT
	aCP1Ro1g+KfmqL+GvMxLlCTcb6hqnhz35P1rH3pwsDOHm/Du5x/ffC1EYuVvkU51BY1Nq/hUa1a9y
	GYyvFmuyAAcyRQ5v6blnds/dt5eQnlyQsvYvcGIrqgkJY6cFu3gdu6aenrCA3/qm/B67z6glBxGOt
	IF17dJ4opyn+PArx/CXVSwEbOV8fNwmpW5F4gRmo1y2+8IvVdO1ynXEYg//YMhMTyNoECKD4RPO58
	54hT6dgQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk5PE-005aCZ-2g; Fri, 21 May 2021 13:41:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk5OR-005Zqg-5l; Fri, 21 May 2021 13:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=3VzQ99g7qvlLafP9SM+kfN9QTj8o391G4a2xXUj7ZbY=; b=peRIE/0Am6YqcvedLrgeDqIs8Z
 6nwSNSazctxswuuAK3dU8EzdZ1fKO0qhobNZ06+Gx4ethqtTrOB8Pr52p9WdvPxQ6quPA1fSq0Vah
 DedB7Je8M2oToSEa04cCJwuaRFEn/+go4J2nuFZ3Fl3W/YldVnT+fuZ5LctshC4qzqmzce447x9fN
 15DyTpwPbiQUy5HGwfIotaky1HiWCW4rh1CYSuYRJqP/CR49ydJhm2JNXnC+FAylpXrTLUNCGozg9
 Q+5Yf3jc65gU1dkYpVzESYKiL47Ze5LsmhFUgwO2OMslSD1oZ8CeJXcbk7ZoMnySIbGUp0k9NeLQY
 kPb3kx9Q==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk5ON-00H9k6-A1; Fri, 21 May 2021 13:40:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 171CE1F4408B
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com, robin.murphy@arm.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 4/4] iommu: rockchip: Add support for iommu v2
Date: Fri, 21 May 2021 15:40:28 +0200
Message-Id: <20210521134028.3710011-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210521134028.3710011-1-benjamin.gaignard@collabora.com>
References: <20210521134028.3710011-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_064043_500630_E2E0E8A6 
X-CRM114-Status: GOOD (  14.64  )
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

This second version of the hardware block has a different bits
mapping for page table entries.
Add the ops matching to this new mapping.
Define a new compatible to distinguish it from the first version.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
version 5:
 - Use internal ops to support v2 hardware block
 - Use GENMASK macro.
 - Keep rk_dte_pt_address() and rk_dte_pt_address_v2() separated
   because I believe that is more readable like this.
 - Do not duplicate code.

 drivers/iommu/rockchip-iommu.c | 78 ++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 7b537dd168ca..d943b9d8bdb2 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -187,6 +187,33 @@ static inline phys_addr_t rk_dte_pt_address(u32 dte)
 	return (phys_addr_t)dte & RK_DTE_PT_ADDRESS_MASK;
 }
 
+/*
+ * In v2:
+ * 31:12 - PT address bit 31:0
+ * 11: 8 - PT address bit 35:32
+ *  7: 4 - PT address bit 39:36
+ *  3: 1 - Reserved
+ *     0 - 1 if PT @ PT address is valid
+ */
+#define RK_DTE_PT_ADDRESS_MASK_V2 GENMASK_ULL(31, 4)
+#define DTE_HI_MASK1	GENMASK(11, 8)
+#define DTE_HI_MASK2	GENMASK(7, 4)
+#define DTE_HI_SHIFT1	24 /* shift bit 8 to bit 32 */
+#define DTE_HI_SHIFT2	32 /* shift bit 4 to bit 36 */
+#define PAGE_DESC_HI_MASK1	GENMASK_ULL(39, 36)
+#define PAGE_DESC_HI_MASK2	GENMASK_ULL(35, 32)
+
+static inline phys_addr_t rk_dte_pt_address_v2(u32 dte)
+{
+	u64 dte_v2 = dte;
+
+	dte_v2 = ((dte_v2 & DTE_HI_MASK2) << DTE_HI_SHIFT2) |
+		 ((dte_v2 & DTE_HI_MASK1) << DTE_HI_SHIFT1) |
+		 (dte_v2 & RK_DTE_PT_ADDRESS_MASK);
+
+	return (phys_addr_t)dte_v2;
+}
+
 static inline bool rk_dte_is_pt_valid(u32 dte)
 {
 	return dte & RK_DTE_PT_VALID;
@@ -197,6 +224,15 @@ static inline u32 rk_mk_dte(dma_addr_t pt_dma)
 	return (pt_dma & RK_DTE_PT_ADDRESS_MASK) | RK_DTE_PT_VALID;
 }
 
+static inline u32 rk_mk_dte_v2(dma_addr_t pt_dma)
+{
+	pt_dma = (pt_dma & RK_DTE_PT_ADDRESS_MASK) |
+		 ((pt_dma & PAGE_DESC_HI_MASK1) >> DTE_HI_SHIFT1) |
+		 (pt_dma & PAGE_DESC_HI_MASK2) >> DTE_HI_SHIFT2;
+
+	return (pt_dma & RK_DTE_PT_ADDRESS_MASK_V2) | RK_DTE_PT_VALID;
+}
+
 /*
  * Each PTE has a Page address, some flags and a valid bit:
  * +---------------------+---+-------+-+
@@ -238,6 +274,29 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
 	return page | flags | RK_PTE_PAGE_VALID;
 }
 
+/*
+ * In v2:
+ * 31:12 - Page address bit 31:0
+ *  11:9 - Page address bit 34:32
+ *   8:4 - Page address bit 39:35
+ *     3 - Security
+ *     2 - Readable
+ *     1 - Writable
+ *     0 - 1 if Page @ Page address is valid
+ */
+#define RK_PTE_PAGE_READABLE_V2      BIT(2)
+#define RK_PTE_PAGE_WRITABLE_V2      BIT(1)
+
+static u32 rk_mk_pte_v2(phys_addr_t page, int prot)
+{
+	u32 flags = 0;
+
+	flags |= (prot & IOMMU_READ) ? RK_PTE_PAGE_READABLE_V2 : 0;
+	flags |= (prot & IOMMU_WRITE) ? RK_PTE_PAGE_WRITABLE_V2 : 0;
+
+	return rk_mk_dte_v2(page) | flags;
+}
+
 static u32 rk_mk_pte_invalid(u32 pte)
 {
 	return pte & ~RK_PTE_PAGE_VALID;
@@ -478,6 +537,15 @@ static inline phys_addr_t rk_dte_addr_phys(u32 addr)
 	return (phys_addr_t)addr;
 }
 
+#define DT_HI_MASK GENMASK_ULL(39, 32)
+#define DT_SHIFT   28
+
+static inline phys_addr_t rk_dte_addr_phys_v2(u32 addr)
+{
+	return (phys_addr_t)(addr & RK_DTE_PT_ADDRESS_MASK) |
+	       ((addr & DT_HI_MASK) << DT_SHIFT);
+}
+
 static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 {
 	void __iomem *base = iommu->bases[index];
@@ -1305,10 +1373,20 @@ static struct rk_iommu_ops iommu_data_ops_v1 = {
 	.dte_addr_phys = &rk_dte_addr_phys,
 };
 
+static struct rk_iommu_ops iommu_data_ops_v2 = {
+	.pt_address = &rk_dte_pt_address_v2,
+	.mk_dtentries = &rk_mk_dte_v2,
+	.mk_ptentries = &rk_mk_pte_v2,
+	.dte_addr_phys = &rk_dte_addr_phys_v2,
+};
+
 static const struct of_device_id rk_iommu_dt_ids[] = {
 	{	.compatible = "rockchip,iommu",
 		.data = &iommu_data_ops_v1,
 	},
+	{	.compatible = "rockchip,rk3568-iommu",
+		.data = &iommu_data_ops_v2,
+	},
 	{ /* sentinel */ }
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
