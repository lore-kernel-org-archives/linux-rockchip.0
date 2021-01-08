Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA4DC433E9
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:34:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 252F023A9D
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:34:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 252F023A9D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=URM4+NGEzA3quMipwzMdRGDDCiryThZEvLJsHBIeMAY=; b=Ezp08tZv+bFIWK8ZOcz5akzp7
	tvqsIyt+uHJxUtJwJ7e0VR5W6aGkRp3t0fuP8rwNZO1sQIAOFK0KmKKhmZvrlg4q0XPcPBKaE5KwY
	jRyl4cZy/lMW2HrPZw0K5z9cHis8Ztyjwr5MnfLO7gNjmFkcyfh3QUGNgONHxUqMUrl+Kqp2kP36f
	p0adVC6Un8hySWekqcaOKHKHi4SsSITYWx9Isn34GWANinX6kSol8oBWmctXlyK1JrOuosjZOhR9a
	KHyOOxkMt2ukKeVlts68ZkiABmydrGTBQ3eyLOBAHG9FGaRNAxgOz//EZL9HYPxEr9EMIzkXXjUF2
	0HZI3wd1w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxxWN-00063e-DB; Fri, 08 Jan 2021 19:34:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxxW8-0005u5-Lz
 for linux-rockchip@lists.infradead.org; Fri, 08 Jan 2021 19:33:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxxVw-0004Zr-SN; Fri, 08 Jan 2021 20:33:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
Subject: [PATCH RFC 06/11] media: rockchip: rkisp1: allow separate interrupts
Date: Fri,  8 Jan 2021 20:33:06 +0100
Message-Id: <20210108193311.3423236-7-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108193311.3423236-1-heiko@sntech.de>
References: <20210108193311.3423236-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_143349_231776_3AE192C0 
X-CRM114-Status: GOOD (  17.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
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
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  9 ++-
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  7 ++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 58 ++++++++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 16 +++--
 4 files changed, 69 insertions(+), 21 deletions(-)

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
index 038c303a8aed..44f333bf5d6a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -12,6 +12,7 @@
 #define _RKISP1_COMMON_H
 
 #include <linux/clk.h>
+#include <linux/interrupt.h>
 #include <linux/mutex.h>
 #include <linux/rkisp1-config.h>
 #include <media/media-device.h>
@@ -460,9 +461,9 @@ void rkisp1_params_configure(struct rkisp1_params *params,
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
index 68da1eed753d..96afc1d1a914 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -389,18 +389,15 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 
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
@@ -481,15 +478,50 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (IS_ERR(rkisp1->base_addr))
 		return PTR_ERR(rkisp1->base_addr);
 
-	irq = platform_get_irq(pdev, 0);
-	if (irq < 0)
+	irq = platform_get_irq_byname_optional(pdev, "mi");
+	if (irq == -EPROBE_DEFER) {
 		return irq;
+	} else if (irq < 0) {
+		irq = platform_get_irq(pdev, 0);
+		if (irq < 0)
+			return irq;
+
+		ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
+				       dev_driver_string(dev), dev);
+		if (ret) {
+			dev_err(dev, "request irq failed: %d\n", ret);
+			return ret;
+		}
+	} else {
+		/* we test-got the MI (capture) interrupt */
+		ret = devm_request_irq(dev, irq, rkisp1_capture_isr, IRQF_SHARED,
+				       dev_driver_string(dev), dev);
+		if (ret) {
+			dev_err(dev, "request mi irq failed: %d\n", ret);
+			return ret;
+		}
 
-	ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
-			       dev_driver_string(dev), dev);
-	if (ret) {
-		dev_err(dev, "request irq failed: %d\n", ret);
-		return ret;
+		irq = platform_get_irq_byname_optional(pdev, "mipi");
+		if (irq < 0)
+			return irq;
+
+		ret = devm_request_irq(dev, irq, rkisp1_mipi_isr, IRQF_SHARED,
+				       dev_driver_string(dev), dev);
+		if (ret) {
+			dev_err(dev, "request mipi irq failed: %d\n", ret);
+			return ret;
+		}
+
+		irq = platform_get_irq_byname_optional(pdev, "isp");
+		if (irq < 0)
+			return irq;
+
+		ret = devm_request_irq(dev, irq, rkisp1_isp_isr, IRQF_SHARED,
+				       dev_driver_string(dev), dev);
+		if (ret) {
+			dev_err(dev, "request isp irq failed: %d\n", ret);
+			return ret;
+		}
 	}
 
 	rkisp1->irq = irq;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 889982d8ca41..84440aa71210 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -1056,13 +1056,15 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
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
 
@@ -1097,6 +1099,8 @@ void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
 	} else {
 		rkisp1->debug.mipi_error++;
 	}
+
+	return IRQ_HANDLED;
 }
 
 static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
@@ -1109,13 +1113,15 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
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
 
@@ -1157,4 +1163,6 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
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
