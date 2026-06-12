Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFFD9CD98E7
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 14:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuP75uYPz/fxMhF1OUZ1jlc91z4A4k0MMozygfmYitA=; b=LQ/bSUakRln18Q
	4qsRzhiW7pN3qc5SIfH7nQm/keujzm7OTXpD07Bd1DZ45+OnSP03qMqdN34gY8jQPTT6RbOrHwgQS
	LzRASMw3FofTuAHifGNcLDmuECkJW3tVmIf91sN5YEpjB3FqfFUoS/lxT4yXkpJcxkv8Dni8iwjKi
	MeGF8qqgBKt6o52cDV7Ll0u+BQ/MXgEKTX9NWYOIm+NAIlJ5jRXQuM9kbzOftrFzoNVC9zc0Il99E
	FVaMPPO1N0RZRaNeszTjNuTSdOOEKdnvAiZPM/0gXwssLJJ2VLNQV+H11nSiD0ssVlHxVkiFL4ueJ
	A/k4YiiA8sZJwW/B8HtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2qO-0000000B3mr-3yOM;
	Fri, 12 Jun 2026 14:26:48 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2qM-0000000B3ko-2EFN
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 14:26:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781274403;
	bh=3/+l66Jby3Ob6b8WDbOFfWQZ2E/2AdQmfG5w8ZRKFUE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=epkv2RA94Ej8gwlUwI31mpuULnmWD/inam2UUvAtrbqrFI/o4wHM6egg489YpKhnN
	 3EYJvPU/Q9HCg4PqLH9vOvWLQPdB+71rZmNsPOhh/T+OjYbtO/bwC5KVL2DA0D6lUq
	 wyuW0/XJEmS8qsGTwmaUZNppK28p5CWf8O7OOZD6aj+UUwrX3n9JnIzkRk/C4hMUpJ
	 NAVeJ8tR/xfjD5/HZVMMeiVHMbazG3iXX3iEgu8hN/7lJW3vb6AlOcHHussMhWgR/E
	 5O48WQGuKoKBTaPw5UwlCf6559H4fsBRBaIaNL0oC+fJNaPYXIxmyc62ffzepb4vVx
	 lZ+FcmjB1xesQ==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EEE2517E0CD4;
	Fri, 12 Jun 2026 16:26:41 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Fri, 12 Jun 2026 10:26:24 -0400
Subject: [PATCH 3/3] media: hantro: add per-context fdinfo usage stats
MIME-Version: 1.0
Message-Id: <20260612-v4l2-add-fdinfo-v1-3-723211abc861@collabora.com>
References: <20260612-v4l2-add-fdinfo-v1-0-723211abc861@collabora.com>
In-Reply-To: <20260612-v4l2-add-fdinfo-v1-0-723211abc861@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, kernel@collabora.com, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Christopher Healy <healych@amazon.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_072646_964630_2ACB2E05 
X-CRM114-Status: GOOD (  14.59  )
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

From: Christopher Healy <healych@amazon.com>

Add per-file-descriptor hardware utilization tracking to the Hantro
VPU stateless codec driver, exposed via /proc/<pid>/fdinfo/<fd>.

Record a ktime timestamp when each job is submitted to hardware in
device_run(), and accumulate the elapsed nanoseconds when the job
completes in hantro_job_finish(). Report the accumulated time along
with the current clock frequency through the new V4L2 show_fdinfo
callback.

The output uses a media- key prefix with the following keys:
  media-driver:           driver name
  media-engine-<eng>:     accumulated busy time in nanoseconds
  media-maxfreq-<eng>:    maximum engine frequency in Hz
  media-curfreq-<eng>:    current engine frequency in Hz

Where <eng> is "decoder" or "encoder" depending on the context.

This enables userspace monitoring tools to compute per-process decoder
and encoder utilization. The current and max frequency keys report the
same value today since the driver lacks devfreq support, but will
diverge once DVFS is added, allowing userspace to approximate true
capacity utilization without any fdinfo code changes. A future series
can add hardware cycle counter support (via media-cycles-<eng>) for
exact utilization under DVFS, with no changes to the existing uAPI.

Signed-off-by: Christopher Healy <healych@amazon.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/media/platform/verisilicon/hantro.h     |  5 +++++
 drivers/media/platform/verisilicon/hantro_drv.c | 22 ++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 0353de154a1e..10287e5cebac 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -16,6 +16,7 @@
 #include <linux/videodev2.h>
 #include <linux/wait.h>
 #include <linux/clk.h>
+#include <linux/ktime.h>
 #include <linux/reset.h>
 
 #include <media/v4l2-ctrls.h>
@@ -268,6 +269,10 @@ struct hantro_ctx {
 	struct hantro_postproc_ctx postproc;
 	bool need_postproc;
 
+	/* Statistics for debugging and performance measurements. */
+	ktime_t start_time;
+	u64 total_ns;
+
 	/* Specific for particular codec modes. */
 	union {
 		struct hantro_h264_dec_hw_ctx h264_dec;
diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..139c2e6a83aa 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -90,6 +90,8 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 			      struct hantro_ctx *ctx,
 			      enum vb2_buffer_state result)
 {
+	ctx->total_ns += ktime_to_ns(ktime_sub(ktime_get(), ctx->start_time));
+
 	pm_runtime_put_autosuspend(vpu->dev);
 
 	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
@@ -186,6 +188,8 @@ static void device_run(void *priv)
 
 	v4l2_m2m_buf_copy_metadata(src, dst);
 
+	ctx->start_time = ktime_get();
+
 	if (ctx->codec_ops->run(ctx))
 		goto err_cancel_job;
 
@@ -701,10 +705,28 @@ static int hantro_release(struct file *filp)
 	return 0;
 }
 
+static void hantro_show_fdinfo(struct seq_file *m, struct file *f)
+{
+	struct hantro_ctx *ctx = file_to_ctx(f);
+	struct hantro_dev *vpu = ctx->dev;
+
+	seq_printf(m, "media-driver:\t%s\n", DRIVER_NAME);
+	seq_printf(m, "media-engine-%s:\t%llu ns\n",
+		   ctx->is_encoder ? "encoder" : "decoder",
+		   ctx->total_ns);
+	seq_printf(m, "media-maxfreq-%s:\t%lu Hz\n",
+		   ctx->is_encoder ? "encoder" : "decoder",
+		   clk_get_rate(vpu->clocks[0].clk));
+	seq_printf(m, "media-curfreq-%s:\t%lu Hz\n",
+		   ctx->is_encoder ? "encoder" : "decoder",
+		   clk_get_rate(vpu->clocks[0].clk));
+}
+
 static const struct v4l2_file_operations hantro_fops = {
 	.owner = THIS_MODULE,
 	.open = hantro_open,
 	.release = hantro_release,
+	.show_fdinfo = hantro_show_fdinfo,
 	.poll = v4l2_m2m_fop_poll,
 	.unlocked_ioctl = video_ioctl2,
 	.mmap = v4l2_m2m_fop_mmap,

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
