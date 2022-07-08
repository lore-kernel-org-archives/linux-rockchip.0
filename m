Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4BDC43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 05:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIvMntgtkboiGVdQwtQM7leARNKgvaG3mtWYsrxrfSM=; b=jGoGcekXXrEGxj
	kCIKdKatjBuFU6ayveujf2LjQQZyh5I6jd8BL/m7xKf4cC5lHtigVGOvc9wO+YUot8HChrhgFv5BO
	1gTj4J5nPbgrqS5C+CCmEgxpifgkRUFpEEO5HI8BA+tsW1xpq0KeI5wzMVN6cYLiZOItT1U0MJlfo
	NBAcAbJTtAQ2Nzee3KLH97ohZ5M0le+lgORRcR0bA+JpG9xoYcZwHI8s9v5XiiqLlqgmLZ+rC8Vax
	t4v4Xmz6HjaAsHb6FOhQOlwUzNoPe+NNpmzTqA8+ydbu97AkX+xIJnUTcux8pYD4gO37moMblJq8M
	I3LC10yjRt6rYEJZdHrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9g5q-001lGg-TR; Fri, 08 Jul 2022 04:59:54 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9g5n-001lFP-UV; Fri, 08 Jul 2022 04:59:53 +0000
Received: by mail-ej1-x632.google.com with SMTP id os14so5582015ejb.4;
        Thu, 07 Jul 2022 21:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qbzU1NEw9jssixWhWJrvAWfUIVJG59WeLpo6y3ejNL8=;
        b=ZWDRcARnh37E7hLpPiJw+bSbMNdnbTvwSIG8mJQuN9AJLUetbtk70FdGBlQgFPRZcG
         eCHryFyoOT2l6irvv4WjXHqUMJrc+CAvCGHhJiYS8bh+8GMQvdAG8icBHZNmsfal/sFQ
         3JGbAb2ZaC37PYZ00KpCj9J3uDvZDxkmOmfBMNGW0BqnYFOmBN6KWwuxxmDIXJ2Jd8BY
         eJLxh5CjUDjSHKra9WClVwi21aMVLk5/2g+oAoAKr+fOsKcehl1cmIrn4ERhl6Lw9G8M
         E12aylIE90bli3DwOzaMe0BJNU8sgAwjc+v4WTYuhAI9A730h4hEOh4YDdTwbUlGp6Kc
         w+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qbzU1NEw9jssixWhWJrvAWfUIVJG59WeLpo6y3ejNL8=;
        b=DO6IA6Bh8D+GhJ38aPMfQUgIS3PJyY84BSpcIxpUHR36TQEfWp/L2j24+jG2qWXRir
         HQlJDTOR3Pmfsf9mg/0QDxRMl7AERj5wjfZlKoTX1GwEKu+SGaIWasLCg79COni0FXxl
         zOSFuOg2HMbZVwFr/P7tctW9+QUtkDBiFjE45g/p6WbLEE6PTeHN8B9/zbSluVSK7gi3
         Z5cicWPlojzLDmYShKqq54VTTJvpg5z5ttXCOv3DPNfe9puDTbPljsF6FSKZf8NRCjHZ
         zt/PWeye2ZAw1RSzFZzVf1o+Qo5FtKujKbEQKRJKeY5eqGA8ViLo67lfqLpT/S7Ssq9p
         qEjQ==
X-Gm-Message-State: AJIora/v6HW22yg7WFVYhsbc3No9GfYZBnWmh1pfvcNQ3+dpfIJcLN9j
	Vx5qRZHcCuRWMxCMMr2xDFw=
X-Google-Smtp-Source: AGRyM1tB1j1dl+dJsTCR1/AayROaNRUAdCtoaXF2DONWEedudqNFFhQj8RHgrNXfonLTu2a8K6WC2g==
X-Received: by 2002:a17:906:20c6:b0:718:cc95:ccaf with SMTP id c6-20020a17090620c600b00718cc95ccafmr1676983ejc.714.1657256389600;
        Thu, 07 Jul 2022 21:59:49 -0700 (PDT)
Received: from jernej-laptop.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id l10-20020a1709063d2a00b0072ae8fb13e6sm2553165ejf.126.2022.07.07.21.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 21:59:49 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v11 11/17] media: uapi: Add V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
Date: Fri, 08 Jul 2022 06:59:47 +0200
Message-ID: <4722279.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <20220706093803.158810-12-benjamin.gaignard@collabora.com>
References: <20220706093803.158810-1-benjamin.gaignard@collabora.com> <20220706093803.158810-12-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_215952_054647_D6F2ACEC 
X-CRM114-Status: GOOD (  26.65  )
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

Hi Benjamin,

Dne sreda, 06. julij 2022 ob 11:37:57 CEST je Benjamin Gaignard napisal(a):
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

Clarification looks good to me :)

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
> version 11:
> - Be more verbose about num_entry_point_offsets field usage.
> 
>  .../userspace-api/media/v4l/ext-ctrls-codec.rst   | 15 +++++++++++++++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c         |  5 +++++
>  include/media/hevc-ctrls.h                        |  5 ++++-
>  3 files changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst index
> c2e0adece613..59e751c38d06 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3010,6 +3010,13 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u32
>        - ``data_bit_offset``
>        - Offset (in bits) to the video data in the current slice data.
> +    * - __u32
> +      - ``num_entry_point_offsets``
> +      - Specifies the number of entry point offset syntax elements in the
> slice header. +        This field must be set even if
> V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS +        control isn't used.
> Additionally, if entry point offsets control is needed +        and if
> submitting multiple slices at once, length of entry point offsets +       
> array must be sum of num_entry_point_offsets of all slices in that job. * -
> __u8
>        - ``nal_unit_type``
>        - Specifies the coding type of the slice (B, P or I).
> @@ -3150,6 +3157,14 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
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
