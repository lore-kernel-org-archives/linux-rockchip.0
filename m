Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A21EBCCA47B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 10:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0zzQPBgfOByZbb1PliZnB6S5ru/a2GngaGHZbaksvU=; b=cSdAI0wXLm7MoR
	PShZfhwIfVTOnlu0VUVTY9F3vS8j8vVWt7NBKqSRC6qPG/ykMy6COALuzWsDDzb8YO+GEwH2qY81t
	VbQYnRUp1h0jHD2D9itawREt6AwzUcrl+baRLwJVw7lyFFYaYcJ7FHcBirRwzE8cPrFcb1b+Jaj52
	dBeBqCJ1HFtp66WU/S80bwkSJXhNezeYfzJ3uhdGIHLGqZgyBacfSbkiRiSsNVE0G1VEpubj02VG8
	ARV0CzP4ZKn5gtA2yUo3ZoZtxcrvYPczaXVNG63VSuruu49lb60wTktMiImfSMqKVq9LO/F6Lah2s
	ahyqOA/zs2A+pzPs1+qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9lRE-003EOO-H1; Fri, 08 Jul 2022 10:42:20 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9lRB-003ENO-TJ
	for linux-rockchip@lists.infradead.org; Fri, 08 Jul 2022 10:42:19 +0000
Received: by mail-ot1-x331.google.com with SMTP id q18-20020a9d7c92000000b00616b27cda7cso15917044otn.9
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Jul 2022 03:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Vbo3Wb82ZgGFHuwV12svaEHQLDH9O7wKe6jY6HWRXhY=;
        b=8EUPg3/5EaiUHN0vnZcJQmvXjQMJx9fkbtfkcLCkttmkRKUoEq/QZ0tU1kqgMA9Znj
         7CH06w+uvLiTkjglzeH70bA8hBynPieg/xJMqMrr5end3xRtzfB1ea+HdBYMEMtHHg3E
         d4ULA48+9JF7O0mgZR/7EgZSshMG0mLSJr0Su2xG9FkSoE+LSHJlFmIM+zZQ06xschlf
         nbxjNaCCAiwGGXk6nKP7ukIjZgEThIdS3LiVE8m2xJ4rq/rpxV0wvpZdGmty9UGFlc+i
         egOU8pqd0eAvAFaz6Kq46h89paq6RFnYgQ4aKtgbNhlXIIiYbPsbnRTZt64/Qf0uTerb
         egSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Vbo3Wb82ZgGFHuwV12svaEHQLDH9O7wKe6jY6HWRXhY=;
        b=nJxHteA0EYC5oVvAviH3DnkXv9jV3gRIcY29FO1iTnBH8vjx6oYf0FxIFcnOzkor4A
         NxFD6LxqfcUWhnIOd+qjVQNEGQ40KwFAfkOdjrV2G2hletjyuCm2rgKYe+qQ5HrsaCRx
         EuA4gng9VOPvqrXbeJKSH2W1IzYetSF+oKUtUGTr9t8rU7VHljZVw55Im3icNX6uymmn
         e0BloemYv87BjrNnzx+u8tL/I04/dtxWfr6fRooW5eaUodS4ib4reXK52EWz8snL8zJq
         GuZmhfSecCQNT9h2LW6hPmv1zMINpBcw2m+nhy+YgKGXRGQcogMfBc93Y1alc/3lzV0I
         fNkQ==
X-Gm-Message-State: AJIora8SRbQrXJ5gT1NpljBZBM6e5r5UGr8mLF0JXDDhwi3sWae0Rmik
	VAOXHT6qkPfPK3UP/DkSIIsd5w==
X-Google-Smtp-Source: AGRyM1tzbbpdDVYyEDXf5c332NybbUnnkr9zj7NhM5LflklG4ao6rMqDCvNezrG82Bl3sUy0/D2GSw==
X-Received: by 2002:a05:6830:438a:b0:616:f238:1562 with SMTP id s10-20020a056830438a00b00616f2381562mr1217862otv.111.1657276935550;
        Fri, 08 Jul 2022 03:42:15 -0700 (PDT)
Received: from eze-laptop ([186.13.97.246])
        by smtp.gmail.com with ESMTPSA id 127-20020aca0785000000b00334c2e81dfbsm9219460oih.0.2022.07.08.03.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 03:42:15 -0700 (PDT)
Date: Fri, 8 Jul 2022 07:42:06 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, mripard@kernel.org,
	paul.kocialkowski@bootlin.com, wens@csie.org,
	jernej.skrabec@gmail.com, samuel@sholland.org,
	nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH v11 11/17] media: uapi: Add
 V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
Message-ID: <YsgJ/i/93Hr4CpY+@eze-laptop>
References: <20220706093803.158810-1-benjamin.gaignard@collabora.com>
 <20220706093803.158810-12-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220706093803.158810-12-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_034217_975464_AD5CF9D6 
X-CRM114-Status: GOOD (  28.81  )
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

Hi Benjamin, Jernej,

On Wed, Jul 06, 2022 at 11:37:57AM +0200, Benjamin Gaignard wrote:
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
> version 11:
> - Be more verbose about num_entry_point_offsets field usage.
> 
>  .../userspace-api/media/v4l/ext-ctrls-codec.rst   | 15 +++++++++++++++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c         |  5 +++++
>  include/media/hevc-ctrls.h                        |  5 ++++-
>  3 files changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index c2e0adece613..59e751c38d06 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3010,6 +3010,13 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u32
>        - ``data_bit_offset``
>        - Offset (in bits) to the video data in the current slice data.
> +    * - __u32
> +      - ``num_entry_point_offsets``
> +      - Specifies the number of entry point offset syntax elements in the slice header.

Given this field really matches the syntax element (thanks for the
clarification), I would suggest keeping it simpler,
maybe something along these lines:

""
Specifies the number of entry point offset syntax elements in the slice header.
When the driver supports it, the ``V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS``
must be set.
""

> +        This field must be set even if V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS
> +        control isn't used. Additionally, if entry point offsets control is needed
> +        and if submitting multiple slices at once, length of entry point offsets
> +        array must be sum of num_entry_point_offsets of all slices in that job.

>      * - __u8
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

I would add Jernej's clarification about the length of the control
here, where the control is documented.

""
This control is a dynamically sized array. The number of entry point
offsets is reported by the ``elems`` field.
This bitstream parameter is defined according to :ref:`hevc`.
They are described in section 7.4.7.1 "General slice segment header
semantics" of the specification.
When multiple slices are submitted in a request, the length
of this array must be the sum of num_entry_point_offsets
of all the slices in the request.
""

Hopefully this is clearer to application developers?

Thanks!
Ezequiel

>  ``V4L2_CID_STATELESS_HEVC_SCALING_MATRIX (struct)``
>      Specifies the HEVC scaling matrix parameters used for the scaling process
>      for transform coefficients.
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> index d594efbcbb93..e22921e7ea61 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> @@ -1188,6 +1188,7 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:		return "HEVC Decode Parameters";
>  	case V4L2_CID_STATELESS_HEVC_DECODE_MODE:		return "HEVC Decode Mode";
>  	case V4L2_CID_STATELESS_HEVC_START_CODE:		return "HEVC Start Code";
> +	case V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS:	return "HEVC Entry Point Offsets";
>  
>  	/* Colorimetry controls */
>  	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
> @@ -1518,6 +1519,10 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
>  	case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:
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
>  #define V4L2_CID_STATELESS_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE + 1012)
>  #define V4L2_CID_STATELESS_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 1015)
>  #define V4L2_CID_STATELESS_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
> +#define V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (V4L2_CID_CODEC_BASE + 1017)
>  
>  /* enum v4l2_ctrl_type type values */
>  #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
> @@ -316,6 +317,8 @@ struct v4l2_hevc_pred_weight_table {
>   *
>   * @bit_size: size (in bits) of the current slice data
>   * @data_bit_offset: offset (in bits) to the video data in the current slice data
> + * @num_entry_point_offsets: specifies the number of entry point offset syntax
> + *			     elements in the slice header.
>   * @nal_unit_type: specifies the coding type of the slice (B, P or I)
>   * @nuh_temporal_id_plus1: minus 1 specifies a temporal identifier for the NAL unit
>   * @slice_type: see V4L2_HEVC_SLICE_TYPE_{}
> @@ -358,7 +361,7 @@ struct v4l2_hevc_pred_weight_table {
>  struct v4l2_ctrl_hevc_slice_params {
>  	__u32	bit_size;
>  	__u32	data_bit_offset;
> -
> +	__u32	num_entry_point_offsets;
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
>  	__u8	nal_unit_type;
>  	__u8	nuh_temporal_id_plus1;
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
