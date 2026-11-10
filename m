Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900CA60A260A
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 07:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ar9+qHp4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jk4qw5Ug
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GM2QpCnf8IZ6iWnHWpMZbufwszn6dSnFyN7zBf7q6Dk=; b=ar9+qHp4Onx+1Z1XTfGH7Ortm6
	FTugatBTJ4SKsk/XmRYARSITNy37LX1C3MDhvOCUh1KBInTwHuOnhmg4SftQysAHAZHbyGbQaQfus
	qnfnRXwOk2Rgtj/IFoj1n9eWqXs8qeJmuH4ag7FEPQQR46sQktNXHAQtq9rEeflV4cej7+uGU7ups
	HbwJF5D50Ylzy050vzyYzw514ryC4EyA42iF9II/wQckVlXTmWwb8VUqspCsICkX8/xpQaD/6LJeA
	OXL/72DSK2i6AU7TPhXxgtzFTHSacwz1b6Ed4RXX2Sjec/Jol1oDFXBOP/q9dzvI5FKkabyMzC/9O
	0z4nb4JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQg0f-00000002lH9-3fhq;
	Tue, 10 Nov 2026 07:11:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQg0X-00000002l62-0Eoq;
	Tue, 10 Nov 2026 07:11:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 811BE6060C;
	Tue, 10 Nov 2026 07:11:04 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794294664;
	b=BZ72T9ZWxsfkj4a5TrCLT1boyneFXi0ICYGTS0UfRB0aV+sEI/EQaAbkU4JFdjEySuVO
	 gSisF2EJGWR9qGEgrQF6ND7C09H+5XMma5WJISURHYAto092+L883pFWFqOMQB0BbHWH5
	 i9S5E6gzHNLDrbusxSH+UusBlnD2SCWeZZRMKmhPYkYJ2zok2Hn9+cZgKP6pcUhErLc8u
	 i8jBBh9dLxzwH1hLBAL2/VP5VF0VY+3gXDtZdwaNVahFTmSt9e07Mf61UAsgP5HwuTpmh
	 sEnaddG5Lhogr0RLRVlVLsG5m9T1d4RcdLPEIcMSzGh6TEIg5ZgoZkSwJ7qPJJLNSzw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794294664;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=/+ec1nGNsTtnGXo1yv9fJGM8ok/p++iw8VVpMIqUvkg=;
	b=PSBLDwTxDvuKiE5CIcGhoDZ2QdZMP0w9CJao22GKVMXPvAWYRZDPxdR1AyeYElk/EytA
	 iTOoO4Dw2uJj5Vi5FE1AM6ZSciytfQ9GY9qP+qp6Ootv5NUOae3bltFUr82f3EoLs0aJK
	 if9PMFWS0QScwZt49GRvUMLIipzP69VqOy1+WB3g/DSqRDwC38nLEis5De2ncef2rVTQJ
	 xjYPiiC/fIg96atytWN7hDCWWm/uLxCoVBgbdmGLddIybewiNpbd52/gBl5yvA+F2EkOx
	 l99Ax+VwDAlP156Bzy/NNiDx3LLvvLC12jKq3mjtAZdgZCt+Dp6vF5WXBt24K34hbqw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id D2A1E1F008A2;
	Tue, 10 Nov 2026 07:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794294664;
	bh=/+ec1nGNsTtnGXo1yv9fJGM8ok/p++iw8VVpMIqUvkg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=jk4qw5Ug7OXZgn+muoyjTfZoFcaZcox67BHeE379A7TRG9dfmPaBOcEkNj5YOiziC
	 VnQVZOYuxhgvKdmN2SO3GIQFkQjksXMzeQDq/rQTXcrl50IED+mCvvk7fDLDK25fPj
	 mAp6vTNvJaDoxYgo5ZEJViuFZNwNMm/vbZ4rwK6Q3d0Vd0gkL96XeH3R4l8sgoQUIe
	 gKYNFyItP+vEzfvl4ZA8/cm68282yGoDNBQiSR2NtCLalLKa7DsswwRUESXwdDyPnB
	 XsUyleqVz7xSBIaRzXnfQRMVjPoz0Mk2zSp1Y+42asoF2/yvFiEW48SOu1hNp1mE7x
	 K/BY/a1xadhKA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 626A848929;
	Tue, 10 Nov 2026 07:11:02 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Tue, 10 Nov 2026 07:11:03 +0000
Subject: [PATCH 2/5] iommu/rockchip: Rate-limit the page fault reports
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-iommu-rockchip-faults-v1-2-b1dda574dbb8@gmail.com>
References: <20261110-iommu-rockchip-faults-v1-0-b1dda574dbb8@gmail.com>
In-Reply-To: <20261110-iommu-rockchip-faults-v1-0-b1dda574dbb8@gmail.com>
To: "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Jeffy Chen <jeffy.chen@rock-chips.com>, Tomasz Figa <tfiga@chromium.org>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794294661; l=4219;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=Mh9yYDG5bU5JM98WHSJZQsM8WG0/aD2uijwgqmqZNAQ=;
 b=hvRoaQcV/e2QkSmbd5XIjnuU5jTIsV8joll+zB/7lLnUC4EgLhCL//AZveTkRCYTL/aG+IjfQ
 yKDQwU5454GC9FcA5kvpFHC4OYoIFqgd4AnAOhpwWaMfFJYB4N0O+lc
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

rk_iommu_irq() prints three lines for every page fault (the fault, and
log_iova()'s two lines with the page table walk) from the hard interrupt
handler. A master that keeps accessing unmapped memory faults again as
soon as the fault is acknowledged, and on a board with a serial console
the handler then spends its time waiting for the console.

On an Orange Pi 5 (RK3588S, 115200 baud console), a VEPU121 JPEG encoder
core given an unmapped input address took 149 faults during its 2 s
timeout; the irq_handler_entry/exit trace events put 2.02 s of that in
rk_iommu_irq(), up to 17 ms for one call, and single faults took 18 to
27 ms each. The core's own timeout work could run only between faults.

Print at most DEFAULT_RATELIMIT_BURST reports per
DEFAULT_RATELIMIT_INTERVAL and IOMMU. report_iommu_fault() is still
called for every fault, so its io_page_fault trace event keeps the full
record.

Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/iommu/rockchip-iommu.c | 31 ++++++++++++++++++++++++-------
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index d40e2a26b7be..c3c3502db27d 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -23,6 +23,7 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/ratelimit.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/string_choices.h>
@@ -116,6 +117,7 @@ struct rk_iommu {
 	struct list_head node; /* entry in rk_iommu_domain.iommus */
 	struct iommu_domain *domain; /* domain to which iommu is attached */
 	const struct rk_iommu_ops *rk_ops;
+	struct ratelimit_state fault_rs; /* for the fault reports */
 };
 
 struct rk_iommudata {
@@ -608,6 +610,7 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
 	u32 int_status;
 	dma_addr_t iova;
 	irqreturn_t ret = IRQ_NONE;
+	bool print;
 	int i, err;
 
 	err = pm_runtime_get_if_in_use(iommu->dev);
@@ -632,11 +635,22 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
 			flags = (status & RK_MMU_STATUS_PAGE_FAULT_IS_WRITE) ?
 					IOMMU_FAULT_WRITE : IOMMU_FAULT_READ;
 
-			dev_err(iommu->dev, "Page fault at %pad of type %s\n",
-				&iova,
-				str_write_read(flags == IOMMU_FAULT_WRITE));
-
-			log_iova(iommu, i, iova);
+			/*
+			 * PAGE_FAULT_DONE below lets the master go on, and a
+			 * master that keeps accessing unmapped addresses faults
+			 * again at once, until its own driver stops it. Printing
+			 * every one of those faults from this handler keeps the
+			 * CPU in hard interrupt context for as long as the
+			 * console takes to print them. The trace event of
+			 * report_iommu_fault() still records every fault.
+			 */
+			print = __ratelimit(&iommu->fault_rs);
+			if (print) {
+				dev_err(iommu->dev, "Page fault at %pad of type %s\n",
+					&iova,
+					str_write_read(flags == IOMMU_FAULT_WRITE));
+				log_iova(iommu, i, iova);
+			}
 
 			/*
 			 * Report page fault to any installed handlers.
@@ -646,14 +660,15 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
 			if (iommu->domain != &rk_identity_domain)
 				report_iommu_fault(iommu->domain, iommu->dev, iova,
 						   flags);
-			else
+			else if (print)
 				dev_err(iommu->dev, "Page fault while iommu not attached to domain?\n");
 
 			rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
 			rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_PAGE_FAULT_DONE);
 		}
 
-		if (int_status & RK_MMU_IRQ_BUS_ERROR)
+		if ((int_status & RK_MMU_IRQ_BUS_ERROR) &&
+		    __ratelimit(&iommu->fault_rs))
 			dev_err(iommu->dev, "BUS_ERROR occurred at %pad\n", &iova);
 
 		if (int_status & ~RK_MMU_IRQ_MASK)
@@ -1270,6 +1285,8 @@ static int rk_iommu_probe(struct platform_device *pdev)
 
 	iommu->reset_disabled = device_property_read_bool(dev,
 					"rockchip,disable-mmu-reset");
+	ratelimit_state_init(&iommu->fault_rs, DEFAULT_RATELIMIT_INTERVAL,
+			     DEFAULT_RATELIMIT_BURST);
 
 	/*
 	 * Take every clock the devicetree provides.  Most IOMMU instances

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
