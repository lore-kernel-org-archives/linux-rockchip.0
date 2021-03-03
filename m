Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF17C433E9
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:46:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F310B6186A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:46:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F310B6186A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H2oRYmWudkUqHpU/cmfRkfJLaP+DcuCA04ojOo3lnUo=; b=p1uhPpI6HBDACrOfcVe5jOF7t
	s8loPTH04OxXyIqU95ipEegg9viDMcodRQnR0Fb/ul/HEHiVTFMvWgEyicZVBXZHdrH+IRqSflFd4
	TYfpWOF6sIIwlEe091K0yKZz+mEip8PGKVM/hmOe3QGr2fLDPwR9hfAMmYObEUUl9cuC9DSPLBCOe
	QyPlcNUh0y14y3AhffjLse/u1iMFegSOFlFFV6aTZcIfxrFcqcrc2kUNhTNRzZSn0Hh81b5SWSDpl
	Z9Qu1JDU8XvzKKKzoJ86uER5zNMzYe5IIhTDypKZR9WLodkOUxb3W1L+mXN2zwnq7exnMEFkYg4Bd
	Gldl3t5Zg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHThq-005RxN-P3; Wed, 03 Mar 2021 15:46:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSgR-005AWe-Vq; Wed, 03 Mar 2021 14:41:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=bvjdf4BiWSFOZZl9MPBflaB6TNAPFJR/gTKWSjZjGBc=; b=PGkXuurGUlOUjjzRYlnR5aXavX
 vk1HXBb2h6Mq0shcfTtCHqC9W+GaRZNjRFH/dxdRN57Qeon3UK3g556NS4TrEghWUXddIVogAKTFC
 SlQj26LcVv5+5IN/qdKjeAXJo1Z5/Y6p62PZflRQiPUQHo/7XOc+3kT+2CHv4phMTr11rmK3RFj1c
 a7F+VSsRizGdk4Q8l4Olj8lfkPuVMdCYU+PVhdB7Xsr6zGA0sA41soNPuCFuiLVho7ev2KAx7BPVJ
 n2Qn0fDTS0VdnFHhAO5kdnDZvI+4HDGX1bhhMXbZYqaC8vfhwn3IqKQExEdCVbPawgEENl2QzMCge
 vhzZZ9dw==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHPrn-002O61-Pf; Wed, 03 Mar 2021 11:40:36 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:2035:1dcd:21c7:b3af])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 115FE1F45C30;
 Wed,  3 Mar 2021 11:40:27 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 09/11] media: hantro: IMX8M: add variant for G2/HEVC codec
Date: Wed,  3 Mar 2021 12:39:50 +0100
Message-Id: <20210303113952.178519-10-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_114036_727783_D4A4DDA2 
X-CRM114-Status: GOOD (  18.16  )
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

Add variant to IMX8M to enable G2/HEVC codec.
Define the capabilities for the hardware up to 3840x2160.
Retrieve the hardware version at init to distinguish G1 from G2.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 2:
- remove useless clocks

 drivers/staging/media/hantro/hantro_drv.c   |  1 +
 drivers/staging/media/hantro/hantro_hw.h    |  1 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 95 ++++++++++++++++++++-
 3 files changed, 93 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index bc90a52f4d3d..976be7b6ecfb 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -591,6 +591,7 @@ static const struct of_device_id of_hantro_match[] = {
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
+	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
 #endif
 	{ /* sentinel */ }
 };
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index dade3b0769c1..f61f58da05fe 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -193,6 +193,7 @@ extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
+extern const struct hantro_variant imx8mq_vpu_g2_variant;
 
 extern const struct hantro_postproc_regs hantro_g1_postproc_regs;
 
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index d5b4312b9391..46b33531be85 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -12,6 +12,7 @@
 #include "hantro.h"
 #include "hantro_jpeg.h"
 #include "hantro_g1_regs.h"
+#include "hantro_g2_regs.h"
 
 static int imx8mq_runtime_resume(struct hantro_dev *vpu)
 {
@@ -90,6 +91,26 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
 	},
 };
 
+static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
+		.codec_mode = HANTRO_MODE_HEVC_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 3840,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 2160,
+			.step_height = MB_DIM,
+		},
+	},
+};
+
 static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
 {
 	struct hantro_dev *vpu = dev_id;
@@ -108,9 +129,42 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static irqreturn_t imx8m_vpu_g2_irq(int irq, void *dev_id)
+{
+	struct hantro_dev *vpu = dev_id;
+	enum vb2_buffer_state state;
+	u32 status;
+
+	status = vdpu_read(vpu, HEVC_REG_INTERRUPT);
+	state = (status & HEVC_REG_INTERRUPT_DEC_RDY_INT) ?
+		 VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	vdpu_write(vpu, 0, HEVC_REG_INTERRUPT);
+	vdpu_write(vpu, HEVC_REG_CONFIG_DEC_CLK_GATE_E, HEVC_REG_CONFIG);
+
+	hantro_irq_done(vpu, state);
+
+	return IRQ_HANDLED;
+}
+
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
-	vpu->dec_base = vpu->reg_bases[0];
+	int ret;
+
+	/* Check variant version */
+	ret = clk_bulk_prepare_enable(vpu->variant->num_clocks, vpu->clocks);
+	if (ret) {
+		dev_err(vpu->dev, "Failed to enable clocks\n");
+		return ret;
+	}
+
+	/* Make that the device has been reset before read it id */
+	ret = device_reset(vpu->dev);
+	if (ret)
+		dev_err(vpu->dev, "Failed to reset Hantro VPU\n");
+
+	vpu->core_hw_dec_rev = (vdpu_read(vpu, HEVC_REG_VERSION) >> 16) & 0xffff;
+	clk_bulk_disable_unprepare(vpu->variant->num_clocks, vpu->clocks);
 
 	return 0;
 }
@@ -149,17 +203,32 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
+	[HANTRO_MODE_HEVC_DEC] = {
+		.run = hantro_g2_hevc_dec_run,
+		.reset = imx8mq_vpu_reset,
+		.init = hantro_hevc_dec_init,
+		.exit = hantro_hevc_dec_exit,
+	},
+};
+
 /*
  * VPU variants.
  */
 
 static const struct hantro_irq imx8mq_irqs[] = {
 	{ "g1", imx8m_vpu_g1_irq },
-	{ "g2", NULL /* TODO: imx8m_vpu_g2_irq */ },
 };
 
-static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
-static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
+static const struct hantro_irq imx8mq_g2_irqs[] = {
+	{ "g2", imx8m_vpu_g2_irq },
+};
+
+static const char * const imx8mq_clk_names[] = { "g1", "bus"};
+static const char * const imx8mq_reg_names[] = { "g1"};
+
+static const char * const imx8mq_g2_clk_names[] = { "g2", "bus"};
+static const char * const imx8mq_g2_reg_names[] = { "g2"};
 
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
@@ -179,3 +248,21 @@ const struct hantro_variant imx8mq_vpu_variant = {
 	.reg_names = imx8mq_reg_names,
 	.num_regs = ARRAY_SIZE(imx8mq_reg_names)
 };
+
+const struct hantro_variant imx8mq_vpu_g2_variant = {
+	.dec_offset = 0x0,
+	.dec_fmts = imx8m_vpu_g2_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_g2_dec_fmts),
+	.postproc_fmts = imx8m_vpu_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(imx8m_vpu_postproc_fmts),
+	.codec = HANTRO_HEVC_DECODER,
+	.codec_ops = imx8mq_vpu_g2_codec_ops,
+	.init = imx8mq_vpu_hw_init,
+	.runtime_resume = imx8mq_runtime_resume,
+	.irqs = imx8mq_g2_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
+	.clk_names = imx8mq_g2_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mq_g2_clk_names),
+	.reg_names = imx8mq_g2_reg_names,
+	.num_regs = ARRAY_SIZE(imx8mq_g2_reg_names),
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
