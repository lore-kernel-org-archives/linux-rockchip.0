Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98536C6FD18
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 09:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LdhEoyfCazOOWGR3BFqcH89saK/H+LK9QQ829RQGZms=; b=3950L2qSa8tJ39
	XGs2Pm5hxcJOPzyqWw6/zhR3ReOT1h7qY/Wd+6xqQtLGY3EvMrQyKAg3aiXzvP3L1gwVX9ZLr9u97
	O31Pky9Ef4vwjvJ0XIiVuvXfa1Sla0vdMaoqSiYR790X5B8YdGig0UrhH4aeQzYpFNvZiDUpu2pcY
	pHNpTmTyPjYlkbDj0UqzwoXWu4odHP6GjT31iCoPrXOBiHt7IqVZrU80wk/T3yfK6HAA6YFAEFFxP
	pGOivrYemEmD+gVSxRoTmaKkNOUcqji/NzFpCvUGxNhqfEDk8mfnL0tJgqDcSYeQvV3HMgMi7/QSx
	ldTJppzeSX+VuHvQXJzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piBQX-006myt-39;
	Fri, 31 Mar 2023 09:52:09 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piBQT-006mx2-18;
	Fri, 31 Mar 2023 09:52:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A31922F4;
	Fri, 31 Mar 2023 02:52:48 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com [10.1.194.34])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D834D3F6C4;
	Fri, 31 Mar 2023 02:52:02 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Jason Gunthorpe <jgg@ziepe.ca>
Cc: Steven Price <steven.price@arm.com>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	John Keeping <john@metanate.com>
Subject: [PATCH v4] iommu/rockchip: Add missing set_platform_dma_ops callback
Date: Fri, 31 Mar 2023 10:51:54 +0100
Message-Id: <20230331095154.2671129-1-steven.price@arm.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_025205_503029_CFD6E548 
X-CRM114-Status: GOOD (  20.08  )
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
(detach ops removal). But also the use of a NULL domain is confusing.

Rework the code to add support for IOMMU_DOMAIN_IDENTITY and a singleton
rk_identity_domain which is assigned to domain when using an identity
mapping rather than "detaching". This makes the code easier to reason about.

Signed-off-by: Steven Price <steven.price@arm.com>
---
Changes since v3[1]:

 * Added a dummy free callback to rk_identity_ops.

[1] https://lore.kernel.org/r/20230330144604.2431436-1-steven.price%40arm.com

 drivers/iommu/rockchip-iommu.c | 61 ++++++++++++++++++++++++++--------
 1 file changed, 47 insertions(+), 14 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index f30db22ea5d7..ea5a3088bb7e 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -124,6 +124,7 @@ struct rk_iommudata {
 
 static struct device *dma_dev;
 static const struct rk_iommu_ops *rk_ops;
+static struct iommu_domain rk_identity_domain;
 
 static inline void rk_table_flush(struct rk_iommu_domain *dom, dma_addr_t dma,
 				  unsigned int count)
@@ -646,7 +647,7 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
 			 * Ignore the return code, though, since we always zap cache
 			 * and clear the page fault anyway.
 			 */
-			if (iommu->domain)
+			if (iommu->domain != &rk_identity_domain)
 				report_iommu_fault(iommu->domain, iommu->dev, iova,
 						   flags);
 			else
@@ -980,26 +981,27 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
 	return ret;
 }
 
-static void rk_iommu_detach_device(struct iommu_domain *domain,
-				   struct device *dev)
+static int rk_iommu_identity_attach(struct iommu_domain *identity_domain,
+				    struct device *dev)
 {
 	struct rk_iommu *iommu;
-	struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
+	struct rk_iommu_domain *rk_domain;
 	unsigned long flags;
 	int ret;
 
 	/* Allow 'virtual devices' (eg drm) to detach from domain */
 	iommu = rk_iommu_from_dev(dev);
 	if (!iommu)
-		return;
+		return -ENODEV;
+
+	rk_domain = to_rk_domain(iommu->domain);
 
 	dev_dbg(dev, "Detaching from iommu domain\n");
 
-	/* iommu already detached */
-	if (iommu->domain != domain)
-		return;
+	if (iommu->domain == identity_domain)
+		return 0;
 
-	iommu->domain = NULL;
+	iommu->domain = identity_domain;
 
 	spin_lock_irqsave(&rk_domain->iommus_lock, flags);
 	list_del_init(&iommu->node);
@@ -1011,8 +1013,31 @@ static void rk_iommu_detach_device(struct iommu_domain *domain,
 		rk_iommu_disable(iommu);
 		pm_runtime_put(iommu->dev);
 	}
+
+	return 0;
 }
 
+static void rk_iommu_identity_free(struct iommu_domain *domain)
+{
+}
+
+static struct iommu_domain_ops rk_identity_ops = {
+	.attach_dev = rk_iommu_identity_attach,
+	.free = rk_iommu_identity_free,
+};
+
+static struct iommu_domain rk_identity_domain = {
+	.type = IOMMU_DOMAIN_IDENTITY,
+	.ops = &rk_identity_ops,
+};
+
+#ifdef CONFIG_ARM
+static void rk_iommu_set_platform_dma(struct device *dev)
+{
+	WARN_ON(rk_iommu_identity_attach(&rk_identity_domain, dev));
+}
+#endif
+
 static int rk_iommu_attach_device(struct iommu_domain *domain,
 		struct device *dev)
 {
@@ -1035,8 +1060,9 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
 	if (iommu->domain == domain)
 		return 0;
 
-	if (iommu->domain)
-		rk_iommu_detach_device(iommu->domain, dev);
+	ret = rk_iommu_identity_attach(&rk_identity_domain, dev);
+	if (ret)
+		return ret;
 
 	iommu->domain = domain;
 
@@ -1050,7 +1076,7 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
 
 	ret = rk_iommu_enable(iommu);
 	if (ret)
-		rk_iommu_detach_device(iommu->domain, dev);
+		WARN_ON(rk_iommu_identity_attach(&rk_identity_domain, dev));
 
 	pm_runtime_put(iommu->dev);
 
@@ -1061,6 +1087,9 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 {
 	struct rk_iommu_domain *rk_domain;
 
+	if (type == IOMMU_DOMAIN_IDENTITY)
+		return &rk_identity_domain;
+
 	if (type != IOMMU_DOMAIN_UNMANAGED && type != IOMMU_DOMAIN_DMA)
 		return NULL;
 
@@ -1176,6 +1205,7 @@ static int rk_iommu_of_xlate(struct device *dev,
 	iommu_dev = of_find_device_by_node(args->np);
 
 	data->iommu = platform_get_drvdata(iommu_dev);
+	data->iommu->domain = &rk_identity_domain;
 	dev_iommu_priv_set(dev, data);
 
 	platform_device_put(iommu_dev);
@@ -1188,6 +1218,9 @@ static const struct iommu_ops rk_iommu_ops = {
 	.probe_device = rk_iommu_probe_device,
 	.release_device = rk_iommu_release_device,
 	.device_group = rk_iommu_device_group,
+#ifdef CONFIG_ARM
+	.set_platform_dma_ops = rk_iommu_set_platform_dma,
+#endif
 	.pgsize_bitmap = RK_IOMMU_PGSIZE_BITMAP,
 	.of_xlate = rk_iommu_of_xlate,
 	.default_domain_ops = &(const struct iommu_domain_ops) {
@@ -1343,7 +1376,7 @@ static int __maybe_unused rk_iommu_suspend(struct device *dev)
 {
 	struct rk_iommu *iommu = dev_get_drvdata(dev);
 
-	if (!iommu->domain)
+	if (iommu->domain == &rk_identity_domain)
 		return 0;
 
 	rk_iommu_disable(iommu);
@@ -1354,7 +1387,7 @@ static int __maybe_unused rk_iommu_resume(struct device *dev)
 {
 	struct rk_iommu *iommu = dev_get_drvdata(dev);
 
-	if (!iommu->domain)
+	if (iommu->domain == &rk_identity_domain)
 		return 0;
 
 	return rk_iommu_enable(iommu);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
