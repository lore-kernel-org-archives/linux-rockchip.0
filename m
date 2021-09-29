Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42D67C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 16:09:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F077F614C8
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 16:09:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F077F614C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcorZ+ETyM5SQOaVELQOy+QX40Jmz4R6lzW9jo6h018=; b=r9t/kI+M2uDolx
	nNUkU1QAAtdxggogaDiuzRL/c87ZIwetz/iXcHxY7t2q5DwY8PHZa9jtyrsIDOTUb8J8Lo98OxzN4
	xs1X6IDvNCxpCYOklXszXv+D0kaWosnkH6PYIOXxYzx5tk1F2Hy9tM2myn767K/k9TWxHPWnSAFr6
	RUJp9x0LsLbgG6mvDfQqgfOAiuj7nmIL2LNfixa5VZnWLCSRkC6RtLoqWWXt/6t0JUF8LSNre3YG5
	APuSqEdnIidd+sGGmIOOdjHAqRwXsB+80h6Fwi28N1AeWegvAOJQH2ToHrSVy6piREUNhBPqytgw1
	h+HXV/I9t6ren7oNd7ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVc9S-00Bi74-H2; Wed, 29 Sep 2021 16:09:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVc4m-00BfOb-Vt; Wed, 29 Sep 2021 16:05:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E3D841F44691
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com
Subject: [PATCH v7 09/11] media: hantro: Prepare for other G2 codecs
Date: Wed, 29 Sep 2021 18:04:37 +0200
Message-Id: <20210929160439.6601-10-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929160439.6601-1-andrzej.p@collabora.com>
References: <20210929160439.6601-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_090457_393963_A5266918 
X-CRM114-Status: GOOD (  23.30  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VeriSilicon Hantro G2 core supports other codecs besides hevc.
Factor out some common code in preparation for vp9 support.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Reviewed-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/Makefile         |  1 +
 drivers/staging/media/hantro/hantro.h         |  7 +++++
 drivers/staging/media/hantro/hantro_drv.c     |  5 +++
 drivers/staging/media/hantro/hantro_g2.c      | 27 ++++++++++++++++
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 31 -------------------
 drivers/staging/media/hantro/hantro_g2_regs.h |  7 +++++
 drivers/staging/media/hantro/hantro_hw.h      |  2 ++
 7 files changed, 49 insertions(+), 31 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g2.c

diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 90036831fec4..fe6d84871d07 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -12,6 +12,7 @@ hantro-vpu-y += \
 		hantro_g1_mpeg2_dec.o \
 		hantro_g2_hevc_dec.o \
 		hantro_g1_vp8_dec.o \
+		hantro_g2.o \
 		rockchip_vpu2_hw_jpeg_enc.o \
 		rockchip_vpu2_hw_h264_dec.o \
 		rockchip_vpu2_hw_mpeg2_dec.o \
diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index dd5e56765d4e..d91eb2b1c509 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -369,6 +369,13 @@ static inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 	writel(val, vpu->dec_base + reg);
 }
 
+static inline void hantro_write_addr(struct hantro_dev *vpu,
+				     unsigned long offset,
+				     dma_addr_t addr)
+{
+	vdpu_write(vpu, addr & 0xffffffff, offset);
+}
+
 static inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
 {
 	u32 val = readl(vpu->dec_base + reg);
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 8a2edd67f2c6..e8eee117d97f 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -905,6 +905,11 @@ static int hantro_probe(struct platform_device *pdev)
 	vpu->enc_base = vpu->reg_bases[0] + vpu->variant->enc_offset;
 	vpu->dec_base = vpu->reg_bases[0] + vpu->variant->dec_offset;
 
+	/**
+	 * TODO: Eventually allow taking advantage of full 64-bit address space.
+	 * Until then we assume the MSB portion of buffers' base addresses is
+	 * always 0 due to this masking operation.
+	 */
 	ret = dma_set_coherent_mask(vpu->dev, DMA_BIT_MASK(32));
 	if (ret) {
 		dev_err(vpu->dev, "Could not set DMA coherent mask.\n");
diff --git a/drivers/staging/media/hantro/hantro_g2.c b/drivers/staging/media/hantro/hantro_g2.c
new file mode 100644
index 000000000000..5f7bb27913de
--- /dev/null
+++ b/drivers/staging/media/hantro/hantro_g2.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Hantro VPU codec driver
+ *
+ * Copyright (C) 2021 Collabora Ltd, Andrzej Pietrasiewicz <andrzej.p@collabora.com>
+ */
+
+#include "hantro_hw.h"
+#include "hantro_g2_regs.h"
+
+void hantro_g2_check_idle(struct hantro_dev *vpu)
+{
+	int i;
+
+	for (i = 0; i < 3; i++) {
+		u32 status;
+
+		/* Make sure the VPU is idle */
+		status = vdpu_read(vpu, G2_REG_INTERRUPT);
+		if (status & G2_REG_INTERRUPT_DEC_E) {
+			dev_warn(vpu->dev, "device still running, aborting");
+			status |= G2_REG_INTERRUPT_DEC_ABORT_E | G2_REG_INTERRUPT_DEC_IRQ_DIS;
+			vdpu_write(vpu, status, G2_REG_INTERRUPT);
+		}
+	}
+}
+
diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 97da719a9844..2797825cef47 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -8,20 +8,6 @@
 #include "hantro_hw.h"
 #include "hantro_g2_regs.h"
 
-#define HEVC_DEC_MODE	0xC
-
-#define BUS_WIDTH_32		0
-#define BUS_WIDTH_64		1
-#define BUS_WIDTH_128		2
-#define BUS_WIDTH_256		3
-
-static inline void hantro_write_addr(struct hantro_dev *vpu,
-				     unsigned long offset,
-				     dma_addr_t addr)
-{
-	vdpu_write(vpu, addr & 0xffffffff, offset);
-}
-
 static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
@@ -516,23 +502,6 @@ static void set_buffers(struct hantro_ctx *ctx)
 	hantro_write_addr(vpu, G2_TILE_BSD_ADDR, ctx->hevc_dec.tile_bsd.dma);
 }
 
-static void hantro_g2_check_idle(struct hantro_dev *vpu)
-{
-	int i;
-
-	for (i = 0; i < 3; i++) {
-		u32 status;
-
-		/* Make sure the VPU is idle */
-		status = vdpu_read(vpu, G2_REG_INTERRUPT);
-		if (status & G2_REG_INTERRUPT_DEC_E) {
-			dev_warn(vpu->dev, "device still running, aborting");
-			status |= G2_REG_INTERRUPT_DEC_ABORT_E | G2_REG_INTERRUPT_DEC_IRQ_DIS;
-			vdpu_write(vpu, status, G2_REG_INTERRUPT);
-		}
-	}
-}
-
 int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
diff --git a/drivers/staging/media/hantro/hantro_g2_regs.h b/drivers/staging/media/hantro/hantro_g2_regs.h
index 24b18f839ff8..136ba6d98a1f 100644
--- a/drivers/staging/media/hantro/hantro_g2_regs.h
+++ b/drivers/staging/media/hantro/hantro_g2_regs.h
@@ -27,6 +27,13 @@
 #define G2_REG_INTERRUPT_DEC_IRQ_DIS	BIT(4)
 #define G2_REG_INTERRUPT_DEC_E		BIT(0)
 
+#define HEVC_DEC_MODE			0xc
+
+#define BUS_WIDTH_32			0
+#define BUS_WIDTH_64			1
+#define BUS_WIDTH_128			2
+#define BUS_WIDTH_256			3
+
 #define g2_strm_swap		G2_DEC_REG(2, 28, 0xf)
 #define g2_dirmv_swap		G2_DEC_REG(2, 20, 0xf)
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 4323e63dfbfc..42b3f3961f75 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -308,4 +308,6 @@ void hantro_vp8_dec_exit(struct hantro_ctx *ctx);
 void hantro_vp8_prob_update(struct hantro_ctx *ctx,
 			    const struct v4l2_ctrl_vp8_frame *hdr);
 
+void hantro_g2_check_idle(struct hantro_dev *vpu);
+
 #endif /* HANTRO_HW_H_ */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
