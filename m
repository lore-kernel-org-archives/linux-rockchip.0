Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F42AC88E5C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 12:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Y10JoExTi6PHd74zelfxMa2lyBN0YQlGs23c5KwmFU=; b=ekL0PxQPAc/9My
	jcQzqfV+4/UZt6IYdMpKeic6xOu7zqi9Bi4MZuV1U6PaaJvuVYI18JrVHex0ZDK6ypVCjgdB/mSd4
	62vSo+oI3widcNnalDQgklquM6bRBuxdg3JSHAMdhW2xPb2yIN9jpaj0UvfMQfGnQN0bV8pr5e2je
	NKl+LW878PNAcahG1JILP6FDn8br1nxfGAJve+QbjuvQJyCJIp3kb0Ijkksq1rXmw/pnBeN3BVNQ7
	l8XRy11CUfvjLgw7Z5zHmFD2TLAVr8KHpmiMXpKhUnj0aymB029vRJcWhYSKStcoZfR2BtthTMp9/
	qRccGKv52oXDSgzzAHyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pA7-00000009DBL-2VbT;
	Wed, 16 Sep 2026 12:54:55 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pA4-00000009D9P-1L9P
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 12:54:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789563289;
	bh=NQVqy4hE+EYQflOm/DmxGobFKmKFXpxdIAMwBlCuXFY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X70Y/Pjmu6XmGEaxyMewbmGW/v6HiNjHdNWMN3VRrI1fMgbOghI2XK3KSh9PReAOD
	 UWPAgScPWTGjFoNUsTZHJKP/Te9HcoWWRMZg18vqvMQ/gdM3YZIET2EdZwvz0jqYSi
	 LmCTjuDGuSw7NkkTOoOPlurjN4HTt2vAa4tKQnH2pQOY5Pz/uBDowq5lr87WGr5dN7
	 3bEyNV02EvluaAvwVozhRvKbk7bB7laCkQdsUzxQl+hILXS32SVXQhh+soiSWa8W+h
	 OBF71IgJrM1TjR/xeU9Bw40svIjM0qjECiOULvKrgdZqv8kd9LyT9L0znGrHkxdNsW
	 sWVGMt6o+7lfA==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6513417E0C7E;
	Wed, 16 Sep 2026 14:54:49 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v1 1/7] media: verisilicon: Add helpers to allocate and free auxiliary buffers
Date: Wed, 16 Sep 2026 14:54:37 +0200
Message-ID: <20260916125443.78602-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_055452_565607_512E0B3B 
X-CRM114-Status: GOOD (  16.37  )
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

Add helpers functions to allocate and free the auxiliary buffers.
That simplify the code and make it more easy to read and maintain.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
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
