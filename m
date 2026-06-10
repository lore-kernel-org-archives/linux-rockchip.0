Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F94ACD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 14:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4aYkSevCnfS31GXoVniYdDOTmmEeKiPVBAcqDMhq+c=; b=0H6J2ISj8aCyVh
	yOAS1vH0mMXNxh1JOLeIjnEvlH24Ij9NSV9zzTlb+iAqI83E4v5ge+cJKNdy4bzG+KOvk+A64/3vl
	9tXDVlcixV+Q7CCV5r9TbuUw1eMC8ZMaKzhcp4WWJcRqirchZp60IeHffrF7RnIr9KMn9mz6ezaSz
	lbI6ImctFa3MPZwrTg1Dejr2lTpBSDn18ZVQPjniinPnIPf4AJ/tvFBWE1gHTaYoL/t7dNPl4Fkyt
	KuaNreJIDNE04qbFUHUHzHtdzvWu/SmdHfEcnAyK0BI5obdW2v9w/Ja7NHh3ZExsQc3GtTfpLKpVa
	w1Z4ak0DuIP9TPCpRYFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXK0v-00000007v79-23bo;
	Wed, 10 Jun 2026 14:34:41 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXK0m-00000007uoQ-16LK;
	Wed, 10 Jun 2026 14:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781102070;
	bh=1TSwrODXsBUB8IftPzx52C0XkF+RmnNXu0r6bl/vr2E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VjMSdNz6BD8Oq562/yPJso2olso5XsJgxdmZIt3roVcZutcLfSD0Xq9LVLRkN/LF+
	 qF2U+FYh1D35JeRxa/DwQSjF350JwZm3ZW2s2KUMmhxcJ1r5ohFdfzcbdigN5qeZtk
	 eosueFvhvnwwTl4dl996mfO2jbMzv6sY3n6aEabl03bNk9t9m0jeg12B2q965trgJg
	 xJRl504qRNDaQm8wNSgQHrMlTqtuUAvVUQxIEy43mZPa6ccC4khBS8fvDPFhuIGV/N
	 8HyXaVCCyVAjaplM3MbevY7sisofSdjCfJ5eVzUAQy+g9ZMReUrhMBANdzI+m0EK00
	 xuquzWrCZgSNg==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3CBF217E1221;
	Wed, 10 Jun 2026 16:34:28 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Wed, 10 Jun 2026 10:33:39 -0400
Subject: [PATCH v2 9/9] media: hantro: Add v4l2_hw run/done traces
MIME-Version: 1.0
Message-Id: <20260610-v4l2-add-ftrace-v2-9-9756edf72ac1@collabora.com>
References: <20260610-v4l2-add-ftrace-v2-0-9756edf72ac1@collabora.com>
In-Reply-To: <20260610-v4l2-add-ftrace-v2-0-9756edf72ac1@collabora.com>
To: Daniel Almeida <daniel.almeida@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-trace-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_073432_522251_87ECBA51 
X-CRM114-Status: GOOD (  14.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Add the trace calls as well as retrieving the number of clock cycles for
the rockchip_vpu core.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/media/platform/verisilicon/hantro.h               |  1 +
 drivers/media/platform/verisilicon/hantro_drv.c           | 10 ++++++++++
 drivers/media/platform/verisilicon/rockchip_vpu981_regs.h |  1 +
 drivers/media/platform/verisilicon/rockchip_vpu_hw.c      |  4 ++++
 4 files changed, 16 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 0353de154a1e..d5cddc783688 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -253,6 +253,7 @@ struct hantro_ctx {
 
 	u32 sequence_cap;
 	u32 sequence_out;
+	u32 hw_cycles;
 
 	const struct hantro_fmt *vpu_src_fmt;
 	struct v4l2_pix_format_mplane src_fmt;
diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..32855b14e0f1 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -25,6 +25,8 @@
 #include <media/videobuf2-core.h>
 #include <media/videobuf2-vmalloc.h>
 
+#include <trace/events/v4l2.h>
+
 #include "hantro_v4l2.h"
 #include "hantro.h"
 #include "hantro_hw.h"
@@ -103,6 +105,9 @@ void hantro_irq_done(struct hantro_dev *vpu,
 	struct hantro_ctx *ctx =
 		v4l2_m2m_get_curr_priv(vpu->m2m_dev);
 
+	if (ctx)
+		trace_v4l2_hw_done(ctx->fh.tgid, ctx->fh.fd, ctx->hw_cycles);
+
 	/*
 	 * If cancel_delayed_work returns false
 	 * the timeout expired. The watchdog is running,
@@ -125,6 +130,9 @@ void hantro_watchdog(struct work_struct *work)
 	ctx = v4l2_m2m_get_curr_priv(vpu->m2m_dev);
 	if (ctx) {
 		vpu_err("frame processing timed out!\n");
+
+		trace_v4l2_hw_done(ctx->fh.tgid, ctx->fh.fd, ctx->hw_cycles);
+
 		if (ctx->codec_ops->reset)
 			ctx->codec_ops->reset(ctx);
 		hantro_job_finish(vpu, ctx, VB2_BUF_STATE_ERROR);
@@ -189,6 +197,8 @@ static void device_run(void *priv)
 	if (ctx->codec_ops->run(ctx))
 		goto err_cancel_job;
 
+	trace_v4l2_hw_run(ctx->fh.tgid, ctx->fh.fd);
+
 	return;
 
 err_cancel_job:
diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h b/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
index e4008da64f19..96b85470208b 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
@@ -451,6 +451,7 @@
 #define av1_pp0_dup_ver			AV1_DEC_REG(394, 16, 0xff)
 #define av1_pp0_dup_hor			AV1_DEC_REG(394, 24, 0xff)
 
+#define AV1_CYCLE_COUNT			(AV1_SWREG(63))
 #define AV1_TILE_OUT_LU			(AV1_SWREG(65))
 #define AV1_REFERENCE_Y(i)		(AV1_SWREG(67) + ((i) * 0x8))
 #define AV1_SEGMENTATION		(AV1_SWREG(81))
diff --git a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
index 02673be9878e..f959151b6645 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
@@ -424,6 +424,8 @@ static irqreturn_t rk3588_vpu981_irq(int irq, void *dev_id)
 {
 	struct hantro_dev *vpu = dev_id;
 	enum vb2_buffer_state state;
+	struct hantro_ctx *ctx =
+		v4l2_m2m_get_curr_priv(vpu->m2m_dev);
 	u32 status;
 
 	status = vdpu_read(vpu, AV1_REG_INTERRUPT);
@@ -433,6 +435,8 @@ static irqreturn_t rk3588_vpu981_irq(int irq, void *dev_id)
 	vdpu_write(vpu, 0, AV1_REG_INTERRUPT);
 	vdpu_write(vpu, AV1_REG_CONFIG_DEC_CLK_GATE_E, AV1_REG_CONFIG);
 
+	ctx->hw_cycles = vdpu_read(vpu, AV1_CYCLE_COUNT);
+
 	hantro_irq_done(vpu, state);
 
 	return IRQ_HANDLED;

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
