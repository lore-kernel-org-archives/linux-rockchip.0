Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBD3606A32E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 09:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tGGbvMe+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=DSuYsXFo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fD4QKbvwm395CFEJnSkpION0ag2WdVhPgf42GPDdBT8=; b=tGGbvMe+DecKPQpwOeumvpJ1SZ
	FHDWPVA1XB05E+a80apJdwzKL6eKnWKGKOgXPQqGShKZTUeU+8+wBjAfxXzTAO/BMlKFgepaolgAD
	SmpOdXqQWw9VMuexS85d7Yn27qfLborfdCsIOyIn7UV1riqIrUfO0oZ/7K+PQFMqOKgHEzybhexAR
	h6ZdIBM+rm6fY1Unvdd05lKT3ISCoy/G9hEkiyeO0Sa8gBnAmpEXY8Kdxq2xvyHoXgE8gzAhh/+7h
	EIJ00G3uXc+j/+Ukgajeor6OhavMGo/mVJTriuXbu9GpVgtVO6G2rO5+K76jef+6Iy6FKocpdP3Jl
	wBo6K+Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpm-00000002rVB-0rDz;
	Mon, 23 Nov 2026 09:59:38 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpQ-00000002rDF-0MDu
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:59:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795427953;
	bh=yrh/jm7FbncyrbGG/W70xKf2SqOJYAZGqJKC5tZlRwc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DSuYsXFottJCzZRvxZJxaM5fiysfY64tgz0IrVqK2bbBOLxfjK3fZbAk01fsT58ed
	 bUPwbgbp5p1Sac9IbcDD8vpZFmlwShLrQTTvpIbZhofhK/0M/fzz82r/vGH9u5K8OT
	 4eNCaHLwsncK+iTupM1fyz3jbopvM0cEuc4x4+CcEywiaZDxM8xbhoYcgC94WR0go2
	 50vKVOfqWvegzly4UKsctDfFjkhXYc4nE+FTppYg3bkxWZk7aLYuucXfrveT4aSIr1
	 hjraNPKuv9/kdqFwnVxGNOgxkYl4eulJDUkej0C1y9OOyjPMBXXTN0z0Qw14Nxlsuq
	 SdyglyE+D1DCA==
Received: from benjamin-XPS-13-9310.home (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F135217E0F76;
	Mon, 23 Nov 2026 10:59:12 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 6/7] media: verisilicon: vp9: Use alloc/free helpers for auxiliary buffers
Date: Mon, 23 Nov 2026 10:59:04 +0100
Message-ID: <20261123095905.60622-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
References: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_015916_286353_1082168E 
X-CRM114-Status: GOOD (  10.13  )
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
changes in v3:
- As suggested by Philipp do not mask hantro_allocate_aux_buf() returned
  value.

 .../media/platform/verisilicon/hantro_vp9.c   | 42 +++++++------------
 1 file changed, 15 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_vp9.c b/drivers/media/platform/verisilicon/hantro_vp9.c
index 566cd376c097..6f7995076610 100644
--- a/drivers/media/platform/verisilicon/hantro_vp9.c
+++ b/drivers/media/platform/verisilicon/hantro_vp9.c
@@ -164,6 +164,7 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
 	struct hantro_aux_buf *segment_map = &vp9_dec->segment_map;
 	struct hantro_aux_buf *misc = &vp9_dec->misc;
 	u32 i, max_width, max_height, size;
+	int ret;
 
 	if (variant->num_dec_fmts < 1)
 		return -EINVAL;
@@ -181,23 +182,18 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
 	size = hantro_vp9_tile_filter_size(max_height);
 	vp9_dec->bsd_ctrl_offset = size;
 	size += hantro_vp9_bsd_control_size(max_height);
-
-	tile_edge->cpu = dma_alloc_coherent(vpu->dev, size, &tile_edge->dma, GFP_KERNEL);
-	if (!tile_edge->cpu)
+	if (hantro_allocate_aux_buf(ctx, tile_edge, size))
 		return -ENOMEM;
 
-	tile_edge->size = size;
 	memset(tile_edge->cpu, 0, size);
 
 	size = hantro_vp9_segment_map_size(max_width, max_height);
 	vp9_dec->segment_map_size = size;
 	size *= 2; /* we need two areas of this size, used alternately */
+	ret = hantro_allocate_aux_buf(ctx, segment_map, size);
+	if (ret)
+		goto error;
 
-	segment_map->cpu = dma_alloc_coherent(vpu->dev, size, &segment_map->dma, GFP_KERNEL);
-	if (!segment_map->cpu)
-		goto err_segment_map;
-
-	segment_map->size = size;
 	memset(segment_map->cpu, 0, size);
 
 	size = hantro_vp9_prob_tab_size();
@@ -205,36 +201,28 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
 	size += hantro_vp9_count_tab_size();
 	vp9_dec->tile_info_offset = size;
 	size += hantro_vp9_tile_info_size();
+	ret = hantro_allocate_aux_buf(ctx, misc, size);
+	if (ret)
+		goto error;
 
-	misc->cpu = dma_alloc_coherent(vpu->dev, size, &misc->dma, GFP_KERNEL);
-	if (!misc->cpu)
-		goto err_misc;
-
-	misc->size = size;
 	memset(misc->cpu, 0, size);
 
 	init_v4l2_vp9_count_tbl(ctx);
 
 	return 0;
 
-err_misc:
-	dma_free_coherent(vpu->dev, segment_map->size, segment_map->cpu, segment_map->dma);
-
-err_segment_map:
-	dma_free_coherent(vpu->dev, tile_edge->size, tile_edge->cpu, tile_edge->dma);
+error:
+	hantro_free_aux_buf(ctx, segment_map);
+	hantro_free_aux_buf(ctx, tile_edge);
 
-	return -ENOMEM;
+	return ret;
 }
 
 void hantro_vp9_dec_exit(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_vp9_dec_hw_ctx *vp9_dec = &ctx->vp9_dec;
-	struct hantro_aux_buf *tile_edge = &vp9_dec->tile_edge;
-	struct hantro_aux_buf *segment_map = &vp9_dec->segment_map;
-	struct hantro_aux_buf *misc = &vp9_dec->misc;
 
-	dma_free_coherent(vpu->dev, misc->size, misc->cpu, misc->dma);
-	dma_free_coherent(vpu->dev, segment_map->size, segment_map->cpu, segment_map->dma);
-	dma_free_coherent(vpu->dev, tile_edge->size, tile_edge->cpu, tile_edge->dma);
+	hantro_free_aux_buf(ctx, &vp9_dec->tile_edge);
+	hantro_free_aux_buf(ctx, &vp9_dec->segment_map);
+	hantro_free_aux_buf(ctx, &vp9_dec->misc);
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
