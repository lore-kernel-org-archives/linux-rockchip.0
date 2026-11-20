Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C589606A338
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=p0EVWyPK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=nNKngpPU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nHon5wT6f7eEEAoxCGGQye373rFLEVsWqIVuYxV7Ub8=; b=p0EVWyPKHEd8A+9qn5HZebtL0+
	W+ec+p+91PNYW9tZWg47XrSYLvPxvpExJY+kazFDWwjc/W+J18hIX9rtMXapTiPcM06YzwB+BLoxA
	Ql7EArTyQrA+mGvhipdCg0su0gfr/3tFytIo1a13LjLeo7qckZwWd9Wq5Wge1oNYvnkmiub+wXMC7
	zB6NQDP/8kbz08SjH9MHx5HwdiNteNzZt/nijLIDl/boNEoI0KOotzy7CiAtdRpfe/ycHG29g47tH
	ohqVTWDQxAYRzP1TNde/s7QouIi8ED2HZ++DTY2mwenKTCWDnQD5c8YNLMVyatDqO23mWrnIBY2Py
	CVTWtmSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJT-0000000FNGP-0MBX;
	Fri, 20 Nov 2026 15:14:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJG-0000000FNA4-1vYt
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795187632;
	bh=8Rk9LjJ/jdOzkoL2cr3fH0fUboreQmsCt3JKbE30n6I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nNKngpPURUAUmwxbDD18PfpzqmPts8j+ocbAIgR894nI2YKKVy765DOcspp2E98v5
	 YrfDUaehpKppVv4vr5gc61I1NPyRAbWtwto2EVuhUVkYvEooT2Mgt7vr8HG7XCWYio
	 akP8V5IFMAq4m98zdg7Xw5J+jOE0nI8EInEBoodynTiE6S9kjwyCvOF86W+HSRu4AR
	 3d/L3b0ytOosrnJ04UBEAcDnsOM1AznEezE0we5Ch+CIg0n6dF4y2JhEAsc3jClux4
	 2cvy35JGzyYKibDYj0gpksfdL372mtzXdYXl1fwp0NBwZkSo+W0C70nIB3lwSH0Qwb
	 RxJyHcAdzo9uA==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 40B6617E09F3;
	Fri, 20 Nov 2026 16:13:52 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 4/7] media: verisilicon: hevc: Use alloc/free helpers for auxiliary buffers
Date: Fri, 20 Nov 2026 16:13:42 +0100
Message-ID: <20261120151345.88802-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_071354_748480_1098DC50 
X-CRM114-Status: GOOD (  12.48  )
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
