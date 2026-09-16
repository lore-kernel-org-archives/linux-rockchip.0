Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC16CC982C5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 12:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ssn7KS1FhFgUhuXVnZ/Al+BbtvmIX2wPNKnBtdF/r0=; b=a5McAeI/zzBpep
	jLfuIhCZlCniPkWZ2bL1hTWGH7PjaKH8I8jt1sZh6sdUZ6Zlq1BQyVDE5GLNnKYNNQf35604ndvUw
	lWJhZBdlm9PLBzm2ybdGJJcSG+SzpFFGBrcZyzPHtfGm+n3znAtTg07ln2uEITgMOBjsLFvLd8ET/
	6IK2zSrdSfM/Kf3fdG9x1skjVmcXHGSLisFxUN5qFIFFKZlFFA66N4hKlzJEdIi8YJYXndBM2om2u
	ehD7OQlQh8mi9d1/QRnOvZbkWDW6GSryvXxe8D5zDlZ+9sBOJyjXYbVEKK5WrsMBHFNdHARqNuMZm
	6A0iJr9+RiykaevMwLLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAG-00000009DH0-1YUp;
	Wed, 16 Sep 2026 12:55:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAC-00000009DDV-1tqw
	for linux-rockchip@bombadil.infradead.org;
	Wed, 16 Sep 2026 12:55:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LLbp9XiBiv+t0Eosw+YTUY316q/cLyeaPQfi9o0UHUI=; b=nYIddpfhTmJG9LYrUUH8JiqweA
	OJkMNjo9nAN5gxrT6zJ14BgtAmRjqGVtrRxA4qH1SkNFFsCySnnsyDpjxdic29hK7qYUB6ppmhMo0
	W16hHnxdVHUjEmDu8cFPouki5x8vnSQOQTKR3iX5TsmD9V6a+i3hnf0qnoN8WrMFzkW4ZwpHLGqFG
	git9LlUT+lyhWqPbttfv61LnAtEXAOoz7anjEEnqfbtqtmN8rcCflrOft3HcNMqRgIqswInJVDP5t
	9f4RaqjQ35UruMbbGUkLrV7nuZ1PBkyaEi8dP12bytFyZ64rE81kX+0sa583kVLSHk17oSh9K0KC4
	D8iFbPlA==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6pA9-00000007s4l-1CyJ
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 12:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789563290;
	bh=024vXHBL3M4Nza6LGz1p+RSiowISrkhNEPP+TzTqIUU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BjNh4kyKv2bWwfoYAxCrmXnDEjpt0ID9cNVrNrteimR3Wc9wrRwZk0xsBJr8jBYfz
	 qtaOc9mMnARoudVijGVcF7t59YP7qR2vJiL2nTn6tuYFO9ybGWZT8/3Go3WJVHEAwa
	 ZByZ2wZ/j0DEgnIY2Is8d01/sSgVwtw5NaBenUOMjQhocrJi/CPvEg1hKznVfM468b
	 iBW3OlkN7leGGkRj3QNMeaR2qR9Il/ho/Qt8WzOkVDX+X0EgMN01eGNmtaqlAUsh5H
	 NKfvBrUn5PIhXDwisGwezHc2cjl6utj5eQr2QfBI/Z5NgPeTME3T9+hEta++sd/Lxq
	 oAderI16sN1OQ==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BFCAC17E1289;
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
Subject: [PATCH v1 2/7] media: verisilicon: AV1: Use alloc/free helpers for auxiliary buffers
Date: Wed, 16 Sep 2026 14:54:38 +0200
Message-ID: <20260916125443.78602-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_135457_622657_12D61752 
X-CRM114-Status: GOOD (  12.49  )
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

Simplify and clean up the code by using the helpers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
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
