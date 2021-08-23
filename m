Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F122C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:56:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04CA761371
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:56:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 04CA761371
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=16ujJ5k2d+Rtvy/QnIEzZm+/yBk+hcXIdojGUqeL+LQ=; b=hEC88jn8xE5bTS
	UpWk6n2LKawM92fsbcdrEiQqWbP+5tJIZYrhz6PML8Q2x3+t5Nc06fgPwq1vQt+QqStah8dwz4dbA
	0rjerF8nzIMaEAbM+Nwr5WFJFxUsOwxXDXgGClXDj4vw0ML/DObqSik42x+bcZFteyU6DUZbSsEAb
	2P1PtQQmrNu5TVSaTmsNm7t63o1Hb9U0v7mvYhTiF7C27yV13YCPYeTfgItuQ6HUJArA119FdaWVT
	MOr/F4HMawBsnTp7afC3QYKjE3joq2ZgaFYmQDRchtrLo7B4i3Szp4DEaan8GAqksWxH2HLMo2LcW
	vNQAPFs85sj3gaByXASQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIARX-00H9hp-4f; Mon, 23 Aug 2021 13:56:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIARI-00H9eK-AM; Mon, 23 Aug 2021 13:56:38 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:648a:6e9d:d5af:13ed])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6C4471F426ED;
 Mon, 23 Aug 2021 14:56:31 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: hantro: Trace hevc hw cycles performance register
Date: Mon, 23 Aug 2021 15:56:06 +0200
Message-Id: <20210823135606.633052-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_065636_653770_B8D8E56F 
X-CRM114-Status: GOOD (  18.16  )
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

After each hevc decoded frame trace the hardware performance.
It provides the number of hw cycles spend per decoded macroblock.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 Documentation/admin-guide/media/hantro.rst    | 14 +++++++
 .../admin-guide/media/v4l-drivers.rst         |  1 +
 drivers/staging/media/hantro/hantro_drv.c     |  3 ++
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 16 ++++++++
 drivers/staging/media/hantro/hantro_g2_regs.h |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 drivers/staging/media/hantro/hantro_trace.h   | 41 +++++++++++++++++++
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  1 +
 8 files changed, 78 insertions(+)
 create mode 100644 Documentation/admin-guide/media/hantro.rst
 create mode 100644 drivers/staging/media/hantro/hantro_trace.h

diff --git a/Documentation/admin-guide/media/hantro.rst b/Documentation/admin-guide/media/hantro.rst
new file mode 100644
index 000000000000..6cb552a5dfcb
--- /dev/null
+++ b/Documentation/admin-guide/media/hantro.rst
@@ -0,0 +1,14 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=================
+The hantro driver
+=================
+
+Trace
+~~~~~
+
+You can trace the hardware decoding performances by using event tracing::
+
+    # echo hantro_hevc_perf >> /sys/kernel/debug/tracing/set_event
+
+That will keep a log of the number of hardware cycles spend per decoded macroblock
diff --git a/Documentation/admin-guide/media/v4l-drivers.rst b/Documentation/admin-guide/media/v4l-drivers.rst
index 9c7ebe2ca3bd..4f2f72a2b3b5 100644
--- a/Documentation/admin-guide/media/v4l-drivers.rst
+++ b/Documentation/admin-guide/media/v4l-drivers.rst
@@ -15,6 +15,7 @@ Video4Linux (V4L) driver-specific documentation
 	cx88
 	davinci-vpbe
 	fimc
+        hantro
 	imx
 	imx7
 	ipu3
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 8a2edd67f2c6..236160c51e59 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -28,6 +28,9 @@
 #include "hantro.h"
 #include "hantro_hw.h"
 
+#define CREATE_TRACE_POINTS
+#include "hantro_trace.h"
+
 #define DRIVER_NAME "hantro-vpu"
 
 int hantro_debug;
diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 340efb57fd18..fef16d1724da 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -7,6 +7,7 @@
 
 #include "hantro_hw.h"
 #include "hantro_g2_regs.h"
+#include "hantro_trace.h"
 
 #define HEVC_DEC_MODE	0xC
 
@@ -22,6 +23,21 @@ static inline void hantro_write_addr(struct hantro_dev *vpu,
 	vdpu_write(vpu, addr & 0xffffffff, offset);
 }
 
+void hantro_g2_hevc_dec_done(struct hantro_ctx *ctx)
+{
+	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
+	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
+	struct hantro_dev *vpu = ctx->dev;
+	u32 hw_cycles = 0;
+	u32 mbs = (sps->pic_width_in_luma_samples *
+		   sps->pic_height_in_luma_samples) >> 8;
+
+	if (mbs)
+		hw_cycles = vdpu_read(vpu, G2_HW_PERFORMANCE) / mbs;
+
+	trace_hantro_hevc_perf(ctx, hw_cycles);
+}
+
 static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
diff --git a/drivers/staging/media/hantro/hantro_g2_regs.h b/drivers/staging/media/hantro/hantro_g2_regs.h
index bb22fa921914..17d84ec9c5c2 100644
--- a/drivers/staging/media/hantro/hantro_g2_regs.h
+++ b/drivers/staging/media/hantro/hantro_g2_regs.h
@@ -177,6 +177,7 @@
 #define G2_REG_CONFIG_DEC_CLK_GATE_E		BIT(16)
 #define G2_REG_CONFIG_DEC_CLK_GATE_IDLE_E	BIT(17)
 
+#define G2_HW_PERFORMANCE	(G2_SWREG(63))
 #define G2_ADDR_DST		(G2_SWREG(65))
 #define G2_REG_ADDR_REF(i)	(G2_SWREG(67)  + ((i) * 0x8))
 #define G2_ADDR_DST_CHR		(G2_SWREG(99))
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index df7b5e3a57b9..ab6f379354cc 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -250,6 +250,7 @@ void hantro_h264_dec_exit(struct hantro_ctx *ctx);
 int hantro_hevc_dec_init(struct hantro_ctx *ctx);
 void hantro_hevc_dec_exit(struct hantro_ctx *ctx);
 int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx);
+void hantro_g2_hevc_dec_done(struct hantro_ctx *ctx);
 int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx);
 dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx, int poc);
 void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx);
diff --git a/drivers/staging/media/hantro/hantro_trace.h b/drivers/staging/media/hantro/hantro_trace.h
new file mode 100644
index 000000000000..fa8fec26fa3c
--- /dev/null
+++ b/drivers/staging/media/hantro/hantro_trace.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#if !defined(__HANTRO_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
+#define __HANTRO_TRACE_H__
+
+#include <linux/tracepoint.h>
+#include <media/videobuf2-v4l2.h>
+
+#include "hantro.h"
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM hantro
+#define TRACE_INCLUDE_FILE hantro_trace
+
+TRACE_EVENT(hantro_hevc_perf,
+	TP_PROTO(struct hantro_ctx *ctx, u32 hw_cycles),
+
+	TP_ARGS(ctx, hw_cycles),
+
+	TP_STRUCT__entry(
+		__field(int, minor)
+		__field(struct v4l2_fh *, fh)
+		__field(u32, hw_cycles)
+	),
+
+	TP_fast_assign(
+		__entry->minor = ctx->fh.vdev->minor;
+		__entry->fh = &ctx->fh;
+		__entry->hw_cycles = hw_cycles;
+	),
+
+	TP_printk("minor = %d, fh = %p, %8d cycles / mb",
+		  __entry->minor, __entry->fh, __entry->hw_cycles)
+);
+
+#endif /* __HANTRO_TRACE_H__ */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH ../../drivers/staging/media/hantro
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index ea919bfb9891..7e9e24bb5057 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -239,6 +239,7 @@ static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
 		.reset = imx8m_vpu_g2_reset,
 		.init = hantro_hevc_dec_init,
 		.exit = hantro_hevc_dec_exit,
+		.done = hantro_g2_hevc_dec_done,
 	},
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
