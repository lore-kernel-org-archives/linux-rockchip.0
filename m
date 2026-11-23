Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1D4606A333
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 10:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EVwXub6v;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=EgCYZc/d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=BZApqdMt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sDO2c/BHNM5i8pkSRzCR+15qelLhSEQvNQ6ANWnWLIE=; b=EVwXub6vPDCmPn8i6NuIDO8Ea2
	39UN1b45ab4rjUSK4W7WNpkQe5m7suwmDDgfwqBV1VeOlEKszvVnCud4aUOAKlliTFY8KCdQF4Z+B
	DiSmITbSysP+nbCiXNU+7TmmkY8rL+V58mDjTSZWpZOqCUjjIJeLRJxpD7BiEbCoqq4MsTuAX5ihc
	WHvqXk4MuhxQ+ySp+JBQtUUMEhbUMmaBQ14mDwCrg3GdSuwfJum0oHkhAXmUbfUp/aBCT+90ZYAdG
	ysewpOEkFoBxXsAfrxXHESvoQKjjEfaN2enGNlNxfTaIFvNKyzoEM/MGjsNOAxZNk6N7ZMx3RLQNF
	+CD442gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQqF-00000002rzY-0ptQ;
	Mon, 23 Nov 2026 10:00:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpj-00000002rPl-40Uv
	for linux-rockchip@bombadil.infradead.org;
	Mon, 23 Nov 2026 09:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tM/rKujmshA0kD+rwdmyjwcYJWL/Yj7wl5btXo5knx4=; b=EgCYZc/dD5Mw38N4QeA5pJgpdn
	Iea9izgi9Z5vG5bqFwmoOCVKpq2B1dMk5eXeAUOHvpw01iblUvAWL3Nh0hw7eRAasMcCRy+pm8QBB
	Rsf5mUOYCdt1PTNxOqdBPDG6CZ5KwtVEkg+cKYezu3g5LldLKPek6d1u8E5HSuH0OoPJulmX8uxJd
	+cEB4epob4aoheMnGIDQSkN76MUWKZ2wzrtDFmrQQttgdFcryT+MHmHLwWIiGsLB0LXgNNgE9+0mS
	bPS1Z4odfZYzLtiZmD39++Hou50+6eVNFoggdt+uPrLqXTRrjX2W1/YjOkOKEQdNcwFVCZDeAY/gB
	Mjcpvn9g==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpU-00000002xiC-3PmB
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795427952;
	bh=WPrJ9JMoCQw+dkpde9WIg8I1X59FAJUitzpr7C1hYYw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BZApqdMtYyHmUEBolSxeNo4C9NX96riFOuflYjbP9/NLLWh1W8rGPCXkpwRqmg9MP
	 Sj/QeM0qjYWGHUdjQxRHUerA+gpcTsCqcF7qaXmW2+pG8laL1nfYZHVWhYj8E8KHH2
	 9ABZU1I0JR1OISN0OwbQOjfPq+cDgaTTKkxN4l8yqZxQ8HEeBPajR85WghrRDGYPoa
	 ITrFEHuAyaRUX6GFjH2QlfHxChsWZ1dp7RSBzF9hx5juUu3DYXUTf6MSP1+7Fdm2cW
	 IWIAHgipsRR1aMS9cv45rexjxtbcQIEJ9ckoiKkLF+tv8ruMijuvCOwc21s3c1fhCx
	 kx7/yhDU0qp3w==
Received: from benjamin-XPS-13-9310.home (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9CF4717E0EBF;
	Mon, 23 Nov 2026 10:59:12 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 5/7] media: verisilicon: vp8: Use alloc/free helpers for auxiliary buffers
Date: Mon, 23 Nov 2026 10:59:03 +0100
Message-ID: <20261123095905.60622-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
References: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_095927_805681_E7BF9377 
X-CRM114-Status: GOOD (  12.64  )
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

 .../media/platform/verisilicon/hantro_vp8.c   | 36 ++++++-------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_vp8.c b/drivers/media/platform/verisilicon/hantro_vp8.c
index 381bc1d3bfda..65648c017e76 100644
--- a/drivers/media/platform/verisilicon/hantro_vp8.c
+++ b/drivers/media/platform/verisilicon/hantro_vp8.c
@@ -144,7 +144,6 @@ void hantro_vp8_prob_update(struct hantro_ctx *ctx,
 
 int hantro_vp8_dec_init(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_aux_buf *aux_buf;
 	unsigned int mb_width, mb_height;
 	size_t segment_map_size;
@@ -160,42 +159,29 @@ int hantro_vp8_dec_init(struct hantro_ctx *ctx)
 	 * And the data in segment map buffer must be set to all zero.
 	 */
 	aux_buf = &ctx->vp8_dec.segment_map;
-	aux_buf->size = segment_map_size;
-	aux_buf->cpu = dma_alloc_coherent(vpu->dev, aux_buf->size,
-					  &aux_buf->dma, GFP_KERNEL);
-	if (!aux_buf->cpu)
-		return -ENOMEM;
+	ret = hantro_allocate_aux_buf(ctx, aux_buf, segment_map_size);
+	if (ret)
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
+	ret = hantro_allocate_aux_buf(ctx, aux_buf, sizeof(struct vp8_prob_tbl_packed));
+	if (ret)
+		goto error;
 
 	return 0;
 
-err_free_seg_map:
-	dma_free_coherent(vpu->dev, ctx->vp8_dec.segment_map.size,
-			  ctx->vp8_dec.segment_map.cpu,
-			  ctx->vp8_dec.segment_map.dma);
-
+error:
+	hantro_free_aux_buf(ctx, &ctx->vp8_dec.segment_map);
+	hantro_free_aux_buf(ctx, &ctx->vp8_dec.prob_tbl);
 	return ret;
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
