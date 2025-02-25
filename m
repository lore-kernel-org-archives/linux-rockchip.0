Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B6A8C021B6
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 10:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlRLFji/VLY3CQtu3mtWdd9OBz2j73y6If7q2sxWcxU=; b=bYH/3PBt0zc2kr
	6ok7FH/8BMsBwlXaE6QY/Z26nokzDezrarfSUB7JuFpC02tLrfz5qvQ3AJpnPd9f4V0VHzD+QsMTn
	Upcu0yrr6GJTSkEK6WxUaox0k3FQjKziidXGheuxificp6axT85ZZlHcS17PlguD7+cBkaFSifvOG
	yxNjmRwlC4WhN8DLxyp39uodKQrhDX9yPtC9/im1mchjQjTrSLDakNpgrxqO6NRYpykf2A2TcWu4i
	dPvoyT2b8WofenP16UOw9toO9iSiuINe1/EgQfLDA+gcNJ6bBRWS9Zu2342jxLsIV+dN9YVDSsbQC
	jLROCrLVzNXIswGVfH2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrlK-0000000GjPC-0kZc;
	Tue, 25 Feb 2025 10:02:02 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrSG-0000000GepY-1u9q
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 09:42:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740476535; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kjhfYKacagn7OGxW8vpe/RG0uXAvLFpqOQaKXPdyVrRlUpCCXXHE3EiRgDQ8BLGY10IpGXZ1kP3Jrgg8g8ylbwwDZbDNpbU1gywQlEI/O5p+mm+qBc12b4eShdFtfN7vOoqRzZLEMd+Nd52mHpY7Rg7HFcBXUBzc3j3Y/2QGTF4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740476535; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/8A7cEnXp8nqZSIzTdM5HSiUNLhttee1lozg4tIvdoc=; 
	b=khpuzu4WJBh+Mj3Q5udxNj1IG6RTdbRCILPFQEYO3AnYbcya6C2AnjeHQFIOP3ut4sdobi073FbDjVHAdvxVEDbb1i6EHV3QFG6ybcnG1ZhC6ql2SOpHjepwsmVVH5tfIeU6SRHyJFtvSlW0YbAPyeOJJA9R6PM5ovD6zu3gWzQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740476535;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=/8A7cEnXp8nqZSIzTdM5HSiUNLhttee1lozg4tIvdoc=;
	b=gAezVFRb2JnB0sDbHuthPK6vunPim94elYStVh3Kq2pKUnpQQqNSfvGQtMkwroU5
	A8nGJPaTtDO1a9Y9zSpdg+jjb489ZbE8frMECgC23A7MSuM8laIRJmeQvbGjXIOR3jA
	K59++doc6/tqaDGuiaco32J6UomIyyrq5VBPtdUA=
Received: by mx.zohomail.com with SMTPS id 1740476532125542.1938108427083;
	Tue, 25 Feb 2025 01:42:12 -0800 (PST)
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Tue, 25 Feb 2025 10:40:30 +0100
Subject: [PATCH v7 09/12] media: rkvdec: Add get_image_fmt ops
MIME-Version: 1.0
Message-Id: <20250225-rkvdec_h264_high10_and_422_support-v7-9-7992a68a4910@collabora.com>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
In-Reply-To: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 Alex Bee <knaerzche@gmail.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>, Jonas Karlman <jonas@kwiboo.se>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476426; l=3356;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=CwMixnkIZ/allNwX4Kc5noJDx3ycu+QFQATghvvWml8=;
 b=b5AtoQiu6u0MbqANEjQWro6j75NOwil1ENlDIZbECq7Y4f1q04MKnytzZ0Kx30msXVMaTilUUvBZ
 b1oGeS91ADoc0uU6FIwmBaKnVu4A5YEfX0DVu78SKzsaehqyyU6P
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_014220_534924_9DCD52B2 
X-CRM114-Status: GOOD (  14.34  )
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
---
 drivers/staging/media/rkvdec/rkvdec.c | 49 +++++++++++++++++++++++++++++++++--
 drivers/staging/media/rkvdec/rkvdec.h |  2 ++
 2 files changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 70154948b4e32e2c439f259b0f1e1bbc8b52b063..5394079509305c619f1d0c1f542bfc409317c3b7 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -111,15 +111,60 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
 	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	struct v4l2_pix_format_mplane *pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
+	enum rkvdec_image_fmt image_fmt;
+	struct vb2_queue *vq;
+	int ret;
+
+	if (desc->ops->try_ctrl) {
+		ret = desc->ops->try_ctrl(ctx, ctrl);
+		if (ret)
+			return ret;
+	}
+
+	if (!desc->ops->get_image_fmt)
+		return 0;
 
-	if (desc->ops->try_ctrl)
-		return desc->ops->try_ctrl(ctx, ctrl);
+	image_fmt = desc->ops->get_image_fmt(ctx, ctrl);
+	if (ctx->image_fmt == image_fmt)
+		return 0;
+
+	if (rkvdec_is_valid_fmt(ctx, pix_mp->pixelformat, image_fmt))
+		return 0;
+
+	/* format change not allowed when queue is busy */
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	if (vb2_is_busy(vq))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
+	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	struct v4l2_pix_format_mplane *pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
+	enum rkvdec_image_fmt image_fmt;
+
+	if (!desc->ops->get_image_fmt)
+		return 0;
+
+	image_fmt = desc->ops->get_image_fmt(ctx, ctrl);
+	if (ctx->image_fmt == image_fmt)
+		return 0;
+
+	ctx->image_fmt = image_fmt;
+	if (!rkvdec_is_valid_fmt(ctx, pix_mp->pixelformat, ctx->image_fmt))
+		rkvdec_reset_decoded_fmt(ctx);
 
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
