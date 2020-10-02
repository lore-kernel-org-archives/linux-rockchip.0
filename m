Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DFB2C4727F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DEF1F2085B
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xpUKzHsH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DEF1F2085B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jq1S2htPvsq2WfxiUZ7xJLFH69/l+tmtWNmhaGrRs5o=; b=xpUKzHsH8JdXhKfUZeeqYLzWrj
	sTnARqCXims+oocZRgDuZSyvdk9jmGddMRWnRh+tFwSQjJr9C81/VkuUDDn7Z5YQddkfAVExClnRC
	eBMxfQcuWPDW+hQwdoZI8TpwWTdy83ZFJKokdU6yC1b1UOb+R0kjbgTit+IbKN4K/vBJ6tG+5rBqw
	uNeZyPmgpIEXo5uheXJoKIO7GwoTwi1YvFDA67W7ImhxyC9mc2gZP9f2Kv2VxnO6ozkYewq5d4/Rf
	Wll+lKuuzjQSTp1QjXdlzs3YY6CXxZt3tjlur0eey5ywkY3S1l2nkY72RBFxEq0DhXZO9gB0U3P6E
	g/dnXSjQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOQ0t-00049j-Bh; Fri, 02 Oct 2020 18:42:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOQ0o-00045k-Se
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 18:42:36 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec00987cfa6c93a91dfa.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0EFA429DEF3;
 Fri,  2 Oct 2020 19:42:33 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 4/6] media: staging: rkisp1: remove the 'is_streaming' field
 from stats and params
Date: Fri,  2 Oct 2020 20:42:20 +0200
Message-Id: <20201002184222.7094-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
References: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_144235_160426_C8BD8272 
X-CRM114-Status: GOOD (  18.24  )
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

The params and stats entities have a field 'is_streaming'.
This field is not needed since the entities can have available
buffers only if they stream and therefore it is enough to
check if there are buffers available.
As a result, their start_stream callbacks can be removed since
they only set the 'is_streaming' field.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h | 12 ++++-------
 drivers/staging/media/rkisp1/rkisp1-params.c | 21 +-------------------
 drivers/staging/media/rkisp1/rkisp1-stats.c  | 17 ----------------
 3 files changed, 5 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 45abacdbb664..692333c66f9d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -240,19 +240,17 @@ struct rkisp1_capture {
  *
  * @vnode:	  video node
  * @rkisp1:	  pointer to the rkisp1 device
- * @lock:	  locks the buffer list 'stat' and 'is_streaming'
+ * @lock:	  locks the buffer list 'stat'
  * @stat:	  queue of rkisp1_buffer
  * @vdev_fmt:	  v4l2_format of the metadata format
- * @is_streaming: device is streaming
  */
 struct rkisp1_stats {
 	struct rkisp1_vdev_node vnode;
 	struct rkisp1_device *rkisp1;
 
-	spinlock_t lock; /* locks the buffers list 'stats' and 'is_streaming' */
+	spinlock_t lock; /* locks the buffers list 'stats' */
 	struct list_head stat;
 	struct v4l2_format vdev_fmt;
-	bool is_streaming;
 };
 
 /*
@@ -260,10 +258,9 @@ struct rkisp1_stats {
  *
  * @vnode:		video node
  * @rkisp1:		pointer to the rkisp1 device
- * @config_lock:	locks the buffer list 'params' and 'is_streaming'
+ * @config_lock:	locks the buffer list 'params'
  * @params:		queue of rkisp1_buffer
  * @vdev_fmt:		v4l2_format of the metadata format
- * @is_streaming:	device is streaming
  * @quantization:	the quantization configured on the isp's src pad
  * @raw_type:		the bayer pattern on the isp video sink pad
  */
@@ -271,10 +268,9 @@ struct rkisp1_params {
 	struct rkisp1_vdev_node vnode;
 	struct rkisp1_device *rkisp1;
 
-	spinlock_t config_lock; /* locks the buffers list 'params' and 'is_streaming' */
+	spinlock_t config_lock; /* locks the buffers list 'params' */
 	struct list_head params;
 	struct v4l2_format vdev_fmt;
-	bool is_streaming;
 
 	enum v4l2_quantization quantization;
 	enum rkisp1_fmt_raw_pat_type raw_type;
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index aa758f8c2264..3afbc24ca05e 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1224,10 +1224,6 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 	struct rkisp1_params *params = &rkisp1->params;
 
 	spin_lock(&params->config_lock);
-	if (!params->is_streaming) {
-		spin_unlock(&params->config_lock);
-		return;
-	}
 	rkisp1_params_apply_params_cfg(params, frame_sequence);
 
 	spin_unlock(&params->config_lock);
@@ -1303,8 +1299,7 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 	spin_lock_irq(&params->config_lock);
 
 	/* apply the first buffer if there is one already */
-	if (params->is_streaming)
-		rkisp1_params_apply_params_cfg(params, 0);
+	rkisp1_params_apply_params_cfg(params, 0);
 
 	spin_unlock_irq(&params->config_lock);
 }
@@ -1467,7 +1462,6 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 	 * without holding the lock
 	 */
 	spin_lock_irq(&params->config_lock);
-	params->is_streaming = false;
 	list_splice_init(&params->params, &tmp_list);
 	spin_unlock_irq(&params->config_lock);
 
@@ -1475,25 +1469,12 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }
 
-static int
-rkisp1_params_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
-{
-	struct rkisp1_params *params = queue->drv_priv;
-
-	spin_lock_irq(&params->config_lock);
-	params->is_streaming = true;
-	spin_unlock_irq(&params->config_lock);
-
-	return 0;
-}
-
 static struct vb2_ops rkisp1_params_vb2_ops = {
 	.queue_setup = rkisp1_params_vb2_queue_setup,
 	.wait_prepare = vb2_ops_wait_prepare,
 	.wait_finish = vb2_ops_wait_finish,
 	.buf_queue = rkisp1_params_vb2_buf_queue,
 	.buf_prepare = rkisp1_params_vb2_buf_prepare,
-	.start_streaming = rkisp1_params_vb2_start_streaming,
 	.stop_streaming = rkisp1_params_vb2_stop_streaming,
 
 };
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index c58ae52b8a98..3ddab8fa8f2d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -136,7 +136,6 @@ static void rkisp1_stats_vb2_stop_streaming(struct vb2_queue *vq)
 	unsigned int i;
 
 	spin_lock_irq(&stats->lock);
-	stats->is_streaming = false;
 	for (i = 0; i < RKISP1_ISP_STATS_REQ_BUFS_MAX; i++) {
 		if (list_empty(&stats->stat))
 			break;
@@ -148,18 +147,6 @@ static void rkisp1_stats_vb2_stop_streaming(struct vb2_queue *vq)
 	spin_unlock_irq(&stats->lock);
 }
 
-static int
-rkisp1_stats_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
-{
-	struct rkisp1_stats *stats = queue->drv_priv;
-
-	spin_lock_irq(&stats->lock);
-	stats->is_streaming = true;
-	spin_unlock_irq(&stats->lock);
-
-	return 0;
-}
-
 static const struct vb2_ops rkisp1_stats_vb2_ops = {
 	.queue_setup = rkisp1_stats_vb2_queue_setup,
 	.buf_queue = rkisp1_stats_vb2_buf_queue,
@@ -167,7 +154,6 @@ static const struct vb2_ops rkisp1_stats_vb2_ops = {
 	.wait_prepare = vb2_ops_wait_prepare,
 	.wait_finish = vb2_ops_wait_finish,
 	.stop_streaming = rkisp1_stats_vb2_stop_streaming,
-	.start_streaming = rkisp1_stats_vb2_start_streaming,
 };
 
 static int
@@ -355,12 +341,9 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
 	if (isp_mis_tmp & RKISP1_STATS_MEAS_MASK)
 		rkisp1->debug.stats_error++;
 
-	if (!stats->is_streaming)
-		goto unlock;
 	if (isp_ris & RKISP1_STATS_MEAS_MASK)
 		rkisp1_stats_send_measurement(stats, isp_ris);
 
-unlock:
 	spin_unlock(&stats->lock);
 }
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
