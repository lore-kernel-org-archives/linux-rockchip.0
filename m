Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F5EC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zRfslgaqYKWk+pPodXmtwicvBj316UQDc0XDKZtpqek=; b=sy3gU9NU/1BIdm
	VrVil7yOBNgvZiolBnSlGd+56qZd4qkRbUh7bZA+p4jHsPupOyq7eHpmDHl3HiGrxVSKMpA8o21pK
	FVaFlw8dgnAkCFqHF1LaXr7LYnAkfajC0vKUswIjqHesyYMcQJ/nJKGbuQQo+/ttfBJIBUzENsNSN
	YS6hNujRAD2r2gBjttHdcfR7aouKTP5wHZlRZ8l/lIIMFr7wL5AShtynV0sPlG2Htu9wK9raZiIja
	EGnRcIq7TjQn0o/uTr/p0HaAcL2J9maQxTDWQHeI4H+Z/cENwzWPNckI7/QcitWEzQ39BF3vx2i38
	Dv9o/OfdecxgwGuliubQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcUCW-00E5Fd-2p;
	Wed, 15 Mar 2023 16:42:08 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcUCT-00E5Er-0B;
	Wed, 15 Mar 2023 16:42:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DC514B3;
	Wed, 15 Mar 2023 09:42:47 -0700 (PDT)
Received: from e122027.arm.com (unknown [10.57.53.168])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22A1A3F67D;
	Wed, 15 Mar 2023 09:42:00 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>
Cc: Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	Steven Price <steven.price@arm.com>
Subject: [PATCH] iommu/rockchip: Add missing set_platform_dma_ops callback
Date: Wed, 15 Mar 2023 16:41:52 +0000
Message-Id: <20230315164152.333251-1-steven.price@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_094205_137218_88812287 
X-CRM114-Status: UNSURE (   9.37  )
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

Similar to exynos, we need a set_platform_dma_ops() callback for proper
operation on ARM 32 bit after recent changes in the IOMMU framework
(detach ops removal).

Fixes: c1fe9119ee70 ("iommu: Add set_platform_dma_ops callbacks")
Signed-off-by: Steven Price <steven.price@arm.com>
---
This fixes a splat I was seeing on a Firefly-RK3288, more details here:
https://lore.kernel.org/all/26a5d1b8-40b3-b1e4-bc85-740409c26838@arm.com/

 drivers/iommu/rockchip-iommu.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index f30db22ea5d7..312a3df19904 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1183,6 +1183,12 @@ static int rk_iommu_of_xlate(struct device *dev,
 	return 0;
 }
 
+static void rk_iommu_set_platform_dma(struct device *dev)
+{
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	rk_iommu_detach_device(domain, dev);
+}
+
 static const struct iommu_ops rk_iommu_ops = {
 	.domain_alloc = rk_iommu_domain_alloc,
 	.probe_device = rk_iommu_probe_device,
@@ -1190,6 +1196,7 @@ static const struct iommu_ops rk_iommu_ops = {
 	.device_group = rk_iommu_device_group,
 	.pgsize_bitmap = RK_IOMMU_PGSIZE_BITMAP,
 	.of_xlate = rk_iommu_of_xlate,
+	.set_platform_dma_ops = rk_iommu_set_platform_dma,
 	.default_domain_ops = &(const struct iommu_domain_ops) {
 		.attach_dev	= rk_iommu_attach_device,
 		.map		= rk_iommu_map,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
