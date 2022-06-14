Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C41BC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 07:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KZThrapiOghzelfIfg/pXY/hKXxSTDCC5X2RE/aIQA=; b=weWXvoZ0UEHS4l
	7uflVNM9mT/wXqKhnouVIG5dp8DafKqtrh4yityJaZBVuDlWg1ON3rLrlbK3k5UNUhd4dIh71hW7N
	UdzIKQJ4/UR//l2y71BTvNEk9eJp0HhEhsQuvc4o53+NnkX0vi4OuG27g39RG24rSDINX34D5SbQD
	f1vEUZp5+8UHfBfQjgTRdTLg4rLBdzhqaK9lB5UnDDvujUFiJqCstwmLyvRZdJk0IbIhDaKKtsba1
	tTGlQuTFLBSm1fA7HpKU4Tf68Ih7qH7gnOAht9icoaPuNAb34n40YRXJdPWUmWCbwdYkvJMSQMXYX
	V8RVSZpzqSN1V+nG47bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11NO-0085fh-A2; Tue, 14 Jun 2022 07:54:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11JX-0083VE-BQ; Tue, 14 Jun 2022 07:50:23 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4a7b:8d3a:acaa:ec46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 311636601709;
	Tue, 14 Jun 2022 08:50:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655193006;
	bh=foMCKM0HcDBii6A+qPIk9svG81J6/ASfNN6IIllYc2U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PSHz6Y58Jsy3T4WVDy9XQzUy4sjEmDSOT+md0l7EmMQKdRj7sSYRm4zYOlSS38EO2
	 dAp8ZGEejhi63ek4OQN92kQi5SQOVF0bIzka8MmW5ohEu4pkC1J3lUBopNFz+0H2jq
	 L5gHMPvrXpqchiLZaWLrXYNoiaHZeQbG3RDjTenLHU0/26p1Db2MNrU6uvobp0XjBC
	 0botGFQNjVG9ropI0M9PTnHKJwljjWZtDsxC4AnL84Hnp5rKX/sTqyXZVud1TnfHYs
	 7ACHU0uHi9fE3U5S98HuMa9s8egyYnmnOxQe1yUlG0eO4bn/BJNNZvBsdJ9fyI2sM6
	 XQbpkHAOW8xRQ==
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
Subject: [PATCH v7 16/17] media: uapi: Change data_bit_offset definition
Date: Tue, 14 Jun 2022 09:49:46 +0200
Message-Id: <20220614074947.160316-17-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
References: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_005015_724241_0F660F6E 
X-CRM114-Status: GOOD (  16.35  )
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
---
version 7:
- Apply Jernej patches for Cedrus

 .../media/v4l/ext-ctrls-codec.rst             |  4 ++--
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 19 ++++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 -
 include/media/hevc-ctrls.h                    |  4 ++--
 4 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index 48a8825a001b..37079581c661 100644
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
index 9abca1a75bd4..936ff693967b 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -312,7 +312,7 @@ struct v4l2_hevc_pred_weight_table {
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
