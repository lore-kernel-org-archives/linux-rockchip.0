Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14DDC4708A
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:06:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6391B611F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:06:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6391B611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGSyI3G4tVv0lOuqdilgVSi0LBvK14dhR8cfLURQ4yc=; b=4GUxLtC5JwrTgL
	BdlFOKawJUjoEGro82DTkzq65r3AmHb6As8HDj34xc4Mx/BuSs2dzUVetN7BqXoXbqA3CczsfIlEE
	0EU1yyjycJ+oR25QfB/vKoxxgMF4LNjUXVAjSbj41gneUBoOI9dGr4ckgweFLHqb1hqnPGszO+JWB
	5YiMEcOBSzJ4wkKdrk/Gc+Ir5PbHDljrBkKM6k54qtd49GaNkRyh2zgStIh4Szh7rPnkgQm0U2NPC
	c8bpnJ2gkX9h5m0Gjbu4LXd80GudWWHghdxIIllhGa8vsh1loCZHjdkOqjxuUWvqimTssRiChdb5x
	XXgmJC4Z6Oqll16OSw/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJSK-007vAH-TJ; Thu, 27 May 2021 17:06:00 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICK-007KLf-VP; Thu, 27 May 2021 15:45:29 +0000
Received: by mail-ej1-x62e.google.com with SMTP id lz27so771896ejb.11;
 Thu, 27 May 2021 08:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4BxAfAVfvEBGfqFMLJLGUh33HAqTENKKiWcYbEbMilU=;
 b=l0UI4d49AHkaZqK0auu7yp6Sqy3qt0X5srVRf9UKLXefPfT9mNol/lL+e6EKLRiz2e
 0EGc9syIl8uqpH7vxZopyCclwSdBmqwnz6/QV6+Hx34rK+xn+XhRWndjut9TD6TLvWez
 1omnQ3oJY+Gbc8Q15w2mvb1b9QI9S04JU44txpTXky0mk2F7wl++b4N9y4WVHB4mnk6J
 lp3Bx28CZlng1U7aEamgvP1YxaB0EdxjwBfNN6kzKHrTIuEeCWnqHZLAL1KucVZEXM9E
 dxxDxoYFLieHPq6WDQB/iH3wFnSvRNxgrMeLtogolpNrlLtflrMRR5Nc84BB5XOwmOhi
 es1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4BxAfAVfvEBGfqFMLJLGUh33HAqTENKKiWcYbEbMilU=;
 b=Gwzh9/0mMEGLx80hr8iG9N1rE7uGp5jNxSsZuqPQu+ysRBZZVjCJx/JrbIl4/iM4+5
 2Lvn8kBnq8qTxuS375klCVc9Gl1qyVGVZrOC6HsQoD24wgrTZQ58pu05YdjP46CV+nuv
 sfswBCyKjyXAPuYPVd3PZUivG2ZczSXPDq/4uQ+Ett7MjLBSsWLt3xQO7idQG4qyxyXb
 HMueUH0HwO5WbQNWw761T6r5Ty2dqxVUr4hLWhBubOT/5y5sbukl0kpPH331oiCdDR1q
 aBgN0eVv/CcrYEVF/R0MEcZU73MMlIT3aD3ZAOyYu5MElfRItodbmAQB3mRTsvbyvWsR
 EHCQ==
X-Gm-Message-State: AOAM531aITN2cWdZjJz4VcxMZj7ipvlDV/eWabgvVegNctcmr8LJam+l
 HtBjkd3n1dKv1t3snmJIJU3ZYcbYlMtj
X-Google-Smtp-Source: ABdhPJwHC58h5KNBcoQtzJtxDXtNcAPaYBo91Q3NM2aTFy9BEG9UnGS/uPDisA6+vhR63CFfDVHn/A==
X-Received: by 2002:a17:906:4341:: with SMTP id
 z1mr4548257ejm.422.1622130323377; 
 Thu, 27 May 2021 08:45:23 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:23 -0700 (PDT)
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
Subject: [PATCH v2 06/12] media: hantro: add support for Rockchip RK3066
Date: Thu, 27 May 2021 17:44:49 +0200
Message-Id: <20210527154455.358869-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084525_084590_E91D1255 
X-CRM114-Status: GOOD (  23.44  )
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

RK3066's VPU IP block is the predecessor from what RK3288 has.
The hardware differences are:
  - supports decoding frame sizes up to 1920x1088 only
  - doesn't have the 'G1_REG_SOFT_RESET' register
    (requires another .reset callback for hantro_codec_ops,
     since writing this register will result in non-working
     IP block)
  - has one ACLK/HCLK per vdpu/vepu
  - ACLKs can be clocked up to 300 MHz only
  - no MMU
    (no changes required: CMA will be transparently used)

Add a new RK3066 variant which reflect this differences. This variant
can be used for RK3188 as well.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - fixed wrong index in clk array for vepu clock in rk3066_vpu_hw_init
 - added comment, why this variant can't be splitted in g1/h1 variants

 drivers/staging/media/hantro/hantro_drv.c     |   1 +
 drivers/staging/media/hantro/hantro_hw.h      |   1 +
 .../staging/media/hantro/rockchip_vpu_hw.c    | 121 ++++++++++++++++++
 3 files changed, 123 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 2f7035a14804..ae6d970b7536 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -486,6 +486,7 @@ static const struct v4l2_file_operations hantro_fops = {
 
 static const struct of_device_id of_hantro_match[] = {
 #ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
+	{ .compatible = "rockchip,rk3066-vpu", .data = &rk3066_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 9798c99b0e25..0da8da753447 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -161,6 +161,7 @@ enum hantro_enc_fmt {
 };
 
 extern const struct hantro_variant imx8mq_vpu_variant;
+extern const struct hantro_variant rk3066_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3399_vpu_variant;
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index 175d0c5dfdbe..deb263de8fec 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -10,9 +10,11 @@
 
 #include "hantro.h"
 #include "hantro_jpeg.h"
+#include "hantro_g1_regs.h"
 #include "hantro_h1_regs.h"
 #include "rockchip_vpu2_regs.h"
 
+#define RK3066_ACLK_MAX_FREQ (300 * 1000 * 1000)
 #define RK3288_ACLK_MAX_FREQ (400 * 1000 * 1000)
 
 /*
@@ -63,6 +65,52 @@ static const struct hantro_fmt rockchip_vpu1_postproc_fmts[] = {
 	},
 };
 
+static const struct hantro_fmt rk3066_vpu_dec_fmts[] = {
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
+			.max_width = 1920,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 1088,
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
+			.max_width = 1920,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 1088,
+			.step_height = MB_DIM,
+		},
+	},
+};
+
 static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12,
@@ -196,6 +244,14 @@ static irqreturn_t rockchip_vpu2_vepu_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static int rk3066_vpu_hw_init(struct hantro_dev *vpu)
+{
+	/* Bump ACLKs to max. possible freq. to improve performance. */
+	clk_set_rate(vpu->clocks[0].clk, RK3066_ACLK_MAX_FREQ);
+	clk_set_rate(vpu->clocks[2].clk, RK3066_ACLK_MAX_FREQ);
+	return 0;
+}
+
 static int rockchip_vpu_hw_init(struct hantro_dev *vpu)
 {
 	/* Bump ACLK to max. possible freq. to improve performance. */
@@ -203,6 +259,14 @@ static int rockchip_vpu_hw_init(struct hantro_dev *vpu)
 	return 0;
 }
 
+static void rk3066_vpu_dec_reset(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_IRQ_DIS, G1_REG_INTERRUPT);
+	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
+}
+
 static void rockchip_vpu1_enc_reset(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
@@ -233,6 +297,33 @@ static void rockchip_vpu2_enc_reset(struct hantro_ctx *ctx)
 /*
  * Supported codec ops.
  */
+static const struct hantro_codec_ops rk3066_vpu_codec_ops[] = {
+	[HANTRO_MODE_JPEG_ENC] = {
+		.run = hantro_h1_jpeg_enc_run,
+		.reset = rockchip_vpu1_enc_reset,
+		.init = hantro_jpeg_enc_init,
+		.done = hantro_jpeg_enc_done,
+		.exit = hantro_jpeg_enc_exit,
+	},
+	[HANTRO_MODE_H264_DEC] = {
+		.run = hantro_g1_h264_dec_run,
+		.reset = rk3066_vpu_dec_reset,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
+	[HANTRO_MODE_MPEG2_DEC] = {
+		.run = hantro_g1_mpeg2_dec_run,
+		.reset = rk3066_vpu_dec_reset,
+		.init = hantro_mpeg2_dec_init,
+		.exit = hantro_mpeg2_dec_exit,
+	},
+	[HANTRO_MODE_VP8_DEC] = {
+		.run = hantro_g1_vp8_dec_run,
+		.reset = rk3066_vpu_dec_reset,
+		.init = hantro_vp8_dec_init,
+		.exit = hantro_vp8_dec_exit,
+	},
+};
 
 static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
 	[HANTRO_MODE_JPEG_ENC] = {
@@ -301,10 +392,40 @@ static const struct hantro_irq rockchip_vpu2_irqs[] = {
 	{ "vdpu", rockchip_vpu2_vdpu_irq },
 };
 
+static const char * const rk3066_clk_names[] = {
+	"aclk_vdpu", "hclk_vdpu",
+	"aclk_vepu", "hclk_vepu"
+};
+
 static const char * const rockchip_vpu_clk_names[] = {
 	"aclk", "hclk"
 };
 
+/*
+ * Despite this variant has separate clocks for decoder and encoder,
+ * it's still required to enable all four of them for either decoding
+ * or encoding and we can't split it in separate g1/h1 variants.
+ */
+const struct hantro_variant rk3066_vpu_variant = {
+	.enc_offset = 0x0,
+	.enc_fmts = rockchip_vpu_enc_fmts,
+	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.dec_offset = 0x400,
+	.dec_fmts = rk3066_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3066_vpu_dec_fmts),
+	.postproc_fmts = rockchip_vpu1_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(rockchip_vpu1_postproc_fmts),
+	.postproc_regs = &hantro_g1_postproc_regs,
+	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
+		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
+	.codec_ops = rk3066_vpu_codec_ops,
+	.irqs = rockchip_vpu1_irqs,
+	.num_irqs = ARRAY_SIZE(rockchip_vpu1_irqs),
+	.init = rk3066_vpu_hw_init,
+	.clk_names = rk3066_clk_names,
+	.num_clocks = ARRAY_SIZE(rk3066_clk_names)
+};
+
 const struct hantro_variant rk3288_vpu_variant = {
 	.enc_offset = 0x0,
 	.enc_fmts = rockchip_vpu_enc_fmts,
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
