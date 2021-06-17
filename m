Return-Path: <SRS0=O9sg=LL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4FDC49EBB
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 16:28:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FF51613BA
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 16:28:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5FF51613BA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfTThFClgmZF2Y+0yAXKk0vm5x3721IBmBzvlfKuIAs=; b=CwoT8NfNa8vyLF
	np3BP0VdZwxADJp56bLuTdfU/stFbgfAW2qSxO/yrGZKrCnth2HxXFDzwwxU4vchXodeknejFhQkb
	xelpnN+8p3YwdP+TbNDv0FFmD2Iata6ww2JW+YXBod/9doaOe6TAnb+NkL6jrEbtmHIXeLrGMlckS
	nUxP4xQKVmKMyzDuqo1xR3s49wv69MRF+tZBCjxcCY9nKdzLJdU0l6eV8eEx2OYyDZhnhPTMzFt05
	IGbbsWQVzi7UsagKgX8lJvL0Ov6Jgw1yVRNgymezgurZyvAwcP1lduau3zDXwEsukqQ3zNkP1wnoU
	F40hZFnAwuH55qWolM0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltusA-00B6B8-Bl; Thu, 17 Jun 2021 16:28:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltus0-00B629-7x
 for linux-rockchip@lists.infradead.org; Thu, 17 Jun 2021 16:27:59 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ltury-00057p-C0; Thu, 17 Jun 2021 18:27:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH v5 04/10] media: rockchip: rkisp1: allow separate interrupts
Date: Thu, 17 Jun 2021 18:27:39 +0200
Message-Id: <20210617162745.4080975-5-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210617162745.4080975-1-heiko@sntech.de>
References: <20210617162745.4080975-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_092756_478662_B3601F6B 
X-CRM114-Status: GOOD (  21.21  )
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

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Depending on the per-soc implementation there can be one interrupt
for isp, mipi and capture events or separate per-event interrupts.

So simply check for the presence of a named "mi" interrupt
to differentiate between the two cases.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  9 +++-
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  7 +--
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 44 ++++++++++++-------
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 16 +++++--
 4 files changed, 53 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 5f6c9d1623e4..f70c66c2a1d7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -685,12 +685,17 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
 	spin_unlock(&cap->buf.lock);
 }
 
-void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
+irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
 {
+	struct device *dev = ctx;
+	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
 	unsigned int i;
 	u32 status;
 
 	status = rkisp1_read(rkisp1, RKISP1_CIF_MI_MIS);
+	if (!status)
+		return IRQ_NONE;
+
 	rkisp1_write(rkisp1, status, RKISP1_CIF_MI_ICR);
 
 	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); ++i) {
@@ -718,6 +723,8 @@ void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
 		cap->is_streaming = false;
 		wake_up(&cap->done);
 	}
+
+	return IRQ_HANDLED;
 }
 
 /* ----------------------------------------------------------------------------
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index be8a350c7527..25dd5c93620e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -12,6 +12,7 @@
 #define _RKISP1_COMMON_H
 
 #include <linux/clk.h>
+#include <linux/interrupt.h>
 #include <linux/mutex.h>
 #include <linux/rkisp1-config.h>
 #include <media/media-device.h>
@@ -459,9 +460,9 @@ void rkisp1_params_configure(struct rkisp1_params *params,
 void rkisp1_params_disable(struct rkisp1_params *params);
 
 /* irq handlers */
-void rkisp1_isp_isr(struct rkisp1_device *rkisp1);
-void rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
-void rkisp1_capture_isr(struct rkisp1_device *rkisp1);
+irqreturn_t rkisp1_isp_isr(int irq, void *ctx);
+irqreturn_t rkisp1_mipi_isr(int irq, void *ctx);
+irqreturn_t rkisp1_capture_isr(int irq, void *ctx);
 void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
 void rkisp1_params_isr(struct rkisp1_device *rkisp1);
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 7afa4c123834..a14a0bc39fb0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -101,9 +101,16 @@
  *  +-----------+    +-----------+
  */
 
+struct rkisp1_isr_data {
+	const char *name;
+	irqreturn_t (*isr)(int irq, void *ctx);
+};
+
 struct rkisp1_match_data {
 	const char * const *clks;
 	unsigned int size;
+	const struct rkisp1_isr_data *isrs;
+	unsigned int isr_size;
 	enum rkisp1_cif_isp_version isp_ver;
 };
 
@@ -385,18 +392,15 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 
 static irqreturn_t rkisp1_isr(int irq, void *ctx)
 {
-	struct device *dev = ctx;
-	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
-
 	/*
 	 * Call rkisp1_capture_isr() first to handle the frame that
 	 * potentially completed using the current frame_sequence number before
 	 * it is potentially incremented by rkisp1_isp_isr() in the vertical
 	 * sync.
 	 */
-	rkisp1_capture_isr(rkisp1);
-	rkisp1_isp_isr(rkisp1);
-	rkisp1_mipi_isr(rkisp1);
+	rkisp1_capture_isr(irq, ctx);
+	rkisp1_isp_isr(irq, ctx);
+	rkisp1_mipi_isr(irq, ctx);
 
 	return IRQ_HANDLED;
 }
@@ -407,9 +411,15 @@ static const char * const rk3399_isp_clks[] = {
 	"hclk",
 };
 
+static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
+	{ NULL, rkisp1_isr },
+};
+
 static const struct rkisp1_match_data rk3399_isp_match_data = {
 	.clks = rk3399_isp_clks,
 	.size = ARRAY_SIZE(rk3399_isp_clks),
+	.isrs = rk3399_isp_isrs,
+	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
 };
 
@@ -478,15 +488,19 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (IS_ERR(rkisp1->base_addr))
 		return PTR_ERR(rkisp1->base_addr);
 
-	irq = platform_get_irq(pdev, 0);
-	if (irq < 0)
-		return irq;
-
-	ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
-			       dev_driver_string(dev), dev);
-	if (ret) {
-		dev_err(dev, "request irq failed: %d\n", ret);
-		return ret;
+	for (i = 0; i < match_data->isr_size; i++) {
+		irq = (match_data->isrs[i].name) ?
+				platform_get_irq_byname(pdev, match_data->isrs[i].name) :
+				platform_get_irq(pdev, i);
+		if (irq < 0)
+			return irq;
+
+		ret = devm_request_irq(dev, irq, match_data->isrs[i].isr, IRQF_SHARED,
+				       dev_driver_string(dev), dev);
+		if (ret) {
+			dev_err(dev, "request irq failed: %d\n", ret);
+			return ret;
+		}
 	}
 
 	for (i = 0; i < match_data->size; i++)
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 2e5b57e3aedc..1de98e688008 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -1090,13 +1090,15 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
  * Interrupt handlers
  */
 
-void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
+irqreturn_t rkisp1_mipi_isr(int irq, void *ctx)
 {
+	struct device *dev = ctx;
+	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
 	u32 val, status;
 
 	status = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_MIS);
 	if (!status)
-		return;
+		return IRQ_NONE;
 
 	rkisp1_write(rkisp1, status, RKISP1_CIF_MIPI_ICR);
 
@@ -1131,6 +1133,8 @@ void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
 	} else {
 		rkisp1->debug.mipi_error++;
 	}
+
+	return IRQ_HANDLED;
 }
 
 static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
@@ -1143,13 +1147,15 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
 	v4l2_event_queue(isp->sd.devnode, &event);
 }
 
-void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
+irqreturn_t rkisp1_isp_isr(int irq, void *ctx)
 {
+	struct device *dev = ctx;
+	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
 	u32 status, isp_err;
 
 	status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
 	if (!status)
-		return;
+		return IRQ_NONE;
 
 	rkisp1_write(rkisp1, status, RKISP1_CIF_ISP_ICR);
 
@@ -1191,4 +1197,6 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 		 */
 		rkisp1_params_isr(rkisp1);
 	}
+
+	return IRQ_HANDLED;
 }
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
