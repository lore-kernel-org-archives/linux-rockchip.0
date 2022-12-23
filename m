Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A9BC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 19:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvbFVEqO7CvrMtK+LVA/GP02x+087jyPbBP7rK60ozk=; b=G9rdXnyje2WJ9W
	IrC7JO1iIOiCveJKSiEyTswkwcdwan5Gpg/xegypLBu7GwhmTNJ08pkbECzkXFgeuzWoMiH+qRMoU
	kNLMGcQLSf5cv98FL0xHAxb3R+KhAzkETnF6B2YpG3bFzYLQVCfcEvGib7st4b+t4MWuHkvi8vOpU
	cIskdutIvFPSMdhup6/+bNOUCwOvs3wlFqyN839zYYqT162IdXXLknH96l2dTe5puxbWa7y/qK0UW
	XqUq2A2ZOuYsw65+H6vKBt+J9+3NF2azWsf4J1HY1tS8UR4Yg/IAPb7qvzBvO3P+2Kjz6niEsCa/6
	UTH3f0DqADLXNf2eWWHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8nsU-00BbxM-5k; Fri, 23 Dec 2022 19:38:46 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8nsR-00Bbs2-4H
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 19:38:45 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8DACE6602CDF;
	Fri, 23 Dec 2022 19:38:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671824318;
	bh=6GcOabw66VsX84Z/gphQUubf54+X891g3yoPH/UbEEY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IS+eubJThqDCFvet2vxtMhCIIxaTBSisgP3jlJXdfRMboqhzqtAohn3eTY/kHiCGv
	 bhOJc4Q9Mri0cG+gD/pNOY4Ux/uPOz1igJVblO7qQaTrE13MgZsKHWpivf72sL9JxL
	 xXPB9WMSKho3xdK1mYz80zTPVEy1VQFrCt8cn5Vy8/a0MPZ6kgd7M1aqoEAmLlHwjW
	 4w3r5YbiGgUg65S5lFT7bLJ9XYo9L7F4f+QYPiQ084zj3vbazndqxWfsiWmXQs+sfA
	 ZDzp7FvKvvR0tKNEv5y1m6DEt24Hxrv5VLTq9injYmS+qg6+orM/d//pwNy8lZsU3G
	 rqawE9lwSJHKA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] media: rkvdec: Add an ops to check for decode errors
Date: Fri, 23 Dec 2022 14:38:03 -0500
Message-Id: <20221223193807.914935-2-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_113843_388881_DA09B0D7 
X-CRM114-Status: GOOD (  12.73  )
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

This optional internal ops allow each codec to do their own
error status checking. The presence of an error is reported
using the ERROR buffer state. This patch have no functional
changes.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 10 ++++++----
 drivers/staging/media/rkvdec/rkvdec.h |  2 ++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7bab7586918c1..7e76f8b728854 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -950,6 +950,7 @@ static void rkvdec_v4l2_cleanup(struct rkvdec_dev *rkvdec)
 static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
 {
 	struct rkvdec_dev *rkvdec = priv;
+	struct rkvdec_ctx *ctx;
 	enum vb2_buffer_state state;
 	u32 status;
 
@@ -958,12 +959,13 @@ static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
 		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
 
 	writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);
-	if (cancel_delayed_work(&rkvdec->watchdog_work)) {
-		struct rkvdec_ctx *ctx;
+	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
 
-		ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
+	if (ctx->coded_fmt_desc->ops->check_error_info)
+		state = ctx->coded_fmt_desc->ops->check_error_info(ctx);
+
+	if (cancel_delayed_work(&rkvdec->watchdog_work))
 		rkvdec_job_finish(ctx, state);
-	}
 
 	return IRQ_HANDLED;
 }
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 633335ebb9c49..4ae8e6c6b03c9 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -73,6 +73,8 @@ struct rkvdec_coded_fmt_ops {
 		     struct vb2_v4l2_buffer *dst_buf,
 		     enum vb2_buffer_state result);
 	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
+	/* called from IRQ handler */
+	int (*check_error_info)(struct rkvdec_ctx *ctx);
 };
 
 struct rkvdec_coded_fmt_desc {
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
