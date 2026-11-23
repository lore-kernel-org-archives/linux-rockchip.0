Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0358606A32C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 10:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bWSNg7yT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=BaeOJCfC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=nQAsim8+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kXg5XbroNheGhBBJcpcl7Ybo5GF3pVzcXYCnol69XhI=; b=bWSNg7yT2N1G0PrUZ3EPNY4XKQ
	4zGdsSxRURjvjcG03lj11BNTg0lCnv1XIwkkN8HD/V/P4kj8h7x8x0s1WVxPWNPrUeI4gOcU1Ty8r
	LDTmBxqd3NoBMG1br6xVWtt/bJ8jOcbBw3DNHEf/WDfXXYDuAPcwi5gRUpLwKQCDWJGPn8+nxKtqe
	TNUu952JaB2/zlVqayIx3Fmje1OhbGtBGYxiMv5RsrfteM8ayi7A2SDy3K0UwRN79o95IpD1IWLrb
	VwNxeBsCpWW+LCEkaRfn9mdWHEaNZ5LX60TL4Huj4bqIqbOHneUyBmrenkjW6ViiDiIVM69AFhWqx
	sOfOlJGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQqE-00000002rzD-42OY;
	Mon, 23 Nov 2026 10:00:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQph-00000002rPS-0EjQ
	for linux-rockchip@bombadil.infradead.org;
	Mon, 23 Nov 2026 09:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=EYJVe96NE+VrGD72o9OfCZoIR6BvYJwvq4SU0CJlGqs=; b=BaeOJCfCVPybpOVK7ySL1O+HCU
	KfkLW1MGBVNV13SMcAn+tin86aVtt8ii8s/W+8nyOW46rk5JDg08YezywoDgkh2jBqjQ+mEKBnpYa
	+EruwrMRetbVeQOTWJlcS0+Vv5TIBdBteJ0KUEtafOuuAHU8yrkOtIMUSbjndfOhr8XTHo4hq8by7
	42bY3RE5biFkGA0T1ISh1DzeVi0JjPoN5C3DbGRSUbxezytE3WH6B9UG0ADwvtKoxkG/d6PRF/tpZ
	EwpR+a5ofOb1BjrPHFW3RtX3pg+W29viQ/NH+fguUDewUf+3gdpKCausQRd/O1pK3Ww3/042WibA5
	vJpootFw==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpU-00000002xi1-1NjT
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795427952;
	bh=evnoDDja13qQhWcx6ZeHLGNkdq48etxzGfvzkkKHGg8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nQAsim8+pCE9+MBliSBcTLdSamn6cvzw9Orz+kUfPKSTb91wXDuEUG3CwZCwS8t2C
	 LiiYeQG+jaU7X4qkxb4P/ed+EL3lSVt4KUWtyGEck4yTaE/CriWRzQ3VMiM66/Qih5
	 6P1gCdBa2MEjnf3+EAouykFce6lo3qijsim+37PQEmVhXP3khdMk8qODX44yVMh7be
	 PAPpuRHjLoPn+dcT4sequwbFoCsujoggwM36sDP1K0UKO4arF0QuqkkkEktHdOIlHu
	 M29gVlkdJ4hXNV/l6S4O5JIvzdPVwF2DXZVzxzkCj5AKskBXxj7X0H6jZ9mopI0DCx
	 Z1b8JcZu4JlwQ==
Received: from benjamin-XPS-13-9310.home (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 48D3E17E0EB0;
	Mon, 23 Nov 2026 10:59:12 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 4/7] media: verisilicon: hevc: Use alloc/free helpers for auxiliary buffers
Date: Mon, 23 Nov 2026 10:59:02 +0100
Message-ID: <20261123095905.60622-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
References: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_095927_722194_99B95B9D 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
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
changes in v3:
- As suggested by Philipp do not mask hantro_allocate_aux_buf() returned
  value.

 .../media/platform/verisilicon/hantro_hevc.c  | 133 +++++-------------
 1 file changed, 36 insertions(+), 97 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_hevc.c b/drivers/media/platform/verisilicon/hantro_hevc.c
index 83cd12b0ddd6..951ecc27ca0f 100644
--- a/drivers/media/platform/verisilicon/hantro_hevc.c
+++ b/drivers/media/platform/verisilicon/hantro_hevc.c
@@ -74,7 +74,6 @@ int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr)
 
 static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
 	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
 	const struct v4l2_ctrl_hevc_pps *pps = ctrls->pps;
@@ -82,74 +81,43 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
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
+	if (ret)
+		goto error;
 
 	size = (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
-	hevc_dec->tile_sao.cpu = dma_alloc_coherent(vpu->dev, size,
-						    &hevc_dec->tile_sao.dma,
-						    GFP_KERNEL);
-	if (!hevc_dec->tile_sao.cpu)
-		goto err_free_tile_buffers;
-	hevc_dec->tile_sao.size = size;
+	hevc_dec->tile_sao.attrs = DMA_ATTR_NO_KERNEL_MAPPING;
+	ret = hantro_allocate_aux_buf(ctx, &hevc_dec->tile_sao, size);
+	if (ret)
+		goto error;
 
 	size = BSD_CTRL_RAM_SIZE * height64 * (num_tile_cols - 1);
-	hevc_dec->tile_bsd.cpu = dma_alloc_coherent(vpu->dev, size,
-						    &hevc_dec->tile_bsd.dma,
-						    GFP_KERNEL);
-	if (!hevc_dec->tile_bsd.cpu)
-		goto err_free_sao_buffers;
-	hevc_dec->tile_bsd.size = size;
+	hevc_dec->tile_bsd.attrs = DMA_ATTR_NO_KERNEL_MAPPING;
+	ret = hantro_allocate_aux_buf(ctx, &hevc_dec->tile_bsd, size);
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
@@ -214,45 +182,20 @@ int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx)
 
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
 
@@ -262,21 +205,11 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
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
 
@@ -284,4 +217,10 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
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
