Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AD5C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B787221EB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fmkexD3M"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B787221EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DdAutxfyrhgta9i4fimoK6gqPWG2ZLMvAC2NnVl9JRg=; b=fmkexD3M+Km3wGNzUQvHRADLlW
	telzXx8bqgzKjNj2ZFEcZB0+naYvk8WLzXSvKInIBwS5O330yDfm9A1vf/7EJqJd2IiqDhC3smLaC
	3lHt59yDylPQSpyMkaDX27hgHPy14hJOhMw4tG1Cs+PfUmgwxZRlYpHmNLiN1NOdCB6Fo0Lc+SsjU
	CFNNXzYRD82IAAfpg8TeVO5Sk6m2aDSn9RCO8woqhTdpfKJBvGWMM9zOJSJbH9Xt4vrK3SgIbbbXH
	AcgDo/P9FEvkfXfBrHchl94izn6tkt1EecoU82P0kSN4I+Kh24EBX7UxkZe8fgG7PArezlpnFtzZ7
	dmSv9ZRg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgZ7-0006Gt-Tm; Tue, 22 Sep 2020 11:34:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYp-00064k-R1
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:19 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 297D729B4AE;
 Tue, 22 Sep 2020 12:34:11 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 04/12] media: staging: rkisp1: params: avoid using buffer
 if params is not streaming
Date: Tue, 22 Sep 2020 13:33:54 +0200
Message-Id: <20200922113402.12442-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073416_109972_9A0FA8FC 
X-CRM114-Status: GOOD (  23.49  )
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
Reported-by: kernel test robot <lkp@intel.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
changes since v2:
declare function 'rkisp1_params_apply_params_cfg' as static
to fix a warning reported by 'kernel test robot <lkp@intel.com>'
---
 drivers/staging/media/rkisp1/rkisp1-common.h |  4 --
 drivers/staging/media/rkisp1/rkisp1-params.c | 50 ++++++++------------
 2 files changed, 20 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 992d8ec4c448..232bee92d0eb 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -262,10 +262,8 @@ struct rkisp1_stats {
  * @rkisp1:		pointer to the rkisp1 device
  * @config_lock:	locks the buffer list 'params' and 'is_streaming'
  * @params:		queue of rkisp1_buffer
- * @cur_params:		the first params values from userspace
  * @vdev_fmt:		v4l2_format of the metadata format
  * @is_streaming:	device is streaming
- * @is_first_params:	the first params should take effect immediately
  * @quantization:	the quantization configured on the isp's src pad
  * @raw_type:		the bayer pattern on the isp video sink pad
  */
@@ -275,10 +273,8 @@ struct rkisp1_params {
 
 	spinlock_t config_lock; /* locks the buffers list 'params' and 'is_streaming' */
 	struct list_head params;
-	struct rkisp1_params_cfg cur_params;
 	struct v4l2_format vdev_fmt;
 	bool is_streaming;
-	bool is_first_params;
 
 	enum v4l2_quantization quantization;
 	enum rkisp1_fmt_raw_pat_type raw_type;
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index ab2deb57b1eb..e8049a50575f 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1185,23 +1185,14 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	}
 }
 
-void rkisp1_params_isr(struct rkisp1_device *rkisp1)
+static void rkisp1_params_apply_params_cfg(struct rkisp1_params *params,
+					   unsigned int frame_sequence)
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
@@ -1218,6 +1209,20 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 
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
 
@@ -1290,9 +1295,9 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
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
@@ -1420,8 +1425,6 @@ static int rkisp1_params_vb2_queue_setup(struct vb2_queue *vq,
 	sizes[0] = sizeof(struct rkisp1_params_cfg);
 
 	INIT_LIST_HEAD(&params->params);
-	params->is_first_params = true;
-
 	return 0;
 }
 
@@ -1432,20 +1435,7 @@ static void rkisp1_params_vb2_buf_queue(struct vb2_buffer *vb)
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
 
 	params_buf->vaddr = vb2_plane_vaddr(vb, 0);
 	spin_lock_irqsave(&params->config_lock, flags);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
