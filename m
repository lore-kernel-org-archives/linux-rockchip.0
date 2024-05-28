Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1EB8C27C50
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 14:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjW95DMEuZCp6CCRs+HZpgVn61+gzQzSFqyB+43UR+0=; b=xBp2dvhcbJgvvQ
	Lan3AR1Ux7uE3Sajpe+lHvdoSobYbLyrwpyn6etbviI0r6r96+2hXxxM6VjfUSXRzG2c8SZz6o9BT
	LZ+g1VgU9TZnyctx5gqftnpItaWK+djruS3u3P/h0LTyrhA0aoUwblvYpf4yOLSPbuOC22u4X/1nk
	f38U1KmvAPw5t/tdSLW8Lmdnw3Fh3J14Rb0eXOjkBt3arxLF45JFfFqcc2Om0m27cweStcB7Rp/4u
	XCBxNuVVWXgRySmI6UtsrTHSa+rsszYZUglqGfY7EUzDpVs0dcun95gCCmGu0597cWc1eVnb86HtJ
	ui0DkzQOyYA6XIFKQObQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxSN-00000000vi0-3aln;
	Tue, 28 May 2024 14:05:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxS7-00000000vXS-0hKS
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 14:05:24 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1sBxS0-0005wE-Pd; Tue, 28 May 2024 16:05:16 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 28 May 2024 16:05:14 +0200
Subject: [PATCH 2/2] media: rockchip: rga: fix sequence number handling
MIME-Version: 1.0
Message-Id: <20240528-rk3568-rga-v1-2-b946e55d9d37@pengutronix.de>
References: <20240528-rk3568-rga-v1-0-b946e55d9d37@pengutronix.de>
In-Reply-To: <20240528-rk3568-rga-v1-0-b946e55d9d37@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 kernel@pengutronix.de
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_070523_632926_A991193F 
X-CRM114-Status: GOOD (  12.79  )
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

The RGA driver didn't set the sequence numbers of the returned buffers.

Keep track of the CAPTURE and OUTPUT sequence numbers, and set the
sequence numbers in the source and destination buffers.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 5 +++++
 drivers/media/platform/rockchip/rga/rga.c     | 4 ++++
 drivers/media/platform/rockchip/rga/rga.h     | 3 +++
 3 files changed, 12 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 77c7535893e3..48bb45ec0230 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -205,6 +205,11 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
 		return ret;
 	}
 
+	if (V4L2_TYPE_IS_OUTPUT(q->type))
+		ctx->osequence = 0;
+	else
+		ctx->csequence = 0;
+
 	return 0;
 }
 
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 00fdfa9e10bc..0e768f3e9eda 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -43,6 +43,8 @@ static void device_run(void *prv)
 	rga->curr = ctx;
 
 	src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	src->sequence = ctx->osequence++;
+
 	dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
 	rga_hw_start(rga, vb_to_rga(src), vb_to_rga(dst));
@@ -75,6 +77,8 @@ static irqreturn_t rga_isr(int irq, void *prv)
 
 		v4l2_m2m_buf_copy_metadata(src, dst, true);
 
+		dst->sequence = ctx->csequence++;
+
 		v4l2_m2m_buf_done(src, VB2_BUF_STATE_DONE);
 		v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
 		v4l2_m2m_job_finish(rga->m2m_dev, ctx->fh.m2m_ctx);
diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
index 3502dff6055c..8105bb2efe57 100644
--- a/drivers/media/platform/rockchip/rga/rga.h
+++ b/drivers/media/platform/rockchip/rga/rga.h
@@ -57,6 +57,9 @@ struct rga_ctx {
 	struct rga_frame out;
 	struct v4l2_ctrl_handler ctrl_handler;
 
+	int osequence;
+	int csequence;
+
 	/* Control values */
 	u32 op;
 	u32 hflip;

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
