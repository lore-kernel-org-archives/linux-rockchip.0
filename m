Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A36FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 14:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmAtLFIyoPvscwveHst1LX5ehBzfnzC1b9XTu/gsqWs=; b=NPNged8PfYD191
	yReTXSQa6P4Au9nji55KZ+YIXy8FutVl1Smw87CzvapIXtG67SHhTj0KblvuBDoU4ssZXs7WPeUha
	HkYo6LhSPcjgepfrP6Jixik9uOgIs/W9lQf2fPG5Hnn1LG6wxV0bk7OWNvqdWHUItkTBHN3afKKda
	W428nOTRjxJdjyEIQNYAhHEnnURtoWKE9ZmBdnKnuQn8iAZGYV+ZMuajdcGJQnhw+YaE7II1FTvAL
	MlxcnNfq8pOltL5pmYRXYDeRLNGSbn1P/Q3Gif2Q3vqtbrZTDeT4/hIEGgMONT7zlIY/cd19/YkTp
	yPNUOaeSZTDnSsqy8XTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oZE-0042yc-QZ; Fri, 08 Jul 2022 14:02:48 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oZC-0042vk-Ek; Fri, 08 Jul 2022 14:02:48 +0000
Received: by mail-ed1-x533.google.com with SMTP id y4so13621260edc.4;
        Fri, 08 Jul 2022 07:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F7oZGiTf22yduXzKnlRZ5i/UEiJcCIYtZr80JfrcWJA=;
        b=jX99svRh8xS9/r4UdMiq3Y43MyPOaKw23r0VGQpXgkg3bioDTKO58NGaP49lqcXvpc
         DFBO6tQcbxHsWjsGqky0/k1S76xj5BSrxed1s2pSnnXFyInXkzuJmcQXTb0PVCtEaTDb
         jitJSvt3JPKrhn6U7i2dLTbuS/pK6AFioBujioBFbqGEykPog3kNwEZ1yBki79CqYn1l
         4ZuRg+Uk4ejPWhlNRn0Pzuk7qu+w2qQBTJSQej5gWEFRr1awgBY7EVSA1r4bE02WyhJi
         QLwZ8OTYPirLS2KvJK0+5Uhz0nv3rbxAOmIrJ1IKw3XRA0BWZpcN1A/Umt72OoYc1TpX
         g11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F7oZGiTf22yduXzKnlRZ5i/UEiJcCIYtZr80JfrcWJA=;
        b=pMjUtDCBchHVfM5KC+DocteLEr5aOQsqummZ+S5yxkUKR4/22vcWx/bGNWeO/sHtQI
         6H7h0yGmtOrlgthlWeueGy75ZmcchHtsa7rDoMGI3lile2QyokTyPU4mYJOXOwqmtUjI
         pPsaVQ7AET6C3Ah8P9Hrzd3VYNRDN9NiZ3Cj9ShYaycCsfAUcZP7IErt/+ZNPllfZv/p
         0aUKWNhCvpEXtyhPaaawSDtm7IVUc92TDwI75o4/Zj4h86J4HI/4FTFAOEAXzCas2SOD
         j0w8uSzLLifPMBryycWCoyKAWIQO0rXAos01W5gY1GL9CgX0IytPnSh6Ngc73otLj/BB
         290w==
X-Gm-Message-State: AJIora+47tQFgJIz6aEHPzdTeDLHIxDn+a2hAYSWWouqzcfwNsDx7EQ4
	27gmY7uSTBraV5ZO9oLChHU=
X-Google-Smtp-Source: AGRyM1uL3PNKL7wSHt7HyGuMnLf4+atBsviy3tmAb8n+32sYhrZgr9xVlpYX+JxNRGbN+AcQxRdQSA==
X-Received: by 2002:a05:6402:22b5:b0:43a:8e9f:f495 with SMTP id cx21-20020a05640222b500b0043a8e9ff495mr4961017edb.324.1657288962504;
        Fri, 08 Jul 2022 07:02:42 -0700 (PDT)
Received: from jernej-laptop.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id o19-20020a170906769300b0072b13a10477sm2143227ejm.108.2022.07.08.07.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 07:02:42 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v12 11/17] media: uapi: Add V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
Date: Fri, 08 Jul 2022 16:02:40 +0200
Message-ID: <2106581.irdbgypaU6@jernej-laptop>
In-Reply-To: <20220708120554.495495-12-benjamin.gaignard@collabora.com>
References: <20220708120554.495495-1-benjamin.gaignard@collabora.com> <20220708120554.495495-12-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_070246_538499_87081683 
X-CRM114-Status: GOOD (  26.23  )
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

Hi Benjamin!

Dne petek, 08. julij 2022 ob 14:05:48 CEST je Benjamin Gaignard napisal(a):
> The number of 'entry point offset' can be very variable.
> Instead of using a large static array define a v4l2 dynamic array
> of U32 (V4L2_CTRL_TYPE_U32).
> The number of entry point offsets is reported by the elems field
> and in struct v4l2_ctrl_hevc_slice_params.num_entry_point_offsets
> field.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> ---
> version 12:
> - Reword num_entry_point_offsets documentation
> 
>  .../userspace-api/media/v4l/ext-ctrls-codec.rst     | 13 +++++++++++++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c           |  5 +++++
>  include/media/hevc-ctrls.h                          |  5 ++++-
>  3 files changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst index
> c2e0adece613..0cd967126fdf 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3010,6 +3010,11 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u32
>        - ``data_bit_offset``
>        - Offset (in bits) to the video data in the current slice data.
> +    * - __u32
> +      - ``num_entry_point_offsets``
> +      - Specifies the number of entry point offset syntax elements in the
> slice header. +        When the driver supports it, the
> ``V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS`` +        must be set.
>      * - __u8
>        - ``nal_unit_type``
>        - Specifies the coding type of the slice (B, P or I).
> @@ -3150,6 +3155,14 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
> 
>      \normalsize
> 
> +``V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (integer)``
> +    Specifies entry point offsets in bytes.
> +    This control is a dynamically sized array. The number of entry point
> +    offsets is reported by the ``elems`` field.
> +    This bitstream parameter is defined according to :ref:`hevc`.
> +    They are described in section 7.4.7.1 "General slice segment header
> +    semantics" of the specification.

You forgot to update above description per Ezequiel comment.

Best regards,
Jernej

> +
>  ``V4L2_CID_STATELESS_HEVC_SCALING_MATRIX (struct)``
>      Specifies the HEVC scaling matrix parameters used for the scaling
> process for transform coefficients.
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> b/drivers/media/v4l2-core/v4l2-ctrls-defs.c index
> d594efbcbb93..e22921e7ea61 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> @@ -1188,6 +1188,7 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:		return 
"HEVC Decode
> Parameters"; case V4L2_CID_STATELESS_HEVC_DECODE_MODE:		return 
"HEVC Decode
> Mode"; case V4L2_CID_STATELESS_HEVC_START_CODE:		return 
"HEVC Start Code";
> +	case V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS:	return 
"HEVC Entry
> Point Offsets";
> 
>  	/* Colorimetry controls */
>  	/* Keep the order of the 'case's the same as in v4l2-controls.h! 
*/
> @@ -1518,6 +1519,10 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum
> v4l2_ctrl_type *type, case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:
>  		*type = V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
>  		break;
> +	case V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS:
> +		*type = V4L2_CTRL_TYPE_U32;
> +		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
> +		break;
>  	case V4L2_CID_STATELESS_VP9_COMPRESSED_HDR:
>  		*type = V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR;
>  		break;
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index a372c184689e..3a6601a46ced 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -20,6 +20,7 @@
>  #define V4L2_CID_STATELESS_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE 
+ 1012)
>  #define V4L2_CID_STATELESS_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 1015)
>  #define V4L2_CID_STATELESS_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
> +#define V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (V4L2_CID_CODEC_BASE +
> 1017)
> 
>  /* enum v4l2_ctrl_type type values */
>  #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
> @@ -316,6 +317,8 @@ struct v4l2_hevc_pred_weight_table {
>   *
>   * @bit_size: size (in bits) of the current slice data
>   * @data_bit_offset: offset (in bits) to the video data in the current
> slice data + * @num_entry_point_offsets: specifies the number of entry
> point offset syntax + *			     elements in the slice 
header.
>   * @nal_unit_type: specifies the coding type of the slice (B, P or I)
>   * @nuh_temporal_id_plus1: minus 1 specifies a temporal identifier for the
> NAL unit * @slice_type: see V4L2_HEVC_SLICE_TYPE_{}
> @@ -358,7 +361,7 @@ struct v4l2_hevc_pred_weight_table {
>  struct v4l2_ctrl_hevc_slice_params {
>  	__u32	bit_size;
>  	__u32	data_bit_offset;
> -
> +	__u32	num_entry_point_offsets;
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
>  	__u8	nal_unit_type;
>  	__u8	nuh_temporal_id_plus1;





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
