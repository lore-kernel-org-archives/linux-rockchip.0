Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE7A1C369DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 19:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+vp9DcM94ya/NVKRrZjTgdIrzxspOOls3el4lk7bt0=; b=waQj9KD9GxWjav
	4VAqW5np9w1n1611AoJxe1W5K4+hJ3vnR6AR2Gvwr1wJXweB9STC9tJ5940T072RcMcXhDy7uW/hd
	mFIUCte4ioWxVWH0osTttHGNz6QKe61PJKCJg5uVDwMBDY2e/gQnRQoHMUGvaUv7OETy6TBKkLApG
	n23CuYS4S7r511lZyYYREhswctFVnBzth4sE8VyHaLJ95NQAa9OejBy2BhXxd7Jf8RUNb6yko/Khq
	iDkAYrstD2pYSDfA0zYBt2Uo4z7LJ4ppM1SY+PVtWPK95TWvBuTwyxJcUwPJzRHJw6dSi0A7cxqah
	txIP+lwCbJxB6V1lgN+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAa1C-0000000GX94-3aul;
	Thu, 01 May 2025 19:56:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAa1B-0000000GX8W-31ZB
	for linux-rockchip@bombadil.infradead.org;
	Thu, 01 May 2025 19:56:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=wqBUwsig1AbNIvCFjkGUOnyHkYy5qGv7D0hkbyVaHmI=; b=NtYb69QRSZskdtvRtAchnIZjwP
	yUf/WOrdLJreh/DwItjKoYA9wgw7xM5ojqqgeJuT+1h6F/83WWOCmmWJ7mZtJNCUcqtR+4Up45E/3
	E3lEHVfzuMMCCf4h6XF9Q+VAotfPet05he3U4p3NiAhiGOGdFYjpd9ci/x4hn495/qTj1RxVF7aLR
	tGLjg+SKvpmov7OxKBH/CAXGTZ5wlasfQaSM0vyrNtlTihVB1/SUHGGUorzRIdzxNNShevRBLlNqK
	xfcNSGyU7KiJSnBylLorAd8maw6P4NMGH2x030iELLfQpghUnUqz/OEQvSn9pUUH31FpgaUcZ/QjB
	kjDMMkfw==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uAa16-0000000E77a-2i4e
	for linux-rockchip@lists.infradead.org;
	Thu, 01 May 2025 19:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1746129373;
	bh=F8QH/ocNr8Msfc15yLu3IucOFvml0k937ZAmGMEg8lE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ig+PwqmMqyrZpfWyvRKuzdDYLsYeYs5IakbcKMPMzE2BXMf7hDELt93eKZaC86YBX
	 4Z8YRPddIB5WDdNKeZCK8hnAXe8eeJ1KlfGiq3YJSRoNcDtpdNl/ArSFUw+oOAAzBn
	 s1PLHSLvxTc0BTmgrbQVQrslxfAJMUBdjrvnSuPBBZcuo4CGEeP2bKbP4symKhcvjt
	 y8q8hXwE9O9sqpZiF62aTN/fNwCfneJ51wQVQuVbRqmUce9gggjDntIT+Xexe6XuqC
	 pBQ47ruPwwhmcn+VjyqzeArHshq7gDqfqSV5pz/wWkElvIMQ1b1A3CRUa9GppBpmC3
	 TiNTd1cCSMjdg==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:17:8242::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C915C17E1500;
	Thu,  1 May 2025 21:56:11 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 01 May 2025 15:55:49 -0400
Subject: [PATCH v10 3/4] media: rkvdec: Add get_image_fmt ops
MIME-Version: 1.0
Message-Id: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-3-c380ba452108@collabora.com>
References: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
In-Reply-To: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, 
 Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_205620_951741_8843C181 
X-CRM114-Status: GOOD (  12.50  )
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
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Jonas Karlman <jonas@kwiboo.se>
Co-developed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 35 +++++++++++++++++++++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.h |  2 ++
 2 files changed, 37 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7b780392bb6a63cc954655ef940e87146d2b852f..f7eb67520ab0edd9ac1da3d0daf2af1bc6d37a09 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -34,6 +34,15 @@ static bool rkvdec_image_fmt_match(enum rkvdec_image_fmt fmt1,
 	       fmt1 == RKVDEC_IMG_FMT_ANY;
 }
 
+static bool rkvdec_image_fmt_changed(struct rkvdec_ctx *ctx,
+				     enum rkvdec_image_fmt image_fmt)
+{
+	if (image_fmt == RKVDEC_IMG_FMT_ANY)
+		return false;
+
+	return ctx->image_fmt != image_fmt;
+}
+
 static u32 rkvdec_enum_decoded_fmt(struct rkvdec_ctx *ctx, int index,
 				   enum rkvdec_image_fmt image_fmt)
 {
@@ -118,8 +127,34 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
+	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	enum rkvdec_image_fmt image_fmt;
+	struct vb2_queue *vq;
+
+	/* Check if this change requires a capture format reset */
+	if (!desc->ops->get_image_fmt)
+		return 0;
+
+	image_fmt = desc->ops->get_image_fmt(ctx, ctrl);
+	if (rkvdec_image_fmt_changed(ctx, image_fmt)) {
+		vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+				     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+		if (vb2_is_busy(vq))
+			return -EBUSY;
+
+		ctx->image_fmt = image_fmt;
+		rkvdec_reset_decoded_fmt(ctx);
+	}
+
+	return 0;
+}
+
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
