Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF1AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 20:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8tgv2VpCKO3zrudlsem92uK/ecrCQuTESR+sAfnGV4=; b=n3uclnQuOWPpdr
	mG5sVA2RSKChVGcP/tc92SAVfn1k5UOT5fabhhhnpzjfSPKm0run3frJEjD87tdYkFFBxnBWNCBON
	bytUEVymaghlpOfcEd0WM00Fkc6lTxaYGVMHggyMYrJnhU49+dIXmpPKMIgsHxG8nCQPKZ3BYQYR4
	zdHCAPCIpbYaAbWog0TiEshOFotcBKmCCtpu0pcfGr0fy5KknF/sDHR1Yn5FPCMm8colMAB1ferMW
	z6eKNlWfMddc/VnoY2VrnVr/8jCKDCbPqHkwdQOQ2S8TlhUQfZadJwtajHZJ6pXVdyOLCqG2CDf4A
	TOEjRRc3i3cjbA3jnZeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npc6Y-00HaWs-Lq; Fri, 13 May 2022 20:41:42 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npbvd-00HVcb-0O
 for linux-rockchip@bombadil.infradead.org; Fri, 13 May 2022 20:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=zDcJfwUBt1+Cr76K75MtMYNiQoQ0/pYjz/+UDdBw/TM=; b=aG+sEL6FdjqRz4U9BWN6vfBMBS
 VAsefdq8Q9Twd5TOSWU7eN5xF46cLUoa9wqU0X0+D/zPYnTmI8je0gkbiGJnCW4Jl7dedxgi/fd/m
 6PyXqlTWYNP2AgiWD1s/0l/IMVp88h7OHERa1TP5UOyTfTUMWwRfsgzdteXtU8i9Uf1LM6orvwOOv
 B2kUA5/eFNjE248VbctQVu/xZ7bt8rVMSfb7B/cHvp2uHcxg1VLzLBxzieo8LD1UAqNctxil3kkbo
 QdeODqGJ+ROVpHpsgJLo/sikZnbeXpO1fy/Ks9nQRyiYrhLpgVsLIPzp14mS9YYO/4ayWP6uEyucM
 O5OC8/Vw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npbv6-0006W6-0H
 for linux-rockchip@lists.infradead.org; Fri, 13 May 2022 20:30:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id B18A31F46481
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1652473788;
 bh=6VfvBHSE6A+IDfkNG2Ci8I/HmRwNsgBMdcwXJyxIJpc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z7qCUdIwoDGpQAAqigEm1APjRXaASTGnbn5nOFjTBCdFuJz8mlySsv2OIM9VhI2ED
 wj9K4t4Ts12HDTTUVDQNy26TP2jtl4kIwsCC5pE+V3Z6RjnaXFutyUv7HjO0iIhpj+
 Dd8ku4PfAunrnTznMqnLhUjzbrqEocEE6gDMTpUPEx4O5oYWyzFlTP4v5Rwwao6v57
 9Mx/yBKY/nS5D7VoBYfJCukfy3n9EiBm90VdGG/i8FDOgevmcMDJfZc5dpL626gg8k
 gj5hAzmxO86pJO7zRDf+2rER/vzoG3vzB7tLtMcM/tllpBgXv3eLTU8X9MmxgonOwQ
 3Agta1u7fLoDA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: nicolas@ndufresne.ca, linux-media@vger.kernel.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 09/20] media: rkvdec: h264: Fix dpb_valid implementation
Date: Fri, 13 May 2022 16:29:11 -0400
Message-Id: <20220513202922.13846-10-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
References: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_212956_226088_EA74777B 
X-CRM114-Status: GOOD (  17.38  )
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

The ref builder only provided references that are marked as valid in the
dpb. Thus the current implementation of dpb_valid would always set the
flag to 1. This is not representing missing frames (this is called
'non-existing' pictures in the spec). In some context, these non-existing
pictures still need to occupy a slot in the reference list according to
the spec.

Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 33 ++++++++++++++++------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index dff89732ddd0..bcde37d72244 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -112,6 +112,7 @@ struct rkvdec_h264_run {
 	const struct v4l2_ctrl_h264_sps *sps;
 	const struct v4l2_ctrl_h264_pps *pps;
 	const struct v4l2_ctrl_h264_scaling_matrix *scaling_matrix;
+	int ref_buf_idx[V4L2_H264_NUM_DPB_ENTRIES];
 };
 
 struct rkvdec_h264_ctx {
@@ -725,6 +726,26 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	}
 }
 
+static void lookup_ref_buf_idx(struct rkvdec_ctx *ctx,
+			       struct rkvdec_h264_run *run)
+{
+	const struct v4l2_ctrl_h264_decode_params *dec_params = run->decode_params;
+	u32 i;
+
+	for (i = 0; i < ARRAY_SIZE(dec_params->dpb); i++) {
+		struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
+		const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
+		struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
+		int buf_idx = -1;
+
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
+			buf_idx = vb2_find_timestamp(cap_q,
+						     dpb[i].reference_ts, 0);
+
+		run->ref_buf_idx[i] = buf_idx;
+	}
+}
+
 static void assemble_hw_rps(struct rkvdec_ctx *ctx,
 			    struct rkvdec_h264_run *run)
 {
@@ -762,7 +783,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
 
 	for (j = 0; j < RKVDEC_NUM_REFLIST; j++) {
 		for (i = 0; i < h264_ctx->reflists.num_valid; i++) {
-			u8 dpb_valid = 0;
+			bool dpb_valid = run->ref_buf_idx[i] >= 0;
 			u8 idx = 0;
 
 			switch (j) {
@@ -779,8 +800,6 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
 
 			if (idx >= ARRAY_SIZE(dec_params->dpb))
 				continue;
-			dpb_valid = !!(dpb[idx].flags &
-				       V4L2_H264_DPB_ENTRY_FLAG_ACTIVE);
 
 			set_ps_field(hw_rps, DPB_INFO(i, j),
 				     idx | dpb_valid << 4);
@@ -859,13 +878,8 @@ get_ref_buf(struct rkvdec_ctx *ctx, struct rkvdec_h264_run *run,
 	    unsigned int dpb_idx)
 {
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
-	const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
 	struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
-	int buf_idx = -1;
-
-	if (dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
-		buf_idx = vb2_find_timestamp(cap_q,
-					     dpb[dpb_idx].reference_ts, 0);
+	int buf_idx = run->ref_buf_idx[dpb_idx];
 
 	/*
 	 * If a DPB entry is unused or invalid, address of current destination
@@ -1102,6 +1116,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
 
 	assemble_hw_scaling_list(ctx, &run);
 	assemble_hw_pps(ctx, &run);
+	lookup_ref_buf_idx(ctx, &run);
 	assemble_hw_rps(ctx, &run);
 	config_registers(ctx, &run);
 
-- 
2.34.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
