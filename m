Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4DEDC54E94
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 22:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h898/BmZyNv+be9DZmsWf/ykauPUNvHmpK25Xb+0CIQ=; b=X9qn5rHRMOwHr2j4GIpY0VwQEU
	TwtLp4BMP1TLvxuInsERrnXJUp0k9n06+g17FPtOT5bBfSg5/niLJGLuzNMd1vglWAzNaPVb+4wXf
	eNOLP9K7QiMXmpu0e9s6fZmvtYbu8b04njJlewlCvb3bA03xC56h6UT1wkmCH/JciP1VRjQ6aJryo
	YP2hJXw7oUfxTsznNIHKdIvfzUistCteNoA1jx9G6TkJ04xY7Ma7XkmhjHiE/L5WKK9nE1bZS2tPA
	f3YGAqIhTdVYL0zYMmRDIziNnMZnuVLVJh+al0/5V6zeZCeE65FvpnYecZ9f4Bn7TfA47EdudAzde
	PvyaxUoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo6P-008y2B-47; Wed, 25 Jan 2023 22:18:45 +0000
Received: from xtrwsqbh.outbound-mail.sendgrid.net ([167.89.100.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo5z-008xrM-DY
	for linux-rockchip@lists.infradead.org; Wed, 25 Jan 2023 22:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=v/+7TIKYeL3kSElncchHEqaouv/ZY1YfqWgkjj3Wl8c=;
	b=lG96mQWWdWgwMCw2+oIkuZjnI+KQC/mIrcJdO6BxadIf1FWJvJRMCJMI3nFxpdh/1jw4
	RyNi+903jOXwy3eHQNVVluXBRKDdgkYk8W7S0dI86YBjCu7UhBm0KgNHoWor3nO4DH0Lo1
	qHpwW1cEM5nMw7jcoc0qRyQW+oQ390mwGDF50yNaLJwDV2ZcLbxS+wBlnVribstX9OI4at
	epcImt3UejXSGdstAu5cLVBlTR3g4C2wtxY5SIfssjXA2R7fhYI5gllHsZYCkqgjwIxEGG
	W3YSbHv60yUK2kNMHimtLTI7m1X+Ti6BOIeV/vdOmJVeGyLctv/WxQaUBhGF67dQ==
Received: by filterdrecv-8569859b9-97x8c with SMTP id filterdrecv-8569859b9-97x8c-1-63D1AAA4-23
        2023-01-25 22:18:12.571250041 +0000 UTC m=+5958685.948296575
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5-2 (SG)
	with ESMTP
	id jPjw9qkGQaSNJoFiiH0Fjw
	Wed, 25 Jan 2023 22:18:12.364 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/3] iommu: rockchip: Fix discovery table address encoding
Date: Wed, 25 Jan 2023 22:18:12 +0000 (UTC)
Message-Id: <20230125221809.3275481-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125221809.3275481-1-jonas@kwiboo.se>
References: <20230125221809.3275481-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hzE9y3ON40KepxhFB?=
 =?us-ascii?Q?b7izHX1JjXxyuEqDlHxxqRyDUjHN6Q7El3VcYON?=
 =?us-ascii?Q?IjJcWc2HkzGQB9uZ1ZUBAwtO2Uy94ebDjPozYop?=
 =?us-ascii?Q?Tuso9GBe2muWh3zjspnQ+U5VWy2fmlAaTnAgI1T?=
 =?us-ascii?Q?0Alws=2FjWmSdRWnU38wQPuPe3=2F7Yi2NXJh0Oz8v7?=
 =?us-ascii?Q?c=2F4L7e0mjiulqF1DANOAg=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_141820_241266_BD6DCA33 
X-CRM114-Status: GOOD (  13.46  )
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
currently. Also update the bit layout comment for the page address.

These changes render the dte_addr_phys and dma_addr_dte ops unused
and will be removed in a following patch.

Fixes: 227014b33f62 ("iommu: rockchip: Add internal ops to handle variants")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/iommu/rockchip-iommu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index f30db22ea5d7..3f92b95e6b67 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -277,8 +277,8 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
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
@@ -576,7 +576,7 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
 	page_offset = rk_iova_page_offset(iova);
 
 	mmu_dte_addr = rk_iommu_read(base, RK_MMU_DTE_ADDR);
-	mmu_dte_addr_phys = rk_ops->dte_addr_phys(mmu_dte_addr);
+	mmu_dte_addr_phys = rk_ops->pt_address(mmu_dte_addr);
 
 	dte_addr_phys = mmu_dte_addr_phys + (4 * dte_index);
 	dte_addr = phys_to_virt(dte_addr_phys);
@@ -966,7 +966,7 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
 
 	for (i = 0; i < iommu->num_mmu; i++) {
 		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR,
-			       rk_ops->dma_addr_dte(rk_domain->dt_dma));
+			       rk_ops->mk_dtentries(rk_domain->dt_dma));
 		rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
 		rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
 	}
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
