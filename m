Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CAA8C43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C29E161026
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C29E161026
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QfJ/30opA5UH1xjLNve0YBxrlTdK723CqjRVdAvCPPs=; b=bcVEjVuImZM9cDNhOgeyArYRx
	Hr0RzQWxUkVtUCGAcA07BJy/kM5GN+4/EV/p+yl133lucJzYe3FDuBwzvEAGbQdjbERMCEvKAmuHJ
	O/ckGgoTLiDGsUnMOCqPZq6yjLgFJ//97v+MUmF4cQwJCMsFskhQZsTIkDlPKB5tTqRLECPaSnS1N
	E9W8Ok1Sk7piSAU5x2TNvWRUa0usrFPLBrNxeR50j3eipVTfOLqPhulUeHxR2hCnOsyGi9p1uo/Wq
	LV0H6nQnTfrUr4Lewkb/muQ1JQxxwyCAkygnUFktjj+tsZHhS/AvP6tztX08lfjT9idaP9EPdzxnp
	WBdzo2M0Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRekt-007CbN-AU; Wed, 31 Mar 2021 17:35:47 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekj-007CXV-8G
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:39 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 a132-20020a1c668a0000b029010f141fe7c2so1574201wmc.0
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mAneJlrkY4/IZLQNpt5ahOvEPFy19jWwGdcAjZr3nhE=;
 b=YmtZQ+LunBSbH82nppx0e1AHv/erPdAV4rYhHMfTZm5/5CB1E3qrRmqrE980tmzGNR
 wXzZjOHx2GUc+HKIElUWHVymFNmLAIF6i+kNbkOVhrYDrfmgoOwl8N99OtJg1/Y9Q8pu
 Tr8+IwMJudTRE3xQE+6S9s+psA2EwSL5m4CKNXrvZde05MYUxqbE7wO3Otlz0aXn43OV
 6tmMHep/dQZs8QfM+1Vc7j4vl9uVo4Gio2lCukWS1FcBezTZ5SUm8dqQ5xbdyMOSVWIo
 6JtQsaIMJO9CF5yWEaeWuiy92EivH7uyscpg4VxO5AKTPwlURVKbnDJF4XDa9Og89ZJu
 WSrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mAneJlrkY4/IZLQNpt5ahOvEPFy19jWwGdcAjZr3nhE=;
 b=E2uvSMq1jq7JS+V1IPotGH8cinIsPnhgXAx9SGsJY6Fct7BYlZNQfFKjUQFjkLBnHv
 SH6mikt32DJbZnyfndnoF7EnNAl2g3lLgwuyUM6vJ6UDYS2lSxtp/nhqXQALg2eGifGy
 GuetMJfbGuRAczau0xzNowEBPF1OyX1RYLLs6xxPQHb4zeg0PbPOML7rTVSQHciBTPsL
 L05ikACnOpEHHbFo5hj1rtXnnfm1T2U/VfGt3e4XL6dslPTT9wPnryQ7E09f5qFAayJL
 qG4JOwbnDdPeSn26ZY4iUOxZwGlP2yMIQM/H9QLaEZQb3bG8rN8DahThDseEySCRcLwr
 jhGw==
X-Gm-Message-State: AOAM533xt8psFjhDZYV3aoWXj0D4DKo6kUhFe/x1ph1AXCLhURlZyJdl
 9TqzslGGlFB4oq2A0RvWSb0=
X-Google-Smtp-Source: ABdhPJzlxACnhIRQ+AXKJJI1GcyjjGziE0R7NWal5rREJt1JXk2twRrZNDdgHHf0WjBbeLi2WZFJSw==
X-Received: by 2002:a05:600c:22cd:: with SMTP id
 13mr4137385wmg.90.1617212137004; 
 Wed, 31 Mar 2021 10:35:37 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:36 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 8/9] media: hantro: add initial SAMA5D4 support
Date: Wed, 31 Mar 2021 18:35:19 +0100
Message-Id: <20210331173520.184191-9-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183537_428983_4BB5728F 
X-CRM114-Status: GOOD (  20.28  )
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

From: Emil Velikov <emil.velikov@collabora.com>

The SoC features a Hantro G1 compatible video decoder, supporting the
MPEG-2, VP8 and H264 codecs with resolutions up-to 1280x720.

Post-processing core is also available on the SoC.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
v2
 - Split DT and defconfig changes to separate patches (Eze)
 - s/Atmel/Microchip/ (Nicolas)

v3
 - Drop the clk/irq names (RobH)
---
 drivers/staging/media/hantro/Kconfig          |  10 +-
 drivers/staging/media/hantro/Makefile         |   3 +
 drivers/staging/media/hantro/hantro_drv.c     |   3 +
 drivers/staging/media/hantro/hantro_hw.h      |   1 +
 .../staging/media/hantro/sama5d4_vdec_hw.c    | 117 ++++++++++++++++++
 5 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/media/hantro/sama5d4_vdec_hw.c

diff --git a/drivers/staging/media/hantro/Kconfig b/drivers/staging/media/hantro/Kconfig
index 5b6cf9f62b1a..20b1f6d7b69c 100644
--- a/drivers/staging/media/hantro/Kconfig
+++ b/drivers/staging/media/hantro/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 config VIDEO_HANTRO
 	tristate "Hantro VPU driver"
-	depends on ARCH_MXC || ARCH_ROCKCHIP || COMPILE_TEST
+	depends on ARCH_MXC || ARCH_ROCKCHIP || ARCH_AT91 || COMPILE_TEST
 	depends on VIDEO_DEV && VIDEO_V4L2
 	select MEDIA_CONTROLLER
 	select MEDIA_CONTROLLER_REQUEST_API
@@ -24,6 +24,14 @@ config VIDEO_HANTRO_IMX8M
 	help
 	  Enable support for i.MX8M SoCs.
 
+config VIDEO_HANTRO_SAMA5D4
+	bool "Hantro VDEC SAMA5D4 support"
+	depends on VIDEO_HANTRO
+	depends on ARCH_AT91 || COMPILE_TEST
+	default y
+	help
+	  Enable support for Microchip SAMA5D4 SoCs.
+
 config VIDEO_HANTRO_ROCKCHIP
 	bool "Hantro VPU Rockchip support"
 	depends on VIDEO_HANTRO
diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 3747a32799b2..f4b99901eeee 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -22,6 +22,9 @@ hantro-vpu-y += \
 hantro-vpu-$(CONFIG_VIDEO_HANTRO_IMX8M) += \
 		imx8m_vpu_hw.o
 
+hantro-vpu-$(CONFIG_VIDEO_HANTRO_SAMA5D4) += \
+		sama5d4_vdec_hw.o
+
 hantro-vpu-$(CONFIG_VIDEO_HANTRO_ROCKCHIP) += \
 		rk3288_vpu_hw.o \
 		rk3399_vpu_hw.o
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index d1294eb9cd07..74a3d9eab454 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -478,6 +478,9 @@ static const struct of_device_id of_hantro_match[] = {
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
+#endif
+#ifdef CONFIG_VIDEO_HANTRO_SAMA5D4
+	{ .compatible = "microchip,sama5d4-vdec", .data = &sama5d4_vdec_variant, },
 #endif
 	{ /* sentinel */ }
 };
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 73c71bb2320c..4d39da1d1581 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -152,6 +152,7 @@ extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
+extern const struct hantro_variant sama5d4_vdec_variant;
 
 extern const struct hantro_postproc_regs hantro_g1_postproc_regs;
 
diff --git a/drivers/staging/media/hantro/sama5d4_vdec_hw.c b/drivers/staging/media/hantro/sama5d4_vdec_hw.c
new file mode 100644
index 000000000000..d52ac626f98a
--- /dev/null
+++ b/drivers/staging/media/hantro/sama5d4_vdec_hw.c
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Hantro VDEC driver
+ *
+ * Copyright (C) 2021 Collabora Ltd, Emil Velikov <emil.velikov@collabora.com>
+ */
+
+#include "hantro.h"
+
+/*
+ * Supported formats.
+ */
+
+static const struct hantro_fmt sama5d4_vdec_postproc_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_YUYV,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+};
+
+static const struct hantro_fmt sama5d4_vdec_fmts[] = {
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
+			.max_width = 1280,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 720,
+			.step_height = MB_DIM,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_VP8_FRAME,
+		.codec_mode = HANTRO_MODE_VP8_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 1280,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 720,
+			.step_height = MB_DIM,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.codec_mode = HANTRO_MODE_H264_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 1280,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 720,
+			.step_height = MB_DIM,
+		},
+	},
+};
+
+static int sama5d4_hw_init(struct hantro_dev *vpu)
+{
+	return 0;
+}
+
+/*
+ * Supported codec ops.
+ */
+
+static const struct hantro_codec_ops sama5d4_vdec_codec_ops[] = {
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
+	[HANTRO_MODE_H264_DEC] = {
+		.run = hantro_g1_h264_dec_run,
+		.reset = hantro_g1_reset,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
+};
+
+static const struct hantro_irq sama5d4_irqs[] = {
+	{ NULL, hantro_g1_irq },
+};
+
+static const char * const sama5d4_clk_names[] = { NULL };
+
+const struct hantro_variant sama5d4_vdec_variant = {
+	.dec_fmts = sama5d4_vdec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(sama5d4_vdec_fmts),
+	.postproc_fmts = sama5d4_vdec_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(sama5d4_vdec_postproc_fmts),
+	.postproc_regs = &hantro_g1_postproc_regs,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
+	.codec_ops = sama5d4_vdec_codec_ops,
+	.init = sama5d4_hw_init,
+	.irqs = sama5d4_irqs,
+	.num_irqs = ARRAY_SIZE(sama5d4_irqs),
+	.clk_names = sama5d4_clk_names,
+	.num_clocks = ARRAY_SIZE(sama5d4_clk_names),
+};
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
