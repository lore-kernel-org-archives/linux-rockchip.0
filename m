Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36ABC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:39:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 823D961165
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:39:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 823D961165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf7A4w1YUTEBcY1+gXn6/lgZU2fuzxz93IhsvaQ30+o=; b=UvKdxbiXFs/0by
	NwWCKlPjyGfwNpODdAcC56Ph3N0spcO2ieVWCPw71r+KrCFwaOm3J9cXQEL4A15JqpqKYRi8lOeMZ
	q/qX8Hrll8jM0yzq25tqPlGh2H62kv+gA5iRuKHCP/Z/mBAEkP3gzYFclerM3MGXjJELdEt2ImQX4
	uvGqH424J7vxzknbojzMrxu6eRYeWdYvgHDKzHYhAavhV+5cyYD/ih3iOfUFrnsZ8wfP08FkFFbON
	00rMMwaL/FjMzqmVAwOPJkT9vzsGAQS0ZE5JBnxvAWqHENn/2IIWugxO0LeLD4ipWCRjHEaJt1R4y
	KPJohK7kOMbatuTTwNeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjQb4-00DXbt-Aw; Sat, 06 Nov 2021 18:39:22 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjQaJ-00DXBp-BH; Sat, 06 Nov 2021 18:38:37 +0000
Received: by mail-io1-xd2b.google.com with SMTP id y73so14521936iof.4;
 Sat, 06 Nov 2021 11:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9uOWA4XNEMElIEM9Kfp+ZPqTotIf6vEqC61Tdw/xBpE=;
 b=Pus20zz/X6++gD509pWyYdbfUmr81QOKQz1Q5fFnd2EZofPuPGEtDbJEc3lCgSklGt
 WfM8lDXQngNN2RktT95FfCGYdWbZ2VwwI0EFPILec87+6aAUwf/t2QLPUIR3i1rzUbau
 idtTAsD/orfbgN9uaE4a6eqnfXMJR3wad5KvVdz9ng+K2ybAl3xueZsDI1xznYuajsqn
 nZPglItdqauSYBKee21RcWgItrC5zIaLP3cqalxd6B+kJ+QaXCHFJ4C/lXO7kaDhOcpW
 RywHZMQFNxsCLezbhJ66a7xx70EbLdKOZEuMjocON+btXqG73PI9eoaP5jop8fqnQiZD
 UzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9uOWA4XNEMElIEM9Kfp+ZPqTotIf6vEqC61Tdw/xBpE=;
 b=gc2M3awgN2BFR/KnDbnDOJ9MjS3LZ3xg3jpEwMEKrJMsqZTB7lML812IXeC3xrIFuM
 Wa0dnr0vfhwVoDkHKUQlD59zV0Xcoa8hYKSbWs0xw9bPpHdNa+UeAEfJyY8Z6srst0+/
 qFLiRyOuiIyvIgxGJZU/dZ6zow+0j8/v0pjEdAQFZ83+poQ0eO++1acUIYos8vn+s5yw
 smfy7KWjXFH1FB8gBjJVzQhJq0bzYXLO2Vc35qGU7UaErbo2n0fSE49XYCbLPTsI5WrJ
 Yple6aLfejubT69EAty7c6KnzHsVLT6NY2ie0DQgXk6oCDXz072iTN/7U01exHMjmrcZ
 V4vQ==
X-Gm-Message-State: AOAM531U7qyTJw3kTSlQFBzK/KK7NXNAqTmuKVdfrgWlD27BAr3n1nO2
 jGgwLt4BOXhrJhgNacRSw3U=
X-Google-Smtp-Source: ABdhPJx9cNAGR/phR0zJ7GVHTpSM+DtUzDDfczCzUj9OBEbbfFyRq2FpTeFqpFiHoBflFKe6JGUetg==
X-Received: by 2002:a05:6602:2b83:: with SMTP id
 r3mr5296521iov.8.1636223914712; 
 Sat, 06 Nov 2021 11:38:34 -0700 (PDT)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:64ba:1c0f:6d36:c11d])
 by smtp.gmail.com with ESMTPSA id o10sm7174077ilu.49.2021.11.06.11.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Nov 2021 11:38:34 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: tharvey@gateworks.com, frieder.schrempf@kontron.de, marek.vasut@gmail.com,
 jagan@amarulasolutions.com, aford@beaconembedded.com,
 cstevens@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Lucas Stach <l.stach@pengutronix.de>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alice Guo <alice.guo@nxp.com>,
 Peng Fan <peng.fan@nxp.com>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
Subject: [RFC 4/5] media: hantro: Add H1 encoder support on i.MX8M Mini
Date: Sat,  6 Nov 2021 13:38:00 -0500
Message-Id: <20211106183802.893285-5-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211106183802.893285-1-aford173@gmail.com>
References: <20211106183802.893285-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_113835_427256_D1F5D1F6 
X-CRM114-Status: GOOD (  16.55  )
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

The i.MX8M Mini has supports the Hantro H1 encoder, so
enable it using the same supported formats as other devices
using the H1 encoder.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c   |  1 +
 drivers/staging/media/hantro/hantro_hw.h    |  1 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 83 +++++++++++++++++++++
 3 files changed, 85 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 2aa1c520be50..29e8dc52c2e4 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -594,6 +594,7 @@ static const struct of_device_id of_hantro_match[] = {
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mm-vpu", .data = &imx8mm_vpu_variant, },
 	{ .compatible = "nxp,imx8mm-vpu-g2", .data = &imx8mm_vpu_g2_variant },
+	{ .compatible = "nxp,imx8mm-vpu-h1", .data = &imx8mm_vpu_h1_variant },
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
 	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
 #endif
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index c276ecd57066..9f6ae5bf13ee 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -212,6 +212,7 @@ enum hantro_enc_fmt {
 };
 
 extern const struct hantro_variant imx8mm_vpu_g2_variant;
+extern const struct hantro_variant imx8mm_vpu_h1_variant;
 extern const struct hantro_variant imx8mm_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index c819609d14d1..69760f88efa5 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -12,6 +12,7 @@
 #include "hantro_jpeg.h"
 #include "hantro_g1_regs.h"
 #include "hantro_g2_regs.h"
+#include "hantro_h1_regs.h"
 
 #define CTRL_SOFT_RESET		0x00
 #define RESET_G1		BIT(1)
@@ -151,6 +152,43 @@ static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 	},
 };
 
+static const struct hantro_fmt imx8m_vpu_h1_enc_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_YUV420M,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_YUV420P,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_NV12M,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_YUV420SP,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_YUYV,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_YUYV422,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_UYVY,
+		.codec_mode = HANTRO_MODE_NONE,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_UYVY422,
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
 static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
 {
 	struct hantro_dev *vpu = dev_id;
@@ -187,6 +225,24 @@ static irqreturn_t imx8m_vpu_g2_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static irqreturn_t imx8m_vpu_h1_irq(int irq, void *dev_id)
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
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
 	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
@@ -268,6 +324,15 @@ static const struct hantro_codec_ops imx8mm_vpu_g2_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops imx8mm_vpu_h1_codec_ops[] = {
+	[HANTRO_MODE_JPEG_ENC] = {
+		.run = hantro_h1_jpeg_enc_run,
+		.init = hantro_jpeg_enc_init,
+		.done = hantro_jpeg_enc_done,
+		.exit = hantro_jpeg_enc_exit,
+	},
+};
+
 /*
  * VPU variants.
  */
@@ -280,6 +345,10 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
 	{ "g2", imx8m_vpu_g2_irq },
 };
 
+static const struct hantro_irq imx8mq_h1_irqs[] = {
+	{ "h1", imx8m_vpu_h1_irq },
+};
+
 static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
 static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
 
@@ -287,6 +356,8 @@ static const char * const imx8mm_g1_clk_names[] = { "g1", "bus" };
 static const char * const imx8mm_g1_reg_names[] = { "g1" };
 static const char * const imx8mm_g2_clk_names[] = { "g2", "bus" };
 static const char * const imx8mm_g2_reg_names[] = { "g2" };
+static const char * const imx8mm_h1_clk_names[] = { "h1", "bus" };
+static const char * const imx8mm_h1_reg_names[] = { "h1" };
 
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
@@ -349,3 +420,15 @@ const struct hantro_variant imx8mm_vpu_g2_variant = {
 	.clk_names = imx8mm_g2_clk_names,
 	.num_clocks = ARRAY_SIZE(imx8mm_g2_reg_names),
 };
+
+const struct hantro_variant imx8mm_vpu_h1_variant = {
+	.enc_offset = 0x0,
+	.enc_fmts = imx8m_vpu_h1_enc_fmts,
+	.num_enc_fmts = ARRAY_SIZE(imx8m_vpu_h1_enc_fmts),
+	.codec = HANTRO_JPEG_ENCODER,
+	.codec_ops = imx8mm_vpu_h1_codec_ops,
+	.irqs = imx8mq_h1_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_h1_irqs),
+	.clk_names = imx8mm_h1_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mm_h1_clk_names)
+};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
