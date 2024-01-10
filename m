Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 847D3C47074
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jan 2024 10:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1YW3ClUclFSwePgLN+UbQl6ibDWUXMFlzBgoOdYo9U=; b=GTKsqcInx7Wige
	mw+mG70bE6kxGdHyuERwAQ/u1mG1UYzPjMFD/5XMH3+WjyQZNFjC3faQUbvAb1DiTGFLloHgBbkSu
	XVngtjNE2mVzbX7lYci4RcfkLRjHO0J/HSw+TvVR39M/J0B9XUB6UherX+ASH6WnPNr8T3h6ewm7O
	K7iyhAjblgbKEY9g0jt5YRgGZRUE5yYL2oE1XsShjYEYT04vp+6ifPL1E4waBKRkIgpQY7lp10rUh
	JcS2++UyC4jhC8un+9OdCCekon01EQ3+6+SCYP43MDPI/qCta1nZ/aRrxRsLcxT9+K5vdEurbjM8a
	lh2yWJUPdfE8PyaThy9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNW7c-00B5Pd-0O;
	Wed, 10 Jan 2024 10:47:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNW7W-00B5Kw-0g;
	Wed, 10 Jan 2024 10:47:41 +0000
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40A8rFQr009947;
	Wed, 10 Jan 2024 11:47:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=pd/0B5jTj4kUlVqaQGMkPh1qMzUtukifBnVR6GXqFNQ=; b=Wz
	ANpSHrgflutKE6TCzlOPshDYnNEK91nchgcHMsrEMn6onbnRJQiAffYQYl5JjdOP
	kSRNKDXFUEkuACpjKMAe1g3ChXJUxhUgkICMyUbDSKgEFCXv2FKw6E8OXrcICaBu
	s8Bm81JuLt9mtfoIccQygduzJF+2CEwNn7s8u2AL5Qh/u5NAUsIEwwbK6zMBqXlj
	yOFpBnQJx2A0cFSe2TcvHfb3w2KbfBz2YejAHd9XlOW7aizzQC1mHNsRQ+pkbg6D
	Zfux0OGiUabnfBZ57G5x+2u0mjBZKO05xyTkkBJGuKm06vnqzhkHFrXE//DXAqAB
	C25NAYv9lv9CuwTjkBDg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3vfjpnwk0v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Jan 2024 11:47:03 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6E91210002A;
	Wed, 10 Jan 2024 11:47:03 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6052826C046;
	Wed, 10 Jan 2024 11:47:03 +0100 (CET)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 10 Jan
 2024 11:47:02 +0100
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Sakari Ailus
	<sakari.ailus@linux.intel.com>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Laurent Pinchart
	<laurent.pinchart+renesas@ideasonboard.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Benjamin Mugnier
	<benjamin.mugnier@foss.st.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Mauro
 Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Marco Felsch
	<m.felsch@pengutronix.de>,
        Adam Ford <aford173@gmail.com>
Subject: [RESEND PATCH v6 3/5] media: hantro: add support for STM32MP25 VENC
Date: Wed, 10 Jan 2024 11:46:40 +0100
Message-ID: <20240110104642.532011-4-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240110104642.532011-1-hugues.fruchet@foss.st.com>
References: <20240110104642.532011-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-05_08,2024-01-05_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_024738_560526_FE5F96E0 
X-CRM114-Status: GOOD (  14.09  )
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

Add support for STM32MP25 VENC video hardware encoder.
Support of JPEG encoding.
VENC has its own reset/clock/irq.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
---
 .../media/platform/verisilicon/hantro_drv.c   |  1 +
 .../media/platform/verisilicon/hantro_hw.h    |  1 +
 .../platform/verisilicon/stm32mp25_vpu_hw.c   | 90 +++++++++++++++++++
 3 files changed, 92 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index fe8e2240324c..34b123dafd89 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -738,6 +738,7 @@ static const struct of_device_id of_hantro_match[] = {
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_STM32MP25
 	{ .compatible = "st,stm32mp25-vdec", .data = &stm32mp25_vdec_variant, },
+	{ .compatible = "st,stm32mp25-venc", .data = &stm32mp25_venc_variant, },
 #endif
 	{ /* sentinel */ }
 };
diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index 0b4806f67630..7737320cc8cc 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -409,6 +409,7 @@ extern const struct hantro_variant rk3588_vpu981_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 extern const struct hantro_variant sunxi_vpu_variant;
 extern const struct hantro_variant stm32mp25_vdec_variant;
+extern const struct hantro_variant stm32mp25_venc_variant;
 
 extern const struct hantro_postproc_ops hantro_g1_postproc_ops;
 extern const struct hantro_postproc_ops hantro_g2_postproc_ops;
diff --git a/drivers/media/platform/verisilicon/stm32mp25_vpu_hw.c b/drivers/media/platform/verisilicon/stm32mp25_vpu_hw.c
index 6af6edcb6650..833821120b20 100644
--- a/drivers/media/platform/verisilicon/stm32mp25_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/stm32mp25_vpu_hw.c
@@ -9,6 +9,8 @@
  */
 
 #include "hantro.h"
+#include "hantro_jpeg.h"
+#include "hantro_h1_regs.h"
 
 /*
  * Supported formats.
@@ -55,6 +57,67 @@ static const struct hantro_fmt stm32mp25_vdec_fmts[] = {
 	},
 };
 
+static const struct hantro_fmt stm32mp25_venc_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_YUV420M,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420P,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_NV12M,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420SP,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_YUYV,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUYV422,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_UYVY,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_UYVY422,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_JPEG,
+		.codec_mode = HANTRO_MODE_JPEG_ENC,
+		.max_depth = 2,
+		.header_size = JPEG_HEADER_SIZE,
+		.frmsize = {
+			.min_width = 96,
+			.max_width = FMT_4K_WIDTH,
+			.step_width = MB_DIM,
+			.min_height = 96,
+			.max_height = FMT_4K_HEIGHT,
+			.step_height = MB_DIM,
+		},
+	},
+};
+
+static irqreturn_t stm32mp25_venc_irq(int irq, void *dev_id)
+{
+	struct hantro_dev *vpu = dev_id;
+	enum vb2_buffer_state state;
+	u32 status;
+
+	status = vepu_read(vpu, H1_REG_INTERRUPT);
+	state = (status & H1_REG_INTERRUPT_FRAME_RDY) ?
+		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	vepu_write(vpu, H1_REG_INTERRUPT_BIT, H1_REG_INTERRUPT);
+
+	hantro_irq_done(vpu, state);
+
+	return IRQ_HANDLED;
+}
+
+static void stm32mp25_venc_reset(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	reset_control_reset(vpu->resets);
+}
+
 /*
  * Supported codec ops.
  */
@@ -74,6 +137,14 @@ static const struct hantro_codec_ops stm32mp25_vdec_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops stm32mp25_venc_codec_ops[] = {
+	[HANTRO_MODE_JPEG_ENC] = {
+		.run = hantro_h1_jpeg_enc_run,
+		.reset = stm32mp25_venc_reset,
+		.done = hantro_h1_jpeg_enc_done,
+	},
+};
+
 /*
  * Variants.
  */
@@ -94,3 +165,22 @@ const struct hantro_variant stm32mp25_vdec_variant = {
 	.clk_names = stm32mp25_vdec_clk_names,
 	.num_clocks = ARRAY_SIZE(stm32mp25_vdec_clk_names),
 };
+
+static const struct hantro_irq stm32mp25_venc_irqs[] = {
+	{ "venc", stm32mp25_venc_irq },
+};
+
+static const char * const stm32mp25_venc_clk_names[] = {
+	"venc-clk"
+};
+
+const struct hantro_variant stm32mp25_venc_variant = {
+	.enc_fmts = stm32mp25_venc_fmts,
+	.num_enc_fmts = ARRAY_SIZE(stm32mp25_venc_fmts),
+	.codec = HANTRO_JPEG_ENCODER,
+	.codec_ops = stm32mp25_venc_codec_ops,
+	.irqs = stm32mp25_venc_irqs,
+	.num_irqs = ARRAY_SIZE(stm32mp25_venc_irqs),
+	.clk_names = stm32mp25_venc_clk_names,
+	.num_clocks = ARRAY_SIZE(stm32mp25_venc_clk_names)
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
