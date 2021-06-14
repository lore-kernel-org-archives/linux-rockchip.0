Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40814C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:34:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 00E1D608FC
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:34:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 00E1D608FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVAlyuU2sfVgumUprgi4lH5J+6Mw18wTUq5gX4AB8eQ=; b=o+P3NVJQofjjhx
	bkaiF4c1neothIbxnkVfw3Kp/7gUBhumjoL1BI9AAfzm1Q4hOLCjVqFk6S+rmxjfSIu95VfOUvaGK
	aDFR/2Yp/NwGsphpgxPhCHS9bMMxOxD09HpwJqfBgcDfUaLKeWeCbRrXqWMOS1DSqG6aBJt7VO0uE
	Xsd10a5T5YMbkhGUrqoXH6oNAjoWKpJ1EsB1HmTvb/5/SItu1Dwg/+7GKI6Rk6ILcxwEYv+eUsjv4
	krnFDmQlF0s2borLM9k3l4p0WY3oQ9BK8LUByViOHTZRrNcCquzGHHJhyIiOBtHOlaM0d562wUWmO
	L/UKE3ax6F6WXzbR/AFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsuDZ-00GErQ-Ge; Mon, 14 Jun 2021 21:34:01 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsuCv-00GEcZ-W1; Mon, 14 Jun 2021 21:33:26 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 s70-20020a1ca9490000b02901a589651424so600791wme.0; 
 Mon, 14 Jun 2021 14:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/JJYn8lnmboczGYVyAh+QRZZ+kiYcSBeMnVrrjhuMHk=;
 b=gjcpPNhGwx44MjKEJ05HHhyKNFSZgMJDX8pjVSwChDvCmOXUNmwQHyPO3rL7VZZo9q
 2YT8fcW3a2F3v/SrIia8RDUmAzZoPO/HSQQT2XEMr+CoD0+hbxVZhGJ9/Bx+zrQ+zL97
 lMAgKAQuh4iAcgWlrzgP45Z0pLbBUej120XtuJ8bhlxiSDAhs2BHeSw6N1h0y3lsZwyS
 qQ5L63CilweyRCNEe2hDO/2jaS1kOnCfshsI1O3pnpCZqiMiU3+qjtZNIYEPDzvzTqyD
 hhNGZvOWsuwQVziwHc26g6sW1iBIQ0qXCyCt9KoCOkG8TCmb3sgTLBsAiAAffg8fnNUz
 2m0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/JJYn8lnmboczGYVyAh+QRZZ+kiYcSBeMnVrrjhuMHk=;
 b=PUNybXtqCjx+rksRoNKC6NEFLUDe6cg+bQqFn5gYbKWlH+tlreS5kwlK4FfEXy5q5d
 H8Vx0GMJCgT/zZCwxiJBe3rmYaKRnzW1PU8P3CV3KwApxMdedzZPTUwgjJiioebZFa1O
 V4zEHxmXI1BWKE5GnoERVp3glMrkchzA7ey/CP5b3Nn3ACcL5r+Nv3+ApfxULfqaMGb6
 srlvwjlVdnCA54u/6mfTQ8ZSyj2eQuH0lcUrT0/AIZNp/QtpVKSETyqqIZEHTIt5YnFS
 dLsACnFa8Eaa1vA30N1BvudQa9TUtRLVu7VgffNvt5j8szSLA4HP7vJKgq17+A3kiDzE
 wTsw==
X-Gm-Message-State: AOAM532H/kVM3fjL/ENpqQliBsCywSjHpxuyivkF3uCtDKRlimEK6XiU
 VWMy6PiRkafbPXkfyHIwUkZMGJA6wQ==
X-Google-Smtp-Source: ABdhPJzjebxaNNzgv63+8BHTtd0oPXFf+EkwJ0sRPxEmZxUvc5qVF/CILpTw2z/LhKEuB8clIQj4PA==
X-Received: by 2002:a05:600c:3ba2:: with SMTP id
 n34mr18692402wms.120.1623706400144; 
 Mon, 14 Jun 2021 14:33:20 -0700 (PDT)
Received: from localhost.localdomain ([91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id g23sm989525wmk.3.2021.06.14.14.33.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 14:33:19 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/6] media: hantro: merge Rockchip platform drivers
Date: Mon, 14 Jun 2021 23:32:13 +0200
Message-Id: <20210614213215.99389-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210614213215.99389-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210614213215.99389-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_143322_108389_B6DDCB75 
X-CRM114-Status: GOOD (  19.45  )
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

Merge the two Rockchip platform drivers into one as it was suggested at
[1] and [2].
This will hopefully make it easier to add new variants (which are surely
to come for Rockchip).
Also rename from "rk3288" to "v(d/e)pu1" and "rk3399" to "v(d/e)pu2"
where applicable, as this is the dicition the vendor uses and will
also refelect the variants that get added later in this series. Rename
from "rk3288" to "rockchip" if applicable to both hardware versions.

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20210107134101.195426-6-paul.kocialkowski@bootlin.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/patch/20210525152225.154302-5-knaerzche@gmail.com/

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
---

 Changes in v3:
 - fix typo: rockchip_vpdu2_irqs -> rockchip_vdpu2_irqs
 - collect Reviewed-Tag

 Changes in v2:
 - added patch

 drivers/staging/media/hantro/Makefile         |   9 +-
 drivers/staging/media/hantro/hantro_hw.h      |  22 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  | 208 ----------
 drivers/staging/media/hantro/rk3399_vpu_hw.c  | 222 -----------
 ...jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} |  30 +-
 ...eg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} |  25 +-
 ...w_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} |   2 +-
 ...rk3399_vpu_regs.h => rockchip_vpu2_regs.h} |   6 +-
 .../staging/media/hantro/rockchip_vpu_hw.c    | 356 ++++++++++++++++++
 9 files changed, 402 insertions(+), 478 deletions(-)
 delete mode 100644 drivers/staging/media/hantro/rk3288_vpu_hw.c
 delete mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw.c
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} (87%)
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_mpeg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} (94%)
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} (99%)
 rename drivers/staging/media/hantro/{rk3399_vpu_regs.h => rockchip_vpu2_regs.h} (99%)
 create mode 100644 drivers/staging/media/hantro/rockchip_vpu_hw.c

diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 23bfc423b23c..287370188d2a 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -12,9 +12,9 @@ hantro-vpu-y += \
 		hantro_g1_mpeg2_dec.o \
 		hantro_g2_hevc_dec.o \
 		hantro_g1_vp8_dec.o \
-		rk3399_vpu_hw_jpeg_enc.o \
-		rk3399_vpu_hw_mpeg2_dec.o \
-		rk3399_vpu_hw_vp8_dec.o \
+		rockchip_vpu2_hw_jpeg_enc.o \
+		rockchip_vpu2_hw_mpeg2_dec.o \
+		rockchip_vpu2_hw_vp8_dec.o \
 		hantro_jpeg.o \
 		hantro_h264.o \
 		hantro_hevc.o \
@@ -28,5 +28,4 @@ hantro-vpu-$(CONFIG_VIDEO_HANTRO_SAMA5D4) += \
 		sama5d4_vdec_hw.o
 
 hantro-vpu-$(CONFIG_VIDEO_HANTRO_ROCKCHIP) += \
-		rk3288_vpu_hw.o \
-		rk3399_vpu_hw.o
+		rockchip_vpu_hw.o
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 7fa67d0c7e0f..a7b75b05e849 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -191,16 +191,16 @@ struct hantro_codec_ops {
 /**
  * enum hantro_enc_fmt - source format ID for hardware registers.
  *
- * @RK3288_VPU_ENC_FMT_YUV420P: Y/CbCr 4:2:0 planar format
- * @RK3288_VPU_ENC_FMT_YUV420SP: Y/CbCr 4:2:0 semi-planar format
- * @RK3288_VPU_ENC_FMT_YUYV422: YUV 4:2:2 packed format (YUYV)
- * @RK3288_VPU_ENC_FMT_UYVY422: YUV 4:2:2 packed format (UYVY)
+ * @ROCKCHIP_VPU_ENC_FMT_YUV420P: Y/CbCr 4:2:0 planar format
+ * @ROCKCHIP_VPU_ENC_FMT_YUV420SP: Y/CbCr 4:2:0 semi-planar format
+ * @ROCKCHIP_VPU_ENC_FMT_YUYV422: YUV 4:2:2 packed format (YUYV)
+ * @ROCKCHIP_VPU_ENC_FMT_UYVY422: YUV 4:2:2 packed format (UYVY)
  */
 enum hantro_enc_fmt {
-	RK3288_VPU_ENC_FMT_YUV420P = 0,
-	RK3288_VPU_ENC_FMT_YUV420SP = 1,
-	RK3288_VPU_ENC_FMT_YUYV422 = 2,
-	RK3288_VPU_ENC_FMT_UYVY422 = 3,
+	ROCKCHIP_VPU_ENC_FMT_YUV420P = 0,
+	ROCKCHIP_VPU_ENC_FMT_YUV420SP = 1,
+	ROCKCHIP_VPU_ENC_FMT_YUYV422 = 2,
+	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
 };
 
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
@@ -225,7 +225,7 @@ irqreturn_t hantro_g1_irq(int irq, void *dev_id);
 void hantro_g1_reset(struct hantro_ctx *ctx);
 
 int hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx);
-int rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx);
+int rockchip_vpu2_jpeg_enc_run(struct hantro_ctx *ctx);
 int hantro_jpeg_enc_init(struct hantro_ctx *ctx);
 void hantro_jpeg_enc_exit(struct hantro_ctx *ctx);
 void hantro_jpeg_enc_done(struct hantro_ctx *ctx);
@@ -274,14 +274,14 @@ hantro_h264_mv_size(unsigned int width, unsigned int height)
 }
 
 int hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
-int rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
+int rockchip_vpu2_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
 				  const struct v4l2_ctrl_mpeg2_quantisation *ctrl);
 int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
 
 int hantro_g1_vp8_dec_run(struct hantro_ctx *ctx);
-int rk3399_vpu_vp8_dec_run(struct hantro_ctx *ctx);
+int rockchip_vpu2_vp8_dec_run(struct hantro_ctx *ctx);
 int hantro_vp8_dec_init(struct hantro_ctx *ctx);
 void hantro_vp8_dec_exit(struct hantro_ctx *ctx);
 void hantro_vp8_prob_update(struct hantro_ctx *ctx,
diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
deleted file mode 100644
index fefd45269e52..000000000000
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ /dev/null
@@ -1,208 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Hantro VPU codec driver
- *
- * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
- *	Jeffy Chen <jeffy.chen@rock-chips.com>
- */
-
-#include <linux/clk.h>
-
-#include "hantro.h"
-#include "hantro_jpeg.h"
-#include "hantro_h1_regs.h"
-
-#define RK3288_ACLK_MAX_FREQ (400 * 1000 * 1000)
-
-/*
- * Supported formats.
- */
-
-static const struct hantro_fmt rk3288_vpu_enc_fmts[] = {
-	{
-		.fourcc = V4L2_PIX_FMT_YUV420M,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_YUV420P,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_NV12M,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_YUV420SP,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_YUYV,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_YUYV422,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_UYVY,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_UYVY422,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_JPEG,
-		.codec_mode = HANTRO_MODE_JPEG_ENC,
-		.max_depth = 2,
-		.header_size = JPEG_HEADER_SIZE,
-		.frmsize = {
-			.min_width = 96,
-			.max_width = 8192,
-			.step_width = MB_DIM,
-			.min_height = 32,
-			.max_height = 8192,
-			.step_height = MB_DIM,
-		},
-	},
-};
-
-static const struct hantro_fmt rk3288_vpu_postproc_fmts[] = {
-	{
-		.fourcc = V4L2_PIX_FMT_YUYV,
-		.codec_mode = HANTRO_MODE_NONE,
-	},
-};
-
-static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
-	{
-		.fourcc = V4L2_PIX_FMT_NV12,
-		.codec_mode = HANTRO_MODE_NONE,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_H264_SLICE,
-		.codec_mode = HANTRO_MODE_H264_DEC,
-		.max_depth = 2,
-		.frmsize = {
-			.min_width = 48,
-			.max_width = 4096,
-			.step_width = MB_DIM,
-			.min_height = 48,
-			.max_height = 2304,
-			.step_height = MB_DIM,
-		},
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
-		.codec_mode = HANTRO_MODE_MPEG2_DEC,
-		.max_depth = 2,
-		.frmsize = {
-			.min_width = 48,
-			.max_width = 1920,
-			.step_width = MB_DIM,
-			.min_height = 48,
-			.max_height = 1088,
-			.step_height = MB_DIM,
-		},
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_VP8_FRAME,
-		.codec_mode = HANTRO_MODE_VP8_DEC,
-		.max_depth = 2,
-		.frmsize = {
-			.min_width = 48,
-			.max_width = 3840,
-			.step_width = MB_DIM,
-			.min_height = 48,
-			.max_height = 2160,
-			.step_height = MB_DIM,
-		},
-	},
-};
-
-static irqreturn_t rk3288_vepu_irq(int irq, void *dev_id)
-{
-	struct hantro_dev *vpu = dev_id;
-	enum vb2_buffer_state state;
-	u32 status;
-
-	status = vepu_read(vpu, H1_REG_INTERRUPT);
-	state = (status & H1_REG_INTERRUPT_FRAME_RDY) ?
-		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
-
-	vepu_write(vpu, 0, H1_REG_INTERRUPT);
-	vepu_write(vpu, 0, H1_REG_AXI_CTRL);
-
-	hantro_irq_done(vpu, state);
-
-	return IRQ_HANDLED;
-}
-
-static int rk3288_vpu_hw_init(struct hantro_dev *vpu)
-{
-	/* Bump ACLK to max. possible freq. to improve performance. */
-	clk_set_rate(vpu->clocks[0].clk, RK3288_ACLK_MAX_FREQ);
-	return 0;
-}
-
-static void rk3288_vpu_enc_reset(struct hantro_ctx *ctx)
-{
-	struct hantro_dev *vpu = ctx->dev;
-
-	vepu_write(vpu, H1_REG_INTERRUPT_DIS_BIT, H1_REG_INTERRUPT);
-	vepu_write(vpu, 0, H1_REG_ENC_CTRL);
-	vepu_write(vpu, 0, H1_REG_AXI_CTRL);
-}
-
-/*
- * Supported codec ops.
- */
-
-static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
-	[HANTRO_MODE_JPEG_ENC] = {
-		.run = hantro_h1_jpeg_enc_run,
-		.reset = rk3288_vpu_enc_reset,
-		.init = hantro_jpeg_enc_init,
-		.done = hantro_jpeg_enc_done,
-		.exit = hantro_jpeg_enc_exit,
-	},
-	[HANTRO_MODE_H264_DEC] = {
-		.run = hantro_g1_h264_dec_run,
-		.reset = hantro_g1_reset,
-		.init = hantro_h264_dec_init,
-		.exit = hantro_h264_dec_exit,
-	},
-	[HANTRO_MODE_MPEG2_DEC] = {
-		.run = hantro_g1_mpeg2_dec_run,
-		.reset = hantro_g1_reset,
-		.init = hantro_mpeg2_dec_init,
-		.exit = hantro_mpeg2_dec_exit,
-	},
-	[HANTRO_MODE_VP8_DEC] = {
-		.run = hantro_g1_vp8_dec_run,
-		.reset = hantro_g1_reset,
-		.init = hantro_vp8_dec_init,
-		.exit = hantro_vp8_dec_exit,
-	},
-};
-
-/*
- * VPU variant.
- */
-
-static const struct hantro_irq rk3288_irqs[] = {
-	{ "vepu", rk3288_vepu_irq },
-	{ "vdpu", hantro_g1_irq },
-};
-
-static const char * const rk3288_clk_names[] = {
-	"aclk", "hclk"
-};
-
-const struct hantro_variant rk3288_vpu_variant = {
-	.enc_offset = 0x0,
-	.enc_fmts = rk3288_vpu_enc_fmts,
-	.num_enc_fmts = ARRAY_SIZE(rk3288_vpu_enc_fmts),
-	.dec_offset = 0x400,
-	.dec_fmts = rk3288_vpu_dec_fmts,
-	.num_dec_fmts = ARRAY_SIZE(rk3288_vpu_dec_fmts),
-	.postproc_fmts = rk3288_vpu_postproc_fmts,
-	.num_postproc_fmts = ARRAY_SIZE(rk3288_vpu_postproc_fmts),
-	.postproc_regs = &hantro_g1_postproc_regs,
-	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
-		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
-	.codec_ops = rk3288_vpu_codec_ops,
-	.irqs = rk3288_irqs,
-	.num_irqs = ARRAY_SIZE(rk3288_irqs),
-	.init = rk3288_vpu_hw_init,
-	.clk_names = rk3288_clk_names,
-	.num_clocks = ARRAY_SIZE(rk3288_clk_names)
-};
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/staging/media/hantro/rk3399_vpu_hw.c
deleted file mode 100644
index 7a7962cf771e..000000000000
--- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
+++ /dev/null
@@ -1,222 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Hantro VPU codec driver
- *
- * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
- *	Jeffy Chen <jeffy.chen@rock-chips.com>
- */
-
-#include <linux/clk.h>
-
-#include "hantro.h"
-#include "hantro_jpeg.h"
-#include "rk3399_vpu_regs.h"
-
-#define RK3399_ACLK_MAX_FREQ (400 * 1000 * 1000)
-
-/*
- * Supported formats.
- */
-
-static const struct hantro_fmt rk3399_vpu_enc_fmts[] = {
-	{
-		.fourcc = V4L2_PIX_FMT_YUV420M,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_YUV420P,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_NV12M,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_YUV420SP,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_YUYV,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_YUYV422,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_UYVY,
-		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = RK3288_VPU_ENC_FMT_UYVY422,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_JPEG,
-		.codec_mode = HANTRO_MODE_JPEG_ENC,
-		.max_depth = 2,
-		.header_size = JPEG_HEADER_SIZE,
-		.frmsize = {
-			.min_width = 96,
-			.max_width = 8192,
-			.step_width = MB_DIM,
-			.min_height = 32,
-			.max_height = 8192,
-			.step_height = MB_DIM,
-		},
-	},
-};
-
-static const struct hantro_fmt rk3399_vpu_dec_fmts[] = {
-	{
-		.fourcc = V4L2_PIX_FMT_NV12,
-		.codec_mode = HANTRO_MODE_NONE,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
-		.codec_mode = HANTRO_MODE_MPEG2_DEC,
-		.max_depth = 2,
-		.frmsize = {
-			.min_width = 48,
-			.max_width = 1920,
-			.step_width = MB_DIM,
-			.min_height = 48,
-			.max_height = 1088,
-			.step_height = MB_DIM,
-		},
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_VP8_FRAME,
-		.codec_mode = HANTRO_MODE_VP8_DEC,
-		.max_depth = 2,
-		.frmsize = {
-			.min_width = 48,
-			.max_width = 3840,
-			.step_width = MB_DIM,
-			.min_height = 48,
-			.max_height = 2160,
-			.step_height = MB_DIM,
-		},
-	},
-};
-
-static irqreturn_t rk3399_vepu_irq(int irq, void *dev_id)
-{
-	struct hantro_dev *vpu = dev_id;
-	enum vb2_buffer_state state;
-	u32 status;
-
-	status = vepu_read(vpu, VEPU_REG_INTERRUPT);
-	state = (status & VEPU_REG_INTERRUPT_FRAME_READY) ?
-		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
-
-	vepu_write(vpu, 0, VEPU_REG_INTERRUPT);
-	vepu_write(vpu, 0, VEPU_REG_AXI_CTRL);
-
-	hantro_irq_done(vpu, state);
-
-	return IRQ_HANDLED;
-}
-
-static irqreturn_t rk3399_vdpu_irq(int irq, void *dev_id)
-{
-	struct hantro_dev *vpu = dev_id;
-	enum vb2_buffer_state state;
-	u32 status;
-
-	status = vdpu_read(vpu, VDPU_REG_INTERRUPT);
-	state = (status & VDPU_REG_INTERRUPT_DEC_IRQ) ?
-		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
-
-	vdpu_write(vpu, 0, VDPU_REG_INTERRUPT);
-	vdpu_write(vpu, 0, VDPU_REG_AXI_CTRL);
-
-	hantro_irq_done(vpu, state);
-
-	return IRQ_HANDLED;
-}
-
-static int rk3399_vpu_hw_init(struct hantro_dev *vpu)
-{
-	/* Bump ACLK to max. possible freq. to improve performance. */
-	clk_set_rate(vpu->clocks[0].clk, RK3399_ACLK_MAX_FREQ);
-	return 0;
-}
-
-static void rk3399_vpu_enc_reset(struct hantro_ctx *ctx)
-{
-	struct hantro_dev *vpu = ctx->dev;
-
-	vepu_write(vpu, VEPU_REG_INTERRUPT_DIS_BIT, VEPU_REG_INTERRUPT);
-	vepu_write(vpu, 0, VEPU_REG_ENCODE_START);
-	vepu_write(vpu, 0, VEPU_REG_AXI_CTRL);
-}
-
-static void rk3399_vpu_dec_reset(struct hantro_ctx *ctx)
-{
-	struct hantro_dev *vpu = ctx->dev;
-
-	vdpu_write(vpu, VDPU_REG_INTERRUPT_DEC_IRQ_DIS, VDPU_REG_INTERRUPT);
-	vdpu_write(vpu, 0, VDPU_REG_EN_FLAGS);
-	vdpu_write(vpu, 1, VDPU_REG_SOFT_RESET);
-}
-
-/*
- * Supported codec ops.
- */
-
-static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
-	[HANTRO_MODE_JPEG_ENC] = {
-		.run = rk3399_vpu_jpeg_enc_run,
-		.reset = rk3399_vpu_enc_reset,
-		.init = hantro_jpeg_enc_init,
-		.exit = hantro_jpeg_enc_exit,
-	},
-	[HANTRO_MODE_MPEG2_DEC] = {
-		.run = rk3399_vpu_mpeg2_dec_run,
-		.reset = rk3399_vpu_dec_reset,
-		.init = hantro_mpeg2_dec_init,
-		.exit = hantro_mpeg2_dec_exit,
-	},
-	[HANTRO_MODE_VP8_DEC] = {
-		.run = rk3399_vpu_vp8_dec_run,
-		.reset = rk3399_vpu_dec_reset,
-		.init = hantro_vp8_dec_init,
-		.exit = hantro_vp8_dec_exit,
-	},
-};
-
-/*
- * VPU variant.
- */
-
-static const struct hantro_irq rk3399_irqs[] = {
-	{ "vepu", rk3399_vepu_irq },
-	{ "vdpu", rk3399_vdpu_irq },
-};
-
-static const char * const rk3399_clk_names[] = {
-	"aclk", "hclk"
-};
-
-const struct hantro_variant rk3399_vpu_variant = {
-	.enc_offset = 0x0,
-	.enc_fmts = rk3399_vpu_enc_fmts,
-	.num_enc_fmts = ARRAY_SIZE(rk3399_vpu_enc_fmts),
-	.dec_offset = 0x400,
-	.dec_fmts = rk3399_vpu_dec_fmts,
-	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
-	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
-		 HANTRO_VP8_DECODER,
-	.codec_ops = rk3399_vpu_codec_ops,
-	.irqs = rk3399_irqs,
-	.num_irqs = ARRAY_SIZE(rk3399_irqs),
-	.init = rk3399_vpu_hw_init,
-	.clk_names = rk3399_clk_names,
-	.num_clocks = ARRAY_SIZE(rk3399_clk_names)
-};
-
-static const struct hantro_irq rk3328_irqs[] = {
-	{ "vdpu", rk3399_vdpu_irq },
-};
-
-const struct hantro_variant rk3328_vpu_variant = {
-	.dec_offset = 0x400,
-	.dec_fmts = rk3399_vpu_dec_fmts,
-	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
-	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER,
-	.codec_ops = rk3399_vpu_codec_ops,
-	.irqs = rk3328_irqs,
-	.num_irqs = ARRAY_SIZE(rk3328_irqs),
-	.init = rk3399_vpu_hw_init,
-	.clk_names = rk3399_clk_names,
-	.num_clocks = ARRAY_SIZE(rk3399_clk_names),
-};
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
similarity index 87%
rename from drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
rename to drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
index 3a27ebef4f38..991213ce1610 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
@@ -28,12 +28,12 @@
 #include "hantro.h"
 #include "hantro_v4l2.h"
 #include "hantro_hw.h"
-#include "rk3399_vpu_regs.h"
+#include "rockchip_vpu2_regs.h"
 
 #define VEPU_JPEG_QUANT_TABLE_COUNT 16
 
-static void rk3399_vpu_set_src_img_ctrl(struct hantro_dev *vpu,
-					struct hantro_ctx *ctx)
+static void rockchip_vpu2_set_src_img_ctrl(struct hantro_dev *vpu,
+					   struct hantro_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
 	u32 reg;
@@ -59,9 +59,9 @@ static void rk3399_vpu_set_src_img_ctrl(struct hantro_dev *vpu,
 	vepu_write_relaxed(vpu, reg, VEPU_REG_ENC_CTRL1);
 }
 
-static void rk3399_vpu_jpeg_enc_set_buffers(struct hantro_dev *vpu,
-					    struct hantro_ctx *ctx,
-					    struct vb2_buffer *src_buf)
+static void rockchip_vpu2_jpeg_enc_set_buffers(struct hantro_dev *vpu,
+					       struct hantro_ctx *ctx,
+					       struct vb2_buffer *src_buf)
 {
 	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
 	dma_addr_t src[3];
@@ -92,9 +92,9 @@ static void rk3399_vpu_jpeg_enc_set_buffers(struct hantro_dev *vpu,
 }
 
 static void
-rk3399_vpu_jpeg_enc_set_qtable(struct hantro_dev *vpu,
-			       unsigned char *luma_qtable,
-			       unsigned char *chroma_qtable)
+rockchip_vpu2_jpeg_enc_set_qtable(struct hantro_dev *vpu,
+				  unsigned char *luma_qtable,
+				  unsigned char *chroma_qtable)
 {
 	u32 reg, i;
 	__be32 *luma_qtable_p;
@@ -118,7 +118,7 @@ rk3399_vpu_jpeg_enc_set_qtable(struct hantro_dev *vpu,
 	}
 }
 
-int rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
+int rockchip_vpu2_jpeg_enc_run(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
@@ -141,11 +141,11 @@ int rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 	vepu_write_relaxed(vpu, VEPU_REG_ENCODE_FORMAT_JPEG,
 			   VEPU_REG_ENCODE_START);
 
-	rk3399_vpu_set_src_img_ctrl(vpu, ctx);
-	rk3399_vpu_jpeg_enc_set_buffers(vpu, ctx, &src_buf->vb2_buf);
-	rk3399_vpu_jpeg_enc_set_qtable(vpu,
-				       hantro_jpeg_get_qtable(0),
-				       hantro_jpeg_get_qtable(1));
+	rockchip_vpu2_set_src_img_ctrl(vpu, ctx);
+	rockchip_vpu2_jpeg_enc_set_buffers(vpu, ctx, &src_buf->vb2_buf);
+	rockchip_vpu2_jpeg_enc_set_qtable(vpu,
+					  hantro_jpeg_get_qtable(0),
+					  hantro_jpeg_get_qtable(1));
 
 	reg = VEPU_REG_OUTPUT_SWAP32
 		| VEPU_REG_OUTPUT_SWAP16
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_mpeg2_dec.c
similarity index 94%
rename from drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
rename to drivers/staging/media/hantro/rockchip_vpu2_hw_mpeg2_dec.c
index 683982c24c2d..b66737fab46b 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_mpeg2_dec.c
@@ -80,8 +80,8 @@
 #define VDPU_REG_MV_ACCURACY_BWD(v)	((v) ? BIT(1) : 0)
 
 static void
-rk3399_vpu_mpeg2_dec_set_quantisation(struct hantro_dev *vpu,
-				      struct hantro_ctx *ctx)
+rockchip_vpu2_mpeg2_dec_set_quantisation(struct hantro_dev *vpu,
+					 struct hantro_ctx *ctx)
 {
 	struct v4l2_ctrl_mpeg2_quantisation *q;
 
@@ -91,12 +91,12 @@ rk3399_vpu_mpeg2_dec_set_quantisation(struct hantro_dev *vpu,
 }
 
 static void
-rk3399_vpu_mpeg2_dec_set_buffers(struct hantro_dev *vpu,
-				 struct hantro_ctx *ctx,
-				 struct vb2_buffer *src_buf,
-				 struct vb2_buffer *dst_buf,
-				 const struct v4l2_ctrl_mpeg2_sequence *seq,
-				 const struct v4l2_ctrl_mpeg2_picture *pic)
+rockchip_vpu2_mpeg2_dec_set_buffers(struct hantro_dev *vpu,
+				    struct hantro_ctx *ctx,
+				    struct vb2_buffer *src_buf,
+				    struct vb2_buffer *dst_buf,
+				    const struct v4l2_ctrl_mpeg2_sequence *seq,
+				    const struct v4l2_ctrl_mpeg2_picture *pic)
 {
 	dma_addr_t forward_addr = 0, backward_addr = 0;
 	dma_addr_t current_addr, addr;
@@ -148,7 +148,7 @@ rk3399_vpu_mpeg2_dec_set_buffers(struct hantro_dev *vpu,
 	vdpu_write_relaxed(vpu, backward_addr, VDPU_REG_REFER3_BASE);
 }
 
-int rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
+int rockchip_vpu2_mpeg2_dec_run(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
@@ -233,11 +233,10 @@ int rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 	      VDPU_REG_MV_ACCURACY_BWD(1);
 	vdpu_write_relaxed(vpu, reg, VDPU_SWREG(136));
 
-	rk3399_vpu_mpeg2_dec_set_quantisation(vpu, ctx);
+	rockchip_vpu2_mpeg2_dec_set_quantisation(vpu, ctx);
 
-	rk3399_vpu_mpeg2_dec_set_buffers(vpu, ctx, &src_buf->vb2_buf,
-					 &dst_buf->vb2_buf,
-					 seq, pic);
+	rockchip_vpu2_mpeg2_dec_set_buffers(vpu, ctx, &src_buf->vb2_buf,
+					    &dst_buf->vb2_buf, seq, pic);
 
 	/* Kick the watchdog and start decoding */
 	hantro_end_prepare_run(ctx);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c
similarity index 99%
rename from drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
rename to drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c
index e5d20fe5b007..951b55f58a61 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
+++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c
@@ -503,7 +503,7 @@ static void cfg_buffers(struct hantro_ctx *ctx,
 	vdpu_write_relaxed(vpu, dst_dma, VDPU_REG_ADDR_DST);
 }
 
-int rk3399_vpu_vp8_dec_run(struct hantro_ctx *ctx)
+int rockchip_vpu2_vp8_dec_run(struct hantro_ctx *ctx)
 {
 	const struct v4l2_ctrl_vp8_frame *hdr;
 	struct hantro_dev *vpu = ctx->dev;
diff --git a/drivers/staging/media/hantro/rk3399_vpu_regs.h b/drivers/staging/media/hantro/rockchip_vpu2_regs.h
similarity index 99%
rename from drivers/staging/media/hantro/rk3399_vpu_regs.h
rename to drivers/staging/media/hantro/rockchip_vpu2_regs.h
index 88d096920f30..49e40889545b 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_regs.h
+++ b/drivers/staging/media/hantro/rockchip_vpu2_regs.h
@@ -6,8 +6,8 @@
  *	Alpha Lin <alpha.lin@rock-chips.com>
  */
 
-#ifndef RK3399_VPU_REGS_H_
-#define RK3399_VPU_REGS_H_
+#ifndef ROCKCHIP_VPU2_REGS_H_
+#define ROCKCHIP_VPU2_REGS_H_
 
 /* Encoder registers. */
 #define VEPU_REG_VP8_QUT_1ST(i)			(0x000 + ((i) * 0x24))
@@ -597,4 +597,4 @@
 #define     VDPU_REG_PRED_FLT_PRED_BC_TAP_4_3(x)	(((x) & 0x3ff) << 12)
 #define     VDPU_REG_PRED_FLT_PRED_BC_TAP_5_0(x)	(((x) & 0x3ff) << 2)
 
-#endif /* RK3399_VPU_REGS_H_ */
+#endif /* ROCKCHIP_VPU2_REGS_H_ */
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
new file mode 100644
index 000000000000..bf760e8e65ce
--- /dev/null
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -0,0 +1,356 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Hantro VPU codec driver
+ *
+ * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
+ *	Jeffy Chen <jeffy.chen@rock-chips.com>
+ */
+
+#include <linux/clk.h>
+
+#include "hantro.h"
+#include "hantro_jpeg.h"
+#include "hantro_h1_regs.h"
+#include "rockchip_vpu2_regs.h"
+
+#define RK3288_ACLK_MAX_FREQ (400 * 1000 * 1000)
+
+/*
+ * Supported formats.
+ */
+
+static const struct hantro_fmt rockchip_vpu_enc_fmts[] = {
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
+			.max_width = 8192,
+			.step_width = MB_DIM,
+			.min_height = 32,
+			.max_height = 8192,
+			.step_height = MB_DIM,
+		},
+	},
+};
+
+static const struct hantro_fmt rockchip_vpu1_postproc_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_YUYV,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+};
+
+static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.codec_mode = HANTRO_MODE_H264_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 4096,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 2304,
+			.step_height = MB_DIM,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
+		.codec_mode = HANTRO_MODE_MPEG2_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 1920,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 1088,
+			.step_height = MB_DIM,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_VP8_FRAME,
+		.codec_mode = HANTRO_MODE_VP8_DEC,
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
+static const struct hantro_fmt rk3399_vpu_dec_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
+		.codec_mode = HANTRO_MODE_MPEG2_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 1920,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 1088,
+			.step_height = MB_DIM,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_VP8_FRAME,
+		.codec_mode = HANTRO_MODE_VP8_DEC,
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
+static irqreturn_t rockchip_vpu1_vepu_irq(int irq, void *dev_id)
+{
+	struct hantro_dev *vpu = dev_id;
+	enum vb2_buffer_state state;
+	u32 status;
+
+	status = vepu_read(vpu, H1_REG_INTERRUPT);
+	state = (status & H1_REG_INTERRUPT_FRAME_RDY) ?
+		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	vepu_write(vpu, 0, H1_REG_INTERRUPT);
+	vepu_write(vpu, 0, H1_REG_AXI_CTRL);
+
+	hantro_irq_done(vpu, state);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t rockchip_vpu2_vdpu_irq(int irq, void *dev_id)
+{
+	struct hantro_dev *vpu = dev_id;
+	enum vb2_buffer_state state;
+	u32 status;
+
+	status = vdpu_read(vpu, VDPU_REG_INTERRUPT);
+	state = (status & VDPU_REG_INTERRUPT_DEC_IRQ) ?
+		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	vdpu_write(vpu, 0, VDPU_REG_INTERRUPT);
+	vdpu_write(vpu, 0, VDPU_REG_AXI_CTRL);
+
+	hantro_irq_done(vpu, state);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t rockchip_vpu2_vepu_irq(int irq, void *dev_id)
+{
+	struct hantro_dev *vpu = dev_id;
+	enum vb2_buffer_state state;
+	u32 status;
+
+	status = vepu_read(vpu, VEPU_REG_INTERRUPT);
+	state = (status & VEPU_REG_INTERRUPT_FRAME_READY) ?
+		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	vepu_write(vpu, 0, VEPU_REG_INTERRUPT);
+	vepu_write(vpu, 0, VEPU_REG_AXI_CTRL);
+
+	hantro_irq_done(vpu, state);
+
+	return IRQ_HANDLED;
+}
+
+static int rockchip_vpu_hw_init(struct hantro_dev *vpu)
+{
+	/* Bump ACLK to max. possible freq. to improve performance. */
+	clk_set_rate(vpu->clocks[0].clk, RK3288_ACLK_MAX_FREQ);
+	return 0;
+}
+
+static void rockchip_vpu1_enc_reset(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	vepu_write(vpu, H1_REG_INTERRUPT_DIS_BIT, H1_REG_INTERRUPT);
+	vepu_write(vpu, 0, H1_REG_ENC_CTRL);
+	vepu_write(vpu, 0, H1_REG_AXI_CTRL);
+}
+
+static void rockchip_vpu2_dec_reset(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	vdpu_write(vpu, VDPU_REG_INTERRUPT_DEC_IRQ_DIS, VDPU_REG_INTERRUPT);
+	vdpu_write(vpu, 0, VDPU_REG_EN_FLAGS);
+	vdpu_write(vpu, 1, VDPU_REG_SOFT_RESET);
+}
+
+static void rockchip_vpu2_enc_reset(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	vepu_write(vpu, VEPU_REG_INTERRUPT_DIS_BIT, VEPU_REG_INTERRUPT);
+	vepu_write(vpu, 0, VEPU_REG_ENCODE_START);
+	vepu_write(vpu, 0, VEPU_REG_AXI_CTRL);
+}
+
+/*
+ * Supported codec ops.
+ */
+
+static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
+	[HANTRO_MODE_JPEG_ENC] = {
+		.run = hantro_h1_jpeg_enc_run,
+		.reset = rockchip_vpu1_enc_reset,
+		.init = hantro_jpeg_enc_init,
+		.done = hantro_jpeg_enc_done,
+		.exit = hantro_jpeg_enc_exit,
+	},
+	[HANTRO_MODE_H264_DEC] = {
+		.run = hantro_g1_h264_dec_run,
+		.reset = hantro_g1_reset,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
+	[HANTRO_MODE_MPEG2_DEC] = {
+		.run = hantro_g1_mpeg2_dec_run,
+		.reset = hantro_g1_reset,
+		.init = hantro_mpeg2_dec_init,
+		.exit = hantro_mpeg2_dec_exit,
+	},
+	[HANTRO_MODE_VP8_DEC] = {
+		.run = hantro_g1_vp8_dec_run,
+		.reset = hantro_g1_reset,
+		.init = hantro_vp8_dec_init,
+		.exit = hantro_vp8_dec_exit,
+	},
+};
+
+static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
+	[HANTRO_MODE_JPEG_ENC] = {
+		.run = rockchip_vpu2_jpeg_enc_run,
+		.reset = rockchip_vpu2_enc_reset,
+		.init = hantro_jpeg_enc_init,
+		.exit = hantro_jpeg_enc_exit,
+	},
+	[HANTRO_MODE_MPEG2_DEC] = {
+		.run = rockchip_vpu2_mpeg2_dec_run,
+		.reset = rockchip_vpu2_dec_reset,
+		.init = hantro_mpeg2_dec_init,
+		.exit = hantro_mpeg2_dec_exit,
+	},
+	[HANTRO_MODE_VP8_DEC] = {
+		.run = rockchip_vpu2_vp8_dec_run,
+		.reset = rockchip_vpu2_dec_reset,
+		.init = hantro_vp8_dec_init,
+		.exit = hantro_vp8_dec_exit,
+	},
+};
+
+/*
+ * VPU variant.
+ */
+
+static const struct hantro_irq rockchip_vpu1_irqs[] = {
+	{ "vepu", rockchip_vpu1_vepu_irq },
+	{ "vdpu", hantro_g1_irq },
+};
+
+static const struct hantro_irq rockchip_vdpu2_irqs[] = {
+	{ "vdpu", rockchip_vpu2_vdpu_irq },
+};
+
+static const struct hantro_irq rockchip_vpu2_irqs[] = {
+	{ "vepu", rockchip_vpu2_vepu_irq },
+	{ "vdpu", rockchip_vpu2_vdpu_irq },
+};
+
+static const char * const rockchip_vpu_clk_names[] = {
+	"aclk", "hclk"
+};
+
+const struct hantro_variant rk3288_vpu_variant = {
+	.enc_offset = 0x0,
+	.enc_fmts = rockchip_vpu_enc_fmts,
+	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.dec_offset = 0x400,
+	.dec_fmts = rk3288_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3288_vpu_dec_fmts),
+	.postproc_fmts = rockchip_vpu1_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(rockchip_vpu1_postproc_fmts),
+	.postproc_regs = &hantro_g1_postproc_regs,
+	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
+		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
+	.codec_ops = rk3288_vpu_codec_ops,
+	.irqs = rockchip_vpu1_irqs,
+	.num_irqs = ARRAY_SIZE(rockchip_vpu1_irqs),
+	.init = rockchip_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
+};
+
+const struct hantro_variant rk3328_vpu_variant = {
+	.dec_offset = 0x400,
+	.dec_fmts = rk3399_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER,
+	.codec_ops = rk3399_vpu_codec_ops,
+	.irqs = rockchip_vdpu2_irqs,
+	.num_irqs = ARRAY_SIZE(rockchip_vdpu2_irqs),
+	.init = rockchip_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names),
+};
+
+const struct hantro_variant rk3399_vpu_variant = {
+	.enc_offset = 0x0,
+	.enc_fmts = rockchip_vpu_enc_fmts,
+	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.dec_offset = 0x400,
+	.dec_fmts = rk3399_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
+	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
+		 HANTRO_VP8_DECODER,
+	.codec_ops = rk3399_vpu_codec_ops,
+	.irqs = rockchip_vpu2_irqs,
+	.num_irqs = ARRAY_SIZE(rockchip_vpu2_irqs),
+	.init = rockchip_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
+};
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
