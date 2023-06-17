Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA7BFEB64DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 18:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e7Sby7ILBI23rI/NON7n9hG2amrJn5BThdLGPgprkZs=; b=yc0mxYBX9JWCSMgmvg7vtZpGOW
	/akx35tbP/hBZiEr+DutMBhNA+kwSiurE4FF4+A5NgXJjojfZqT1MGyDdKtbgnzer+jCfAK1R8bKw
	ops8tKMe1hRm/qunYpOzy42TwI2Snh3X8CkQo8XH+1V4G9JG6XXZUBOgvB1m7EV+nXd1wouJa1qsv
	Kslsn/hqrbbmekEabNqKwNy/as0mVEYviPQoz8tgy4ne/8KgxmoWK845CkwZEDsVXyxKWJwVvyGCI
	ZFXWRWm1SqUzTX8lCVwzGFZwCYrRlu4WmprkwiV7FpIcqusBCWqusfz3x3yvMQYDo6+MusBzbD19d
	GkJNHpmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAacT-00462W-01;
	Sat, 17 Jun 2023 18:25:53 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAacQ-00460Y-0H
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 18:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=8prRfbE+6BMjBYkBg8J9q7EYZh9DJvA0OE++z4Z4keE=;
	b=ZhZMK7R6ej9z8VN1hjk9bVnrycXXqn/4jMsTTlNtagZhUsDaF/J22/omdiwDdlFybEzR
	Od9N8qcTvXYd4JAn/TmfPsP28WgwY6Pca4/aDvoaHYpldx0KBz1YeT6cF8rOO0xrztVNgL
	HPZcwfwxxfzMbzvnS3NQbv9m4900wbSaUQSIwe0xc/t0Y53+2+vxj455KZOoo0RCn7wtlE
	8eB/TGw1ENXAIZ3HSFOHjwb/7dpcO9P1CUaEnD4Xtsqn111d0Hjv1phsUly3R96CvqfzBB
	BZjdKxKPNB1HFy8VmHriTHyMCBxS8/Slb/JIFuXr3qd7hUh+/Ayrc11h+dZE7jdA==
Received: by filterdrecv-66949dbc98-556jz with SMTP id filterdrecv-66949dbc98-556jz-1-648DFAAA-23
        2023-06-17 18:25:46.920953702 +0000 UTC m=+3264358.699757555
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-9 (SG)
	with ESMTP
	id bSTYm9X4SBijI0tVW31gnw
	Sat, 17 Jun 2023 18:25:46.700 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 2/2] iommu: rockchip: Allocate tables from all available
 memory for IOMMU v2
Date: Sat, 17 Jun 2023 18:25:47 +0000 (UTC)
Message-Id: <20230617182540.3091374-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230617182540.3091374-1-jonas@kwiboo.se>
References: <20230617182540.3091374-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h6BI1m9mIfF17oGYg?=
 =?us-ascii?Q?zhIBYZRmTzhrjNczQSLhl6u7WvKsd+ZpARA1fE8?=
 =?us-ascii?Q?B3XOD8sCVjnurgnuXDQ1qBePWUajf=2F5JGh2pJ61?=
 =?us-ascii?Q?XLKtbB+FeJaPIZzPAoxxT4qnltGBr5CKt6eBL+a?=
 =?us-ascii?Q?k=2F0Mrp3u9q9YpcdcPNwFcxCEmzwzmRjzYWZ2XVl?=
 =?us-ascii?Q?cfr9sgWx4D1e=2Fr3pZCdSw=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_112550_185417_F898570E 
X-CRM114-Status: GOOD (  11.06  )
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

IOMMU v2 found in newer Rockchip SoCs, e.g. RK356x and RK3588, support
placing directory and page tables in up to 40-bit addressable physical
memory.

Remove the use of GFP_DMA32 flag for IOMMU v2 now that the physical
address to the directory table is correctly written to DTE_ADDR.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- rework to only affect IOMMU v2

v2:
- no change

 drivers/iommu/rockchip-iommu.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index ae42959bc490..8ff69fbf9f65 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -99,6 +99,7 @@ struct rk_iommu_ops {
 	u32 (*mk_dtentries)(dma_addr_t pt_dma);
 	u32 (*mk_ptentries)(phys_addr_t page, int prot);
 	u64 dma_bit_mask;
+	gfp_t gfp_flags;
 };
 
 struct rk_iommu {
@@ -727,7 +728,7 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	if (rk_dte_is_pt_valid(dte))
 		goto done;
 
-	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | GFP_DMA32);
+	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | rk_ops->gfp_flags);
 	if (!page_table)
 		return ERR_PTR(-ENOMEM);
 
@@ -1076,7 +1077,7 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 	 * Each level1 (dt) and level2 (pt) table has 1024 4-byte entries.
 	 * Allocate one 4 KiB page for each table.
 	 */
-	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | GFP_DMA32);
+	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | rk_ops->gfp_flags);
 	if (!rk_domain->dt)
 		goto err_free_domain;
 
@@ -1377,6 +1378,7 @@ static struct rk_iommu_ops iommu_data_ops_v1 = {
 	.mk_dtentries = &rk_mk_dte,
 	.mk_ptentries = &rk_mk_pte,
 	.dma_bit_mask = DMA_BIT_MASK(32),
+	.gfp_flags = GFP_DMA32,
 };
 
 static struct rk_iommu_ops iommu_data_ops_v2 = {
@@ -1384,6 +1386,7 @@ static struct rk_iommu_ops iommu_data_ops_v2 = {
 	.mk_dtentries = &rk_mk_dte_v2,
 	.mk_ptentries = &rk_mk_pte_v2,
 	.dma_bit_mask = DMA_BIT_MASK(40),
+	.gfp_flags = 0,
 };
 
 static const struct of_device_id rk_iommu_dt_ids[] = {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
