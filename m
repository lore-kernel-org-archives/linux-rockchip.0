Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79B26C369CA
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 17:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u88Pb6yNju8INyo2qUPfB9a6Y9zebazLjOCrGF2fUk0=; b=l/99anc90V4ODP
	T2gOxTMK3/mquoZ2fxXHNfjM1fDKWhoLFvQ3h2mWUvdromT7SnyVWQr1Up8bjrvBMavD1OdFeLcxO
	mHjqE6842YOYVTk5OK2ELpocEHTyTbBqTIRlP49hBYb3Vqq/y0NNCKVMn/ChO75wG4SqfYkhAQc/D
	4GJQR5nP4CpNffnzEGGjIv5jF0z2x8R3Z5ygpLCn45XsSMkwgr0jTl9a6LL3dDNXaDwph5GkXlW6k
	bGYl0LFYTcqDB3ZzSKMmt/4R27rMB6d7nqrRUbsxHwdmTNijMZqn0XbWn1vxIo51V5L+ofwtuRdL2
	RSOx2R2W1Pt9OVeOMs3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5T6P-0000000Drxm-1eeR;
	Thu, 17 Apr 2025 17:32:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Soz-0000000DneV-1oXm
	for linux-rockchip@bombadil.infradead.org;
	Thu, 17 Apr 2025 17:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6jHezIEu7TAOnR4zx6szSEy4DzR1PU4FCHvGpBTPneM=; b=Ws8Z7LXCQU6xkNtx1BFZF+F2VP
	SEeYdqJgXBPVxyDJkOekDVVXewZV5CGHNa7G9q4kIQVhJFG4EziFRXfB1uTdsBZ1JUqR7+vvQkqy9
	leG9ghnXSi7999Wnz12hHONjTRcKQmJjS5L/2iGenY8gZk05juEJ2whItrUougz9vWfuovxzOZFrF
	ObE6Moq+aJb/yM/nf3+XToGl2SgDcdzBMyRjIalEsxwYtJzKM/Dj/+CqEtOC7nCQSLaPnLTcboS+4
	IipmSLR+sXpbXZBj+etnt0BiAWURZ7p6CSrTkLN5qdYoMEonjoc69hAuHrLxokuEmJsj+Hc+MMXFq
	zs+fHhlw==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u5Sov-0000000AL8v-3Dgg
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 17:14:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744910075;
	bh=RQ8KYGKUgnwozUM2CREceGXOEzRASSnB3BX/srowU8M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JKLdtGaPUbAUKqGdbVq0NnmOF7fia5d1OKCVMH4kncY0jx0chMpy3VxlM1XBLHZaH
	 4RswlwLs01ZHH4+Ypey7pqKtNhk0LpjeP2YoQ5KoxLqLP0KsqPFCOCzxqDvbDn5ZoE
	 dazZAek2yqKKAQJZbMGdZnke8GdUjCBewmtDT9MyY6ZFWxNbJcmfE+lodnwC6I0YJf
	 corvSCEbLtGQu2E6thBmrDrLGlN4UstGHDTfFOCx7QT0WSAFTy5cguFV/zJ9bKxxd1
	 jV+MvZkyX9HUhj0F0lwHt7byUA+hMr0r8a+j23UywgMpOaH7pz9XGNuqY1INBsuGCB
	 kVZoEte341r4g==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:15:9913::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DA82417E156D;
	Thu, 17 Apr 2025 19:14:33 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 17 Apr 2025 13:14:24 -0400
Subject: [PATCH v8 2/3] media: rkvdec: Add get_image_fmt ops
MIME-Version: 1.0
Message-Id: <20250417-b4-rkvdec_h264_high10_and_422_support-v8-2-423fe0a2ee7e@collabora.com>
References: <20250417-b4-rkvdec_h264_high10_and_422_support-v8-0-423fe0a2ee7e@collabora.com>
In-Reply-To: <20250417-b4-rkvdec_h264_high10_and_422_support-v8-0-423fe0a2ee7e@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_181438_320824_024047C5 
X-CRM114-Status: GOOD (  14.61  )
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

From: Jonas Karlman <jonas@kwiboo.se>

Add support for a get_image_fmt() ops that returns the required image
format.

The CAPTURE format is reset when the required image format changes and
the buffer queue is not busy.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Christopher Obbard <chris.obbard@collabora.com>
Co-developed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 44 +++++++++++++++++++++++++++++++++--
 drivers/staging/media/rkvdec/rkvdec.h |  2 ++
 2 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 65c6f1d07a493e017ae941780b823d41314a49b8..db01cc64f1ba2dcd5914537db41e2f51f454b186 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -72,6 +72,15 @@ static bool rkvdec_is_valid_fmt(struct rkvdec_ctx *ctx, u32 fourcc,
 	return false;
 }
 
+static bool rkvdec_fmt_changed(struct rkvdec_ctx *ctx,
+			       enum rkvdec_image_fmt image_fmt)
+{
+	if (image_fmt == RKVDEC_IMG_FMT_ANY)
+		return false;
+
+	return ctx->image_fmt != image_fmt;
+}
+
 static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
 				       struct v4l2_pix_format_mplane *pix_mp)
 {
@@ -111,15 +120,46 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
 	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	int ret;
+
+	if (desc->ops->try_ctrl) {
+		ret = desc->ops->try_ctrl(ctx, ctrl);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
+	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	enum rkvdec_image_fmt image_fmt;
+	struct vb2_queue *vq;
 
-	if (desc->ops->try_ctrl)
-		return desc->ops->try_ctrl(ctx, ctrl);
+	/* Check if this change requires a capture format reset */
+	if (!desc->ops->get_image_fmt)
+		return 0;
+
+	image_fmt = desc->ops->get_image_fmt(ctx, ctrl);
+	if (rkvdec_fmt_changed(ctx, image_fmt)) {
+		/* Format changes are not allowed when capture queue is busy */
+		vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+				     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+		if (vb2_is_busy(vq))
+			return -EINVAL;
+
+		ctx->image_fmt = image_fmt;
+		rkvdec_reset_decoded_fmt(ctx);
+	}
 
 	return 0;
 }
 
 static const struct v4l2_ctrl_ops rkvdec_ctrl_ops = {
 	.try_ctrl = rkvdec_try_ctrl,
+	.s_ctrl = rkvdec_s_ctrl,
 };
 
 static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 6f8cf50c5d99aad2f52e321f54f3ca17166ddf98..e466a2753ccfc13738e0a672bc578e521af2c3f2 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -73,6 +73,8 @@ struct rkvdec_coded_fmt_ops {
 		     struct vb2_v4l2_buffer *dst_buf,
 		     enum vb2_buffer_state result);
 	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
+	enum rkvdec_image_fmt (*get_image_fmt)(struct rkvdec_ctx *ctx,
+					       struct v4l2_ctrl *ctrl);
 };
 
 enum rkvdec_image_fmt {

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
