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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A4AEC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B386460BD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B386460BD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xBi0+AHI3eTeRtvEiCICsAWNuNSo/WguKXp3Fu5H4/g=; b=gHlKYvI4sI2McIt7K2yWB9X/A
	cxJXbbwMwQ47AUDi7LsrmlH1Pnwsi5+QzIru5djqJQThNAGrkdwLMMV/dLAqx/Q8Agr7h008eLl7w
	6fEyTlVH8JTnAMWnE/aN+SFfSo8Uo0YnIqJOvioqrrTAONAJUvNCdSoKVtE9H0ksmQ8+yVfVan51j
	5nr4fvdBr/Sxk88XWvdx8s+ACmbEINiJN1tbDX7jOnG3SVx/XEGCDQrke/ZVd76Z4AQfQMsDfoDpv
	hDgwG5ldfeBVvU8FS44PgyjOJAaVxT4dp7or46vacinW3pRZ0BgmJsIxDM0pvn7zuB+IzEsiAye/S
	t2DkQ7Mrg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRekn-007CZP-OG; Wed, 31 Mar 2021 17:35:42 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekf-007CW9-G2
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:37 +0000
Received: by mail-wm1-x32a.google.com with SMTP id k128so10542892wmk.4
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=//s5GXhvTYBFxepTOFjvgKPgNSSVEMfEdoDacbVrJhc=;
 b=XBrvV9n9AJs9E1BQhtZDtrXx9UpPAV1l5vJVBJuXc1GAQybpM5RG1ww0MM+Sml9UHZ
 jmusbG5SOFtjUCYUzWuUMwj5lyhlUGKvo4pboTUn/DLDzg3s2OA0B7MzDYIEmmqFtTDy
 LaXuOxrWpq3wl8W9V6lUH3h5evqrUSID90vcNfv9AJSSO+p+KFz1y7ufuu/LJECD3XVb
 DFJ79iC3Q2h/zTYgCn2fEFa7UgvZEG9xYoZwbG3KKZsaO+C6L2t9WwWo+6rDRHn1aYpi
 wHLbCxkkfZmSEDNVB+9Av6qnTaYjpEkl2SX+G1kCDdxv8T6r9rNCnppPLGfn+g/fL/Ah
 rKFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=//s5GXhvTYBFxepTOFjvgKPgNSSVEMfEdoDacbVrJhc=;
 b=coxJ+cifwwozuB3++xqMkhueJ+2Qk694ktywXH6JEwyRtmGjBNo0p6QneN36qHrkTZ
 T03EULD9txdI0TxSc4VDo66E7na3KKMHluD5V8MC4vvX9iFe/YTBO/Ne6XLyyJPY97gb
 yXdbNCRPELczlRQcRrEut8kr4YzGDC/LPtBI3JG06wEV9WQJpgumVUuMHSs010juLfK/
 BFECOp0OoZnpno7eRD2KT9O39nYolhH9ZabRygwejQOTPhoxMQxcuMETFq2yo+9OK7r4
 ZveogNw9HZcJ/9DNYQxOFOEVaEwrNsY/ClWJhTTGrcJ2PpPtu+F9gdFKKNXXkU/ifkaf
 PEIg==
X-Gm-Message-State: AOAM531/vsIwInZ0rfZUm0oyDCgqJzJKG5Rz1kMRteolrN9YacMj/R1k
 olhgXfq48XV+dbf45h9gXWs9yjKILj1Jyg==
X-Google-Smtp-Source: ABdhPJzpzfKHxYuDZOzO1iYSTGNXPrAYAW6UZYmlK180CUi/eQ+P1EHAiW89z9OPL70TzMXluujRBQ==
X-Received: by 2002:a1c:43c5:: with SMTP id q188mr4098708wma.94.1617212132991; 
 Wed, 31 Mar 2021 10:35:32 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:32 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v3 5/9] media: hantro: introduce hantro_g1.c for common API
Date: Wed, 31 Mar 2021 18:35:16 +0100
Message-Id: <20210331173520.184191-6-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183536_092132_A4D509F3 
X-CRM114-Status: GOOD (  19.60  )
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

The Hantro G1 IRQ and reset handling it pretty standard. I was this
close to duplicating it, yet again, before reconsidering and refactoring
it to a separate file.

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/staging/media/hantro/Makefile        |  1 +
 drivers/staging/media/hantro/hantro_g1.c     | 39 ++++++++++++++++++++
 drivers/staging/media/hantro/hantro_hw.h     |  3 ++
 drivers/staging/media/hantro/imx8m_vpu_hw.c  | 21 +----------
 drivers/staging/media/hantro/rk3288_vpu_hw.c | 36 ++----------------
 5 files changed, 48 insertions(+), 52 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g1.c

diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 743ce08eb184..3747a32799b2 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -7,6 +7,7 @@ hantro-vpu-y += \
 		hantro_v4l2.o \
 		hantro_postproc.o \
 		hantro_h1_jpeg_enc.o \
+		hantro_g1.o \
 		hantro_g1_h264_dec.o \
 		hantro_g1_mpeg2_dec.o \
 		hantro_g1_vp8_dec.o \
diff --git a/drivers/staging/media/hantro/hantro_g1.c b/drivers/staging/media/hantro/hantro_g1.c
new file mode 100644
index 000000000000..0ab1cee62218
--- /dev/null
+++ b/drivers/staging/media/hantro/hantro_g1.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Hantro VPU codec driver
+ *
+ * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
+ *	Jeffy Chen <jeffy.chen@rock-chips.com>
+ * Copyright (C) 2019 Pengutronix, Philipp Zabel <kernel@pengutronix.de>
+ * Copyright (C) 2021 Collabora Ltd, Emil Velikov <emil.velikov@collabora.com>
+ */
+
+#include "hantro.h"
+#include "hantro_g1_regs.h"
+
+irqreturn_t hantro_g1_irq(int irq, void *dev_id)
+{
+	struct hantro_dev *vpu = dev_id;
+	enum vb2_buffer_state state;
+	u32 status;
+
+	status = vdpu_read(vpu, G1_REG_INTERRUPT);
+	state = (status & G1_REG_INTERRUPT_DEC_RDY_INT) ?
+		 VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	vdpu_write(vpu, 0, G1_REG_INTERRUPT);
+	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
+
+	hantro_irq_done(vpu, state);
+
+	return IRQ_HANDLED;
+}
+
+void hantro_g1_reset(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_IRQ_DIS, G1_REG_INTERRUPT);
+	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
+	vdpu_write(vpu, 1, G1_REG_SOFT_RESET);
+}
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34c9e4649a25..73c71bb2320c 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -164,6 +164,9 @@ void hantro_irq_done(struct hantro_dev *vpu,
 void hantro_start_prepare_run(struct hantro_ctx *ctx);
 void hantro_end_prepare_run(struct hantro_ctx *ctx);
 
+irqreturn_t hantro_g1_irq(int irq, void *dev_id);
+void hantro_g1_reset(struct hantro_ctx *ctx);
+
 void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx);
 void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx);
 int hantro_jpeg_enc_init(struct hantro_ctx *ctx);
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index f36c1bd681ba..9eb556460e52 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -9,7 +9,6 @@
 #include <linux/delay.h>
 
 #include "hantro.h"
-#include "hantro_g1_regs.h"
 
 #define CTRL_SOFT_RESET		0x00
 #define RESET_G1		BIT(1)
@@ -129,24 +128,6 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
 	},
 };
 
-static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
-{
-	struct hantro_dev *vpu = dev_id;
-	enum vb2_buffer_state state;
-	u32 status;
-
-	status = vdpu_read(vpu, G1_REG_INTERRUPT);
-	state = (status & G1_REG_INTERRUPT_DEC_RDY_INT) ?
-		 VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
-
-	vdpu_write(vpu, 0, G1_REG_INTERRUPT);
-	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
-
-	hantro_irq_done(vpu, state);
-
-	return IRQ_HANDLED;
-}
-
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
 	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
@@ -191,7 +172,7 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
  */
 
 static const struct hantro_irq imx8mq_irqs[] = {
-	{ "g1", imx8m_vpu_g1_irq },
+	{ "g1", hantro_g1_irq },
 	{ "g2", NULL /* TODO: imx8m_vpu_g2_irq */ },
 };
 
diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index 7b299ee3e93d..fefd45269e52 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -10,7 +10,6 @@
 
 #include "hantro.h"
 #include "hantro_jpeg.h"
-#include "hantro_g1_regs.h"
 #include "hantro_h1_regs.h"
 
 #define RK3288_ACLK_MAX_FREQ (400 * 1000 * 1000)
@@ -127,24 +126,6 @@ static irqreturn_t rk3288_vepu_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static irqreturn_t rk3288_vdpu_irq(int irq, void *dev_id)
-{
-	struct hantro_dev *vpu = dev_id;
-	enum vb2_buffer_state state;
-	u32 status;
-
-	status = vdpu_read(vpu, G1_REG_INTERRUPT);
-	state = (status & G1_REG_INTERRUPT_DEC_RDY_INT) ?
-		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
-
-	vdpu_write(vpu, 0, G1_REG_INTERRUPT);
-	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
-
-	hantro_irq_done(vpu, state);
-
-	return IRQ_HANDLED;
-}
-
 static int rk3288_vpu_hw_init(struct hantro_dev *vpu)
 {
 	/* Bump ACLK to max. possible freq. to improve performance. */
@@ -161,15 +142,6 @@ static void rk3288_vpu_enc_reset(struct hantro_ctx *ctx)
 	vepu_write(vpu, 0, H1_REG_AXI_CTRL);
 }
 
-static void rk3288_vpu_dec_reset(struct hantro_ctx *ctx)
-{
-	struct hantro_dev *vpu = ctx->dev;
-
-	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_IRQ_DIS, G1_REG_INTERRUPT);
-	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
-	vdpu_write(vpu, 1, G1_REG_SOFT_RESET);
-}
-
 /*
  * Supported codec ops.
  */
@@ -184,19 +156,19 @@ static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
 	},
 	[HANTRO_MODE_H264_DEC] = {
 		.run = hantro_g1_h264_dec_run,
-		.reset = rk3288_vpu_dec_reset,
+		.reset = hantro_g1_reset,
 		.init = hantro_h264_dec_init,
 		.exit = hantro_h264_dec_exit,
 	},
 	[HANTRO_MODE_MPEG2_DEC] = {
 		.run = hantro_g1_mpeg2_dec_run,
-		.reset = rk3288_vpu_dec_reset,
+		.reset = hantro_g1_reset,
 		.init = hantro_mpeg2_dec_init,
 		.exit = hantro_mpeg2_dec_exit,
 	},
 	[HANTRO_MODE_VP8_DEC] = {
 		.run = hantro_g1_vp8_dec_run,
-		.reset = rk3288_vpu_dec_reset,
+		.reset = hantro_g1_reset,
 		.init = hantro_vp8_dec_init,
 		.exit = hantro_vp8_dec_exit,
 	},
@@ -208,7 +180,7 @@ static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
 
 static const struct hantro_irq rk3288_irqs[] = {
 	{ "vepu", rk3288_vepu_irq },
-	{ "vdpu", rk3288_vdpu_irq },
+	{ "vdpu", hantro_g1_irq },
 };
 
 static const char * const rk3288_clk_names[] = {
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
