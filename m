Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0B85C54EAA
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 17:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1qmlR6nViuTa1VvIhSmhF7d6mv8lIHLWTz5cRhT/Bs=; b=cJX/tmuEmcOwNz
	6U6rRMQLMaFh1yJAgOX+EmjDiixK5jmTdfBIx86oX7EsrbYVUbWn8jdd+9l+n2f/Om2bmcJxJftNn
	0RbfNMSxZ+wXYOxzCFnD0Fi5GPKVXJPedFGY3euzmRQo9paRrgou8dwvoSVSuJjjQaGu1FBzLPgqT
	C9onfAqzmbKLge03GACqfriNOCOtk0wJu8NLYRvfoYM8d84wtfoqIsDMQycCakqimLl0u4LhdWjO1
	njyDaGnNVjG5RLG9XyfQ1YNGJrAHTlYruO/0xOryP0JWMGheDvUwWvWNX5/OAc17LABfqJrZRN7Ym
	g1eg3ypoQ168yEV4w1iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXcw-004ORw-1W; Mon, 30 Jan 2023 17:07:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXYg-004MNe-KU; Mon, 30 Jan 2023 17:03:09 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:e655:2335:9172:6e39])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 99C456602ECB;
	Mon, 30 Jan 2023 13:58:12 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675087093;
	bh=C/QAyRDA/waqPf4kFAS8tK6asJ/IhGRhX08Vka5WQCc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SfUSiJ2wJQ24d6ulRQN2KZk741WuDEwIFzdvGLpIrVhYp0K9qLF3a3YKV+fxA313D
	 9umQx9ogVFNwH31/1Uh1VVmbwyQICualFayd0be7aPpbtW6EED/+12WNMzVF3R+BRz
	 rhkm0iTWl1bBNf6OMt3E19vu5DM76y2MxuYKUO0yX/dProNS+SxIQsH+BjB59KmqSR
	 j1L0YvApI6cAviPm8YvkwvCkWJTkavUiBwD/GHCSdhfROXL1WrBUlCz/QV0V8QndOs
	 e5LdNh4r6oXwkw1tr1U8eIFZyue8SQv3gXv8K5ucNbv3b6TlLbqmknOBs34Y1JLP3x
	 4EHxw5Hj8KzJg==
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
Subject: [PATCH v6 3/5] media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
Date: Mon, 30 Jan 2023 14:58:00 +0100
Message-Id: <20230130135802.744743-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230130135802.744743-1-benjamin.gaignard@collabora.com>
References: <20230130135802.744743-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_090306_829969_A94D541C 
X-CRM114-Status: GOOD (  14.86  )
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
 .../media/platform/verisilicon/hantro_drv.c   | 27 ++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 8cb4a68c9119..715075f15596 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -274,8 +274,6 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
 			/* Only 8-bit and 10-bit are supported */
 			return -EINVAL;
-
-		ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
 	} else if (ctrl->id == V4L2_CID_STATELESS_VP9_FRAME) {
 		const struct v4l2_ctrl_vp9_frame *dec_params = ctrl->p_new.p_vp9_frame;
 
@@ -324,6 +322,24 @@ static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
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
@@ -336,6 +352,11 @@ static const struct v4l2_ctrl_ops hantro_vp9_ctrl_ops = {
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
@@ -470,7 +491,7 @@ static const struct hantro_ctrl controls[] = {
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
