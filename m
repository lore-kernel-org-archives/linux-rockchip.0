Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1887C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 20:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHZU6uipqM0goaK9cw8369Rkl+/GnDqTdzYajyf5z1s=; b=Fw2ulFifzXfiGV
	8O1Js4gPw6js8fYvQTaTvapgzfPiuVgivbOFoN4kKzwC2VhkgUC1+JkwJDKd2KYND8l/eH72nBuwI
	9KaJVawcw8xyb/nsPQ0p66MD6Kc7Cbud694lCwMAidAxuFgg/dMrNqu8vFLoXECNIrMFfDOxFZEGo
	Q7jyHjnsQjfMsO3DrDExC419bBKcphBx4E4ztNJ+GJLdL3a9//cvk6dmk2fQS8dMarKgUcOBpcThj
	0vBhjp077Y8+miGT3VnyFczYXZwTaVTniaoAT/uGv+PNpP1UF6f0UTgvgiJxtH+MnWkuh8uyPrT5R
	qhda1AlsGjKpvY4wCp2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npc5n-00Ha2B-PY; Fri, 13 May 2022 20:40:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npbv7-00HVE9-80
 for linux-rockchip@lists.infradead.org; Fri, 13 May 2022 20:29:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 098C41F46484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1652473792;
 bh=/HUm+2tIimTRRFVj71OaFyqc2Gk4HBundroiAuGI1EY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iZUI2QrUdNrjgYRKH8Evuj3VNdhydoESdxJ0hiTMRmlNUijZoRZfLwt6Bb++CbrZC
 GNNaE3CEmKeSdOajaCYNS6ECqplCV/2Jms6LFKRgXtoCW6TktozZiDkZqXkbnKlsUp
 CY5boNhczvZfmK2jkzLEuvp7+NutQRnY17z6jTj9Gy9zrhxrxxk1nDopkA/RxJFA5d
 P3CFHHQQj8/Lrn5zYVTk/aLO7zj9QGBgM2WZLrVAxY9O5WAphypJrPjHMx0Ik4ZjHT
 uLGxlWw+GiCWDF+DjkMR6FU5sfWbQdtxvLpObdewkrX3T/v0I4P9vNl1YFS8+a0zOj
 o6AYUdJCO739g==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nicolas@ndufresne.ca, linux-media@vger.kernel.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 11/20] media: rkvdec: Move H264 SPS validation in
 rkvdec-h264
Date: Fri, 13 May 2022 16:29:13 -0400
Message-Id: <20220513202922.13846-12-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
References: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_132953_535829_DAD2A6E0 
X-CRM114-Status: GOOD (  16.57  )
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

No functional change, this moves H264 specific validation into the H264
specific code. This is in preparation of improving this validation and
reusing it when VIDIOC_STREAMON is called.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 23 ++++++++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c      | 23 ++++++----------------
 drivers/staging/media/rkvdec/rkvdec.h      |  1 +
 3 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 8d44a884a52e..0dcbcb1bac80 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1137,9 +1137,32 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
 	return 0;
 }
 
+static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
+{
+	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
+		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
+		/*
+		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
+		 * but it's currently broken in the driver.
+		 * Reject them for now, until it's fixed.
+		 */
+		if (sps->chroma_format_idc > 1)
+			/* Only 4:0:0 and 4:2:0 are supported */
+			return -EINVAL;
+		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
+			/* Luma and chroma bit depth mismatch */
+			return -EINVAL;
+		if (sps->bit_depth_luma_minus8 != 0)
+			/* Only 8-bit is supported */
+			return -EINVAL;
+	}
+	return 0;
+}
+
 const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
 	.adjust_fmt = rkvdec_h264_adjust_fmt,
 	.start = rkvdec_h264_start,
 	.stop = rkvdec_h264_stop,
 	.run = rkvdec_h264_run,
+	.try_ctrl = rkvdec_h264_try_ctrl,
 };
diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 2df8cf4883e2..e3d44d5b35f3 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -29,23 +29,12 @@
 
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
-	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
-		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
-		/*
-		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
-		 * but it's currently broken in the driver.
-		 * Reject them for now, until it's fixed.
-		 */
-		if (sps->chroma_format_idc > 1)
-			/* Only 4:0:0 and 4:2:0 are supported */
-			return -EINVAL;
-		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
-			/* Luma and chroma bit depth mismatch */
-			return -EINVAL;
-		if (sps->bit_depth_luma_minus8 != 0)
-			/* Only 8-bit is supported */
-			return -EINVAL;
-	}
+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
+	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+
+	if (desc->ops->try_ctrl)
+		return desc->ops->try_ctrl(ctx, ctrl);
+
 	return 0;
 }
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 2f4ea1786b93..9df0fba799a4 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -72,6 +72,7 @@ struct rkvdec_coded_fmt_ops {
 	void (*done)(struct rkvdec_ctx *ctx, struct vb2_v4l2_buffer *src_buf,
 		     struct vb2_v4l2_buffer *dst_buf,
 		     enum vb2_buffer_state result);
+	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
 };
 
 struct rkvdec_coded_fmt_desc {
-- 
2.34.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
