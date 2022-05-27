Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F112C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 14:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHfPILnqdvnh5YInUyPDiOCL8cew62JWpj4Na3mIL40=; b=YMGooRNNu+onNd
	aPRX3ZHtIRCMkwKilEU61q3RWiLCTDq9CPZrxc6JzA8APzY10nJhUvpYVHHuj6TIyF5p5jAhSf/j/
	YJwQXjrdFyXWwZxJ0JdsRgbxToLpUGWOs+yr7DXX1eYQzNsqtc5mxTd4xN1MIJZ1z9m1L9aNLdni2
	tEqMHqaM0P/L94ekT3BYwD5MP8IMOJJKMv1vYyiqBAB/Tg/uTcGNwI+aox+2nHYDA+5e5/rsIRtqg
	OYXTmXCye1a3deRCaEkpYXEY62tCULS1Bb54QqqR4GyrV84U6mHhuPKduqB+xPOBIlmhWptTpZom1
	aTvLTjjuutoD5pIshcDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub7o-000Jou-G1; Fri, 27 May 2022 14:39:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0w-000GDL-UH; Fri, 27 May 2022 14:32:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZQKl7dyuD51nA+OsPTu1K43AdNG1ewZMBNCBEtUAaiw=; b=Mfar8x2a6NwfPljOZtiPLTU+Sj
	MDSVIbCk6DtRh+LS6DqgvqydzPw8posWR8RM04q6V3HOCPLx8bgEIMr9S8aYDQT/sV0iqzA49PEED
	NF5lK8MPAqm9xstm1Ve1Dg+HX3yNMoafgcA1CV4wNj9XD3gk/Uc+Cn8Sf3YxTTeTlpxWXw3/vmXXh
	VVx8iVrBy5+P7jFekDgYO6wVYs69Dv8vdWS/sWuxTX8nS9HdeyAc6vxD17zl8Ch2aOmm8Kwo3NJKz
	5zy+smWoMwupVSYBlLBVl2YHzgKbqi57+2I4cPOWq3qwafmXHcdDOncUnsWubFLCoMj1N0tQyaSyC
	/eSc1B1A==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0V-002D0n-Be; Fri, 27 May 2022 14:32:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id D52961F462DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653661921;
	bh=PmxaFIrP9yyw28hXRNq0XOgbJF4mq11NMqZdSpjXgwo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=asKbBrzlf7DFPxa4MqNWJfgtG5QFqOwDsacOM6zbP/v+6ysoxWEYF8466DGfoFvvD
	 f+mfE2uU4vPzGCmEo5KJOSq9VvMmSEa35ghdJ46CNjj6stz4EboDZfUQn5NOOFsoOR
	 H/JnGN6NqqfKLKv4fjJ90gbaubTiRxBkYlu9DVceEnFVudJ/eICj0eUnk7fhJRdhks
	 Bkp3Y7XcR0vez0HaFxvcOQu0ngL1O23EhKPWrnYOxG9vfHhiVt/CacQ+5OLZvB7QqA
	 i8AGp3PVpwtrJjybyGsvoReBvHpCjV/quzEr6bXLQT410ssWjM2qcDWxo4UZPPFuPg
	 87cTuwuy4txbQ==
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
Subject: [PATCH v6 16/17] media: uapi: Change data_bit_offset definition
Date: Fri, 27 May 2022 16:31:33 +0200
Message-Id: <20220527143134.3360174-17-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_153203_652922_B9C0E6F7 
X-CRM114-Status: GOOD (  11.17  )
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
 Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 4 ++--
 drivers/staging/media/sunxi/cedrus/cedrus_h265.c          | 2 +-
 include/media/hevc-ctrls.h                                | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

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
index 411601975124..835454239f73 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -405,7 +405,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	/* Initialize bitstream access. */
 	cedrus_write(dev, VE_DEC_H265_TRIGGER, VE_DEC_H265_TRIGGER_INIT_SWDEC);
 
-	cedrus_h265_skip_bits(dev, slice_params->data_bit_offset);
+	cedrus_h265_skip_bits(dev, slice_params->data_byte_offset * 8);
 
 	/* Bitstream parameters. */
 
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
