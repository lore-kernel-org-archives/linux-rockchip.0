Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB8D0C10DC1
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 10:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNiHwdIForMfnFvh3xz0w2qXOrnQqAYQ8k0atu1QDt0=; b=3gSSY5SA3cF2Ek
	u1wjC4rCYo1ORcVmdZVFfic2BcRjkVHRY4OTN4CLhV7aPfIebDGPQJ6gwkTAK4ABA0LeEXV6nKEg8
	pT7WOjyp4P4ZmBsVYryUTbnwsoOpA+We/aT19x+hnHtpZWct9fVuQCzevOcxQ3/pyKv/9znaO7OX9
	a4lOKzUbDUgC5xd3zN9SIizptg8Jz1+5J6IJBzrVsfKjrLu9ilga9rDmrO8RlcMSPqaN6mRag8UtR
	fs0GbAC2PCcHoQdXU6pYDh3mqL+vgGdiWjQ6P/KhQan1GvYKg18Z8MzR3xgKX1ojwCyP5tHFmPUmS
	ibrq8kiK4N+T4h/p7CxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAotz-009gS1-2r;
	Wed, 06 Dec 2023 10:13:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAotj-009gE9-1r;
	Wed, 06 Dec 2023 10:13:02 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A42DA20EA;
	Wed,  6 Dec 2023 11:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701857533;
	bh=VviOwphn+4RrO5iGwi9wzijWsSEuvXaefVURZe6+FbI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HEoiK+OCfToUQ64whKk44P2r0aabAUh7ob8T9Xy2/IgS89hQXw3AiyUW4bzf+pxPR
	 NmPGAiTJutCi38fNSoGTAeQKDAoZ8GBY/1lGj936FruYpnDZnMP7WnGp6cyHGdcMPc
	 wp2w1hBjt9iq9b8fNorJ/01mdEigFwdZy6yPGQuo=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 06 Dec 2023 12:12:30 +0200
Subject: [PATCH v2 3/4] media: rkisp1: Store IRQ lines
MIME-Version: 1.0
Message-Id: <20231206-rkisp-irq-fix-v2-3-6ba4185eeb1f@ideasonboard.com>
References: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
In-Reply-To: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, 
 kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com, 
 aford173@gmail.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4211;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=VviOwphn+4RrO5iGwi9wzijWsSEuvXaefVURZe6+FbI=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlcEkhINtZt/jrHcvd8PyxoqiGU8w5A9HQZ0mOF
 +aiJUoPTEWJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZXBJIQAKCRD6PaqMvJYe
 9Ts5EACkSyWCPkI9IGqrr3Fxt4RlHxqx5t3XNKBKgBit8k0HzhBoILndDUENez6ZxzgCrOKPCq4
 n1w8oNKMxJ5kEouMU8sJUk3qZ/rewbb8E1JvisK4FdFWnrARFa1dv9LywMB9dwr1GklObpn6S9v
 /FGcdy0pG5J3ww2dMIQ7HEX1tZYSH0r1q7RhMEnFu2PZNxhjlt048pJq4YdqOuT+eGJxeiDHSwv
 3dBmSul27T5iRlOUSPd3r8+edm8N7s25AmpWuNxOcu8r6xwb9QvLACxcqQKOr5B+dbVZY1Eh/LL
 h/PxYAd8pEz6fbLo9OsTZikwLN0H9JD3nPKxZnPB/8qa+TU8ePAqMTzDISEIys9/s6qI3mn576Y
 n84vMqc5yOJ6+gBCwaN49yPaXR2iAzshb4lw9LFhnU1TEe+8w6aUfwqFXmGWUR5portRnbKM7dB
 zNvBYdXmzESUX6a9SPPCPpiMclWQ7GmcVv/tIExWm+m2l0QXlyzbV8oT/VpjBePsWtjWxYxHaEO
 43OYp2qQkj6NBxBtpDs+LeukBNCCgJGpWc7l1vU/tkJFb8wK7P+LR05OfpWsJ8yQM9MY04dAGdX
 5eeu77I9M0T1yhroWUBcHjTg7cnCYaUhK4LqXFCjQY8SPLCJNguYZWM+HwNQg6h9i3ulb+RiBEV
 Gqo1EBMeMEIt3NQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_021255_781074_21E8C8B6 
X-CRM114-Status: GOOD (  18.22  )
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

Store the IRQ lines used by the driver for easy access. These are needed
in future patches which fix IRQ race issues.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-common.h    | 11 ++++++++++-
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c   | 19 ++++++++++++++-----
 2 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 960ab89c659b..ec28907d978e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -62,6 +62,14 @@ struct regmap;
 						 RKISP1_CIF_ISP_EXP_END |	\
 						 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
 
+/* IRQ lines */
+enum rkisp1_irq_line {
+	RKISP1_IRQ_ISP = 0,
+	RKISP1_IRQ_MI,
+	RKISP1_IRQ_MIPI,
+	RKISP1_NUM_IRQS,
+};
+
 /* enum for the resizer pads */
 enum rkisp1_rsz_pad {
 	RKISP1_RSZ_PAD_SINK,
@@ -437,7 +445,6 @@ struct rkisp1_debug {
  * struct rkisp1_device - ISP platform device
  *
  * @base_addr:	   base register address
- * @irq:	   the irq number
  * @dev:	   a pointer to the struct device
  * @clk_size:	   number of clocks
  * @clks:	   array of clocks
@@ -457,6 +464,7 @@ struct rkisp1_debug {
  * @stream_lock:   serializes {start/stop}_streaming callbacks between the capture devices.
  * @debug:	   debug params to be exposed on debugfs
  * @info:	   version-specific ISP information
+ * @irqs:          IRQ line numbers
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
@@ -479,6 +487,7 @@ struct rkisp1_device {
 	struct mutex stream_lock; /* serialize {start/stop}_streaming cb between capture devices */
 	struct rkisp1_debug debug;
 	const struct rkisp1_info *info;
+	int irqs[RKISP1_NUM_IRQS];
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 030eb8c79546..492ff5e6770d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -115,6 +115,7 @@
 struct rkisp1_isr_data {
 	const char *name;
 	irqreturn_t (*isr)(int irq, void *ctx);
+	u32 line_mask;
 };
 
 /* ----------------------------------------------------------------------------
@@ -473,9 +474,9 @@ static const char * const px30_isp_clks[] = {
 };
 
 static const struct rkisp1_isr_data px30_isp_isrs[] = {
-	{ "isp", rkisp1_isp_isr },
-	{ "mi", rkisp1_capture_isr },
-	{ "mipi", rkisp1_csi_isr },
+	{ "isp", rkisp1_isp_isr, BIT(RKISP1_IRQ_ISP) },
+	{ "mi", rkisp1_capture_isr, BIT(RKISP1_IRQ_MI) },
+	{ "mipi", rkisp1_csi_isr, BIT(RKISP1_IRQ_MIPI) },
 };
 
 static const struct rkisp1_info px30_isp_info = {
@@ -496,7 +497,7 @@ static const char * const rk3399_isp_clks[] = {
 };
 
 static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
-	{ NULL, rkisp1_isr },
+	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },
 };
 
 static const struct rkisp1_info rk3399_isp_info = {
@@ -517,7 +518,7 @@ static const char * const imx8mp_isp_clks[] = {
 };
 
 static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
-	{ NULL, rkisp1_isr },
+	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },
 };
 
 static const struct rkisp1_info imx8mp_isp_info = {
@@ -574,6 +575,9 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (IS_ERR(rkisp1->base_addr))
 		return PTR_ERR(rkisp1->base_addr);
 
+	for (unsigned int il = 0; il < RKISP1_NUM_IRQS; ++il)
+		rkisp1->irqs[il] = -1;
+
 	for (i = 0; i < info->isr_size; i++) {
 		irq = info->isrs[i].name
 		    ? platform_get_irq_byname(pdev, info->isrs[i].name)
@@ -581,6 +585,11 @@ static int rkisp1_probe(struct platform_device *pdev)
 		if (irq < 0)
 			return irq;
 
+		for (unsigned int il = 0; il < RKISP1_NUM_IRQS; ++il) {
+			if (info->isrs[i].line_mask & BIT(il))
+				rkisp1->irqs[il] = irq;
+		}
+
 		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
 				       dev_driver_string(dev), dev);
 		if (ret) {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
