Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3770DC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C364423600
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qIxlZlU0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C364423600
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tOujSrfx+LIcXt6XIO2CXIA422z/HUnHPND0MiRmy8Y=; b=qIxlZlU0LCgy0tcrhZXLNE++qJ
	FlQtx1YIbfKBhLe/kQqzK9whTl4x+2WCxLYwbn4vVK4kjqyWs55hX/zgN23twA977akAzPpTxxIxs
	6yyfeg2IsL5LyAQJ66igf8+4dlZD1XS7LFpjQHftrcu0PwLuT9c3F5V6a3kI/xPDRnfqFiI2fR/mX
	TZnlVRAw8VtA1bYvIRLuxUAnwG45mRxE0Zo+77LKZLCFPYtX12X3xiXJxxVAUl0eOZw/6B2qN/2ii
	TeD4SWj5/U0JE5xzIDOL42l7oA6m9ujmLq/Ixv7tCMMAepqXOikzadFFS1f9+rksOdRTh1xDy6pXN
	2TmaG55w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgZM-0006NC-SD; Tue, 22 Sep 2020 11:34:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYv-00069M-3Q
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:27 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2A71029B4CE;
 Tue, 22 Sep 2020 12:34:14 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 11/12] media: staging: rkisp1: use the right variants of
 spin_lock
Date: Tue, 22 Sep 2020 13:34:01 +0200
Message-Id: <20200922113402.12442-12-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073421_471791_7E617952 
X-CRM114-Status: GOOD (  13.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When locking, use either 'spin_lock' or 'spin_lock_irq'
according to the context. There is nowhere need to
use 'spin_lock_irqsave'.
Outside of irq context, always use 'spin_lock_irq'
to be on the safe side.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 15 ++++++--------
 drivers/staging/media/rkisp1/rkisp1-params.c  | 20 ++++++++-----------
 2 files changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 1c762a369b63..012c0825a386 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -626,9 +626,8 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
 {
 	struct rkisp1_isp *isp = &cap->rkisp1->isp;
 	struct rkisp1_buffer *curr_buf;
-	unsigned long flags;
 
-	spin_lock_irqsave(&cap->buf.lock, flags);
+	spin_lock(&cap->buf.lock);
 	curr_buf = cap->buf.curr;
 
 	if (curr_buf) {
@@ -641,7 +640,7 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
 	}
 
 	rkisp1_set_next_buf(cap);
-	spin_unlock_irqrestore(&cap->buf.lock, flags);
+	spin_unlock(&cap->buf.lock);
 }
 
 void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
@@ -716,7 +715,6 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
 		container_of(vbuf, struct rkisp1_buffer, vb);
 	struct rkisp1_capture *cap = vb->vb2_queue->drv_priv;
 	const struct v4l2_pix_format_mplane *pixm = &cap->pix.fmt;
-	unsigned long flags;
 	unsigned int i;
 
 	memset(ispbuf->buff_addr, 0, sizeof(ispbuf->buff_addr));
@@ -741,9 +739,9 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
 		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
 		     ispbuf->buff_addr[RKISP1_PLANE_CB]);
 
-	spin_lock_irqsave(&cap->buf.lock, flags);
+	spin_lock_irq(&cap->buf.lock);
 	list_add_tail(&ispbuf->queue, &cap->buf.queue);
-	spin_unlock_irqrestore(&cap->buf.lock, flags);
+	spin_unlock_irq(&cap->buf.lock);
 }
 
 static int rkisp1_vb2_buf_prepare(struct vb2_buffer *vb)
@@ -769,10 +767,9 @@ static int rkisp1_vb2_buf_prepare(struct vb2_buffer *vb)
 static void rkisp1_return_all_buffers(struct rkisp1_capture *cap,
 				      enum vb2_buffer_state state)
 {
-	unsigned long flags;
 	struct rkisp1_buffer *buf;
 
-	spin_lock_irqsave(&cap->buf.lock, flags);
+	spin_lock_irq(&cap->buf.lock);
 	if (cap->buf.curr) {
 		vb2_buffer_done(&cap->buf.curr->vb.vb2_buf, state);
 		cap->buf.curr = NULL;
@@ -787,7 +784,7 @@ static void rkisp1_return_all_buffers(struct rkisp1_capture *cap,
 		list_del(&buf->queue);
 		vb2_buffer_done(&buf->vb.vb2_buf, state);
 	}
-	spin_unlock_irqrestore(&cap->buf.lock, flags);
+	spin_unlock_irq(&cap->buf.lock);
 }
 
 /*
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index f0258b4258ed..986d293201e6 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1300,16 +1300,15 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 	else
 		rkisp1_csm_config(params, false);
 
-	spin_lock(&params->config_lock);
+	spin_lock_irq(&params->config_lock);
 
 	/* apply the first buffer if there is one already */
 	if (params->is_streaming)
 		rkisp1_params_apply_params_cfg(params, 0);
 
-	spin_unlock(&params->config_lock);
+	spin_unlock_irq(&params->config_lock);
 }
 
-/* Not called when the camera active, thus not isr protection. */
 void rkisp1_params_configure(struct rkisp1_params *params,
 			     enum rkisp1_fmt_raw_pat_type bayer_pat,
 			     enum v4l2_quantization quantization)
@@ -1442,12 +1441,11 @@ static void rkisp1_params_vb2_buf_queue(struct vb2_buffer *vb)
 		container_of(vbuf, struct rkisp1_buffer, vb);
 	struct vb2_queue *vq = vb->vb2_queue;
 	struct rkisp1_params *params = vq->drv_priv;
-	unsigned long flags;
 
 	params_buf->vaddr = vb2_plane_vaddr(vb, 0);
-	spin_lock_irqsave(&params->config_lock, flags);
+	spin_lock_irq(&params->config_lock);
 	list_add_tail(&params_buf->queue, &params->params);
-	spin_unlock_irqrestore(&params->config_lock, flags);
+	spin_unlock_irq(&params->config_lock);
 }
 
 static int rkisp1_params_vb2_buf_prepare(struct vb2_buffer *vb)
@@ -1465,7 +1463,6 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 	struct rkisp1_params *params = vq->drv_priv;
 	struct rkisp1_buffer *buf;
 	struct list_head tmp_list;
-	unsigned long flags;
 
 	INIT_LIST_HEAD(&tmp_list);
 
@@ -1474,10 +1471,10 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 	 * and then we can iterate it and call vb2_buffer_done
 	 * without holding the lock
 	 */
-	spin_lock_irqsave(&params->config_lock, flags);
+	spin_lock_irq(&params->config_lock);
 	params->is_streaming = false;
 	list_cut_position(&tmp_list, &params->params, params->params.prev);
-	spin_unlock_irqrestore(&params->config_lock, flags);
+	spin_unlock_irq(&params->config_lock);
 
 	list_for_each_entry(buf, &tmp_list, queue)
 		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
@@ -1487,11 +1484,10 @@ static int
 rkisp1_params_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 {
 	struct rkisp1_params *params = queue->drv_priv;
-	unsigned long flags;
 
-	spin_lock_irqsave(&params->config_lock, flags);
+	spin_lock_irq(&params->config_lock);
 	params->is_streaming = true;
-	spin_unlock_irqrestore(&params->config_lock, flags);
+	spin_unlock_irq(&params->config_lock);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
