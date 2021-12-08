Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9AB7C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClbONXdjeR8f6qW4c1OGxDqUxWqKhI6lsGIok9nbjgE=; b=D5m+lvA8heL7yq
	9TctUpfcDwwyxWVJob7ucx/n6dACsZBwylVsiNxQwKAOt99/+sJBdVxG8ohv0/KW3xpbEGdvZHZxJ
	wDOzohD5/OsugdsVhyW9YyTFFE+1lM0nWOdUsIBzqwBwbfry4x0GrYb8yxOzSya2Squk8IRpWQojM
	TC1n5KdPfXJgyfnkW4u+ThkI91oo3IGU4iK0CigosaOW0P7HBmPSZHrmeAMkAG5reXz2826YgwuYk
	XPF9TZue3T9a6cEz7cFpHduneTs+HIK2YOn3jgCZovtzphBuO3Nd87pM7JGL0G7DimQY2mlMLqdhY
	7yxbpnHxmAhq+pqfqi+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5n8-00ES9F-DH; Wed, 08 Dec 2021 22:52:02 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5ly-00ERUZ-Fd; Wed, 08 Dec 2021 22:50:52 +0000
Received: by mail-il1-x133.google.com with SMTP id m5so3619421ilh.11;
 Wed, 08 Dec 2021 14:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wvS3UGrOogeUUn4VjGc89RWv8ubIZ2yVi7i1G8rm0mc=;
 b=JwQ2iJSj3zQlHsFDi+CVabtqOXc0n+yFPhWXg2UkFxIuEEMO4XDoxDFVgMjdJTjAPH
 K3cj444X39CjzbdFr2XUi7KJ7d5jla30Ljy31RUnWKzgJzLV5fqIendvKkWJPYVtnQUD
 oQbhgnPd2UIAyxR1O5I8zmwM7DKnkMVH03ebJy7RSuQ92rbyIuXZnfvc8/D5rAMGGAbS
 Aoyt3oQyBKvBrkfblQ9ZlljyiMg/RPlN/1b5utnTHjK2wpccdJw+npxNz4whMQiCxZ60
 p+LgHSkVbX9rp8JmpJWXY4UAbb4JzagpDpwv8JDA4Et6vN73B8H1LbjlBzy1s2sGvKuA
 OIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wvS3UGrOogeUUn4VjGc89RWv8ubIZ2yVi7i1G8rm0mc=;
 b=MR8PK7FSBICBkDuOu7D0w1o9Hdx95X40BQUcoV60g8Kd3pUxNolnl/3IImwMXIouxq
 WbjsMJWLtY6xBpDkZATeRq5KIxBROyzYaAVAiu9P/D7yi6yQZ2WYT1Hreyx3isoPPn2F
 e8Y70JjpzaniHFrXKnyYPFZCvHzE3wx5DWty+m74wuKlCYGxUK8VPcDo8IoeYRDlYEyi
 fnL8d3QaT2Ls6oAWPcF0nI8KR6tZmOhWxjoeP+30D7mQUxPma/p/P02+k5gCmG4UJOt0
 657F/jnWRrPhkP4Vjqg9XXm8aclJBGjsZC/nkRGWur5UpbGl/hX8Uyohme/1ReCkZoXr
 Z9yg==
X-Gm-Message-State: AOAM5315DSk05dLF3Pr5yv216pw8bjPPi6iW0R6cb2JoiCaomzGXQvoX
 PGWRNX4hvVzbGuMlXAb8YQc=
X-Google-Smtp-Source: ABdhPJx6lNM3cLMx9NDakus/nzKDTRPirZmim2DDmbKtWHP7RyR9izTUN8LpyAt/QaPk13E+nVH45g==
X-Received: by 2002:a05:6e02:20ca:: with SMTP id
 10mr10626079ilq.246.1639003849520; 
 Wed, 08 Dec 2021 14:50:49 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:49 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
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
Subject: [PATCH 05/10] media: hantro: Allow i.MX8MQ G1 and G2 to run
 independently
Date: Wed,  8 Dec 2021 16:50:24 -0600
Message-Id: <20211208225030.2018923-6-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145050_558800_FB266B14 
X-CRM114-Status: GOOD (  15.03  )
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
---
 drivers/staging/media/hantro/hantro_drv.c   |  1 +
 drivers/staging/media/hantro/hantro_hw.h    |  1 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 56 ++++++++++++++++-----
 3 files changed, 45 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ab2467998d29..e7afda388ee5 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -609,6 +609,7 @@ static const struct of_device_id of_hantro_match[] = {
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
+	{ .compatible = "nxp,imx8mq-vpu-g1", .data = &imx8mq_vpu_g1_variant },
 	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_SAMA5D4
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index cff817ca8d22..96b14b43a4af 100644
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
index 1a43f6fceef9..e0af4b93d3c6 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -223,13 +223,6 @@ static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
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
@@ -255,17 +248,33 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
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
@@ -285,6 +294,10 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
 
 static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
 static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
+static const char * const imx8mq_g1_clk_names[] = { "g1" };
+static const char * const imx8mq_g1_reg_names[] = { "g1" };
+static const char * const imx8mq_g2_clk_names[] = { "g2" };
+static const char * const imx8mq_g2_reg_names[] = { "g2" };
 
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
@@ -305,6 +318,23 @@ const struct hantro_variant imx8mq_vpu_variant = {
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
+	.reg_names = imx8mq_g1_reg_names,
+	.num_regs = ARRAY_SIZE(imx8mq_g1_reg_names),
+};
+
 const struct hantro_variant imx8mq_vpu_g2_variant = {
 	.dec_offset = 0x0,
 	.dec_fmts = imx8m_vpu_g2_dec_fmts,
@@ -314,10 +344,10 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
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
+	.reg_names = imx8mq_g2_reg_names,
+	.num_regs = ARRAY_SIZE(imx8mq_g2_reg_names),
 };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
