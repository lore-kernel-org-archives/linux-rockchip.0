Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB7FC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 20:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bH7MVyQnJXw4blVWNocZEm0HoHUe8n/tTlk0TCLkocI=; b=zY39z5IC/d05he
	2mqabYNeIUSUhvY9WswdvvGvQ5XuIxCo53SSuLbM0zxDQcTFsYqsO5+iqjPQLgmp9Y7GfbZIe81l4
	fjzzaKfgcg03g+BTUrs7I5UvchB4JpTaD8/FxyyrVlkjVSG2QLLBIy4jM14NOitNw8jju4KuSEBu8
	CQI5z11m/IJpX9vxqd20VMLnwE9jMSKTL7/fu16kNEBIgf5lvsPvlpvKkLGk/Do7hwl8t7A59ile3
	a8If64xidsodSTQ1qWebLMcJqTvUkGphQSKzQ7QMdBTa9yEpH3O1ZiYqm0LkdjeKhkocSOU6wYtSl
	Nm6duR5fxpFG7c6/KcNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYvXY-009zn9-5G; Mon, 28 Mar 2022 20:00:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYvXO-009zZB-Sx
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 20:00:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 3FA4D1F438C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648497625;
 bh=8ZY/TY5wUQG0UMY3VQ/LrDrnewxXRhJm8xn75yuBk5Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LSDm5ErzEA5Fbw1ws4czjOsu3fDm4pT7JTICNQb9Fxicx6vsUkjVibEJRKm5wdL1O
 RBQz0zvf0GFTHerfTot93aA7pF8puNqK0jfkRs9hc6KNv9c0YQ/snt2M+kxyvVWs+S
 3EBf7R+5vYaeovxq0AC+6izjekHkVTooXRWLjT7GU7RtNgNCmzqDnta4gia2cQ1DoH
 TG4bC9yYVGWQsG3EzJrtji98AFV+6ZbCgyA0PWPcYOHg/UAQfX/9jawDNdU2juVia5
 Ft73gjEr8k+CaHrjhTKr7JNAoe8Ku9MUs/j0HW1rub/lD3a9+Xd9eIlAtko1TX8l1T
 9C9nhjLJIUDBA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v1 23/24] media: hantro: Add H.264 field decoding support
Date: Mon, 28 Mar 2022 15:59:35 -0400
Message-Id: <20220328195936.82552-24-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_130027_250528_DEA4DB44 
X-CRM114-Status: GOOD (  23.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This adds the required code to support field decoding. While most of
the code is derived from Rockchip and VSI reference code, the
reduction of the reference list to 16 entries has been found by
trial and errors. The list consist of all the references with the
opposite field parity.

The strategy being to deduplicate the reference picture that points
to the same storage (same index). The choice of opposite parity has
been made to keep the other field or a field pair to be kept in the
list. This method may not be robust if a field was lost.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/hantro/hantro_h264.c | 107 ++++++++++++++++++---
 drivers/staging/media/hantro/hantro_hw.h   |   1 +
 2 files changed, 94 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 7377fc26f780..f6fc939aa726 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -22,6 +22,11 @@
 #define POC_BUFFER_SIZE			34
 #define SCALING_LIST_SIZE		(6 * 16 + 2 * 64)
 
+/* For valid and long term reference marking, index are reversed, so bit 31
+ * indicates the status of the picture 0.
+ */
+#define REF_BIT(i)			BIT(32 - 1 - (i))
+
 /* Data structure describing auxiliary buffer format. */
 struct hantro_h264_dec_priv_tbl {
 	u32 cabac_table[CABAC_INIT_BUFFER_SIZE];
@@ -227,6 +232,7 @@ static void prepare_table(struct hantro_ctx *ctx)
 {
 	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
 	const struct v4l2_ctrl_h264_decode_params *dec_param = ctrls->decode;
+	const struct v4l2_ctrl_h264_sps *sps = ctrls->sps;
 	struct hantro_h264_dec_priv_tbl *tbl = ctx->h264_dec.priv.cpu;
 	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
 	u32 dpb_longterm = 0;
@@ -237,20 +243,45 @@ static void prepare_table(struct hantro_ctx *ctx)
 		tbl->poc[i * 2] = dpb[i].top_field_order_cnt;
 		tbl->poc[i * 2 + 1] = dpb[i].bottom_field_order_cnt;
 
+		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_VALID))
+			continue;
+
 		/*
 		 * Set up bit maps of valid and long term DPBs.
-		 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
+		 * NOTE: The bits are reversed, i.e. MSb is DPB 0. For frame
+		 * decoding, bit 31 to 15 are used, while for field decoding,
+		 * all bits are used, with bit 31 being a top field, 30 a bottom
+		 * field and so on.
 		 */
-		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
-			dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
-		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-			dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
+		if (dec_param->flags & V4L2_H264_DECODE_PARAM_FLAG_FIELD_PIC) {
+			if (dpb[i].fields & V4L2_H264_TOP_FIELD_REF)
+				dpb_valid |= REF_BIT(i * 2);
+
+			if (dpb[i].fields & V4L2_H264_BOTTOM_FIELD_REF)
+				dpb_valid |= REF_BIT(i * 2 + 1);
+
+			if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) {
+				dpb_longterm |= REF_BIT(i * 2);
+				dpb_longterm |= REF_BIT(i * 2 + 1);
+			}
+		} else {
+			dpb_valid |= REF_BIT(i);
+
+			if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+				dpb_longterm |= REF_BIT(i);
+		}
+	}
+	ctx->h264_dec.dpb_valid = dpb_valid;
+	ctx->h264_dec.dpb_longterm = dpb_longterm;
+
+	if ((dec_param->flags & V4L2_H264_DECODE_PARAM_FLAG_FIELD_PIC) ||
+	    !(sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)) {
+		tbl->poc[32] = ctx->h264_dec.cur_poc;
+		tbl->poc[33] = 0;
+	} else {
+		tbl->poc[32] = dec_param->top_field_order_cnt;
+		tbl->poc[33] = dec_param->bottom_field_order_cnt;
 	}
-	ctx->h264_dec.dpb_valid = dpb_valid << 16;
-	ctx->h264_dec.dpb_longterm = dpb_longterm << 16;
-
-	tbl->poc[32] = dec_param->top_field_order_cnt;
-	tbl->poc[33] = dec_param->bottom_field_order_cnt;
 
 	assemble_scaling_list(ctx);
 }
@@ -326,6 +357,8 @@ dma_addr_t hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
 {
 	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
 	dma_addr_t dma_addr = 0;
+	s32 cur_poc = ctx->h264_dec.cur_poc;
+	u32 flags;
 
 	if (dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
 		dma_addr = hantro_get_ref(ctx, dpb[dpb_idx].reference_ts);
@@ -343,7 +376,12 @@ dma_addr_t hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
 		dma_addr = hantro_get_dec_buf_addr(ctx, buf);
 	}
 
-	return dma_addr;
+	flags = dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_FIELD ? 0x2 : 0;
+	flags |= abs(dpb[dpb_idx].top_field_order_cnt - cur_poc) <
+		 abs(dpb[dpb_idx].bottom_field_order_cnt - cur_poc) ?
+		 0x1 : 0;
+
+	return dma_addr | flags;
 }
 
 u16 hantro_h264_get_ref_nbr(struct hantro_ctx *ctx, unsigned int dpb_idx)
@@ -355,6 +393,34 @@ u16 hantro_h264_get_ref_nbr(struct hantro_ctx *ctx, unsigned int dpb_idx)
 	return dpb->frame_num;
 }
 
+static void deduplicate_reflist(struct v4l2_h264_reflist_builder *b,
+				struct v4l2_h264_reference *reflist)
+{
+	int write_idx = 0;
+	int i;
+
+	if (b->cur_pic_fields == V4L2_H264_FRAME_REF) {
+		write_idx = b->num_valid;
+		goto done;
+	}
+
+	for (i = 0; i < b->num_valid; i++) {
+		if (!(b->cur_pic_fields == reflist[i].fields)) {
+			reflist[write_idx++] = reflist[i];
+			continue;
+		}
+	}
+
+done:
+	/* Should not happen unless we have a bug in the reflist builder. */
+	if (WARN_ON(write_idx > 16))
+		write_idx = 16;
+
+	/* Clear the remaining, some streams fails otherwise */
+	for (; write_idx < 16; write_idx++)
+		reflist[write_idx].index = 15;
+}
+
 int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 {
 	struct hantro_h264_dec_hw_ctx *h264_ctx = &ctx->h264_dec;
@@ -386,15 +452,28 @@ int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 	/* Update the DPB with new refs. */
 	update_dpb(ctx);
 
-	/* Prepare data in memory. */
-	prepare_table(ctx);
-
 	/* Build the P/B{0,1} ref lists. */
 	v4l2_h264_init_reflist_builder(&reflist_builder, ctrls->decode,
 				       ctrls->sps, ctx->h264_dec.dpb);
+	h264_ctx->cur_poc = reflist_builder.cur_pic_order_count;
+
+	/* Prepare data in memory. */
+	prepare_table(ctx);
+
 	v4l2_h264_build_p_ref_list(&reflist_builder, h264_ctx->reflists.p);
 	v4l2_h264_build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
 				    h264_ctx->reflists.b1);
+
+	/* Reduce ref lists to at most 16 entries, Hantro hardware will deduce
+	 * the actual picture lists in field through the dpb_valid,
+	 * dpb_longterm bitmap along with the current frame parity.
+	 */
+	if (reflist_builder.cur_pic_fields != V4L2_H264_FRAME_REF) {
+		deduplicate_reflist(&reflist_builder, h264_ctx->reflists.p);
+		deduplicate_reflist(&reflist_builder, h264_ctx->reflists.b0);
+		deduplicate_reflist(&reflist_builder, h264_ctx->reflists.b1);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 292aaaabaf24..fd869369fb97 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -91,6 +91,7 @@ struct hantro_h264_dec_hw_ctx {
 	struct hantro_h264_dec_ctrls ctrls;
 	u32 dpb_longterm;
 	u32 dpb_valid;
+	s32 cur_poc;
 };
 
 /**
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
