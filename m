Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B9A606A882
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 10:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PQqTbZbM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IExbPOjpcmZ7rIXGMryPlgrQlUaWG2jAc7d782uiLuU=; b=PQqTbZbM55UiKUeaULLwjvQk7r
	JUHEHwwE2zjTDU0u1V9yV2xLQq9t2WGWXpRGbqm5i2ff55KyQiAUPcL22k/EC8TXH0zkPIDcL/UBR
	BOT/2qybv/ZR55l1uw85J5TD4m1HwI8FnvIrFu7qSAm3TYxlllSuXBGnsV492YyP5Wpxbp4NJB8n0
	ZL5c/ou6rdiTg6berp/i3AlT8m14Eg/pC77fMhG5VZTeiZSB3aY3ZVrdgdK5EQh033gemMWBzey6r
	RXcBoRs4RUaJBhZK7vNfIesFJIUmy2vpMcs8x7gzIZ3YnUaQ776HJlwGygKXtOCSd3nHy4oBkKrDy
	sR6UKBRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSAub-0000000FkIc-1xw1;
	Sat, 14 Nov 2026 10:23:09 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSAuZ-0000000FkG5-0Jr7;
	Sat, 14 Nov 2026 10:23:08 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256:X25519MLKEM768)
	 (Exim 4.100.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1xSAuS-000000003bG-0Ffl;
	Sat, 14 Nov 2026 10:23:00 +0000
Date: Sat, 14 Nov 2026 10:22:57 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Alex Bee <knaerzche@gmail.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] media: rkvdec: hevc: bound the RPS reads by the control
 size
Message-ID: <bb9c44d0f56221874b105394169e5c377ef21b42.1794645268.git.daniel@makrotopia.org>
References: <cover.1794645268.git.daniel@makrotopia.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1794645268.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_022307_118126_29389012 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RPS helpers read num_short_term_ref_pic_sets elements of the
EXT_SPS_ST_RPS control and num_long_term_ref_pics_sps elements of the
EXT_SPS_LT_RPS control, however many elements userspace passed. Beyond
the passed elements they read stale entries of the control's array,
and past its allocation once the SPS counts more sets than the control
has ever held, as the control framework sizes a dynamic array for the
largest element count it has seen. The short-term sets read from there
are unchecked, and a num_negative_pics or num_positive_pics above 16
overflows the calculated sets, the stack arrays of
st_ref_pic_set_prediction() and the hardware RPS table.

A userspace V4L2 client that can open the RKVDEC m2m decoder can set an
SPS whose counts exceed the number of elements it passed in these
controls, so the reads run past the allocation.

Use the controls only when they hold at least as many elements as the
SPS counts, and treat them as not set otherwise in both back ends.

Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Cc: stable@vger.kernel.org
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 .../platform/rockchip/rkvdec/rkvdec-hevc-common.c    | 12 ++++++------
 .../platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c   |  4 ++--
 .../platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c   |  4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
index c249e3f16f42c..797a16517ed59 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
@@ -448,18 +448,18 @@ void rkvdec_hevc_run_preamble(struct rkvdec_ctx *ctx,
 			      V4L2_CID_STATELESS_HEVC_SCALING_MATRIX);
 	run->scaling_matrix = ctrl ? ctrl->p_cur.p : NULL;
 
+	run->ext_sps_st_rps = NULL;
 	if (ctx->has_sps_st_rps) {
 		ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
 				      V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS);
-		run->ext_sps_st_rps = ctrl ? ctrl->p_cur.p : NULL;
-	} else {
-		run->ext_sps_st_rps = NULL;
+		if (ctrl && ctrl->elems >= run->sps->num_short_term_ref_pic_sets)
+			run->ext_sps_st_rps = ctrl->p_cur.p;
 	}
+	run->ext_sps_lt_rps = NULL;
 	if (ctx->has_sps_lt_rps) {
 		ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
 				      V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS);
-		run->ext_sps_lt_rps = ctrl ? ctrl->p_cur.p : NULL;
-	} else {
-		run->ext_sps_lt_rps = NULL;
+		if (ctrl && ctrl->elems >= run->sps->num_long_term_ref_pics_sps)
+			run->ext_sps_lt_rps = ctrl->p_cur.p;
 	}
 }
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
index e1936e87f45be..fea7ff48c0dce 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
@@ -604,8 +604,8 @@ static int rkvdec_hevc_run(struct rkvdec_ctx *ctx)
 	 * On vdpu381, not setting the long and short term ref sets will just output wrong frames.
 	 * Let's just warn about it and let the decoder run anyway.
 	 */
-	if ((!ctx->has_sps_lt_rps && run.sps->num_long_term_ref_pics_sps) ||
-	    (!ctx->has_sps_st_rps && run.sps->num_short_term_ref_pic_sets)) {
+	if ((!run.ext_sps_lt_rps && run.sps->num_long_term_ref_pics_sps) ||
+	    (!run.ext_sps_st_rps && run.sps->num_short_term_ref_pic_sets)) {
 		dev_warn_ratelimited(rkvdec->dev, "Long and short term RPS not set\n");
 	} else {
 		rkvdec_hevc_assemble_hw_rps(&run, &tbl->rps, &hevc_ctx->st_cache);
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
index e9d8b590f0d58..c409d21c08598 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
@@ -550,8 +550,8 @@ static int rkvdec_hevc_run(struct rkvdec_ctx *ctx)
 	 * To be on the safe side for this new v4l2 control, write an error in the log and mark
 	 * the buffer as failed by returning an error here.
 	 */
-	if ((!ctx->has_sps_lt_rps && run.sps->num_long_term_ref_pics_sps) ||
-	    (!ctx->has_sps_st_rps && run.sps->num_short_term_ref_pic_sets)) {
+	if ((!run.ext_sps_lt_rps && run.sps->num_long_term_ref_pics_sps) ||
+	    (!run.ext_sps_st_rps && run.sps->num_short_term_ref_pic_sets)) {
 		dev_err_ratelimited(rkvdec->dev, "Long and short term RPS not set\n");
 		rkvdec_run_postamble(ctx, &run.base);
 		return -EINVAL;
-- 
2.56.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
