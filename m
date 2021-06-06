Return-Path: <SRS0=3dFo=LA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0F81C47096
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jun 2021 07:50:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 90A40613AD
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jun 2021 07:50:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 90A40613AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtMeHmVUBsAECCaBngkjF4tI0Y7SNieX0Z6Ebl5024Q=; b=qwnWkIhPWRnzCj
	3SvIpFya42TXqeBdFf9nlXB19qEkBMFvvD1KuA7oFPKz8FYNKAina/UrqrDWou/k/vGsKsMYZMNVO
	M4VakTCLpLq4J7mnNK5eUSt6nNjNMDT3V8DjaaIXm4lccEgXtEHoa+y3OSaLQhMd6uekMf9W7dVZh
	qhoEk0dqXivKT81I3TdfuofJy9OrYKMBF4rAfe9Zb0jwxRJJx711yEYUC68yIzZdGlRDDNV/Ug6FS
	vnc4Z7OSc3yut+hMR1VI/GKtX2ji8uCSIYPQbx+CfTEJQM2mseFGeMoQ9fMQrV0Pt5jm5tTVYzbWH
	qQM2F5rfeDW/ErHlOnig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpnYO-00HZJa-AL; Sun, 06 Jun 2021 07:50:40 +0000
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpnYL-00HZJC-6P; Sun, 06 Jun 2021 07:50:39 +0000
Received: by mail-ej1-f47.google.com with SMTP id g8so21381030ejx.1;
 Sun, 06 Jun 2021 00:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1L+CugDcu0ySFhbe2SRx9ewcJnc69OcVxM+Qz0KsWKg=;
 b=Z8xTXcjTXNQtrLBJjbQfH1dm3DIceJGvfjGD75iKVuUKNzaCoqwrUBfv6lobrk2cka
 flQoBYh0RxTHEBp6Cj5ZxnrcmOPDhpNdelaV4+Q5Wzi+zIqLyQNOAHpPFcPtwCQbYC+g
 dPMksezdZjkwBSyybA4dFS4bvGPT4b4UC3PL0SV+5eQ9HXjZULncH71epDhbP/DSbCm9
 eRPkBnrNAkowx+8/2MMQqwcMP9TNg52r6026F+NBcTeYL9SLa6wtre5kChVhszLf1FiP
 5fwMN1JO4bHdP1SF1X9cUo6sWjZN+UD6uET/I2O73j1hRjDOJBfN/ULOaBw9nORKmwoS
 DOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1L+CugDcu0ySFhbe2SRx9ewcJnc69OcVxM+Qz0KsWKg=;
 b=GUBFxGNM2mKNUEktUsTG4dDJtBJVnu+uLAgKQaDV3Hd6o4YrnCA9uQtToCUFfJCA7i
 kWQ0S9NP/EyA7jLXgLVlsZNZPX46rWEku1BX79QTblujXvTkBacTmqQ7mtxmklaEiXtD
 qkdB8K80MFDljM+dmvsqrqT4zwElsmJ1NrbvX46X88AAx/CcRGUS6m4MMuVl6Q6OFOsO
 RnbDnwPkWD71F8C69c1S0MB7zkBnuMA9r1UTQRJNTlaBWMonEIB/uRJeeEr0UoFuYv+z
 zrpKWNvwp0qNtBAPq9mSv7yWMrZ8ZuR/0hkUWASuoapSW1WezfjC9Ox2WQHkRGjtLnf8
 NvIQ==
X-Gm-Message-State: AOAM532BIY1ahaxlfweBP9j1al9ll8ZsqO6i1B9DN3PRzEhW+balxsV5
 EkAjHyAsi3e/B3myFraQb8E=
X-Google-Smtp-Source: ABdhPJyHJED78NmxWqy+3UB12hj3JL5WXMqpSyt2T4SSzymkviDsOiWzsALrKob1WbjW4tw4sU8YHg==
X-Received: by 2002:a17:906:6849:: with SMTP id
 a9mr12712425ejs.415.1622965773781; 
 Sun, 06 Jun 2021 00:49:33 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-17-133.cable.triera.net.
 [86.58.17.133])
 by smtp.gmail.com with ESMTPSA id qh23sm5070097ejb.77.2021.06.06.00.49.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jun 2021 00:49:33 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH 7/8] media: hevc: Add scaling matrix control
Date: Sun, 06 Jun 2021 09:49:31 +0200
Message-ID: <2618802.xq3rs0cueg@kista>
In-Reply-To: <20210604130619.491200-8-benjamin.gaignard@collabora.com>
References: <20210604130619.491200-1-benjamin.gaignard@collabora.com>
 <20210604130619.491200-8-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_005037_261101_7B7766A4 
X-CRM114-Status: GOOD (  21.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi!

Dne petek, 04. junij 2021 ob 15:06:18 CEST je Benjamin Gaignard napisal(a):
> HEVC scaling lists are used for the scaling process for transform
> coefficients.
> V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED has to set when they are
> encoded in the bitstream.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../media/v4l/ext-ctrls-codec.rst             | 45 +++++++++++++++++++
>  .../media/v4l/vidioc-queryctrl.rst            |  6 +++
>  drivers/media/v4l2-core/v4l2-ctrls-core.c     |  6 +++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  4 ++
>  include/media/hevc-ctrls.h                    | 11 +++++
>  5 files changed, 72 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/
Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index 9120c5bcaf90..a4512b7cb520 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3065,6 +3065,51 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>  
>      \normalsize
>  
> +``V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX (struct)``
> +    Specifies the HEVC scaling matrix parameters used for the scaling 
process
> +    for transform coefficients.
> +    These matrix and parameters are defined according to :ref:`hevc`.
> +    They are described in section 7.4.5 "Scaling list data semantics" of
> +    the specification.
> +
> +.. c:type:: v4l2_ctrl_hevc_scaling_matrix
> +
> +.. raw:: latex
> +
> +    \scriptsize
> +
> +.. tabularcolumns:: |p{5.4cm}|p{6.8cm}|p{5.1cm}|
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_ctrl_hevc_slice_params

^ copy paste error? It should be v4l2_ctrl_hevc_scaling_matrix.

Best regards,
Jernej

> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u8
> +      - ``scaling_list_4x4[6][16]``
> +      -
> +    * - __u8
> +      - ``scaling_list_8x8[6][64]``
> +      -
> +    * - __u8
> +      - ``scaling_list_16x16[6][64]``
> +      -
> +    * - __u8
> +      - ``scaling_list_32x32[2][64]``
> +      -
> +    * - __u8
> +      - ``scaling_list_dc_coef_16x16[6]``
> +      -
> +    * - __u8
> +      - ``scaling_list_dc_coef_32x32[2]``
> +      -
> +
> +.. raw:: latex
> +
> +    \normalsize
> +
>  .. c:type:: v4l2_hevc_dpb_entry
>  
>  .. raw:: latex
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/
Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> index f9ecf6276129..2f491c17dd5d 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> @@ -495,6 +495,12 @@ See also the examples in :ref:`control`.
>        - n/a
>        - A struct :c:type:`v4l2_ctrl_hevc_slice_params`, containing HEVC
>  	slice parameters for stateless video decoders.
> +    * - ``V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX``
> +      - n/a
> +      - n/a
> +      - n/a
> +      - A struct :c:type:`v4l2_ctrl_hevc_scaling_matrix`, containing HEVC
> +	scaling matrix for stateless video decoders.
>      * - ``V4L2_CTRL_TYPE_VP8_FRAME``
>        - n/a
>        - n/a
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-
core/v4l2-ctrls-core.c
> index c4b5082849b6..70adfc1b9c81 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> @@ -687,6 +687,9 @@ static int std_validate_compound(const struct v4l2_ctrl 
*ctrl, u32 idx,
>  
>  		break;
>  
> +	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
> +		break;
> +
>  	case V4L2_CTRL_TYPE_AREA:
>  		area = p;
>  		if (!area->width || !area->height)
> @@ -1240,6 +1243,9 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct 
v4l2_ctrl_handler *hdl,
>  	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
>  		elem_size = sizeof(struct v4l2_ctrl_hevc_slice_params);
>  		break;
> +	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
> +		elem_size = sizeof(struct 
v4l2_ctrl_hevc_scaling_matrix);
> +		break;
>  	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
>  		elem_size = sizeof(struct 
v4l2_ctrl_hevc_decode_params);
>  		break;
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-
core/v4l2-ctrls-defs.c
> index b6344bbf1e00..cb29c2a7fabe 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> @@ -996,6 +996,7 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:			
return "HEVC Sequence Parameter Set";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:			
return "HEVC Picture Parameter Set";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:		return 
"HEVC Slice Parameters";
> +	case V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX:		
return "HEVC Scaling Matrix";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:		
return "HEVC Decode Parameters";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE:		return "HEVC 
Decode Mode";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_START_CODE:		return 
"HEVC Start Code";
> @@ -1488,6 +1489,9 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum 
v4l2_ctrl_type *type,
>  	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:
>  		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
>  		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX:
> +		*type = V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX;
> +		break;
>  	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:
>  		*type = V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
>  		break;
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index dc964ff7cd29..da6189ef7ab4 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -19,6 +19,7 @@
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_CODEC_BASE + 
1008)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_CODEC_BASE + 
1009)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_CODEC_BASE + 
1010)
> +#define V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX	(V4L2_CID_CODEC_BASE + 
1011)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE + 
1012)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 
1015)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 
1016)
> @@ -27,6 +28,7 @@
>  #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
>  #define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
>  #define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
> +#define V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX 0x0123
>  #define V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS 0x0124
>  
>  enum v4l2_mpeg_video_hevc_decode_mode {
> @@ -225,6 +227,15 @@ struct v4l2_ctrl_hevc_decode_params {
>  	__u64	flags;
>  };
>  
> +struct v4l2_ctrl_hevc_scaling_matrix {
> +	__u8	scaling_list_4x4[6][16];
> +	__u8	scaling_list_8x8[6][64];
> +	__u8	scaling_list_16x16[6][64];
> +	__u8	scaling_list_32x32[2][64];
> +	__u8	scaling_list_dc_coef_16x16[6];
> +	__u8	scaling_list_dc_coef_32x32[2];
> +};
> +
>  /*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 
*/
>  #define V4L2_CID_CODEC_HANTRO_BASE				
(V4L2_CTRL_CLASS_CODEC | 0x1200)
>  /*
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
