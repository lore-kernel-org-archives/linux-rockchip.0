Return-Path: <SRS0=cgB8=IQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D36C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Mar 2021 08:24:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4E4A64F04
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Mar 2021 08:24:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E4E4A64F04
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ng/a9xvcMnHZr1ffWc4tSl3VIinF7T8v0jgc1jL0zwM=; b=p61hQZv1Xfi11HcgPBW8gTH/L
	5zry7T4v+uAe6W4Dklh1ngy8lwtEnNW781t4GTACl8b2r7CqdLjmMXWfUHn9I3ofOsy/2tFT4Bn51
	S13n3/qf8mui3faCe3T5Rief62TSAbyI+/CQFUgYOiHFabqSZjhjsMMWqhUoBSvIyvWFAveRRlijH
	FwGX8CxFNuEuxnVoxj9qyrFDAVsu3NoD5LuLwz8xeGPosdHNuTrZTKTvoYoFIT5G3+fX4FOVG6vUR
	rtv1rmeumJep625ie+cQgaLuBWhAZ8ykz7PLF//yZziOQIWqvjrZNrVAJboEZKBX6xEI3hVv7oKxy
	GN+pDhVAw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMnxE-004lft-3N; Thu, 18 Mar 2021 08:24:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMnu9-004kIB-LR; Thu, 18 Mar 2021 08:21:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 53CF91F456D1
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 12/13] media: hantro: IMX8M: add variant for G2/HEVC codec
Date: Thu, 18 Mar 2021 09:20:45 +0100
Message-Id: <20210318082046.51546-13-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210318_082118_884977_96F086A1 
X-CRM114-Status: GOOD (  15.50  )
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
G2 doesn't have postprocessor, use the same clocks and got it
own interruption.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 5:
 - remove useless postproc fields for G2

version 2:
- remove useless clocks

 drivers/staging/media/hantro/hantro_drv.c   |  1 +
 drivers/staging/media/hantro/hantro_hw.h    |  1 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 76 ++++++++++++++++++++-
 3 files changed, 76 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 13c197ca9ba3..659124a52e8a 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -574,6 +574,7 @@ static const struct of_device_id of_hantro_match[] = {
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
index bd9d135dd440..b2ddb1fce0e8 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -12,6 +12,7 @@
 #include "hantro.h"
 #include "hantro_jpeg.h"
 #include "hantro_g1_regs.h"
+#include "hantro_g2_regs.h"
 
 #define CTRL_SOFT_RESET		0x00
 #define RESET_G1		BIT(1)
@@ -129,6 +130,26 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
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
@@ -147,6 +168,24 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
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
 	struct device_node *np = vpu->dev->of_node;
@@ -176,6 +215,13 @@ static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
 	imx8m_soft_reset(vpu, RESET_G1);
 }
 
+static void imx8m_vpu_g2_reset(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	imx8m_soft_reset(vpu, RESET_G2);
+}
+
 /*
  * Supported codec ops.
  */
@@ -201,16 +247,28 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
+	[HANTRO_MODE_HEVC_DEC] = {
+		.run = hantro_g2_hevc_dec_run,
+		.reset = imx8m_vpu_g2_reset,
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
+static const struct hantro_irq imx8mq_g2_irqs[] = {
+	{ "g2", imx8m_vpu_g2_irq },
+};
+
+static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus"};
 
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
@@ -228,3 +286,17 @@ const struct hantro_variant imx8mq_vpu_variant = {
 	.clk_names = imx8mq_clk_names,
 	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
 };
+
+const struct hantro_variant imx8mq_vpu_g2_variant = {
+	.dec_offset = 0x0,
+	.dec_fmts = imx8m_vpu_g2_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_g2_dec_fmts),
+	.codec = HANTRO_HEVC_DECODER,
+	.codec_ops = imx8mq_vpu_g2_codec_ops,
+	.init = imx8mq_vpu_hw_init,
+	.runtime_resume = imx8mq_runtime_resume,
+	.irqs = imx8mq_g2_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
+	.clk_names = imx8mq_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
