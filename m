Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97734C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTiAJQY/Bm9Z1wWJ94BLBct5EaQl/lu6ZxtziRi/glE=; b=dG7MQG+Mfxs4tB
	bBXIKmygKd1gEWFZeD12WOyZwFwHScoRrYLJDEip004pXbYSj9VMwYuBqSSmVtQB3hbIZXDpxRJhc
	EeuYVLF+BBvE7lJV9QCeELoQIiJ/5qqt/YeYvoEu9dIpD6ApMSjLEm2Ai4Ia2mDFN05iuBdWDRBaJ
	BknuJnXZa3KHCPc/aaMxMT2BeriHk5nX6y7SbKlxAJsMkfYYiSuKMiY3Tmn1g55nxJqBlQapRHm6U
	AFrhMogSo92LN80Tx0n5MG51F+oU+RWt58Zz85Pm5y1/Mu+GO0aPVA4Uu13sy29ZaCxItv5kTXni4
	Ty6W7CrVRAn3v0lJ0wcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njKuv-00ETV4-5h; Tue, 26 Apr 2022 13:07:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njKlv-00EPBb-1c
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 12:58:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id C07D41F43992
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650977905;
 bh=Zdyv7lj5Zwk1trozSl5/ToeVKlMaPGRdeC6c5HT1zS8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Od0WtrC9/3w+VoxRpi3zn10sJ0Br+Gyxb8aoVslheETwwKNg/iGAv2aeShXCkitp/
 Mu4Hk9C93KBfpJpPhx+gFja3MN2vX+NB0+0n75rpbpgc71IN++FRPYYTja1zrDaY/n
 3kUPquAsCscegcf3N7IYdBYQloUa83CIBpVs5ZxT7WEvn2yM/NBLYZKjrNrE7pWiTJ
 ZHOiflQlrvYlhRoSitzL1RDhm9rQ++Mj2oFRrdWePsCXJcFPMU9H15LspCuU6jmBLa
 vpwvQbkapiOUjG2v5o0kcEh5tZLdyUH6uhfMZ5GWU0SHZQBPMBsPa4/rAIxwk0kvQo
 xpd9x7iSfaPsw==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nicolas@ndufresne.ca, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 15/24] media: rkvdec: Move H264 SPS validation in
 rkvdec-h264
Date: Tue, 26 Apr 2022 08:57:41 -0400
Message-Id: <20220426125751.108293-16-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
References: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_055827_349101_594D65C7 
X-CRM114-Status: GOOD (  16.73  )
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
