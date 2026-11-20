Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5478C60A2611
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=c3QD7GMH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=oKcN+iAf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/6BGoo9yXV3QeBi2fYLHgjCKM9v2M5/qOibxTF0kx/M=; b=c3QD7GMH2Kfl20YAU9VjMVLSR+
	fXMi5eM/jDVlF2wLM1urIP/IBg9Nv1Vb1ymOT0EiJuUMi6XbL2VYgazHQnVTO+QDuIE9a2KeDMOYJ
	Xh4CCod6URdjMP9jNoqrBuWwVjW/fX5Kh85B7yRDLTmFaEzOlUZugjcT6hkYxC//JrHZ768X1Zb/K
	gMOpQEhslhA+4ddl9JX1Y2lYyCl9TcR0tNwJqPciKc7ZflxmixaKrO8xih4+8TuKSn/kCKYw0jMqw
	lvfdVgEdxNKqkUWqFEbs9scLJpO67fFqlOOpv5w5AKPD+VSjzi2EijPRv4MiFQCvEx1A95a6pUQTs
	vMvNrn2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJS-0000000FNFW-2zrb;
	Fri, 20 Nov 2026 15:14:06 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJG-0000000FN9z-195p
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795187631;
	bh=Ed1Md27qrSsvQ/BXYyeWigNJOnNjTq+gJh4jBrH7oeE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oKcN+iAfhTzZQT7g4fSdG3NcLLBtuSJtQM2ui4wm9c2+SFGm0VenRz7O7Ts1WOT0R
	 XJXu7sJo2VvipkLQQaLehSwnqwjqjw1pOj2pBRNDWEMCye+nMQazgDUevmARbgtPLC
	 r6yBh/dzfs34ouFcCDZKoisgxv773Ny/jrWMkiV8Ha0U8iN9nKII9wq/WSaSaPcNTP
	 b38UEiwGxDSE5u+/0R/Wys5dND++SuS9vtnayEDQYdUDa3p1VtdS825lDpUYPQt4zd
	 jRguQXWMa48Epzs2AEWn7LZZk0RF5vIie1N+QymAXPbJnHslE9/laPD8+xeEFXJmhv
	 zYnLO+aQYPETQ==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 36E6317E0630;
	Fri, 20 Nov 2026 16:13:51 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 1/7] media: verisilicon: Add helpers to allocate and free auxiliary buffers
Date: Fri, 20 Nov 2026 16:13:39 +0100
Message-ID: <20261120151345.88802-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_071354_652049_CEC7232D 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add helpers functions to allocate and free the auxiliary buffers.
That simplify the code and make it easier to read and maintain.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
changes in v2:
- fix commit message

 drivers/media/platform/verisilicon/hantro.h   |  4 +++
 .../platform/verisilicon/hantro_postproc.c    | 21 ++---------
 .../media/platform/verisilicon/hantro_v4l2.c  | 35 +++++++++++++++++++
 3 files changed, 42 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 0353de154a1e..f2f02522a543 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -507,4 +507,8 @@ void hantro_postproc_free(struct hantro_ctx *ctx);
 int hanto_postproc_enum_framesizes(struct hantro_ctx *ctx,
 				   struct v4l2_frmsizeenum *fsize);
 
+int hantro_allocate_aux_buf(struct hantro_ctx *ctx, struct hantro_aux_buf *aux_buf,
+			    size_t size);
+void hantro_free_aux_buf(struct hantro_ctx *ctx, struct hantro_aux_buf *aux_buf);
+
 #endif /* HANTRO_H_ */
diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index e94d1ba5ef10..3e202076bd2f 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -180,7 +180,6 @@ static int hantro_postproc_g2_enum_framesizes(struct hantro_ctx *ctx,
 
 void hantro_postproc_free(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	struct vb2_queue *queue = &m2m_ctx->cap_q_ctx.q;
 	unsigned int i;
@@ -188,11 +187,7 @@ void hantro_postproc_free(struct hantro_ctx *ctx)
 	for (i = 0; i < queue->max_num_buffers; ++i) {
 		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
 
-		if (priv->cpu) {
-			dma_free_attrs(vpu->dev, priv->size, priv->cpu,
-				       priv->dma, priv->attrs);
-			priv->cpu = NULL;
-		}
+		hantro_free_aux_buf(ctx, priv);
 	}
 }
 
@@ -223,7 +218,6 @@ static unsigned int hantro_postproc_buffer_size(struct hantro_ctx *ctx)
 
 static int hantro_postproc_alloc(struct hantro_ctx *ctx, int index)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_aux_buf *priv = &ctx->postproc.dec_q[index];
 	unsigned int buf_size = hantro_postproc_buffer_size(ctx);
 
@@ -235,13 +229,7 @@ static int hantro_postproc_alloc(struct hantro_ctx *ctx, int index)
 	 * buffers for the decoder, so no mapping is needed.
 	 */
 	priv->attrs = DMA_ATTR_NO_KERNEL_MAPPING;
-	priv->cpu = dma_alloc_attrs(vpu->dev, buf_size, &priv->dma,
-				    GFP_KERNEL, priv->attrs);
-	if (!priv->cpu)
-		return -ENOMEM;
-	priv->size = buf_size;
-
-	return 0;
+	return hantro_allocate_aux_buf(ctx, priv, buf_size);
 }
 
 int hantro_postproc_init(struct hantro_ctx *ctx)
@@ -268,14 +256,11 @@ hantro_postproc_get_dec_buf_addr(struct hantro_ctx *ctx, int index)
 {
 	struct hantro_aux_buf *priv = &ctx->postproc.dec_q[index];
 	unsigned int buf_size = hantro_postproc_buffer_size(ctx);
-	struct hantro_dev *vpu = ctx->dev;
 	int ret;
 
 	if (priv->size < buf_size && priv->cpu) {
 		/* buffer is too small, release it */
-		dma_free_attrs(vpu->dev, priv->size, priv->cpu,
-			       priv->dma, priv->attrs);
-		priv->cpu = NULL;
+		hantro_free_aux_buf(ctx, priv);
 	}
 
 	if (!priv->cpu) {
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 83af9fa1ce94..ec12950a1ae1 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -1029,3 +1029,38 @@ const struct vb2_ops hantro_queue_ops = {
 	.start_streaming = hantro_start_streaming,
 	.stop_streaming = hantro_stop_streaming,
 };
+
+int hantro_allocate_aux_buf(struct hantro_ctx *ctx, struct hantro_aux_buf *aux_buf,
+			    size_t size)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (!aux_buf || !ctx || !size)
+		return -EINVAL;
+
+	aux_buf->cpu = dma_alloc_attrs(vpu->dev, size,
+				       &aux_buf->dma,
+				       GFP_KERNEL,
+				       aux_buf->attrs);
+	if (!aux_buf->cpu)
+		return -ENOMEM;
+
+	aux_buf->size = size;
+
+	return 0;
+}
+
+void hantro_free_aux_buf(struct hantro_ctx *ctx, struct hantro_aux_buf *aux_buf)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (!aux_buf || !ctx)
+		return;
+
+	if (aux_buf->cpu)
+		dma_free_attrs(vpu->dev, aux_buf->size,
+			       aux_buf->cpu, aux_buf->dma,
+			       aux_buf->attrs);
+	aux_buf->cpu = NULL;
+	aux_buf->size = 0;
+}
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
