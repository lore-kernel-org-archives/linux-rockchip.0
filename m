Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE19C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 08:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0FVfVZWTp49Cyege+t0mE9dLwdqjpXYOkNQ47XPW18k=; b=Qe+owCM5nnQrmUpPbVxTQc6FQx
	SlnI1C/O8QimFCe4gLYyEf1kBN3vn0pKLNztPtEzwf/rKTwtOlRp/cUlxJ3Cz0U6T9wejkD3m+Fgo
	eFvaKOPbXXKDrtIdlibl7nwF1RY0f2XkzxJ3vIqllbYbt2VYpaF8uZZDYD8StN2tXJi+/acwALbAp
	ybYaso+AvIESCTTHgtTnV1N27c9OvYD2oDpqiFBTFTc2acO7eZZWhM3e/PxpECLVV0QzvkgtFmeu8
	0KtZ8zXvevi5j6rLud8fUrIOtVSBqmMxzqwZl4qTyFJDfFopI3Qc1dMW/3Y/DLfCnWdtB0cwzEOme
	CkcnP64g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njGH0-00DCX8-95; Tue, 26 Apr 2022 08:10:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njGGp-00DCV3-Be; Tue, 26 Apr 2022 08:10:05 +0000
Received: from localhost (unknown [IPv6:2a02:3030:3:7d2:2277:ba57:a2c0:3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 893721F40485;
 Tue, 26 Apr 2022 09:10:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650960601;
 bh=i+FUcR1yvMR0JAh3EWthKUWKQAVviGQ0EBgzu83bkeE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YEX8AtMHUqkK901YYtQWvEpja2AB+QNqVrVNoaxRSY54EhLsIfsUyrx7nj/0okXOU
 tomUaws7UWBWilioZnaoECwy/eu4DqogNNLiJyISvrSCYy2AgeSiKBd/muMm4RgxGt
 rzaFis0dGPtJstQm4G0HNcQG6Nggh8HMiIzG+R1G2RO/JtCeTOpkXQsOoyOB4PTtZo
 8uZ0gcTlNaeTWqxbQPNfxWn4AtSJFB3XVMahtqaRKvSEH/nnCoehkdGqF09rHHTo7A
 p5l/yIltwyCkYF1Dp/Mw+dqYdMrukinXju7PhGvXp3GvNZ01/JafOgLUURhfNcC8vw
 qo1YhxRKwqxhg==
Date: Tue, 26 Apr 2022 10:09:57 +0200
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
Subject: Re: [PATCH v5 11/17] media: uapi: Add
 V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
Message-ID: <20220426080957.2x3ci4tx6bsaiuwc@basti-XPS-13-9310>
References: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
 <20220407152940.738159-12-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407152940.738159-12-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_011003_705884_D57246AB 
X-CRM114-Status: GOOD (  16.59  )
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

Hey Benjamin,

On 07.04.2022 17:29, Benjamin Gaignard wrote:
>The number of 'entry point offset' could be very variable.

s/could be/can be/

>Rather than use a large static array define a v4l2 dynamic array

s/Rather than use/Instead of using/

Greetings,
Sebastian

>of U32 (V4L2_CTRL_TYPE_U32).
>The number of entry point offsets is reported by the elems field
>and in struct v4l2_ctrl_hevc_slice_params.num_entry_point_offsets
>field.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> .../userspace-api/media/v4l/ext-ctrls-codec.rst       | 11 +++++++++++
> drivers/media/v4l2-core/v4l2-ctrls-defs.c             |  5 +++++
> include/media/hevc-ctrls.h                            |  5 ++++-
> 3 files changed, 20 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>index 1aaf3b84b584..a604dedce17c 100644
>--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>@@ -2988,6 +2988,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>     * - __u32
>       - ``data_bit_offset``
>       - Offset (in bits) to the video data in the current slice data.
>+    * - __u32
>+      - ``num_entry_point_offsets``
>+      - Specifies the number of entry point offset syntax elements in the slice header.
>     * - __u8
>       - ``nal_unit_type``
>       - Specifies the coding type of the slice (B, P or I).
>@@ -3125,6 +3128,14 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>
>     \normalsize
>
>+``V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (integer)``
>+    Specifies entry point offsets in bytes.
>+    This control is a dynamically sized array. The number of entry point
>+    offsets is reported by the ``elems`` field.
>+    This bitstream parameter is defined according to :ref:`hevc`.
>+    They are described in section 7.4.7.1 "General slice segment header
>+    semantics" of the specification.
>+
> ``V4L2_CID_STATELESS_HEVC_SCALING_MATRIX (struct)``
>     Specifies the HEVC scaling matrix parameters used for the scaling process
>     for transform coefficients.
>diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
>index 4b68cbe23309..48d385b776b1 100644
>--- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
>+++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
>@@ -1180,6 +1180,7 @@ const char *v4l2_ctrl_get_name(u32 id)
> 	case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:		return "HEVC Decode Parameters";
> 	case V4L2_CID_STATELESS_HEVC_DECODE_MODE:		return "HEVC Decode Mode";
> 	case V4L2_CID_STATELESS_HEVC_START_CODE:		return "HEVC Start Code";
>+	case V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS:	return "HEVC Entry Point Offsets";
>
> 	/* Colorimetry controls */
> 	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
>@@ -1508,6 +1509,10 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
> 	case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:
> 		*type = V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
> 		break;
>+	case V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS:
>+		*type = V4L2_CTRL_TYPE_U32;
>+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
>+		break;
> 	case V4L2_CID_STATELESS_VP9_COMPRESSED_HDR:
> 		*type = V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR;
> 		break;
>diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
>index 00abbf930235..97e049ccb966 100644
>--- a/include/media/hevc-ctrls.h
>+++ b/include/media/hevc-ctrls.h
>@@ -20,6 +20,7 @@
> #define V4L2_CID_STATELESS_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE + 1012)
> #define V4L2_CID_STATELESS_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 1015)
> #define V4L2_CID_STATELESS_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
>+#define V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (V4L2_CID_CODEC_BASE + 1017)
>
> /* enum v4l2_ctrl_type type values */
> #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
>@@ -316,6 +317,8 @@ struct v4l2_hevc_pred_weight_table {
>  *
>  * @bit_size: size (in bits) of the current slice data
>  * @data_bit_offset: offset (in bits) to the video data in the current slice data
>+ * @num_entry_point_offsets: specifies the number of entry point offset syntax
>+ *			     elements in the slice header.
>  * @nal_unit_type: specifies the coding type of the slice (B, P or I)
>  * @nuh_temporal_id_plus1: minus 1 specifies a temporal identifier for the NAL unit
>  * @slice_type: see V4L2_HEVC_SLICE_TYPE_{}
>@@ -358,7 +361,7 @@ struct v4l2_hevc_pred_weight_table {
> struct v4l2_ctrl_hevc_slice_params {
> 	__u32	bit_size;
> 	__u32	data_bit_offset;
>-
>+	__u32	num_entry_point_offsets;
> 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
> 	__u8	nal_unit_type;
> 	__u8	nuh_temporal_id_plus1;
>-- 
>2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
