Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29A22C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 07:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0S2kHOQmpXaLqag+U9QVPq3gQgi482fSygElAiXmkgg=; b=QrpRg8Lpha5LxK
	PxpiRoPK5zQdqJ9ss2oCWTFanqP0oq5t18h1E1Rq1EKbRmHMKGDV3C1T4JnNuXfWVhbooDZ7Cqe+x
	1B0UZJWUOrc3kNJucb1EEjhyqRcccmJSSu+4nm1iOdIS8q66OgJGW46xXtm4eCQmi4k8pcfSHMO1b
	ebLPnTojUb5KMU4/qHu06xX6oRfufombtnaMY9CfcWDZZJ+celwl9fOblbkO9vZIAadMQPXIes4e+
	RMDqHnnb+F6FHNP5UYRBBWVpraEnwHGTO8stLw+WJsP9zXapXmmd/SHelSkHLP8uIwAdAUe0bPkUf
	k9EsiOAnDIwKngifrIrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9H6-00C87r-1U;
	Thu, 07 Dec 2023 07:58:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9Gv-00C80Y-1q;
	Thu, 07 Dec 2023 07:58:15 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 44D0ABB2;
	Thu,  7 Dec 2023 08:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701935850;
	bh=IN5LU/eD22tmOTeDM2C7nJS4isiwUwSC5E9Fa8YFuO4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Y7xwRc5/7+KVUJYnbGStSVw2rc55W8ELOcsGf3/p3AYo/XtOHeRA9t8XSjJswnoYN
	 MVSMFR6xL9bL/J4oI+VVk/kSBRe1AXaybVncoSS1ZaOaIOzDH5agTzN/FGueVk0R2q
	 1teZ9sXK0NhqQfw3R+2sOtHiGjQ8zCVpjV+gppIU=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 07 Dec 2023 09:57:47 +0200
Subject: [PATCH v3 3/4] media: rkisp1: Store IRQ lines
MIME-Version: 1.0
Message-Id: <20231207-rkisp-irq-fix-v3-3-358a2c871a3c@ideasonboard.com>
References: <20231207-rkisp-irq-fix-v3-0-358a2c871a3c@ideasonboard.com>
In-Reply-To: <20231207-rkisp-irq-fix-v3-0-358a2c871a3c@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3974;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=IN5LU/eD22tmOTeDM2C7nJS4isiwUwSC5E9Fa8YFuO4=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlcXsOh+BH82EXHG0jjkStq5uPi/P/50dYPN2Au
 njDqaZfbJCJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZXF7DgAKCRD6PaqMvJYe
 9ZoFD/9N23s+QIvh7ode//z60gdpcgTf9YQ7ollHP5eZ+RZNkTg1wFNir8l1ACakoiwD6U2Rujs
 fFhRIEmJFLxMDujyRNgqKdhsokjUKBk25qREscVn5SuclYYZomhbXenR2gSUvRdOW7mCcMfo+gh
 sqg8wpNJS8KiK0SVHNm492EVbyewwvKXE0yrQiMhvCYclXCo+RBGUyB70K1Cp0IybDpSyJVsLDz
 utfnhVTndkYKyy3yM2HmPs7iS6rVygOnVMchFLu6YX5Ap18S6F7sacVJZbjnc3BphEjYaYmV44p
 FLjEIZVt7CS6TsAAeuxb++csH1wfk4dRmmQkxpdquJHe3tnXG1hE7EBAJCUEwhLrWy9tv4FRgke
 KmCijgiQCj50t33zIdGAbEgsonejWPG+tBu9eA/kI8F5QTmhLJw9+qOTos3hY+O8C3Rjez1bWFx
 QTTnpg6arXrE0mrEDMIZn0WCOFgMfu9bq01HRTTmSpusmu8PW1ftxejFn2HmERcDVy4/is1OL2m
 j4A55L0ccZanY4vv8hqwLIZMIFnDtJKiqBll/0fA3ZK3qFYoZZiObiOwQq4QiZ8+IT70Ao9bxTB
 YNnHzXsbuHqSAmPgYW07hmwVdwHa+E0anDFOoRVCm7hLPOqKEcxgfxeel0aJOx60PpanSi+ugcn
 fRQeetI0vdBMbIg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_235813_794026_8539E50B 
X-CRM114-Status: GOOD (  18.37  )
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

Tested-by: Adam Ford <aford173@gmail.com>  #imx8mp-beacon
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 11 ++++++++++-
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c    | 17 +++++++++++++----
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 1e7cea1bea5e..2d7f06281c39 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -61,6 +61,14 @@ struct dentry;
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
@@ -423,7 +431,6 @@ struct rkisp1_debug {
  * struct rkisp1_device - ISP platform device
  *
  * @base_addr:	   base register address
- * @irq:	   the irq number
  * @dev:	   a pointer to the struct device
  * @clk_size:	   number of clocks
  * @clks:	   array of clocks
@@ -441,6 +448,7 @@ struct rkisp1_debug {
  * @stream_lock:   serializes {start/stop}_streaming callbacks between the capture devices.
  * @debug:	   debug params to be exposed on debugfs
  * @info:	   version-specific ISP information
+ * @irqs:          IRQ line numbers
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
@@ -461,6 +469,7 @@ struct rkisp1_device {
 	struct mutex stream_lock; /* serialize {start/stop}_streaming cb between capture devices */
 	struct rkisp1_debug debug;
 	const struct rkisp1_info *info;
+	int irqs[RKISP1_NUM_IRQS];
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 22b2ae0e89c4..c3fa40976140 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -114,6 +114,7 @@
 struct rkisp1_isr_data {
 	const char *name;
 	irqreturn_t (*isr)(int irq, void *ctx);
+	u32 line_mask;
 };
 
 /* ----------------------------------------------------------------------------
@@ -471,9 +472,9 @@ static const char * const px30_isp_clks[] = {
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
@@ -492,7 +493,7 @@ static const char * const rk3399_isp_clks[] = {
 };
 
 static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
-	{ NULL, rkisp1_isr },
+	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },
 };
 
 static const struct rkisp1_info rk3399_isp_info = {
@@ -543,6 +544,9 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (IS_ERR(rkisp1->base_addr))
 		return PTR_ERR(rkisp1->base_addr);
 
+	for (unsigned int il = 0; il < ARRAY_SIZE(rkisp1->irqs); ++il)
+		rkisp1->irqs[il] = -1;
+
 	for (i = 0; i < info->isr_size; i++) {
 		irq = info->isrs[i].name
 		    ? platform_get_irq_byname(pdev, info->isrs[i].name)
@@ -550,6 +554,11 @@ static int rkisp1_probe(struct platform_device *pdev)
 		if (irq < 0)
 			return irq;
 
+		for (unsigned int il = 0; il < ARRAY_SIZE(rkisp1->irqs); ++il) {
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
