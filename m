Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7DD7D15DB5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=new0cy/uWORxTdDZn0KxL05DyIWMMI+HOwh7i2dbO5E=; b=n3cCJ48Uk5hwEx
	dN22954Px130EdjtVFQfplxSsQZJYGiqdKnHsqHPrbFuN485lTZFqjfOWjEA+5RBuCxzJRdkV1qnl
	WlVh/+TbqKJF1aT8XH8l2DIiCzqNAT3wI0gB9Y1A9K4Copi6oEoV/CAh814Dfm/gX59pw0mroVqS0
	weGGsDGRZZdD3GddS26ywbPDHSrKjC4vQ68LljxOVfjfGRM3aGc9C/r3xba1GAss4j5mZHUr/jZw2
	PFQPDTBnXwDDA3JvcYkWVXDo42pZcez5lnXq5rX+oIjKMG4IMs+BIh46ZvQSKZUgX0p/UQNosZq2E
	pspEbv/0Lfx0ygUoqcvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ujD-00000007sEQ-44oF;
	Mon, 21 Oct 2024 15:53:55 +0000
Received: from a7-47.smtp-out.eu-west-1.amazonses.com ([54.240.7.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uf5-00000007rOS-0shk;
	Mon, 21 Oct 2024 15:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=bc7lryepznv65m6r2ewkpoafjt4fiq42; d=collabora.com; t=1729525774;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding;
	bh=toAJwIKA7RZAQVARGMAi5K9VmZBIKCnLKPK9Q+kKBaw=;
	b=gyS1Ki4ijauyhKcafflRpXHM1GhGqmaWor73rdoLbCvX+sw2LITPQPSRKqfLHX9p
	I5x31z+sZNlGR1jxSUXGH4Yi5RSMUGC8F9Mq9+LMFoRE4ugu0gdQxhvjEyGhiv2KB4a
	EAGtEqq9P4OjPHZ5GuJnbN1fB8xYtNnbKmLlkFNKFBFn7iQ0X/NpZgFToEvKy0npf/s
	/hTF2Iei058gUnEpoUYuhI9hjhvucTSFDebqOvTAwYFuvDGovwB0Z/VrYLm98D1S3BV
	EvBjVt6/sY2fyZ4RJ9ZFcqTXYqQmYHjtGY+XbvB+4ojlaT0Z8ZwqiOsnSCKHQY7zLhi
	WAbLGzsPgA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1729525774;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=toAJwIKA7RZAQVARGMAi5K9VmZBIKCnLKPK9Q+kKBaw=;
	b=T7zmybvzpyTJMJ9kK3gT+3/usua8kp7itqACqLjRldsQ8pi0mka/iED/94CqEMcK
	gcUQi/M8pNMVT3dXVUVUd5RuZD6pCTTitLyZG/DNqzPhBQnDApVmOoBtZI5cDv2m/7z
	hGhDxkliIL3JDF74hFnPbiDb3LOYlUXe4uK8m7DY=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
	mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: av1: Store chroma and mv offsets
Date: Mon, 21 Oct 2024 15:49:34 +0000
Message-ID: <01020192afc4f87b-fd9b4515-9e30-41e7-8cf9-029cf5c0c7b6-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.10.21-54.240.7.47
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084939_451957_89AD11CC 
X-CRM114-Status: GOOD (  10.57  )
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

Store chroma and motion vectors offsets for each frame so
they can be used later when resolution change.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro.h              | 7 +++++++
 .../platform/verisilicon/rockchip_vpu981_hw_av1_dec.c    | 9 +++++----
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 811260dc3c77..6d36371c1d13 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -332,12 +332,19 @@ struct hantro_vp9_decoded_buffer_info {
 	u32 bit_depth : 4;
 };
 
+struct hantro_av1_decoded_buffer_info {
+	/* Info needed when the decoded frame serves as a reference frame. */
+	size_t chroma_offset;
+	size_t mv_offset;
+};
+
 struct hantro_decoded_buffer {
 	/* Must be the first field in this struct. */
 	struct v4l2_m2m_buffer base;
 
 	union {
 		struct hantro_vp9_decoded_buffer_info vp9;
+		struct hantro_av1_decoded_buffer_info av1;
 	};
 };
 
diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index e54f5fac325b..69b5d9e12926 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -686,8 +686,6 @@ rockchip_vpu981_av1_dec_set_ref(struct hantro_ctx *ctx, int ref, int idx,
 	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_decoded_buffer *dst;
 	dma_addr_t luma_addr, chroma_addr, mv_addr = 0;
-	size_t cr_offset = rockchip_vpu981_av1_dec_luma_size(ctx);
-	size_t mv_offset = rockchip_vpu981_av1_dec_chroma_size(ctx);
 	int cur_width = frame->frame_width_minus_1 + 1;
 	int cur_height = frame->frame_height_minus_1 + 1;
 	int scale_width =
@@ -744,8 +742,8 @@ rockchip_vpu981_av1_dec_set_ref(struct hantro_ctx *ctx, int ref, int idx,
 
 	dst = vb2_to_hantro_decoded_buf(&av1_dec->frame_refs[idx].vb2_ref->vb2_buf);
 	luma_addr = hantro_get_dec_buf_addr(ctx, &dst->base.vb.vb2_buf);
-	chroma_addr = luma_addr + cr_offset;
-	mv_addr = luma_addr + mv_offset;
+	chroma_addr = luma_addr + dst->av1.chroma_offset;
+	mv_addr = luma_addr + dst->av1.mv_offset;
 
 	hantro_write_addr(vpu, AV1_REFERENCE_Y(ref), luma_addr);
 	hantro_write_addr(vpu, AV1_REFERENCE_CB(ref), chroma_addr);
@@ -2089,6 +2087,9 @@ rockchip_vpu981_av1_dec_set_output_buffer(struct hantro_ctx *ctx)
 	chroma_addr = luma_addr + cr_offset;
 	mv_addr = luma_addr + mv_offset;
 
+	dst->av1.chroma_offset = cr_offset;
+	dst->av1.mv_offset = mv_offset;
+
 	hantro_write_addr(vpu, AV1_TILE_OUT_LU, luma_addr);
 	hantro_write_addr(vpu, AV1_TILE_OUT_CH, chroma_addr);
 	hantro_write_addr(vpu, AV1_TILE_OUT_MV, mv_addr);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
