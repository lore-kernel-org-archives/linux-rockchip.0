Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F797C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ACD446508B
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ACD446508B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OPo4tP0BVIG5Hv51frTiORKggMVc1acl/U2XOQdXv54=; b=n5zVVno5P2dW2iJrKokziz7T5
	3xqyHnkTWUfqNoBbZIpdo7O8+YF5UhTd1fYzLy4mF4ozqVrLM5aQsJm9BXa66yLujw3/ijYwcNogb
	I0PiGcD8xQNtU7dn8TxPCYAUs4z5cPJbaEHMF+bURBZC7tEV5umngYaoCjsoGKnE0VGQPH1jPGRlt
	9n5cr2WOXMmQt9rvgbqvN1PQVSN2VKilhLjSaPEkIpXp4OsjRr7pokrEQo5esnfbOJ4h24uO6d0o5
	jnQ6/UyLi4Og9ca5QHFDCxLciiNpxwgvDwfY90++iKNkJ4ORuhpim5SIS+r4rqtmwifUF+kZ+g+Pv
	hVtrfh5Yg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFMq-00G0PY-8k; Fri, 05 Mar 2021 18:40:04 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFMW-00G0FH-Rk
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 18:39:58 +0000
Received: by mail-ed1-x532.google.com with SMTP id x9so3994478edd.0
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 10:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tf33K71twIkxM4hJLRQD7HM9YN0mvsbuZX3c9Y/Nb9I=;
 b=u+RQmqprzdy1MsB9sKjqgF24R2C9QV0O0WKwjebxR2m9olvz/IuHLOB8f7XTwUUEm1
 T3cavT85BvevU66boYJpX7L9BxVXrTBlGOO78vm0u8ZfARGtgp80vloUbmvO+fbVofU+
 /gFe6a0ls/VO68TRl2HIckJpW9enTQe1HaODNwQLtA66ooso7WVrsrh4F4IqedMjpANn
 P2CR0ryw0lepLKDI1mpFQJjLy+CT0pwBu1l2+6IVEFojYNp5CCq89o5BfYX5NJ6X8S60
 Pfn8lffoT0Xzsz34iOwfew4rs3RlP32OSIUkOtQoBtXb9jQ7M1XISF4b7DFf1dZivutY
 7gIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tf33K71twIkxM4hJLRQD7HM9YN0mvsbuZX3c9Y/Nb9I=;
 b=L3kQ4lQCMZeN4E5bycTv/RZOC2ZTvkEQ+/L53zUUnDHeGExrxlgCeJrIr4suNkNV0E
 0fOvQRNiKk7bffcdhEPXsM5D9BHsDTpNz41CoMvF/zeZtuebpPhB/DxluJkTRbh/R2wF
 5xLCOUcai8o4oRe9svRwHtSB7iyny0/0XzFLiepvExf3jzD28SDTSFyBEKlKIgtd1+5P
 +HcMYxzdTrnIOeVxb0+v5EGYJiqvLb8slpvvV7nbXU7vktz33HLeQxE3wARuAohKPPhL
 ihVTwaNDZflHs+qdX58hWYsd73khW+AOr2dSGp+ppxrvL8ruzd+CmD/Iq2jlRrDnJOiJ
 ATKg==
X-Gm-Message-State: AOAM531rgcjOZfGVxvcDgHcAo6MdCORO/7fqnZ5laF9rHmTF2bbXU0uF
 ZrXcgLZEAuraI2xxa+Nnw5k=
X-Google-Smtp-Source: ABdhPJxq1XvPuZG+i3nd4X6EJSujEotsK7sBnnc87kaoOOWNne65bWKi2tQr2yAU6w/Ac+93oV1M8Q==
X-Received: by 2002:aa7:dd49:: with SMTP id o9mr10358033edw.14.1614969584316; 
 Fri, 05 Mar 2021 10:39:44 -0800 (PST)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id o1sm2121808eds.26.2021.03.05.10.39.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 10:39:43 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 7/7] ARM: dts: at91: sama5d4: add vdec0 component
Date: Fri,  5 Mar 2021 18:39:24 +0000
Message-Id: <20210305183924.1754026-8-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_183946_120389_FF247854 
X-CRM114-Status: GOOD (  19.40  )
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

The SoC features a Hantro G1 compatible video decoder.

Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 arch/arm/boot/dts/sama5d4.dtsi                |   9 ++
 arch/arm/configs/sama5_defconfig              |   3 +
 drivers/staging/media/hantro/Kconfig          |  10 +-
 drivers/staging/media/hantro/Makefile         |   3 +
 drivers/staging/media/hantro/hantro_drv.c     |   3 +
 drivers/staging/media/hantro/hantro_hw.h      |   1 +
 .../staging/media/hantro/sama5d4_vdec_hw.c    | 118 ++++++++++++++++++
 7 files changed, 146 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/media/hantro/sama5d4_vdec_hw.c

diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
index 05c55875835d..deaf1f6cc784 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -101,6 +101,15 @@ nfc_sram: sram@100000 {
 			ranges = <0 0x100000 0x2400>;
 		};
 
+		vdec0: vdec@00300000 {
+			compatible = "atmel,sama5d4-vdec";
+			reg = <0x00300000 0x100000>;
+			interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
+			interrupt-names = "vdec";
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+			clock-names = "vdec_clk";
+		};
+
 		usb0: gadget@400000 {
 			compatible = "atmel,sama5d3-udc";
 			reg = <0x00400000 0x100000
diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index 0dca50c64503..10806f38abfb 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -200,6 +200,9 @@ CONFIG_RTC_DRV_AT91RM9200=y
 CONFIG_DMADEVICES=y
 CONFIG_AT_HDMAC=y
 CONFIG_AT_XDMAC=y
+CONFIG_STAGING=y
+CONFIG_STAGING_MEDIA=y
+CONFIG_VIDEO_HANTRO=y
 # CONFIG_IOMMU_SUPPORT is not set
 CONFIG_IIO=y
 CONFIG_AT91_ADC=y
diff --git a/drivers/staging/media/hantro/Kconfig b/drivers/staging/media/hantro/Kconfig
index 5b6cf9f62b1a..43762c8164e0 100644
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
+	  Enable support for Atmel SAMA5D4 SoCs.
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
index e5f200e64993..19f1202574a2 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -478,6 +478,9 @@ static const struct of_device_id of_hantro_match[] = {
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
+#endif
+#ifdef CONFIG_VIDEO_HANTRO_SAMA5D4
+	{ .compatible = "atmel,sama5d4-vdec", .data = &sama5d4_vdec_variant, },
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
index 000000000000..9cf1068d986b
--- /dev/null
+++ b/drivers/staging/media/hantro/sama5d4_vdec_hw.c
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Hantro VDEC driver
+ *
+ * Copyright (C) 2021 Collabora Ltd, Emil Velikov <emil.velikov@collabora.com>
+ */
+
+#include "hantro.h"
+
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
+	{ "vdec", hantro_g1_irq },
+};
+
+static const char * const sama5d4_clk_names[] = { "vdec_clk" };
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
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
