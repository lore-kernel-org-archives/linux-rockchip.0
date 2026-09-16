Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06EBBC982C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 12:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMjE/71CyN/b8pWDghYBUTiV0j+ftyo2Px6kJYyDLlA=; b=CiG3/JwO194Q/+
	sR1+rWkAC2I0wkhsxsuNu/wy13yir5VBBijtRF7GSvEehoEPxIgLjZ2TP6LdTWKh7plpVd+FncRXP
	7RsgHDimWn3YzGr/nZYZ/89/ooE6dPQiBmLsjO5Sb43XJ44QiPAl6QaaZan4KSlt+b7zXGYdqEwfZ
	WlC4dLOaxfnhDamcTBv+2fID2XMWTW51rS5YaMukl7mIiL2J71pRYYObCe9l2CYbZqLIoPFa6LaZ9
	ilWncLOiemhaQN1nOFF61mI4OpQFgVrwk8GGjfUpZdf603JNO5wmxswZZ65C787cFmBia8JPmwI7c
	2H9JDcPRlbUH0m1X43DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAB-00000009DDG-0ZH2;
	Wed, 16 Sep 2026 12:54:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pA4-00000009D9R-3qKt
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 12:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789563290;
	bh=LvhiMCoVTpSz165Ay1Y3k9yppYJjXIMP9WfM997Eh84=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cxrFLu0sUxBJeDsdhFOeYO1aD7qcebeiYCEuaa1fVkeECqJnyCMCkOMRG8BXZ+5rI
	 rLG0l0zBmJP/wIsN4kRsCt0RlWdreNjkaCgCi6eUrZZu0iPhWfzyO9f9VUz6GyjPCZ
	 1d1/jCZZYHMNuZqPiycZ2tUkRZg1K48LeA2GjS1fKSHwNt3hLujb77SS/ulfu9mEx+
	 QbJTs5xcXRYqdKijA+Ohnmy3hc+/69nunnmWlsuuM8kKwGXFuK2CAL8WXClhhcOw1L
	 lJt0KTdrnnXMxXYNrPDjeCD1h2LJoXQiJSRRkHvnQRaK1DtQyqDkmQzA27+an98w3Q
	 kEwZon+Fyr8OQ==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7C3F617E130A;
	Wed, 16 Sep 2026 14:54:50 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v1 4/7] media: verisilicon: hevc: Use alloc/free helpers for auxiliary buffers
Date: Wed, 16 Sep 2026 14:54:40 +0200
Message-ID: <20260916125443.78602-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_055453_134319_C0027357 
X-CRM114-Status: GOOD (  13.13  )
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
 .../media/platform/verisilicon/hantro_hevc.c  | 130 +++++-------------
 1 file changed, 33 insertions(+), 97 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_hevc.c b/drivers/media/platform/verisilicon/hantro_hevc.c
index 83cd12b0ddd6..cc6fa233c0a0 100644
--- a/drivers/media/platform/verisilicon/hantro_hevc.c
+++ b/drivers/media/platform/verisilicon/hantro_hevc.c
@@ -74,7 +74,6 @@ int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr)
 
 static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
 	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
 	const struct v4l2_ctrl_hevc_pps *pps = ctrls->pps;
@@ -82,74 +81,40 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 	unsigned int num_tile_cols = pps->num_tile_columns_minus1 + 1;
 	unsigned int height64 = (sps->pic_height_in_luma_samples + 63) & ~63;
 	unsigned int size;
+	int ret;
 
 	if (num_tile_cols <= 1 ||
 	    num_tile_cols <= hevc_dec->num_tile_cols_allocated)
 		return 0;
 
 	/* Need to reallocate due to tiles passed via PPS */
-	if (hevc_dec->tile_filter.cpu) {
-		dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
-				  hevc_dec->tile_filter.cpu,
-				  hevc_dec->tile_filter.dma);
-		hevc_dec->tile_filter.cpu = NULL;
-	}
-
-	if (hevc_dec->tile_sao.cpu) {
-		dma_free_coherent(vpu->dev, hevc_dec->tile_sao.size,
-				  hevc_dec->tile_sao.cpu,
-				  hevc_dec->tile_sao.dma);
-		hevc_dec->tile_sao.cpu = NULL;
-	}
-
-	if (hevc_dec->tile_bsd.cpu) {
-		dma_free_coherent(vpu->dev, hevc_dec->tile_bsd.size,
-				  hevc_dec->tile_bsd.cpu,
-				  hevc_dec->tile_bsd.dma);
-		hevc_dec->tile_bsd.cpu = NULL;
-	}
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_filter);
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_sao);
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_bsd);
 
 	size = (VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
-	hevc_dec->tile_filter.cpu = dma_alloc_coherent(vpu->dev, size,
-						       &hevc_dec->tile_filter.dma,
-						       GFP_KERNEL);
-	if (!hevc_dec->tile_filter.cpu)
-		return -ENOMEM;
-	hevc_dec->tile_filter.size = size;
+	hevc_dec->tile_filter.attrs = DMA_ATTR_NO_KERNEL_MAPPING;
+	ret = hantro_allocate_aux_buf(ctx, &hevc_dec->tile_filter, size);
 
 	size = (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
-	hevc_dec->tile_sao.cpu = dma_alloc_coherent(vpu->dev, size,
-						    &hevc_dec->tile_sao.dma,
-						    GFP_KERNEL);
-	if (!hevc_dec->tile_sao.cpu)
-		goto err_free_tile_buffers;
-	hevc_dec->tile_sao.size = size;
+	hevc_dec->tile_sao.attrs = DMA_ATTR_NO_KERNEL_MAPPING;
+	ret |= hantro_allocate_aux_buf(ctx, &hevc_dec->tile_sao, size);
 
 	size = BSD_CTRL_RAM_SIZE * height64 * (num_tile_cols - 1);
-	hevc_dec->tile_bsd.cpu = dma_alloc_coherent(vpu->dev, size,
-						    &hevc_dec->tile_bsd.dma,
-						    GFP_KERNEL);
-	if (!hevc_dec->tile_bsd.cpu)
-		goto err_free_sao_buffers;
-	hevc_dec->tile_bsd.size = size;
+	hevc_dec->tile_bsd.attrs = DMA_ATTR_NO_KERNEL_MAPPING;
+	ret |= hantro_allocate_aux_buf(ctx, &hevc_dec->tile_bsd, size);
+
+	if (ret)
+		goto error;
 
 	hevc_dec->num_tile_cols_allocated = num_tile_cols;
 
 	return 0;
 
-err_free_sao_buffers:
-	if (hevc_dec->tile_sao.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_sao.size,
-				  hevc_dec->tile_sao.cpu,
-				  hevc_dec->tile_sao.dma);
-	hevc_dec->tile_sao.cpu = NULL;
-
-err_free_tile_buffers:
-	if (hevc_dec->tile_filter.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
-				  hevc_dec->tile_filter.cpu,
-				  hevc_dec->tile_filter.dma);
-	hevc_dec->tile_filter.cpu = NULL;
+error:
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_filter);
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_sao);
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_bsd);
 
 	return -ENOMEM;
 }
@@ -214,45 +179,20 @@ int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx)
 
 void hantro_hevc_dec_exit(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
 
-	if (hevc_dec->tile_sizes.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_sizes.size,
-				  hevc_dec->tile_sizes.cpu,
-				  hevc_dec->tile_sizes.dma);
-	hevc_dec->tile_sizes.cpu = NULL;
-
-	if (hevc_dec->scaling_lists.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->scaling_lists.size,
-				  hevc_dec->scaling_lists.cpu,
-				  hevc_dec->scaling_lists.dma);
-	hevc_dec->scaling_lists.cpu = NULL;
-
-	if (hevc_dec->tile_filter.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
-				  hevc_dec->tile_filter.cpu,
-				  hevc_dec->tile_filter.dma);
-	hevc_dec->tile_filter.cpu = NULL;
-
-	if (hevc_dec->tile_sao.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_sao.size,
-				  hevc_dec->tile_sao.cpu,
-				  hevc_dec->tile_sao.dma);
-	hevc_dec->tile_sao.cpu = NULL;
-
-	if (hevc_dec->tile_bsd.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_bsd.size,
-				  hevc_dec->tile_bsd.cpu,
-				  hevc_dec->tile_bsd.dma);
-	hevc_dec->tile_bsd.cpu = NULL;
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_sizes);
+	hantro_free_aux_buf(ctx, &hevc_dec->scaling_lists);
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_filter);
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_sao);
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_bsd);
 }
 
 int hantro_hevc_dec_init(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
 	unsigned int size;
+	int ret;
 
 	memset(hevc_dec, 0, sizeof(*hevc_dec));
 
@@ -262,21 +202,11 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
 	 * chunk (HW guys wanted to have this).
 	 */
 	size = round_up(MAX_TILE_COLS * MAX_TILE_ROWS * 4 * sizeof(u16) + 16, 16);
-	hevc_dec->tile_sizes.cpu = dma_alloc_coherent(vpu->dev, size,
-						      &hevc_dec->tile_sizes.dma,
-						      GFP_KERNEL);
-	if (!hevc_dec->tile_sizes.cpu)
-		return -ENOMEM;
-
-	hevc_dec->tile_sizes.size = size;
-
-	hevc_dec->scaling_lists.cpu = dma_alloc_coherent(vpu->dev, SCALING_LIST_SIZE,
-							 &hevc_dec->scaling_lists.dma,
-							 GFP_KERNEL);
-	if (!hevc_dec->scaling_lists.cpu)
-		return -ENOMEM;
+	ret = hantro_allocate_aux_buf(ctx, &hevc_dec->tile_sizes, size);
+	ret = hantro_allocate_aux_buf(ctx, &hevc_dec->scaling_lists, SCALING_LIST_SIZE);
 
-	hevc_dec->scaling_lists.size = SCALING_LIST_SIZE;
+	if (ret)
+		goto error;
 
 	hantro_hevc_ref_init(ctx);
 
@@ -284,4 +214,10 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
 		hevc_use_compression & hantro_needs_postproc(ctx, ctx->vpu_dst_fmt);
 
 	return 0;
+
+error:
+	hantro_free_aux_buf(ctx, &hevc_dec->tile_sizes);
+	hantro_free_aux_buf(ctx, &hevc_dec->scaling_lists);
+
+	return -ENOMEM;
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
