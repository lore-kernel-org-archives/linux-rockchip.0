Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65675ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 16:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1z+Ra19ESt7z38aL98H/I2JwGTqPuvxn0/AWX/d8QI=; b=1Z6ylXPT0iwBRi
	7+JnCDIGk325KF8pU0OGeWZoj5vkdzldBfb7CXytpuucYK9du0U9vLks8KiYQ/1R9idaxNQgyc/+K
	Ec1ISAKjl8J0dAYLAe3UTPQVY3UtXsHklvNU3z+FIE2+qMQFAEQ3Fn+yVhnUIjmzfk+YiObff9e5z
	vPt3lKK3XeBgXp09vZbwPRU+jCkiIblFZTW2qascwg6PQw2T18bILdRTcMbP6Q456n+n58dC/4jxO
	3ugQ75b0QU6XQ5PfFNip1a1YgXMk2D5sHhxjC27ab2KYNKHGZvqBChO0GPSbifkU7BxKPxODExKzg
	aYPDLRTbTqpj1qhnh3OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShiw-00Bn5Z-9o; Mon, 29 Aug 2022 16:34:54 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWe-00Bhvz-5U; Mon, 29 Aug 2022 16:22:16 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3d67:aec0:f788:1143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8E443660036C;
	Mon, 29 Aug 2022 17:22:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661790129;
	bh=0VOVYPwZ5ffiEbRCRymyaz9bIrqxcPmbdRTa8xLR1jk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=h39Yb5QDYYn6r/KkginqrwRT1Vqpvl9JbZqP7x1GL1bp6K4MtzkuyPr/J6+RiMByn
	 SDyC5NHQoG+0w6626yPzyANexlG1yBThmU9n3kCctcg5EhCuQzfpRi7tOnI3zZbUqO
	 RnsTjR1WBb2mhJKNI+rPWf9drbkP9ZQHazYxKRjqivOHEt222oUUwlyBejsL5PdRyd
	 qHHZ6HuaxlC+cBpzeWlSpZCHVh1f3NRK/HitCk/yucgLknuPhfLOo9saNdhkoTgbxO
	 eRqpVelQZu7QZqA9g0NiXYJnj8uCA3tCbsR1uVurg9o5A9Pj4TyjOlPv852ywLR5tx
	 yuAjj0VkeuWGA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 1/7] media: hantro: Store HEVC bit depth in context
Date: Mon, 29 Aug 2022 18:21:53 +0200
Message-Id: <20220829162159.881588-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
References: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_092212_399503_776AB6A1 
X-CRM114-Status: GOOD (  10.89  )
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

Store HEVC bit depth in context.
Bit depth is equal to hevc sps bit_depth_luma_minus8 + 8.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 3:
- Based on top of Ezequiel's patch "media: destage Hantro VPU driver"
 drivers/media/platform/verisilicon/hantro_drv.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2036f72eeb4a..1dd8312d824c 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -251,6 +251,11 @@ queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 
 static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 {
+	struct hantro_ctx *ctx;
+
+	ctx = container_of(ctrl->handler,
+			   struct hantro_ctx, ctrl_handler);
+
 	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
 		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
 
@@ -272,6 +277,8 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != 0)
 			/* Only 8-bit is supported */
 			return -EINVAL;
+
+		ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
 	} else if (ctrl->id == V4L2_CID_STATELESS_VP9_FRAME) {
 		const struct v4l2_ctrl_vp9_frame *dec_params = ctrl->p_new.p_vp9_frame;
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
