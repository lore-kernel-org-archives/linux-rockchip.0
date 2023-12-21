Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13E71C35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 11:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XL/a9SgWde+QdHYpHfpyEBS/hd39PN0vVZWmTDR1e1A=; b=LRr9LLBJpMnJl1HKS7gNgJVVQq
	9EciDEbGL2piCdbhmmNwuScNGie03bZPlwYny5ZNLjgNXfb/fk1DScGVMKdslyWOPyYxhxZxLkOnD
	O7otSYWuwJElyUWYVO3w4s04cjvtXSuAtSBlib3wi6PAUenOPgXnUVf3rzXAY0x+TCrm3EvIKH8HK
	mVNEC8zBQVf4ilGjqLf0xWnM0yE1pTIwMP6fpaYkli5FeCHoL93sYNFSLnloygApzOu/zQZA5ytFI
	4rXIdR9P+QlhUCz/GWuhd5jkdj3Gyy2o5giKGPb6N+zV9Jb0z1XUD8R7UZ2ue07HisbOiCZycysgu
	teyjWlaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGH4g-002Y5J-2U;
	Thu, 21 Dec 2023 11:18:46 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGH4a-002Y2z-1y;
	Thu, 21 Dec 2023 11:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703157518;
	bh=2y+AFJ2E2tAlzXWqVd2TVOftiClzXpdJZMYw206QFqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s7Ia43BtOPNb4MY5rahsKjZbOfPa3c8NWWpc+GotYFgxQEoLvwpQ8ciCH/wx95l6L
	 a4MXtzWvRoe+q0XNes5Dh8rS25on3HW+5EaL8rUW7LP/8ewIz21013N108kFdzlBSA
	 ZHm0GE3k1vRuti69qaeiwpHhZub8HR6xkGPXD+pf+lexmRcymwzUoFvNFS65c5wOik
	 EHBJ0+79hWVy4FBekWMrTHY/r1eEkJYwXtxo3BPm0EywChSCl3mWzyTJfn24G2DgrU
	 Bhp8fh/V1MvJYRoFLLGtAxqYVtAKCIZzOKc0ERSOye2DpJ0wZ8H74YmjVfSXO+RL4C
	 3a8Heq6g5PIlw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F379B3782001;
	Thu, 21 Dec 2023 11:18:37 +0000 (UTC)
Date: Thu, 21 Dec 2023 12:18:37 +0100
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Marco Felsch <m.felsch@pengutronix.de>,
	Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH v5 3/5] media: hantro: add support for STM32MP25 VENC
Message-ID: <20231221111837.4u22pmba7jd3hinj@basti-XPS-13-9310>
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
 <20231221084723.2152034-4-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231221084723.2152034-4-hugues.fruchet@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_031840_781326_A05033F0 
X-CRM114-Status: GOOD (  14.59  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Hugues,

one small comment below, if it should turn out to be the only problem I
can fix it myself for the pull request.

On 21.12.2023 09:47, Hugues Fruchet wrote:
>Add support for STM32MP25 VENC video hardware encoder.
>Support of JPEG encoding.
>VENC has its own reset/clock/irq.
>
>Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
>Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>---
> drivers/media/platform/verisilicon/Makefile   |   3 +-
> .../media/platform/verisilicon/hantro_drv.c   |   1 +
> .../media/platform/verisilicon/hantro_hw.h    |   1 +
> .../platform/verisilicon/stm32mp25_venc_hw.c  | 115 ++++++++++++++++++
> 4 files changed, 119 insertions(+), 1 deletion(-)
> create mode 100644 drivers/media/platform/verisilicon/stm32mp25_venc_hw.c
>
>diff --git a/drivers/media/platform/verisilicon/Makefile b/drivers/media/platform/verisilicon/Makefile
>index 5854e0f0dd32..3bf43fdbedc1 100644
>--- a/drivers/media/platform/verisilicon/Makefile
>+++ b/drivers/media/platform/verisilicon/Makefile
>@@ -41,4 +41,5 @@ hantro-vpu-$(CONFIG_VIDEO_HANTRO_SUNXI) += \
> 		sunxi_vpu_hw.o
>
> hantro-vpu-$(CONFIG_VIDEO_HANTRO_STM32MP25) += \
>-		stm32mp25_vdec_hw.o
>+		stm32mp25_vdec_hw.o \
>+		stm32mp25_venc_hw.o
>diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
>index 2db27c333924..4d97a8ac03de 100644
>--- a/drivers/media/platform/verisilicon/hantro_drv.c
>+++ b/drivers/media/platform/verisilicon/hantro_drv.c
>@@ -736,6 +736,7 @@ static const struct of_device_id of_hantro_match[] = {
> #endif
> #ifdef CONFIG_VIDEO_HANTRO_STM32MP25
> 	{ .compatible = "st,stm32mp25-vdec", .data = &stm32mp25_vdec_variant, },
>+	{ .compatible = "st,stm32mp25-venc", .data = &stm32mp25_venc_variant, },
> #endif
> 	{ /* sentinel */ }
> };
>diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
>index b7eccc1a96fc..70c72e9d11d5 100644
>--- a/drivers/media/platform/verisilicon/hantro_hw.h
>+++ b/drivers/media/platform/verisilicon/hantro_hw.h
>@@ -407,6 +407,7 @@ extern const struct hantro_variant rk3588_vpu981_variant;
> extern const struct hantro_variant sama5d4_vdec_variant;
> extern const struct hantro_variant sunxi_vpu_variant;
> extern const struct hantro_variant stm32mp25_vdec_variant;
>+extern const struct hantro_variant stm32mp25_venc_variant;
>
> extern const struct hantro_postproc_ops hantro_g1_postproc_ops;
> extern const struct hantro_postproc_ops hantro_g2_postproc_ops;
>diff --git a/drivers/media/platform/verisilicon/stm32mp25_venc_hw.c b/drivers/media/platform/verisilicon/stm32mp25_venc_hw.c
>new file mode 100644
>index 000000000000..0ff0f073b922
>--- /dev/null
>+++ b/drivers/media/platform/verisilicon/stm32mp25_venc_hw.c
>@@ -0,0 +1,115 @@
>+// SPDX-License-Identifier: GPL-2.0
>+/*
>+ * STM32MP25 VENC video encoder driver
>+ *
>+ * Copyright (C) STMicroelectronics SA 2022
>+ * Authors: Hugues Fruchet <hugues.fruchet@foss.st.com>
>+ *          for STMicroelectronics.
>+ *
>+ */
>+
>+#include <linux/clk.h>
>+#include <linux/delay.h>
>+#include <linux/reset.h>
>+
>+#include "hantro.h"
>+#include "hantro_jpeg.h"
>+#include "hantro_h1_regs.h"
>+
>+/*
>+ * Supported formats.
>+ */
>+
>+static const struct hantro_fmt stm32mp25_venc_fmts[] = {
>+	{
>+		.fourcc = V4L2_PIX_FMT_YUV420M,
>+		.codec_mode = HANTRO_MODE_NONE,
>+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420P,
>+	},
>+	{
>+		.fourcc = V4L2_PIX_FMT_NV12M,
>+		.codec_mode = HANTRO_MODE_NONE,
>+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420SP,
>+	},
>+	{
>+		.fourcc = V4L2_PIX_FMT_YUYV,
>+		.codec_mode = HANTRO_MODE_NONE,
>+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUYV422,
>+	},
>+	{
>+		.fourcc = V4L2_PIX_FMT_UYVY,
>+		.codec_mode = HANTRO_MODE_NONE,
>+		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_UYVY422,
>+	},
>+	{
>+		.fourcc = V4L2_PIX_FMT_JPEG,
>+		.codec_mode = HANTRO_MODE_JPEG_ENC,
>+		.max_depth = 2,
>+		.header_size = JPEG_HEADER_SIZE,
>+		.frmsize = {
>+			.min_width = 96,
>+			.max_width = FMT_4K_WIDTH,
>+			.step_width = MB_DIM,
>+			.min_height = 96,
>+			.max_height = FMT_4K_HEIGHT,
>+			.step_height = MB_DIM,
>+		},
>+	},
>+};
>+
>+static irqreturn_t stm32mp25_venc_irq(int irq, void *dev_id)
>+{
>+	struct hantro_dev *vpu = dev_id;
>+	enum vb2_buffer_state state;
>+	u32 status;
>+
>+	status = vepu_read(vpu, H1_REG_INTERRUPT);
>+	state = (status & H1_REG_INTERRUPT_FRAME_RDY) ?
>+		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
>+
>+	vepu_write(vpu, H1_REG_INTERRUPT_BIT, H1_REG_INTERRUPT);
>+
>+	hantro_irq_done(vpu, state);
>+
>+	return IRQ_HANDLED;
>+}
>+
>+static void stm32mp25_venc_reset(struct hantro_ctx *ctx)
>+{
>+}
>+
>+/*
>+ * Supported codec ops.
>+ */
>+
>+static const struct hantro_codec_ops stm32mp25_venc_codec_ops[] = {
>+	[HANTRO_MODE_JPEG_ENC] = {
>+		.run = hantro_h1_jpeg_enc_run,
>+		.reset = stm32mp25_venc_reset,
>+		.done = hantro_h1_jpeg_enc_done,
>+	},
>+};
>+
>+/*
>+ * Variants.
>+ */
>+
>+static const struct hantro_irq stm32mp25_venc_irqs[] = {
>+	{ "venc", stm32mp25_venc_irq },
>+};
>+
>+static const char * const stm32mp25_venc_clk_names[] = {
>+	"venc-clk"
>+};
>+
>+const struct hantro_variant stm32mp25_venc_variant = {
>+	.enc_fmts = stm32mp25_venc_fmts,
>+	.num_enc_fmts = ARRAY_SIZE(stm32mp25_venc_fmts),
>+	.codec = HANTRO_JPEG_ENCODER,
>+	.codec_ops = stm32mp25_venc_codec_ops,
>+	.irqs = stm32mp25_venc_irqs,
>+	.num_irqs = ARRAY_SIZE(stm32mp25_venc_irqs),
>+	.clk_names = stm32mp25_venc_clk_names,
>+	.num_clocks = ARRAY_SIZE(stm32mp25_venc_clk_names)
>+};
>+

There is an superfluous new line here.

Greetings,
Sebastian

>-- 
>2.25.1
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
