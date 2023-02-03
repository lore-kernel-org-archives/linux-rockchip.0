Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49313C636CC
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 09:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILG3i/AkBovj2nBlbq7FMsl6bs+ahaGXA6QActnPAuY=; b=r3ZmkynrFlhHKT
	9xADZpplQICVC39y6V1K/wnrEOX2ybR8EaoBrDiptoLvyyTUj7j6xd5WMIxJLBCA1q9Hb3IGJapoZ
	W3Hmt334LOuWOzHnkX1fzqwJw37oj3lsbXGOP8werK2lqBWoTmfhJCqqqfa+2ywEO/1zVi2/mbqlq
	nt9kIoZj7fz5KqbuQ76/SfpJCug7z1XDYgY43TE4r0lHQPP5VNqrG+OW+BCtygioPIR6dfW5KaEtq
	J8Nb9aedJp55xDH6lB0a00he0TlkPuMFnkT/P/ARBIAWBoX2BBAgZ3pBXNWsq+GrDw+5Vmx75+K1o
	yFTQmnRRW8pUa+76Q7uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsC7-0017nC-JZ; Fri, 03 Feb 2023 09:17:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsBU-0017Un-Tj; Fri, 03 Feb 2023 09:16:44 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d413:5f9c:fc3a:208d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 45E836602F0E;
	Fri,  3 Feb 2023 09:16:36 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675415796;
	bh=XkoUCITE8h1soeO51L0cqguHb/kDm/X/DMUUXHPEMvQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CFSvYdotWp7taqLyWxCkOcF2cgzFwo1c4wPNGGegBjxBOvXki5QvrFps6xL4yoMSF
	 OJ80+PgWaRdG0Eaer3uja6uIFhv4xJV7DfQD/dwD2hKT+gMf15R0kIlCAhWGuctvCP
	 xX7En04caQ9GRmosrgy9cT292T24zJ/6awv0tCs0m2zntbWqmpqFV5bwXLo92hz/tB
	 vPHtlD0evqErzQS+CU+OMDR7eBeO2KUkoS2lxvm12sS5WmBkYOiT9YqMPEEuWgcQFK
	 OqZqiR1tg0H3kcdgAgfYj6tddnk/NpIb7yLYxAc6UgmlDKL5gWDcKbKdWXS1K4IHwL
	 nwdOu/Cfq5vAg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v8 3/6] media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
Date: Fri,  3 Feb 2023 10:16:19 +0100
Message-Id: <20230203091622.127279-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
References: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_011641_228406_28135B7A 
X-CRM114-Status: GOOD (  15.15  )
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

In hantro_try_ctrl() we should only check the values inside
control parameters and not set ctx->bit_depth. That must
be done in controls set function.
Create a set control function for hevc where ctx->bit_depth is
set at the right time.

Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_drv.c   | 32 ++++++++++++++-----
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 8cb4a68c9119..6d8bc55ea627 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -251,11 +251,6 @@ queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 
 static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 {
-	struct hantro_ctx *ctx;
-
-	ctx = container_of(ctrl->handler,
-			   struct hantro_ctx, ctrl_handler);
-
 	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
 		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
 
@@ -274,8 +269,6 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
 			/* Only 8-bit and 10-bit are supported */
 			return -EINVAL;
-
-		ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
 	} else if (ctrl->id == V4L2_CID_STATELESS_VP9_FRAME) {
 		const struct v4l2_ctrl_vp9_frame *dec_params = ctrl->p_new.p_vp9_frame;
 
@@ -324,6 +317,24 @@ static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct hantro_ctx *ctx;
+
+	ctx = container_of(ctrl->handler,
+			   struct hantro_ctx, ctrl_handler);
+
+	switch (ctrl->id) {
+	case V4L2_CID_STATELESS_HEVC_SPS:
+		ctx->bit_depth = ctrl->p_new.p_hevc_sps->bit_depth_luma_minus8 + 8;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 	.try_ctrl = hantro_try_ctrl,
 };
@@ -336,6 +347,11 @@ static const struct v4l2_ctrl_ops hantro_vp9_ctrl_ops = {
 	.s_ctrl = hantro_vp9_s_ctrl,
 };
 
+static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
+	.try_ctrl = hantro_try_ctrl,
+	.s_ctrl = hantro_hevc_s_ctrl,
+};
+
 #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
 					 V4L2_JPEG_ACTIVE_MARKER_COM | \
 					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
@@ -470,7 +486,7 @@ static const struct hantro_ctrl controls[] = {
 		.codec = HANTRO_HEVC_DECODER,
 		.cfg = {
 			.id = V4L2_CID_STATELESS_HEVC_SPS,
-			.ops = &hantro_ctrl_ops,
+			.ops = &hantro_hevc_ctrl_ops,
 		},
 	}, {
 		.codec = HANTRO_HEVC_DECODER,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
