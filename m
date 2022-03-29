Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22009C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/lVPZ1JxuJfR8o/zQM4Mm4UERcUEaeu5Y2rWLecBmT0=; b=CQsuFfTS0L/a053e8JgVexyLC/
	0kz5Q8/lU0eSlzdUji1Ig4ISLnURi1uDowJBljXWZlomp6LmyuFjMyIhRReJ9yfm6Y2wIfbdw8/m7
	yTBHNXbXUUnPA0EFcIVNViyRqIyZilZtibFeaURlGgSK0bjc/sQXk0TNys3lxxVAM+YkSRjB9wVE4
	1nt0ZS0BkSNlc/ZDsYKD5KAvwF76ssswhGwRmdnb+OE9CdwCGIRUALl507KFG6hnbCuhjXlBdU2jn
	o7JKdUDR0dFi9zjgeqVVwZhd3/Z9rCCYdWblI/KKG4vfD+szV5S57jVaWf3sU6QE3d2bMURde/YNG
	mCpdX4yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDlO-00CfOr-85; Tue, 29 Mar 2022 15:28:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDlL-00CfNs-5k
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:28:04 +0000
Received: from localhost (unknown [IPv6:2a02:3030:a:f397:f6bc:b726:2678:839f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7C7561F43AA8;
 Tue, 29 Mar 2022 16:28:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648567681;
 bh=0WBPtRTMEH9aGdnUl4+8dTJV+SacbehPsT9oslSd1D0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QjoYj3oorkvXAWR0ba7v4nX1ICwSmCtkRxz4sMZP6NAwQalIqOOQFjRpKEp3qu6BG
 ml/N1mQ8f7Ava3k38orGRIMrXSlI8GNuof8ePHiHG+14thQKFldEawFUs3/i06TeYy
 tjXK0duH7g5DwjMLovuLUXUj5o4B7GTw9SyhSaciZD/3BiJus8/2Agn9nAdrDpitST
 0e1jHDUjxhYH4dABjs9O/w12S8/Ccq+gZdb2d9S4LnoDR/KRHcKjGzANv5zlmrLpG0
 3eJyRDqCNsL+zL+pkjV6DR6Y/p3Q7kr3Cf3PCl2jrH83fHcFScW2mX1vO835zLDCcS
 6GRUEM2P9O+5A==
Date: Tue, 29 Mar 2022 17:27:57 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 14/24] media: rkvdec: h264: Fix dpb_valid implementation
Message-ID: <20220329152757.u55y4sjk45qiig7x@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-15-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-15-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_082803_379675_639CAD2B 
X-CRM114-Status: GOOD (  16.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>The ref builder only provided reference that are marked as valid in the

s/reference/references/

>dpb.  Thus the current implementation of dpb_valid would always set the
>flag to 1.  This is not representing missing frames (this is called

s/this is//

>'non-existing' pictures in the spec). In some context, these non-existing
>pictures still need occupy a slot in the reference list according to the

s/occupy/to occupy/

>spec.
>
>Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Greetings,
Sebastian

>---
> drivers/staging/media/rkvdec/rkvdec-h264.c | 33 ++++++++++++++++------
> 1 file changed, 24 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>index 842d8cd80e90..db1e762baee5 100644
>--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>@@ -112,6 +112,7 @@ struct rkvdec_h264_run {
> 	const struct v4l2_ctrl_h264_sps *sps;
> 	const struct v4l2_ctrl_h264_pps *pps;
> 	const struct v4l2_ctrl_h264_scaling_matrix *scaling_matrix;
>+	int ref_buf_idx[V4L2_H264_NUM_DPB_ENTRIES];
> };
>
> struct rkvdec_h264_ctx {
>@@ -725,6 +726,26 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> 	}
> }
>
>+static void lookup_ref_buf_idx(struct rkvdec_ctx *ctx,
>+			       struct rkvdec_h264_run *run)
>+{
>+	const struct v4l2_ctrl_h264_decode_params *dec_params = run->decode_params;
>+	u32 i;
>+
>+	for (i = 0; i < ARRAY_SIZE(dec_params->dpb); i++) {
>+		struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>+		const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
>+		struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
>+		int buf_idx = -1;
>+
>+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
>+			buf_idx = vb2_find_timestamp(cap_q,
>+						     dpb[i].reference_ts, 0);
>+
>+		run->ref_buf_idx[i] = buf_idx;
>+	}
>+}
>+
> static void assemble_hw_rps(struct rkvdec_ctx *ctx,
> 			    struct rkvdec_h264_run *run)
> {
>@@ -762,7 +783,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>
> 	for (j = 0; j < RKVDEC_NUM_REFLIST; j++) {
> 		for (i = 0; i < h264_ctx->reflists.num_valid; i++) {
>-			u8 dpb_valid = 0;
>+			u8 dpb_valid = run->ref_buf_idx[i] >= 0;
> 			u8 idx = 0;
>
> 			switch (j) {
>@@ -779,8 +800,6 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>
> 			if (idx >= ARRAY_SIZE(dec_params->dpb))
> 				continue;
>-			dpb_valid = !!(dpb[idx].flags &
>-				       V4L2_H264_DPB_ENTRY_FLAG_ACTIVE);
>
> 			set_ps_field(hw_rps, DPB_INFO(i, j),
> 				     idx | dpb_valid << 4);
>@@ -859,13 +878,8 @@ get_ref_buf(struct rkvdec_ctx *ctx, struct rkvdec_h264_run *run,
> 	    unsigned int dpb_idx)
> {
> 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>-	const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
> 	struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
>-	int buf_idx = -1;
>-
>-	if (dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
>-		buf_idx = vb2_find_timestamp(cap_q,
>-					     dpb[dpb_idx].reference_ts, 0);
>+	int buf_idx = run->ref_buf_idx[dpb_idx];
>
> 	/*
> 	 * If a DPB entry is unused or invalid, address of current destination
>@@ -1102,6 +1116,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>
> 	assemble_hw_scaling_list(ctx, &run);
> 	assemble_hw_pps(ctx, &run);
>+	lookup_ref_buf_idx(ctx, &run);
> 	assemble_hw_rps(ctx, &run);
> 	config_registers(ctx, &run);
>
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
