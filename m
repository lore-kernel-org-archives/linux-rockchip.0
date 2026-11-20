Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB9C606A33A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vRnkJr0E;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=RHprcYsB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0wp2K9zx7z6aZgKWmtLu/X1WkDQKSSc6WDLhX+tDrTY=; b=vRnkJr0EGWnimLsqyHXI/Pfy+D
	0AwtsED+s8eJajIVgwpu60c9MeUr0E6mRo/nTtKULOab6RmUjGzlV29nUFVPLGq/HwQ1y9BqknMuB
	0mgNlsto9pLurXYefiB7GvTso79uWryG79nnbxxsqHqpzeMv40ZhLZuzmPjudEsD2DmQT9hwNQCjO
	AaE4dB/ZFhZTxGYNgiaYMm4GjuurHAYKnAH0ZtCn50IsH4LX2XR5YkK0Gk6zoJtUMtMX+O3liuC0l
	Cv0HnzJERmxdhPmC5lP7UYpA6sEg+cBVlYZFNJLzw8u0KVOzFr/PfZnpERFq3iHYP6pHddh7bbqyu
	Xsy9u7Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJS-0000000FNG4-3o5T;
	Fri, 20 Nov 2026 15:14:06 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJG-0000000FNA1-19M8
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795187631;
	bh=A02ED9LtA+ehxxa4E3wM7zDbo9eIWPexhlev9g9E81Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RHprcYsBLGhCPnleM/840zyTL99FWPeeQQPFcIn8cBlWAQDefIutidI5xDZteVCU1
	 eifLfyZPd+eQlB4lYkbw/uiD/IyNmR6bCDnkqp/9opSMi4y2Bfwuiiazora5LxxMHR
	 40zAMTBBDwtQHQ3mkKhxXK0baq2DmVOMPW4xcyT4pE8uIqRfe5UpVS83Mwq32yGGvx
	 pjvRS+xjAGibDm/CnEM8+AGjvsiVwwZXp1RHKBLx8voQ1jBc88K96GQifIuPbqK2iQ
	 chhn4A79+PiU4xj0nfl4XRPK4WszLDD0cTUlnEB8Hk60p5cD8jZl8QgDBWisXetSMI
	 /8CLljSQSdjVw==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8A8AB17E0883;
	Fri, 20 Nov 2026 16:13:51 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 2/7] media: verisilicon: AV1: Use alloc/free helpers for auxiliary buffers
Date: Fri, 20 Nov 2026 16:13:40 +0100
Message-ID: <20261120151345.88802-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_071354_658356_6BDBE6CB 
X-CRM114-Status: GOOD (  11.77  )
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

Simplify and clean up the code by using the helpers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 .../media/platform/verisilicon/hantro_av1.c   | 177 ++++--------------
 1 file changed, 39 insertions(+), 138 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_av1.c b/drivers/media/platform/verisilicon/hantro_av1.c
index 2cde32f0e935..e05816c7dfa3 100644
--- a/drivers/media/platform/verisilicon/hantro_av1.c
+++ b/drivers/media/platform/verisilicon/hantro_av1.c
@@ -235,40 +235,17 @@ size_t hantro_av1_chroma_size(struct hantro_ctx *ctx)
 
 static void hantro_av1_tiles_free(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
 
-	if (av1_dec->db_data_col.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->db_data_col.size,
-				  av1_dec->db_data_col.cpu,
-				  av1_dec->db_data_col.dma);
-	av1_dec->db_data_col.cpu = NULL;
-
-	if (av1_dec->db_ctrl_col.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->db_ctrl_col.size,
-				  av1_dec->db_ctrl_col.cpu,
-				  av1_dec->db_ctrl_col.dma);
-	av1_dec->db_ctrl_col.cpu = NULL;
-
-	if (av1_dec->cdef_col.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->cdef_col.size,
-				  av1_dec->cdef_col.cpu, av1_dec->cdef_col.dma);
-	av1_dec->cdef_col.cpu = NULL;
-
-	if (av1_dec->sr_col.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->sr_col.size,
-				  av1_dec->sr_col.cpu, av1_dec->sr_col.dma);
-	av1_dec->sr_col.cpu = NULL;
-
-	if (av1_dec->lr_col.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->lr_col.size,
-				  av1_dec->lr_col.cpu, av1_dec->lr_col.dma);
-	av1_dec->lr_col.cpu = NULL;
+	hantro_free_aux_buf(ctx, &av1_dec->db_data_col);
+	hantro_free_aux_buf(ctx, &av1_dec->db_ctrl_col);
+	hantro_free_aux_buf(ctx, &av1_dec->cdef_col);
+	hantro_free_aux_buf(ctx, &av1_dec->sr_col);
+	hantro_free_aux_buf(ctx, &av1_dec->lr_col);
 }
 
 static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
 	struct hantro_av1_dec_ctrls *ctrls = &av1_dec->ctrls;
 	const struct v4l2_av1_tile_info *tile_info = &ctrls->frame->tile_info;
@@ -277,6 +254,7 @@ static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
 	unsigned int height_in_sb = height / 64;
 	unsigned int stripe_num = ((height + 8) + 63) / 64;
 	size_t size;
+	int ret;
 
 	if (av1_dec->db_data_col.size >=
 	    ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_cols)
@@ -285,44 +263,22 @@ static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
 	hantro_av1_tiles_free(ctx);
 
 	size = ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_cols;
-	av1_dec->db_data_col.cpu = dma_alloc_coherent(vpu->dev, size,
-						      &av1_dec->db_data_col.dma,
-						      GFP_KERNEL);
-	if (!av1_dec->db_data_col.cpu)
-		goto buffer_allocation_error;
-	av1_dec->db_data_col.size = size;
+	ret = hantro_allocate_aux_buf(ctx, &av1_dec->db_data_col, size);
 
 	size = ALIGN(height * 2 * 16 / 4, 128) * num_tile_cols;
-	av1_dec->db_ctrl_col.cpu = dma_alloc_coherent(vpu->dev, size,
-						      &av1_dec->db_ctrl_col.dma,
-						      GFP_KERNEL);
-	if (!av1_dec->db_ctrl_col.cpu)
-		goto buffer_allocation_error;
-	av1_dec->db_ctrl_col.size = size;
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->db_ctrl_col, size);
 
 	size = ALIGN(height_in_sb * 44 * ctx->bit_depth * 16 / 8, 128) * num_tile_cols;
-	av1_dec->cdef_col.cpu = dma_alloc_coherent(vpu->dev, size,
-						   &av1_dec->cdef_col.dma,
-						   GFP_KERNEL);
-	if (!av1_dec->cdef_col.cpu)
-		goto buffer_allocation_error;
-	av1_dec->cdef_col.size = size;
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->cdef_col, size);
 
 	size = ALIGN(height_in_sb * (3040 + 1280), 128) * num_tile_cols;
-	av1_dec->sr_col.cpu = dma_alloc_coherent(vpu->dev, size,
-						 &av1_dec->sr_col.dma,
-						 GFP_KERNEL);
-	if (!av1_dec->sr_col.cpu)
-		goto buffer_allocation_error;
-	av1_dec->sr_col.size = size;
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->sr_col, size);
 
 	size = ALIGN(stripe_num * 1536 * ctx->bit_depth / 8, 128) * num_tile_cols;
-	av1_dec->lr_col.cpu = dma_alloc_coherent(vpu->dev, size,
-						 &av1_dec->lr_col.dma,
-						 GFP_KERNEL);
-	if (!av1_dec->lr_col.cpu)
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->lr_col, size);
+
+	if (ret)
 		goto buffer_allocation_error;
-	av1_dec->lr_col.size = size;
 
 	av1_dec->num_tile_cols_allocated = num_tile_cols;
 	return 0;
@@ -334,105 +290,50 @@ static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
 
 void hantro_av1_exit(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
 
-	if (av1_dec->global_model.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->global_model.size,
-				  av1_dec->global_model.cpu,
-				  av1_dec->global_model.dma);
-	av1_dec->global_model.cpu = NULL;
-
-	if (av1_dec->tile_info.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->tile_info.size,
-				  av1_dec->tile_info.cpu,
-				  av1_dec->tile_info.dma);
-	av1_dec->tile_info.cpu = NULL;
-
-	if (av1_dec->film_grain.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->film_grain.size,
-				  av1_dec->film_grain.cpu,
-				  av1_dec->film_grain.dma);
-	av1_dec->film_grain.cpu = NULL;
-
-	if (av1_dec->prob_tbl.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->prob_tbl.size,
-				  av1_dec->prob_tbl.cpu, av1_dec->prob_tbl.dma);
-	av1_dec->prob_tbl.cpu = NULL;
-
-	if (av1_dec->prob_tbl_out.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->prob_tbl_out.size,
-				  av1_dec->prob_tbl_out.cpu,
-				  av1_dec->prob_tbl_out.dma);
-	av1_dec->prob_tbl_out.cpu = NULL;
-
-	if (av1_dec->tile_buf.cpu)
-		dma_free_coherent(vpu->dev, av1_dec->tile_buf.size,
-				  av1_dec->tile_buf.cpu, av1_dec->tile_buf.dma);
-	av1_dec->tile_buf.cpu = NULL;
+	hantro_free_aux_buf(ctx, &av1_dec->global_model);
+	hantro_free_aux_buf(ctx, &av1_dec->tile_info);
+	hantro_free_aux_buf(ctx, &av1_dec->film_grain);
+	hantro_free_aux_buf(ctx, &av1_dec->prob_tbl);
+	hantro_free_aux_buf(ctx, &av1_dec->prob_tbl_out);
 
 	hantro_av1_tiles_free(ctx);
 }
 
 int hantro_av1_init(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
+	int ret = 0;
 
 	memset(av1_dec, 0, sizeof(*av1_dec));
 
-	av1_dec->global_model.cpu = dma_alloc_coherent(vpu->dev, GLOBAL_MODEL_SIZE,
-						       &av1_dec->global_model.dma,
-						       GFP_KERNEL);
-	if (!av1_dec->global_model.cpu)
-		return -ENOMEM;
-	av1_dec->global_model.size = GLOBAL_MODEL_SIZE;
-
-	av1_dec->tile_info.cpu = dma_alloc_coherent(vpu->dev, AV1_TILE_INFO_SIZE,
-						    &av1_dec->tile_info.dma,
-						    GFP_KERNEL);
-	if (!av1_dec->tile_info.cpu)
-		return -ENOMEM;
-	av1_dec->tile_info.size = AV1_TILE_INFO_SIZE;
-
-	av1_dec->film_grain.cpu = dma_alloc_coherent(vpu->dev,
-						     ALIGN(sizeof(struct hantro_av1_film_grain),
-							   2048),
-						     &av1_dec->film_grain.dma,
-						     GFP_KERNEL);
-	if (!av1_dec->film_grain.cpu)
-		return -ENOMEM;
-	av1_dec->film_grain.size = ALIGN(sizeof(struct hantro_av1_film_grain), 2048);
-
-	av1_dec->prob_tbl.cpu = dma_alloc_coherent(vpu->dev,
-						   ALIGN(sizeof(struct av1cdfs), 2048),
-						   &av1_dec->prob_tbl.dma,
-						   GFP_KERNEL);
-	if (!av1_dec->prob_tbl.cpu)
-		return -ENOMEM;
-	av1_dec->prob_tbl.size = ALIGN(sizeof(struct av1cdfs), 2048);
-
-	av1_dec->prob_tbl_out.cpu = dma_alloc_coherent(vpu->dev,
-						       ALIGN(sizeof(struct av1cdfs), 2048),
-						       &av1_dec->prob_tbl_out.dma,
-						       GFP_KERNEL);
-	if (!av1_dec->prob_tbl_out.cpu)
-		return -ENOMEM;
-	av1_dec->prob_tbl_out.size = ALIGN(sizeof(struct av1cdfs), 2048);
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->global_model, GLOBAL_MODEL_SIZE);
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->tile_info, AV1_TILE_INFO_SIZE);
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->film_grain,
+				       ALIGN(sizeof(struct hantro_av1_film_grain), 2048));
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->prob_tbl,
+				       ALIGN(sizeof(struct av1cdfs), 2048));
+	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->prob_tbl_out,
+				       ALIGN(sizeof(struct av1cdfs), 2048));
+	if (ret)
+		goto buffer_allocation_error;
+
 	av1_dec->cdfs = &av1_dec->default_cdfs;
 	av1_dec->cdfs_ndvc = &av1_dec->default_cdfs_ndvc;
 
 	hantro_av1_set_default_cdfs(av1_dec->cdfs, av1_dec->cdfs_ndvc);
 
-	av1_dec->tile_buf.cpu = dma_alloc_coherent(vpu->dev,
-						   AV1_TILE_SIZE,
-						   &av1_dec->tile_buf.dma,
-						   GFP_KERNEL);
-	if (!av1_dec->tile_buf.cpu)
-		return -ENOMEM;
-	av1_dec->tile_buf.size = AV1_TILE_SIZE;
-
 	return 0;
+
+buffer_allocation_error:
+	hantro_free_aux_buf(ctx, &av1_dec->global_model);
+	hantro_free_aux_buf(ctx, &av1_dec->tile_info);
+	hantro_free_aux_buf(ctx, &av1_dec->film_grain);
+	hantro_free_aux_buf(ctx, &av1_dec->prob_tbl);
+	hantro_free_aux_buf(ctx, &av1_dec->prob_tbl_out);
+
+	return -ENOMEM;
 }
 
 int hantro_av1_prepare_run(struct hantro_ctx *ctx)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
