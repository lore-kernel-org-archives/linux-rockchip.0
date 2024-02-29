Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A36CC54E4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 15:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNF52O+rDxCJk2v4vfm7aBl7I3GUrQKmGtIkgDDnwk0=; b=R+EkX3iXLq1NZA
	NgAyFIbIPl1uGVJ9fZ9GO22jPVdxGvFsugzXIzX8hiCWQpPZEtq5h0ACUAMNue5z0E+nxB6RVflN9
	OSQsPbIvyZfNASqLCjD6Gf26WSZ9uHP8T9C2jvCrnKZ4oXCjmoIEhtNpuysocclTAXXNn0/prM8/X
	6f6/ds75d3LxAxn+/lcAqKPeTyHMc103Bjy8qOvLo5Kw1IGrm1jmno89tTKTgg5PcegN1qlcyYUCT
	46K8dtCT8Ga4yBCe4oYV2pFJZ45uE6uLzZBmaaqRmvyqT7RtzGj4TZw0HlDuvGLSJ7Uz/ywQipg21
	q4I9FtLTA0d6IHK8jCBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfigj-0000000E8KR-2v5m;
	Thu, 29 Feb 2024 15:51:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfig9-0000000E7zn-1mff;
	Thu, 29 Feb 2024 15:50:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B663460B2D;
	Thu, 29 Feb 2024 15:50:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0837CC433A6;
	Thu, 29 Feb 2024 15:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709221836;
	bh=gm3JDmWm3Iv/jXg4yR5m/l3bvC4wQhLEHX/09mWS7TE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jUrQfwQdsynasV5FQwge2diTBQhz/eQf+PUmTy+iw7I7MmSceTG3O1Wv3KCY4fT+A
	 mJTBN9xyU3t0ngDgGBMy0LonuqBuK0ovXveHj/gmJaAgBTEZ17R7XmtwCCRs7P5WU0
	 iJBwUFkhcNP1af8ZgMBP7EG1wfJaubuuavgYzzvQqf7HZxi3K5H2xVvMW2hI/AVB+W
	 5lwuVu2/nsWG7NjKSdBpRLKEDB/WEyO4OZmBlaXGRxrnHG85OY25I+xrS0ceQK9uDS
	 tKiSth5SQA02gPNEWVSnVTq2PVXe74wxdIvgmMz5IrSqYaeROcL+Y2OrRRabLHzgFH
	 S/XveYi7U8kQw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dafna@fastmail.com,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 02/12] media: rkisp1: Fix IRQ handling due to shared interrupts
Date: Thu, 29 Feb 2024 10:50:19 -0500
Message-ID: <20240229155032.2850566-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229155032.2850566-1-sashal@kernel.org>
References: <20240229155032.2850566-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.79
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075037_860239_AC9E0C78 
X-CRM114-Status: GOOD (  19.39  )
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

From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

[ Upstream commit ffb635bb398fc07cb38f8a7b4a82cbe5f412f08e ]

The driver requests the interrupts as IRQF_SHARED, so the interrupt
handlers can be called at any time. If such a call happens while the ISP
is powered down, the SoC will hang as the driver tries to access the
ISP registers.

This can be reproduced even without the platform sharing the IRQ line:
Enable CONFIG_DEBUG_SHIRQ and unload the driver, and the board will
hang.

Fix this by adding a new field, 'irqs_enabled', which is used to bail
out from the interrupt handler when the ISP is not operational.

Link: https://lore.kernel.org/r/20231218-rkisp-shirq-fix-v1-2-173007628248@ideasonboard.com

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  3 +++
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
 .../platform/rockchip/rkisp1/rkisp1-csi.c     |  3 +++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  3 +++
 5 files changed, 33 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index d4540684ea9af..0bcb9db5ad190 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -701,6 +701,9 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
 	unsigned int i;
 	u32 status;
 
+	if (!rkisp1->irqs_enabled)
+		return IRQ_NONE;
+
 	status = rkisp1_read(rkisp1, RKISP1_CIF_MI_MIS);
 	if (!status)
 		return IRQ_NONE;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index f9ec1c6138947..5776292f914a4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -467,6 +467,7 @@ struct rkisp1_debug {
  * @debug:	   debug params to be exposed on debugfs
  * @info:	   version-specific ISP information
  * @irqs:          IRQ line numbers
+ * @irqs_enabled:  the hardware is enabled and can cause interrupts
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
@@ -488,6 +489,7 @@ struct rkisp1_device {
 	struct rkisp1_debug debug;
 	const struct rkisp1_info *info;
 	int irqs[RKISP1_NUM_IRQS];
+	bool irqs_enabled;
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index e862f515cc6d3..95b6e41c48ec2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -211,6 +211,9 @@ irqreturn_t rkisp1_csi_isr(int irq, void *ctx)
 	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
 	u32 val, status;
 
+	if (!rkisp1->irqs_enabled)
+		return IRQ_NONE;
+
 	status = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_MIS);
 	if (!status)
 		return IRQ_NONE;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 41abb18b00acb..7a3b69ba51b97 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -305,6 +305,24 @@ static int __maybe_unused rkisp1_runtime_suspend(struct device *dev)
 {
 	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
 
+	rkisp1->irqs_enabled = false;
+	/* Make sure the IRQ handler will see the above */
+	mb();
+
+	/*
+	 * Wait until any running IRQ handler has returned. The IRQ handler
+	 * may get called even after this (as it's a shared interrupt line)
+	 * but the 'irqs_enabled' flag will make the handler return immediately.
+	 */
+	for (unsigned int il = 0; il < ARRAY_SIZE(rkisp1->irqs); ++il) {
+		if (rkisp1->irqs[il] == -1)
+			continue;
+
+		/* Skip if the irq line is the same as previous */
+		if (il == 0 || rkisp1->irqs[il - 1] != rkisp1->irqs[il])
+			synchronize_irq(rkisp1->irqs[il]);
+	}
+
 	clk_bulk_disable_unprepare(rkisp1->clk_size, rkisp1->clks);
 	return pinctrl_pm_select_sleep_state(dev);
 }
@@ -321,6 +339,10 @@ static int __maybe_unused rkisp1_runtime_resume(struct device *dev)
 	if (ret)
 		return ret;
 
+	rkisp1->irqs_enabled = true;
+	/* Make sure the IRQ handler will see the above */
+	mb();
+
 	return 0;
 }
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 00dca284c1222..2af5c1a48070b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -1023,6 +1023,9 @@ irqreturn_t rkisp1_isp_isr(int irq, void *ctx)
 	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
 	u32 status, isp_err;
 
+	if (!rkisp1->irqs_enabled)
+		return IRQ_NONE;
+
 	status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
 	if (!status)
 		return IRQ_NONE;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
