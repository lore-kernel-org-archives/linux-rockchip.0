Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCDADC433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF0A422EBF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="KNLatYNQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF0A422EBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uwt+5BC4Gjzu5goZZavB+Mu3XqWUGVqHb+RrrhVGZtc=; b=KNLatYNQTGQQpiC2pDnXhUrWUL
	+IpcgILK8PQpKlq7aFvp4OUR2T0ECJnHxzh5VTC/WqLa1Wzsi9Pup2bOSvNeLuhvQcu/H3O0HN6tO
	KSVMkNZchb4SGGe3gTcDeZ9L9rJur90Qtu3Bf4NtumZ1NT87CoaJhGewlz+pdCEZMnuK804d4L29O
	K5eREBIgYGZ/XZ+mo9kSjuMh4QeRQIeDPz1LmlLAJTz3wX8Sy3sFwVDNctcJ4qOyH5OLG/TAQguVq
	Ljyk6HVQayjv/vq/mwMuifYbYv9FsRdIb2Z6K0gsPudOfe41+kq1/c8AtUhf0oFznCn7gSe6KFp++
	KPArjEqw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZh-0001N0-RU; Sat, 15 Aug 2020 10:38:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZV-0001DT-J8
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:38:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 7FA3229A95F
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 07/14] media: staging: rkisp1: params: avoid using buffer
 if params is not streaming
Date: Sat, 15 Aug 2020 12:37:27 +0200
Message-Id: <20200815103734.31153-8-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063757_841902_9DD4921E 
X-CRM114-Status: GOOD (  20.29  )
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

Currently, the first buffer queued in the params node is returned
immediately to userspace and a copy of it is saved in the field
'cur_params'. The copy is later used for the first configuration
when the stream is initiated by one of selfpath/mainpath capture nodes.

There are 3 problems with this implementation:
- The first params buffer is applied and returned to userspace even if
userspace never calls to streamon on the params node.
- If the first params buffer is queued after the stream started on the
params node then it will return to userspace but will never be used.
- The frame_sequence of the first buffer is set to -1 if the main/selfpath
did not start streaming.

A correct implementation is to apply the first params buffer when stream
is started from mainpath/selfpath and only if params is also streaming.

The patch adds a new function 'rkisp1_params_apply_params_cfg' which takes
a buffer from the buffers queue, apply it and returns it to userspace.
The function is called from the irq handler and when main/selfpath stream
starts - in the function 'rkisp1_params_config_parameter'

Also remove the fields 'cur_params', 'is_first_params' which are no
more needed.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h |  5 --
 drivers/staging/media/rkisp1/rkisp1-params.c | 49 ++++++++------------
 2 files changed, 19 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 29eaadc58489..9b41935c6597 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -197,9 +197,6 @@ struct rkisp1_stats {
 
 /*
  * struct rkisp1_params - ISP input parameters device
- *
- * @cur_params: Current ISP parameters
- * @is_first_params: the first params should take effect immediately
  */
 struct rkisp1_params {
 	struct rkisp1_vdev_node vnode;
@@ -207,10 +204,8 @@ struct rkisp1_params {
 
 	spinlock_t config_lock;
 	struct list_head params;
-	struct rkisp1_params_cfg cur_params;
 	struct v4l2_format vdev_fmt;
 	bool is_streaming;
-	bool is_first_params;
 
 	enum v4l2_quantization quantization;
 	enum rkisp1_fmt_raw_pat_type raw_type;
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 86bbd01e18c7..134b5c9a94c1 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1193,23 +1193,13 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	}
 }
 
-void rkisp1_params_isr(struct rkisp1_device *rkisp1)
+void rkisp1_params_apply_params_cfg(struct rkisp1_params *params, unsigned int frame_sequence)
 {
-	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
-	struct rkisp1_params *params = &rkisp1->params;
 	struct rkisp1_params_cfg *new_params;
 	struct rkisp1_buffer *cur_buf = NULL;
 
-	spin_lock(&params->config_lock);
-	if (!params->is_streaming) {
-		spin_unlock(&params->config_lock);
-		return;
-	}
-
-	if (list_empty(&params->params)) {
-		spin_unlock(&params->config_lock);
+	if (list_empty(&params->params))
 		return;
-	}
 
 	cur_buf = list_first_entry(&params->params,
 				   struct rkisp1_buffer, queue);
@@ -1226,6 +1216,20 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 
 	cur_buf->vb.sequence = frame_sequence;
 	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+}
+
+void rkisp1_params_isr(struct rkisp1_device *rkisp1)
+{
+	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
+	struct rkisp1_params *params = &rkisp1->params;
+
+	spin_lock(&params->config_lock);
+	if (!params->is_streaming) {
+		spin_unlock(&params->config_lock);
+		return;
+	}
+	rkisp1_params_apply_params_cfg(params, frame_sequence);
+
 	spin_unlock(&params->config_lock);
 }
 
@@ -1298,9 +1302,9 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 	else
 		rkisp1_csm_config(params, false);
 
-	/* override the default things */
-	rkisp1_isp_isr_other_config(params, &params->cur_params);
-	rkisp1_isp_isr_meas_config(params, &params->cur_params);
+	/* apply the first buffer if there is one already */
+	if (params->is_streaming)
+		rkisp1_params_apply_params_cfg(params, 0);
 
 	spin_unlock(&params->config_lock);
 }
@@ -1428,8 +1432,6 @@ static int rkisp1_params_vb2_queue_setup(struct vb2_queue *vq,
 	sizes[0] = sizeof(struct rkisp1_params_cfg);
 
 	INIT_LIST_HEAD(&params->params);
-	params->is_first_params = true;
-
 	return 0;
 }
 
@@ -1440,20 +1442,7 @@ static void rkisp1_params_vb2_buf_queue(struct vb2_buffer *vb)
 		container_of(vbuf, struct rkisp1_buffer, vb);
 	struct vb2_queue *vq = vb->vb2_queue;
 	struct rkisp1_params *params = vq->drv_priv;
-	struct rkisp1_params_cfg *new_params;
 	unsigned long flags;
-	unsigned int frame_sequence =
-		atomic_read(&params->rkisp1->isp.frame_sequence);
-
-	if (params->is_first_params) {
-		new_params = (struct rkisp1_params_cfg *)
-			(vb2_plane_vaddr(vb, 0));
-		vbuf->sequence = frame_sequence;
-		vb2_buffer_done(&params_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
-		params->is_first_params = false;
-		params->cur_params = *new_params;
-		return;
-	}
 
 	params_buf->vaddr[0] = vb2_plane_vaddr(vb, 0);
 	spin_lock_irqsave(&params->config_lock, flags);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
