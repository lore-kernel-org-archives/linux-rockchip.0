Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70240EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 20:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/fDyNEEw53hF2PIGxyGregF644sAverK9+R0+5Ztx/k=; b=g0e3lDxzZ0wuZ3Lt3XTSWX874O
	UAG7z6daY8lpbhiXIhrwGBJi+zf9ghzhBgaOeKZPIN3FUU0TS/8AMGrCoZqQyIRNikDaHsarstyRa
	qSEISOFZEXJmxSk79vL+QU5CqKc1427YKvKh/FPhHNWAjVIp3L4DprZW2UN5FO0obhzoTLsi2hn9f
	AVk28eWkU48rcX1k0M5jEKsaOL9i7J1ce7XsaXWlaxBTMjVFcVIz5YH3spvdBQQ/pkv3gCtqkdKle
	MGNVlTW4wU95Ns5VYVZH3n9S0+kYobDxp1s8CUFHFChDL11aoVNXyY739gygYYB8pdEXX74THhib3
	jThp7Fww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tJ1-00FzTK-2U;
	Thu, 15 Jun 2023 20:10:55 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tIx-00FzPK-0F
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 20:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=/qL4tWH5vlfUGDltwgczmV318twf9yMJvn1JbUu8GiY=;
	b=Oci/zWt4tgI1SRFLzpYzM1/YhWgKLN++0kQB/UrIyGdcxHE9JjapDGiGKk4efPOZLgf9
	R3H+LI+3oeIyEUf+h2WAi9ni5//WfQGwSAOruYTyMjLZS5z3IuPi3t7QGAWKacHelM1JwA
	7GwXbbL37UEi/aTaJ4i8eNECvwYkE4hYAhicBv4gsVPMGDUyGaK/IuBCSYfExxwi2L2kOY
	eyOA7DEIvALtozWTqML2K25reBwoAKSVs0boFeBnvry3XNkLXJkcWncRpR5tcQo8v4Td1x
	CKAvvto5ebEeVCvNt4wjGv+O/wcCEI1T53uGb/wFi1PFtZ1I10XNtddq1ouhDF+A==
Received: by filterdrecv-65f68489c8-xfp5j with SMTP id filterdrecv-65f68489c8-xfp5j-1-648B7048-2B
        2023-06-15 20:10:48.817052942 +0000 UTC m=+3098087.423003092
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id UaAYmYNhTEmHCxT9KxKCWA
	Thu, 15 Jun 2023 20:10:48.624 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 3/3] iommu: rockchip: Allocate tables from all available
 memory
Date: Thu, 15 Jun 2023 20:10:49 +0000 (UTC)
Message-Id: <20230615201042.2291867-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615201042.2291867-1-jonas@kwiboo.se>
References: <20230615201042.2291867-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hwSnsPxsggRhT=2FD+A?=
 =?us-ascii?Q?9yEtkGRht4pdol+jy3k6QpCorymp5gRwI4WQaU7?=
 =?us-ascii?Q?3dOcXB8iUX5JPwAso4KvAGCmmGsdC8xZgldN3xy?=
 =?us-ascii?Q?zCfKtiItnDfAPPXk3uQuMqksg8MOayzp+zIoE84?=
 =?us-ascii?Q?Tx22aDhJcAXV8Kpxd7zWHi=2FW6hPISKQAEuK1W+Y?=
 =?us-ascii?Q?yRcLT6n3EDFB+1XKPzvTg=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_131051_345087_C58E9A16 
X-CRM114-Status: GOOD (  12.21  )
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

Newer Rockchip SoCs, RK356x and RK3588, support more then 4GB of memory.
However, the RK IOMMU driver is using the GFP_DMA32 flag to limit
allocation of the discovery and page tables into memory below 4GB.

Let's remove this limitation now that the discovery table address is
correctly configured for addresses above 4GB.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2:
- no change

 drivers/iommu/rockchip-iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 62be9bf42390..46498fc382ee 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -727,7 +727,7 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	if (rk_dte_is_pt_valid(dte))
 		goto done;
 
-	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | GFP_DMA32);
+	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC);
 	if (!page_table)
 		return ERR_PTR(-ENOMEM);
 
@@ -1076,7 +1076,7 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 	 * Each level1 (dt) and level2 (pt) table has 1024 4-byte entries.
 	 * Allocate one 4 KiB page for each table.
 	 */
-	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | GFP_DMA32);
+	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL);
 	if (!rk_domain->dt)
 		goto err_free_domain;
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
