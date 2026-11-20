Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4E960A3804
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sK16mptl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=JUa6W9i8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wW/qck+6x++mtJ8dIq6Bim4l8TtFvVbXroGqLJwHmHw=; b=sK16mptlQY/+ZB5uhETZmllV+/
	cnoC7CtYwqtMYHKpKgtNhBim8B2payIx+45N+H2nEOKFvKL9gi4/qKBeQgPRXBe8SvuFeM2gKw7/C
	DZZe/YuXt1h32pErG3u7ROxoAMcXWXfCLxnRnpq/29R10stHVNUgI5bhCUpWJs3L8eihb1gzm05fU
	SaQ0zwpG9P+g55NtgmQEp50sZ2fNS9vIAmtIvkxgdBO0otKX2GCKrk3O/8BVh+wHscSaZP0ZTi4et
	c4rMNv9oMHF1iIB05x5SzmSCyYzwvLDR0xq+bD96RfhWIxdrPGGIEVK5v3t/TuA/ZUa6kUkquOw/V
	PK1O43hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJT-0000000FNHU-1hBK;
	Fri, 20 Nov 2026 15:14:07 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJL-0000000FNBT-1lAz
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:14:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795187632;
	bh=uYpjRjKIcDvHcfogjZc8j+wXgp4LpP3iHh1tK9f2utU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JUa6W9i89EMto7cGwNX12qVkvkdaVYQmRC7R5j6tnBr7JqRI3vfOH1u1VcK5Q+UUg
	 Pxo4dCyu4DNZ/Q9vvtd6hgiLI+CVf6OCQo0n80lalHoUB3s4oGycLXbMhcaqV5Xvf7
	 uoyHeJjtg6XbFGeyDIh0IeXoRfsYoqGq1U+JdB7+dixwD29JVjakDTSy88mt/Dc+lM
	 DjVP9OpO6bCfItPFILRxjS9XsV9K4FeaanJLR7EBvyd67v3Nl7ARHe/3nPudYdloee
	 dlf+DLjgjyn2ycGXR0zBo40wdFjSytxkijr65i6M4Gqdh/pXn60KerKVBkoEp3fu0p
	 Uf4Oyt50khyRQ==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9574517E0ACE;
	Fri, 20 Nov 2026 16:13:52 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 5/7] media: verisilicon: vp8: Use alloc/free helpers for auxiliary buffers
Date: Fri, 20 Nov 2026 16:13:43 +0100
Message-ID: <20261120151345.88802-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_071359_710681_E0B9F823 
X-CRM114-Status: GOOD (  10.58  )
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
 .../media/platform/verisilicon/hantro_vp8.c   | 37 +++++--------------
 1 file changed, 10 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_vp8.c b/drivers/media/platform/verisilicon/hantro_vp8.c
index 381bc1d3bfda..881e6c21f0fa 100644
--- a/drivers/media/platform/verisilicon/hantro_vp8.c
+++ b/drivers/media/platform/verisilicon/hantro_vp8.c
@@ -144,11 +144,9 @@ void hantro_vp8_prob_update(struct hantro_ctx *ctx,
 
 int hantro_vp8_dec_init(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_aux_buf *aux_buf;
 	unsigned int mb_width, mb_height;
 	size_t segment_map_size;
-	int ret;
 
 	/* segment map table size calculation */
 	mb_width = DIV_ROUND_UP(ctx->dst_fmt.width, 16);
@@ -160,42 +158,27 @@ int hantro_vp8_dec_init(struct hantro_ctx *ctx)
 	 * And the data in segment map buffer must be set to all zero.
 	 */
 	aux_buf = &ctx->vp8_dec.segment_map;
-	aux_buf->size = segment_map_size;
-	aux_buf->cpu = dma_alloc_coherent(vpu->dev, aux_buf->size,
-					  &aux_buf->dma, GFP_KERNEL);
-	if (!aux_buf->cpu)
-		return -ENOMEM;
+	if (hantro_allocate_aux_buf(ctx, aux_buf, segment_map_size))
+		goto error;
 
 	/*
 	 * Allocate probability table buffer,
 	 * total 1208 bytes, 4K page is far enough.
 	 */
 	aux_buf = &ctx->vp8_dec.prob_tbl;
-	aux_buf->size = sizeof(struct vp8_prob_tbl_packed);
-	aux_buf->cpu = dma_alloc_coherent(vpu->dev, aux_buf->size,
-					  &aux_buf->dma, GFP_KERNEL);
-	if (!aux_buf->cpu) {
-		ret = -ENOMEM;
-		goto err_free_seg_map;
-	}
+	if (hantro_allocate_aux_buf(ctx, aux_buf, sizeof(struct vp8_prob_tbl_packed)))
+		goto error;
 
 	return 0;
 
-err_free_seg_map:
-	dma_free_coherent(vpu->dev, ctx->vp8_dec.segment_map.size,
-			  ctx->vp8_dec.segment_map.cpu,
-			  ctx->vp8_dec.segment_map.dma);
-
-	return ret;
+error:
+	hantro_free_aux_buf(ctx, &ctx->vp8_dec.segment_map);
+	hantro_free_aux_buf(ctx, &ctx->vp8_dec.prob_tbl);
+	return -ENOMEM;
 }
 
 void hantro_vp8_dec_exit(struct hantro_ctx *ctx)
 {
-	struct hantro_vp8_dec_hw_ctx *vp8_dec = &ctx->vp8_dec;
-	struct hantro_dev *vpu = ctx->dev;
-
-	dma_free_coherent(vpu->dev, vp8_dec->segment_map.size,
-			  vp8_dec->segment_map.cpu, vp8_dec->segment_map.dma);
-	dma_free_coherent(vpu->dev, vp8_dec->prob_tbl.size,
-			  vp8_dec->prob_tbl.cpu, vp8_dec->prob_tbl.dma);
+	hantro_free_aux_buf(ctx, &ctx->vp8_dec.segment_map);
+	hantro_free_aux_buf(ctx, &ctx->vp8_dec.prob_tbl);
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
