Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DEE4C982C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 12:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zp+hO6XyMdz9g472DpV5XJ7w/XrjTOL4wfEW6gmpqmY=; b=E5nAW8U3tyJZW0
	13AuiqkS0aG4N35l5Ej5mbr/acmX1r5QAeASRvFzho8QGUVUrKxvSNvzpD/XxAIDiZDnEIcWygpt1
	SulHn4h8IhVe0i2EvAR80INKIzySDhgnh85EZYUzHAsgPgAuKElORBc7RJhvPbRMVvhX1ephGLGqS
	2MNhC5IpDGccbSjU0vhcJDvrt9P3Q660KQJJSk6FgCpME+orywqeuNWJaj5Nj7QdWNmop4OZ9zUoz
	izxXO+0nTBGdN1Vp9cz5ErZXee0LKW7G0iBjNeCqiZeXDYU9XIUz+HF8d35ouqKPPoYfx0b0Kfrrs
	g2cVni9H3wwzMbBPqFig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAH-00000009DI5-0TKa;
	Wed, 16 Sep 2026 12:55:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAE-00000009DFG-058l
	for linux-rockchip@bombadil.infradead.org;
	Wed, 16 Sep 2026 12:55:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YinKkidPbSJ4It1a+/3AbqSjxPv7+XQBXhoUzT6cA/c=; b=AQNkuidX/byMPrX3xWKvkCbqXq
	DArqOyQsvAxyc1KtGzdrtXBaR6wd9mzLtIPeJImRtMg0tdAK0rwUawU50/5cfmzSZ57KyCj8dI2RC
	/HBXY99RLLeVJsVXxEw8b85B4pobE7Ssp2a0MtFYu7kFljf+PwmSFhwkXKibpUmyZB0I3E2pxxFpb
	i3rrkWhGJy6lAjpEYOKkQTUFgV74YX6DBsP1O2ZIaITR4gOt3ZXjU4kTPHr6l9gcmaogfe+uZ7oeb
	hp8brT86Yc3T46jYB4IAjU6Zh2w/2u17eZUGpH8J3RiVcZs6asOC7bJ5A8n0VxwZH/DDofIveW4k1
	5vnB3CTA==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6pA9-00000007s58-3MA4
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 12:55:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789563291;
	bh=3zKw4K0SxfBg0yduDZURnZ1s2u3ud89HZ8goJk4/ZGQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gxMvh4KbzfJgdo5wyOaRN1EtdQAsSwX0NVCpX9OageWzyYwkeFiKFcx/M3Y2pExuq
	 QMSfyGnkW9w6tpU0SqCICYkef4aUgFIzO90iE4Kzr8+Or2+no5PMC3IonuJwVxnc0i
	 FYKg9Mm1r/kkdKIDIRPiDuH4RkS3nZ39qz6Vg/pT1c3h0jW7stcBs31CES9jS9WfA1
	 0fnRfpTMpCyEbTNaH6lH7euR783RtnrO2Fus8VsCcw/URwf5kWkj15L6Eh6uD1LsMT
	 EbxrF1FnuhsPDyqtLnkaGLPQDz4xXPOtlCY37AXDq4DJTC7K+ODuN89cmH36IpO/KX
	 ITTdmqnr3D2Sg==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D710D17E138B;
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
Subject: [PATCH v1 5/7] media: verisilicon: vp8: Use alloc/free helpers for auxiliary buffers
Date: Wed, 16 Sep 2026 14:54:41 +0200
Message-ID: <20260916125443.78602-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_135458_014814_AA5ABE83 
X-CRM114-Status: GOOD (  11.30  )
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
