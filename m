Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DF9BC982C7
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 12:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKv9ysOImloP1hOsy+e/ExoqU6b3+MvoM56k1OenHQo=; b=v1H+7rSkHi2g0i
	lEPR7WiPu7kAeFJVb6GhKSW22ZHd8Z69RsJoTcTGWk+DXctnxzKaPVkE4g/q+Uq6G3P2J9iS3j42h
	dIGzRjn00RcUY2oVNJq8cdusc8HvgByvwuEAuLMKm3sWIkGser0Pq5/2OVP+wmrtmMkgUw9FctijP
	OS/3hE0nzsxBEcFHkIRQaPQG2a2QHIoHtuPL6ph0X/ONECs80e4+8AhWWqMURB8/E+HI7jSWdhKpD
	wvkLFRJAyyU5EUp0D/veJC5DXilVG/tZqAYw7OVxtrC8VFS8cwyYmVH3CvrX64L6yatZb+rKORJwl
	Y//BbE1G2cgrBi2BI0FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAC-00000009DEe-3kj5;
	Wed, 16 Sep 2026 12:55:00 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pA7-00000009DB8-3tJZ
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 12:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789563291;
	bh=6PqgZGG44xEHnNJLqRnqFADHyuaxg3PALlytKAhKjTs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LSbyXXWVIiUUmKzRY4I/h1E103Y2p9TNVCckhdyOobQNuk+tn4xbOV1eqQjx+vXmj
	 THvoJkBJOS2jAxKZX82VWRZCTNo3wPtn5NmFkb6K8ECuZ+PAPVmXMZMNM7LH4FezYA
	 b61FtyULRiTWN/1XCi1uGvFrxgCvbVEhz2ShrJ6yM0lnyEIhecAMN891POgwlDRExO
	 KpeUj452HzXfIX/X1fDLXUradLAXFzw/+7eFP+gLz1ZrpdLXelNL8xIgruc7ym0BUK
	 QX8Es6LIsYRoIYAf1RLqMd+NVzFaN1JVYL/YEjMUWAyv3t8n2w6A5VmRrMx88tC0yS
	 i+p/6FoQ9w2zQ==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3A8AD17E13A8;
	Wed, 16 Sep 2026 14:54:51 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v1 6/7] media: verisilicon: vp9: Use alloc/free helpers for auxiliary buffers
Date: Wed, 16 Sep 2026 14:54:42 +0200
Message-ID: <20260916125443.78602-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_055456_161180_B2F91C07 
X-CRM114-Status: GOOD (  10.77  )
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
For upstream it should be merged into only one commit.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_vp9.c   | 37 ++++++-------------
 1 file changed, 11 insertions(+), 26 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_vp9.c b/drivers/media/platform/verisilicon/hantro_vp9.c
index 566cd376c097..7a46a4767254 100644
--- a/drivers/media/platform/verisilicon/hantro_vp9.c
+++ b/drivers/media/platform/verisilicon/hantro_vp9.c
@@ -181,23 +181,17 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
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
+	if (hantro_allocate_aux_buf(ctx, segment_map, size))
+		goto error;
 
-	segment_map->cpu = dma_alloc_coherent(vpu->dev, size, &segment_map->dma, GFP_KERNEL);
-	if (!segment_map->cpu)
-		goto err_segment_map;
-
-	segment_map->size = size;
 	memset(segment_map->cpu, 0, size);
 
 	size = hantro_vp9_prob_tab_size();
@@ -205,36 +199,27 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
 	size += hantro_vp9_count_tab_size();
 	vp9_dec->tile_info_offset = size;
 	size += hantro_vp9_tile_info_size();
+	if (hantro_allocate_aux_buf(ctx, misc, size))
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
 
 	return -ENOMEM;
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
