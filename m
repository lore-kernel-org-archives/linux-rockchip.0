Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E03C9C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 08:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llsWggxFsl2bjUUX6oBZxhnmsFSHq4A0q5upZ8E+Vk0=; b=26XUYGUa6yWiX/
	HvUQGIiLjSDOFoQoNmkmvxCSEgZH3DxONcXCZuf/EDbdwNPmEco9BPOGwl+8KNCK3SAMhnjlsv5Ae
	l8H610rwvaSWrPhfmstpKwwGam2oGwxu+B+tDXF1300gc6nDQ8OLn+fYOKkaKhB2vfVH/LHxAuEt7
	GxiVfPORssPz8mcZjpgQwTJLAuJ7nlgcblRT8gHGf1n995nUemAMTK5apefVdLxJ7in6VjpYiUkiS
	p1z7BX71Je13qAwIkd6vFOE94Y2168q2f+kdyWD7XwMJQVZndnqh52FSnKlLZDmBpFNPob3T6Vy40
	BI5nT0JW9h68DmtpWl8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQVc-006bDx-27;
	Tue, 05 Dec 2023 08:10:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQVP-006b3M-0N;
	Tue, 05 Dec 2023 08:10:13 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 320D4A06;
	Tue,  5 Dec 2023 09:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701763764;
	bh=1DkaPRB62rbwVz1efQTvY0qAzOElI3EW4hHk1yOlrto=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EbFcLUbfyoORI145e9Ncnuhw2Rx35qlgXqbipmVdpnWEWL5UY2xsnrPhx4eao2C4K
	 AV08AuQXuTi5yXrpsli5u9X8rDkM3yYGjoiTvTT6XUTfctOGz2FfN9p2MOPmbCq/gi
	 AhC2gyw1Er9I8Z/9T0xv5apIQmC2sopo9sY7w3zw=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Tue, 05 Dec 2023 10:09:32 +0200
Subject: [PATCH 1/4] media: rkisp1: Store IRQ lines
MIME-Version: 1.0
Message-Id: <20231205-rkisp-irq-fix-v1-1-f4045c74ba45@ideasonboard.com>
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
In-Reply-To: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4221;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=1DkaPRB62rbwVz1efQTvY0qAzOElI3EW4hHk1yOlrto=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlbtrY21tIgI6aHdBw7pS6gbN26PjpLU5dAJSUy
 WZaxcFQhEuJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZW7a2AAKCRD6PaqMvJYe
 9ctUD/0U3inIQmzSNkB1t1NWxNhxajVV0i+6StgEoo97hCnE0xX6DJLLv+7sllwOh3EANrpte6E
 X/qvXh5jeAK/Sa//aNRy9hIeB9VL1N7lMCmcAhmYxFxpxXEx7D4FkAX1QMZSxsDkbdZylZHLlsJ
 twIsPho5MU/anu/nbLnuNJMZNrEyJaV/nhK4fepQB6L8z7RLI5vg/AIx1bqqSf3zw6Dry2juz0x
 bSMfD6e3/EuMMq5UCmaB25WWMCjZm7mPBV3KBPwP/so9cU7p8nrCkndGyXiZuK/NFSU+4jQjB9s
 PGGFyHg4No071VuHDBULCe/V5Euqkz86iD+wCsu7G6xUyLEE28eGNvtN4iGUbDjSIQnRy8WbR13
 qa/0pTl30Scl+ByQHxVI6DacAJ6xrX4XVF1D0ym2ux16ftRquQu4bHxFQqLaKVILBYsZItvIrlP
 ZyFEMcJEpOBOxKgTJJoqMbJnWaYXwnR6C8gRcNGqvHmBTf+jdgqZnuOsuLW03w2MUqnr63oK5cX
 0KAtbdqi1uj8Vj2ereqFt6/eEgfqKug4hrxPiLHPtWpksk31hyTGh3B9oPFSI0eM5xCArNxEXjL
 HSuf+aZixgMu7lX+H21mo3p5ijKKZTAFRh/BRrCsQ3IyraGIGvUqFHa+GhoruHYELX9nz3fbqzH
 ueVSB2qflbNIy3g==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_001011_468343_6B1C92EA 
X-CRM114-Status: GOOD (  18.15  )
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
index 2b9886fd0800..76f93614b4cf 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -115,6 +115,7 @@
 struct rkisp1_isr_data {
 	const char *name;
 	irqreturn_t (*isr)(int irq, void *ctx);
+	u32 line_mask;
 };
 
 /* ----------------------------------------------------------------------------
@@ -465,9 +466,9 @@ static const char * const px30_isp_clks[] = {
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
@@ -488,7 +489,7 @@ static const char * const rk3399_isp_clks[] = {
 };
 
 static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
-	{ NULL, rkisp1_isr },
+	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },
 };
 
 static const struct rkisp1_info rk3399_isp_info = {
@@ -509,7 +510,7 @@ static const char * const imx8mp_isp_clks[] = {
 };
 
 static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
-	{ NULL, rkisp1_isr },
+	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },
 };
 
 static const struct rkisp1_info imx8mp_isp_info = {
@@ -566,6 +567,9 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (IS_ERR(rkisp1->base_addr))
 		return PTR_ERR(rkisp1->base_addr);
 
+	for (unsigned int il = 0; il < RKISP1_NUM_IRQS; ++il)
+		rkisp1->irqs[il] = -1;
+
 	for (i = 0; i < info->isr_size; i++) {
 		irq = info->isrs[i].name
 		    ? platform_get_irq_byname(pdev, info->isrs[i].name)
@@ -573,6 +577,11 @@ static int rkisp1_probe(struct platform_device *pdev)
 		if (irq < 0)
 			return irq;
 
+		for (unsigned int il = 0; il < RKISP1_NUM_IRQS; ++il) {
+			if (info->isrs[i].line_mask & BIT(il))
+				rkisp1->irqs[il] = irq;
+		}
+
 		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
 				       dev_driver_string(dev), dev);
 		if (ret) {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
