Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBC35C07E94
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 13:07:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B46E6613D8
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 13:07:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B46E6613D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ow9mRliw+XRKqkWgHHrf4Z7XfcarMe9SYGactsaPlvg=; b=I12Ch6epEKHpvy
	gvd83x9Qs2CL/hjhzkTYKBHkNu88BpTZnuvw/Oa7DSeH2jXyXW0/BawkbyRsQa7Sld4oPtgravNsq
	O6Cxr04IqASUOeGR7HD5PW6qabYhLvgsAAOGLi3Pp/mSLzaugDyMTwhMCT2djdOZ4XdqRtKpVBVpQ
	/NgaNsHbhQtG215FIFaVYQQw0V6+FhPDDMQUfzTLpN6XoCkQW8bbsJS6DPi/SZ+Tj09Ga+Whurves
	Z/PUfcw8QAvFurgLBgHEMBZog2Axx9OWCCqeIVnmkXZq01Pq/MpLkXSExUUXRj/96ds5zjmCZ/+90
	2w2YdpS405Wv5SId6MXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp9Xu-00Dbqf-W4; Fri, 04 Jun 2021 13:07:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp9XH-00DbYy-Ov; Fri, 04 Jun 2021 13:06:56 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:389:b21e:a7e4:8cad])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 57C7E1F4397C;
 Fri,  4 Jun 2021 14:06:49 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 1/8] media: hantro: Trace hevc hw cycles performance register
Date: Fri,  4 Jun 2021 15:06:12 +0200
Message-Id: <20210604130619.491200-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604130619.491200-1-benjamin.gaignard@collabora.com>
References: <20210604130619.491200-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_060652_098030_C5443036 
X-CRM114-Status: GOOD (  17.02  )
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
 drivers/staging/media/hantro/hantro_drv.c     |  3 ++
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 16 ++++++++
 drivers/staging/media/hantro/hantro_g2_regs.h |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  1 +
 drivers/staging/media/hantro/trace.h          | 40 +++++++++++++++++++
 6 files changed, 62 insertions(+)
 create mode 100644 drivers/staging/media/hantro/trace.h

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index dbc69ee0b562..6053c86b1c3f 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -28,6 +28,9 @@
 #include "hantro.h"
 #include "hantro_hw.h"
 
+#define CREATE_TRACE_POINTS
+#include "trace.h"
+
 #define DRIVER_NAME "hantro-vpu"
 
 int hantro_debug;
diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 340efb57fd18..89fac5146433 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -7,6 +7,7 @@
 
 #include "hantro_hw.h"
 #include "hantro_g2_regs.h"
+#include "trace.h"
 
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
index 5737a7707944..8fa0aacb61cd 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -240,6 +240,7 @@ void hantro_h264_dec_exit(struct hantro_ctx *ctx);
 int hantro_hevc_dec_init(struct hantro_ctx *ctx);
 void hantro_hevc_dec_exit(struct hantro_ctx *ctx);
 int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx);
+void hantro_g2_hevc_dec_done(struct hantro_ctx *ctx);
 int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx);
 dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx, int poc);
 void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx);
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
 
diff --git a/drivers/staging/media/hantro/trace.h b/drivers/staging/media/hantro/trace.h
new file mode 100644
index 000000000000..8abe5ddb4814
--- /dev/null
+++ b/drivers/staging/media/hantro/trace.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM hantro
+
+#if !defined(__HANTRO_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
+#define __HANTRO_TRACE_H__
+
+#include <linux/tracepoint.h>
+#include <media/videobuf2-v4l2.h>
+
+#include "hantro.h"
+
+TRACE_EVENT(hantro_hevc_perf,
+	TP_PROTO(struct hantro_ctx *ctx, u32 hw_cycles),
+
+	TP_ARGS(ctx, hw_cycles),
+
+	TP_STRUCT__entry(
+		__field(int, minor)
+		__field(u32, hw_cycles)
+	),
+
+	TP_fast_assign(
+		__entry->minor = ctx->fh.vdev->minor;
+		__entry->hw_cycles = hw_cycles;
+	),
+
+	TP_printk("minor = %d, %8d cycles / mb",
+		  __entry->minor, __entry->hw_cycles)
+);
+
+#endif /* __HANTRO_TRACE_H__ */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH ../../drivers/staging/media/hantro
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE trace
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
