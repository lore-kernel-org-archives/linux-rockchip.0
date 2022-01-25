Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39513C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Is2tMy9cZjWIdH+HJfTs30En/AuPhFFypWZa+g1ONTQ=; b=en2gDKgenfsy4g
	vD1XvDelj2mr2Zvnq7WWNWrB4PYPjTud9H+ZB27AwQixriuMAmPGBSblERLNlluSPd1Lqbu72j2Do
	ONkQO5EJhPJqaPEJBq66728YleUO4k17SkITL64fi49A6/DRypTUS9NKMk3WjQ/kxVNQEC1UGnHHv
	5sV0qkllUo3lWl/5ru5G6NGAPUXN19ZJU82vt2q/uJ0ADdMdFJjt4HaJIssDvmPEz3W+jY/lbEZc/
	/83qd33IWDG3bRn/1epDiluwya9teQ7yZjU4xf8oazELEfn4UCUjAmhvuK/xex4mRtF3letVFZgPe
	89cThOT7S3NwurbYADqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPUl-008x7O-Tp; Tue, 25 Jan 2022 17:20:39 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPN1-008tMw-1i; Tue, 25 Jan 2022 17:12:41 +0000
Received: by mail-io1-xd2b.google.com with SMTP id d188so10162470iof.7;
 Tue, 25 Jan 2022 09:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yc6aFqeGVjrDgibETE7XV7liy2gov0XilQoMWLVZk2c=;
 b=ogFHHD6vvP3NcsncmVkmBenXPRiHVsOizsivGNRyQwQDs07TPv/sNsLpCxHzqOa/Tf
 Wwvgf3ufP9449SHnmX3bc6bIgYv3RaLCgYB0j+0naOuau4+RDBzQTQ+UCrGwu0StfBm9
 NV8WE+TODIH6w8TQ/zTox7GIrPmB5IPkp1yIjjQY/11rFHsQNh4kbX1qArNeFsV7+INj
 Gi0kWCds6G6FjxMq/l5DZ3N+qlaDSaIDEGNv7vid6Cgwx9X4QmFbQnsfJ0tO3Xw1/b8H
 pzDNVs/eUEnvHEzf8sbMq0uMwr6QK11Cb77UD0/FwtLeI3lCwkuUkJJnw/39IoRj9WmM
 GFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yc6aFqeGVjrDgibETE7XV7liy2gov0XilQoMWLVZk2c=;
 b=LpXKApDOwSZi3mT73h4Dh7QKHTltTi4KibCptFPu6fujCwm9NTXDxaIcuEAzeVN3TR
 +wzLQMB/xvzdswtDBRAAia3m0v7ZxhvkKUXx8EGCJPj3vpw1kEC2+974jj0aKmC/z6Qv
 CSlvHw/4XLoobRw/zGnpS/sdhAfUiI94BlhGkh5gymQkd78OUzWfVn5z65w7Qkgnb05v
 AAyAbap+lK6SSgaRPdxY1RS3CzAzbGO0Bv3D2nKaKMehVrtYNAZz4GGppDdpAqc0FJB3
 sk6aNntDIka6SImZwZA3vXqfKYZGixr+/ReUsP65xYo0oRG5cx3+J3CMTJ7CZsDYsup3
 1dcw==
X-Gm-Message-State: AOAM530/11g9htn+9AmXgSMIV8VhoxQu3A8xX5x0OwiOPElJWyvGyWxI
 zNjRBKlX8V4TxdGGNyFpDN4=
X-Google-Smtp-Source: ABdhPJzxfWdkcgnDW75Q4qgaS+lK6ZBZPWrINxs7Hml25E3yL2ivfMd7TDvhbeGLYx3+XH2d7YXlLQ==
X-Received: by 2002:a5d:8f86:: with SMTP id l6mr3028325iol.138.1643130757627; 
 Tue, 25 Jan 2022 09:12:37 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:36 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V4 06/11] media: hantro: Allow i.MX8MQ G1 and G2 to run
 independently
Date: Tue, 25 Jan 2022 11:11:23 -0600
Message-Id: <20220125171129.472775-7-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091239_145131_B9CAEDFE 
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

The VPU in the i.MX8MQ is really the combination of Hantro G1 and
Hantro G2. With the updated vpu-blk-ctrl, the power domains system
can enable and disable them separately as well as pull them out of
reset. This simplifies the code and lets them run independently
while still retaining backwards compatibility with older device
trees for those using G1.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 6a51f39dde56..f56e8b3efada 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -616,6 +616,7 @@ static const struct of_device_id of_hantro_match[] = {
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
+	{ .compatible = "nxp,imx8mq-vpu-g1", .data = &imx8mq_vpu_g1_variant },
 	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_SAMA5D4
@@ -890,6 +891,15 @@ static int hantro_probe(struct platform_device *pdev)
 	match = of_match_node(of_hantro_match, pdev->dev.of_node);
 	vpu->variant = match->data;
 
+	/*
+	 * Support for nxp,imx8mq-vpu is kept for backwards compatibility
+	 * but it's deprecated. Please update your DTS file to use
+	 * nxp,imx8mq-vpu-g1 or nxp,imx8mq-vpu-g2 instead.
+	 */
+	if (of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu"))
+		dev_warn(&pdev->dev, "%s compatible is deprecated\n",
+			 match->compatible);
+
 	INIT_DELAYED_WORK(&vpu->watchdog_work, hantro_watchdog);
 
 	vpu->clocks = devm_kcalloc(&pdev->dev, vpu->variant->num_clocks,
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 4a19ae8940b9..f0bd2ffe290b 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -299,6 +299,7 @@ enum hantro_enc_fmt {
 	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
 };
 
+extern const struct hantro_variant imx8mq_vpu_g1_variant;
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
 extern const struct hantro_variant px30_vpu_variant;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index f5991b8e553a..849ea7122d47 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -205,13 +205,6 @@ static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
 	imx8m_soft_reset(vpu, RESET_G1);
 }
 
-static void imx8m_vpu_g2_reset(struct hantro_ctx *ctx)
-{
-	struct hantro_dev *vpu = ctx->dev;
-
-	imx8m_soft_reset(vpu, RESET_G2);
-}
-
 /*
  * Supported codec ops.
  */
@@ -237,17 +230,33 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops imx8mq_vpu_g1_codec_ops[] = {
+	[HANTRO_MODE_MPEG2_DEC] = {
+		.run = hantro_g1_mpeg2_dec_run,
+		.init = hantro_mpeg2_dec_init,
+		.exit = hantro_mpeg2_dec_exit,
+	},
+	[HANTRO_MODE_VP8_DEC] = {
+		.run = hantro_g1_vp8_dec_run,
+		.init = hantro_vp8_dec_init,
+		.exit = hantro_vp8_dec_exit,
+	},
+	[HANTRO_MODE_H264_DEC] = {
+		.run = hantro_g1_h264_dec_run,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
+};
+
 static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
 	[HANTRO_MODE_HEVC_DEC] = {
 		.run = hantro_g2_hevc_dec_run,
-		.reset = imx8m_vpu_g2_reset,
 		.init = hantro_hevc_dec_init,
 		.exit = hantro_hevc_dec_exit,
 	},
 	[HANTRO_MODE_VP9_DEC] = {
 		.run = hantro_g2_vp9_dec_run,
 		.done = hantro_g2_vp9_dec_done,
-		.reset = imx8m_vpu_g2_reset,
 		.init = hantro_vp9_dec_init,
 		.exit = hantro_vp9_dec_exit,
 	},
@@ -267,6 +276,8 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
 
 static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
 static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
+static const char * const imx8mq_g1_clk_names[] = { "g1" };
+static const char * const imx8mq_g2_clk_names[] = { "g2" };
 
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
@@ -287,6 +298,21 @@ const struct hantro_variant imx8mq_vpu_variant = {
 	.num_regs = ARRAY_SIZE(imx8mq_reg_names)
 };
 
+const struct hantro_variant imx8mq_vpu_g1_variant = {
+	.dec_fmts = imx8m_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
+	.postproc_fmts = imx8m_vpu_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(imx8m_vpu_postproc_fmts),
+	.postproc_ops = &hantro_g1_postproc_ops,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
+	.codec_ops = imx8mq_vpu_g1_codec_ops,
+	.irqs = imx8mq_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
+	.clk_names = imx8mq_g1_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mq_g1_clk_names),
+};
+
 const struct hantro_variant imx8mq_vpu_g2_variant = {
 	.dec_offset = 0x0,
 	.dec_fmts = imx8m_vpu_g2_dec_fmts,
@@ -296,10 +322,8 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
 	.postproc_ops = &hantro_g2_postproc_ops,
 	.codec = HANTRO_HEVC_DECODER | HANTRO_VP9_DECODER,
 	.codec_ops = imx8mq_vpu_g2_codec_ops,
-	.init = imx8mq_vpu_hw_init,
-	.runtime_resume = imx8mq_runtime_resume,
 	.irqs = imx8mq_g2_irqs,
 	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
-	.clk_names = imx8mq_clk_names,
-	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
+	.clk_names = imx8mq_g2_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mq_g2_clk_names),
 };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
