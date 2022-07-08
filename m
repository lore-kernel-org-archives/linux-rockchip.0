Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D221C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 16:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGMKnp+8k/gM6ofEmFKpLXh1rl9xYHMeMmvPeO3PNvY=; b=cGuSPiZ/BX4uCR
	6zSl+Z8s1vYqmgLPUPur+0wsiUspz5YZllbJVcWQkWP+321FxOzsPfnm+KGmV3gz+jHfbbhaXosuw
	9nFC9efsHL6uV0Tufr2JHOOgrEI2TcV3KwRpQqOPa1liz+YRnoeNaeIvlxEKf/tzxg7DwvtZcuvuy
	vaqLNbZYv4g4vMo7fpRc75QXbQ9jb8lg0JzLTNokiwa5JJoU2MJP1CEB9g3S0hocXNCV+UvC03WEP
	+pZCFttEoWLi2Q6SFjZCGepYJ2JbPA0CFwXvm/7C6oISRx8Qc3yGP1ZZCs9u4ksLZcu5uE89zYNVA
	8/7y2OX/6gBXjvHEX2YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9qrn-004emN-KG; Fri, 08 Jul 2022 16:30:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9qki-004awH-86; Fri, 08 Jul 2022 16:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PMkSrxypyzPZX5cGz0cwTldowAr7tyuirsuViPZw73o=; b=l7KFC4CspekX+kkrL/ZDsU+HBG
	qO8cI0WWfNK6981OEFm5KzZ1Eh+bn7sJAlFWQJFZGJA38x+U6BlOPk7TMoItDVOvVTWRfeQMlaO7M
	axxnW52QVJ2qabd0Yd3ik6hjTB+E/ipzPN0oDgkbvT6Bprqo+DB4PjTQx4tQyf3MuiGlZB8s3wZwI
	f6k1UUd3+WRMzKgzenksIweREkKCbHjSpjQLCePGGqUp3lU6xRvALQjkoJFLFWNQuiP+8tJn3NLo7
	Fso5onbrIbHHRRqm1kz/DVK6jo93w4ySmwmGiLZ37emP8fAuRTCNUEzTysZXSUVl4YPeJkxFfSVMM
	B2j7KuOw==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9qkM-001pGv-DY; Fri, 08 Jul 2022 16:22:45 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3cab:61a1:2b1f:896b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5ACD96601A00;
	Fri,  8 Jul 2022 17:22:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657297343;
	bh=t0/p61VK/C1WwG7QkqZyOBt3zUn1k4DeYvoEkoPfpvQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bjJ7kGqqqe5Yk5U88RD1IGjppSp6CIDCPVr+I7jOEqXkbqJwIK31vcureOeXdes+k
	 FtCJysWc0ruQn+l+JbLLpQ4z/QTVYGXk4FIuHM/W+CqMSWVkKvEnaxS/Y1Etc8R+aM
	 J1Q8B7rDVH7ItLBDyxEFfyHeSqWtw7dq2KErN9cjZIuWHYdNumDAbseb4zIi+V+JfB
	 cpqxsWDnkT6lFMDZmUUARGFd0wL5ZiLTidRhc7ZdutSd/LapkrbkA+CCDfTE8AJr8Z
	 v+sVSUe5TNOQm75q7lvo0rPL2ypNORXTSYQWOVZl5QGKw9uIrIzhGkf/eaMVRKg3wC
	 s60b/lmT4bQww==
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
Subject: [PATCH v13 16/17] media: uapi: Change data_bit_offset definition
Date: Fri,  8 Jul 2022 18:21:55 +0200
Message-Id: <20220708162156.815772-17-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220708162156.815772-1-benjamin.gaignard@collabora.com>
References: <20220708162156.815772-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_172243_325540_71C514B1 
X-CRM114-Status: GOOD (  17.04  )
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

'F.7.3.6.1 General slice segment header syntax' section of HEVC
specification describes that a slice header always end aligned on
byte boundary, therefore we only need to provide the data offset in bytes.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 .../media/v4l/ext-ctrls-codec.rst             |  4 ++--
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 19 ++++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 -
 include/media/hevc-ctrls.h                    |  4 ++--
 4 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index 73b347acb704..6cf68588af1b 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3008,8 +3008,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
       - ``bit_size``
       - Size (in bits) of the current slice data.
     * - __u32
-      - ``data_bit_offset``
-      - Offset (in bits) to the video data in the current slice data.
+      - ``data_byte_offset``
+      - Offset (in bytes) to the video data in the current slice data.
     * - __u32
       - ``num_entry_point_offsets``
       - Specifies the number of entry point offset syntax elements in the slice header.
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index 411601975124..7b67cb4621cf 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -317,6 +317,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	u32 chroma_log2_weight_denom;
 	u32 output_pic_list_index;
 	u32 pic_order_cnt[2];
+	u8 *padding;
+	int count;
 	u32 reg;
 
 	sps = run->h265.sps;
@@ -405,7 +407,22 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	/* Initialize bitstream access. */
 	cedrus_write(dev, VE_DEC_H265_TRIGGER, VE_DEC_H265_TRIGGER_INIT_SWDEC);
 
-	cedrus_h265_skip_bits(dev, slice_params->data_bit_offset);
+	/*
+	 * Cedrus expects that bitstream pointer is actually at the end of the slice header
+	 * instead of start of slice data. Padding is 8 bits at most (one bit set to 1 and
+	 * at most seven bits set to 0), so we have to inspect only one byte before slice data.
+	 */
+	padding = (u8 *)vb2_plane_vaddr(&run->src->vb2_buf, 0) +
+		slice_params->data_byte_offset - 1;
+
+	for (count = 0; count < 8; count++)
+		if (*padding & (1 << count))
+			break;
+
+	/* Include the one bit. */
+	count++;
+
+	cedrus_h265_skip_bits(dev, slice_params->data_byte_offset * 8 - count);
 
 	/* Bitstream parameters. */
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 33726175d980..66714609b577 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -568,7 +568,6 @@ int cedrus_queue_init(void *priv, struct vb2_queue *src_vq,
 
 	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
 	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
-	src_vq->dma_attrs = DMA_ATTR_NO_KERNEL_MAPPING;
 	src_vq->drv_priv = ctx;
 	src_vq->buf_struct_size = sizeof(struct cedrus_buffer);
 	src_vq->ops = &cedrus_qops;
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 7358cbfc3e4d..c89029b3c5da 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -310,7 +310,7 @@ struct v4l2_hevc_pred_weight_table {
  * V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
  *
  * @bit_size: size (in bits) of the current slice data
- * @data_bit_offset: offset (in bits) to the video data in the current slice data
+ * @data_byte_offset: offset (in bytes) to the video data in the current slice data
  * @num_entry_point_offsets: specifies the number of entry point offset syntax
  *			     elements in the slice header.
  * @nal_unit_type: specifies the coding type of the slice (B, P or I)
@@ -356,7 +356,7 @@ struct v4l2_hevc_pred_weight_table {
  */
 struct v4l2_ctrl_hevc_slice_params {
 	__u32	bit_size;
-	__u32	data_bit_offset;
+	__u32	data_byte_offset;
 	__u32	num_entry_point_offsets;
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
 	__u8	nal_unit_type;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
