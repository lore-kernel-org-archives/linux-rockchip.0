Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47DC8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 08:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Gj6xX1REnRczY4dOSH7gmMx9Fw0rb6v+oxkKxjdXiA=; b=escsgHeG9T8w/qZgxNANVGPXZ2
	3NkylbEKAPje1vokWzldPtzdMAZ+zK9k54WmykQhzr9eM3KJw/OrPBpc/X6S3ws65Qj7frior7dwP
	tIgE+X6DY8DqurmftKQ34hPVXIWxEb7Tl4Dy7PECJldRwrjrEyg0BrmrRatbxshBmu8cQbHVsr1Yb
	CiOh5Op3bEMjIo/Ltw7EEexMfWkx4zubYxbEccn1vSQg5u68owxMVKx+aN/2KGSbldMAyomz9PggS
	+tjJ+h3ROkxD67szdulqe6+y/G0urYCcZiwAev8D6r+0MimNA4xEWjQD604BXm2IUNDHYv9d7I7dQ
	ezMabW+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njGM5-00DDmn-Dm; Tue, 26 Apr 2022 08:15:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njGLs-00DDjC-J5; Tue, 26 Apr 2022 08:15:18 +0000
Received: from localhost (unknown [IPv6:2a02:3030:3:7d2:2277:ba57:a2c0:3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A0ADA1F43043;
 Tue, 26 Apr 2022 09:15:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650960914;
 bh=WikNeAiMUuFevJFNxJ9ZvKK3TNnSjJXOJ0Tm9TNw6dw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nfUscDjbkgZ9S/6KekwrdIL3o6nzuly/WFrdCBENr4uWH8i+IRxUUe1ThlLm3jRzV
 TXiom6WORSOf+tLUFA2p0XCr7A12RbXml5f8Yhb1NXkQDzJHzS+pqgLlR+hXjqgOuD
 Eh2tVyU7WOl+xK/imJ4mLATjjKh/jB32FjiF8XX3L/qw44tSMsu497RLFihOd736MJ
 98sX/HtyR879R4btw3lOpbqB0G57WWyxZmV98/qqD2rrrt/qLlQ0/E6n8cbYBst9wT
 n23ZBU7HwjQoYnf4a+7La41DaCa9AviD3v/ajgGThUjjxUgx24zzq5hHJEaAv5JskQ
 GfEEqHIjVnfRw==
Date: Tue, 26 Apr 2022 10:15:11 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, samuel@sholland.org,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v5 16/17] media: uapi: Change data_bit_offset definition
Message-ID: <20220426081511.etk5blic75sygjny@basti-XPS-13-9310>
References: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
 <20220407152940.738159-17-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407152940.738159-17-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_011516_799838_BD7C7EB9 
X-CRM114-Status: GOOD (  14.08  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 07.04.2022 17:29, Benjamin Gaignard wrote:
>'F.7.3.6.1 General slice segment header syntax' section of HEVC
>specification describes that a slice header always end byte aligned,

s/always end byte aligned/always aligns on the end-byte/
or
s/always end byte aligned/always aligns on the last byte/
?

>therefore we only need to provide the data offset in byte.

s/byte/bytes/

Greetings,
Sebastian

>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
>version 5:
>- Fix numbers of bits computation in cedrus_h265_skip_bits() parameters
> Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 4 ++--
> drivers/staging/media/sunxi/cedrus/cedrus_h265.c          | 2 +-
> include/media/hevc-ctrls.h                                | 4 ++--
> 3 files changed, 5 insertions(+), 5 deletions(-)
>
>diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>index a3b1a063deba..48b3f533bc17 100644
>--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>@@ -2986,8 +2986,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>       - ``bit_size``
>       - Size (in bits) of the current slice data.
>     * - __u32
>-      - ``data_bit_offset``
>-      - Offset (in bits) to the video data in the current slice data.
>+      - ``data_byte_offset``
>+      - Offset (in bytes) to the video data in the current slice data.
>     * - __u32
>       - ``num_entry_point_offsets``
>       - Specifies the number of entry point offset syntax elements in the slice header.
>diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>index d04521ffd920..4f31f2f3b745 100644
>--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>@@ -405,7 +405,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> 	/* Initialize bitstream access. */
> 	cedrus_write(dev, VE_DEC_H265_TRIGGER, VE_DEC_H265_TRIGGER_INIT_SWDEC);
>
>-	cedrus_h265_skip_bits(dev, slice_params->data_bit_offset);
>+	cedrus_h265_skip_bits(dev, slice_params->data_byte_offset * 8);
>
> 	/* Bitstream parameters. */
>
>diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
>index e6cdd122726c..1834072c0a43 100644
>--- a/include/media/hevc-ctrls.h
>+++ b/include/media/hevc-ctrls.h
>@@ -310,7 +310,7 @@ struct v4l2_hevc_pred_weight_table {
>  * V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
>  *
>  * @bit_size: size (in bits) of the current slice data
>- * @data_bit_offset: offset (in bits) to the video data in the current slice data
>+ * @data_byte_offset: offset (in bytes) to the video data in the current slice data
>  * @num_entry_point_offsets: specifies the number of entry point offset syntax
>  *			     elements in the slice header.
>  * @nal_unit_type: specifies the coding type of the slice (B, P or I)
>@@ -354,7 +354,7 @@ struct v4l2_hevc_pred_weight_table {
>  */
> struct v4l2_ctrl_hevc_slice_params {
> 	__u32	bit_size;
>-	__u32	data_bit_offset;
>+	__u32	data_byte_offset;
> 	__u32	num_entry_point_offsets;
> 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
> 	__u8	nal_unit_type;
>-- 
>2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
