Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA89C48BE6
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 07:28:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF6CC613C3
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 07:28:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF6CC613C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0fHUuPeBH9hsuMBpIJvp5YPodZ4ajOjUAz0JW0YPR4o=; b=nHLSy8wRLZe/kQwjyRzgIPouI4
	8TFEuqS+yvfgFPr2Gt5cl/ou/EqYEHWcuU20Ynz2W/4HqKOr9LcDyApLhQMVzZ67SBjr5M61JQI1T
	T78UNhXn/rEiNQx77trfh4oANRA1cUFuT7GZKtrt0fS9Sv51Q3fa8ZFqvelMDuXG+68wkatffceAf
	/vfME3Fvs2BAWYZW+6GXUkK5TVjH+D9f8gV5vwca3doaoi89co6uzXPhLhh2aP0hPyrmM2zblgJAG
	3KarQcudDdPm4oxsRzz0dtVLXZOh6QiBWvW0LdQnlvvjfDribcZsa2islR4Q9f810lBOrSe+pTYXV
	iXHQRmZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsh1G-00CsfM-Ma; Mon, 14 Jun 2021 07:28:26 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsh0y-00Csby-To; Mon, 14 Jun 2021 07:28:11 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id sh0nlaX5ihqltsh0rllihu; Mon, 14 Jun 2021 09:28:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1623655682; bh=4lI4GyL9GH2nvrTQ0o6Wt6NwFx3+9870W0SH7rM1Pog=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=FxhymAtJghFfLbs4vBLozp5YyQlaXt+9hk2xi7PQp1THWvAVw1wvekqw9gbOAxtUR
 nt5hL/FUayClf4wXsEObms+olahY+qVwbxw11pQs6wQPaOPwSWgnAvdRTZFCoId06r
 D54e1xzLU53hDWB0j8+GgfrTqam17JZGuhxYyiv6c1h6IKwfNPNyPJwcAiMEICmYl9
 +TXDNAik5gR3gbg+rgPBXYhNaddcciWHO8g1se0h0+vwFQQr0P0Y9rx+CmGp8f8qB1
 Bfu2ViUisMjG8dILq+HhFV358pYGgAg/3QEGB8Do5lyHa7npHkehOOObrv+4VBTk6h
 GuBQ0lr05e4rg==
Subject: Re: [PATCH v2 7/8] media: hevc: Add scaling matrix control
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 jernej.skrabec@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210610154442.806107-1-benjamin.gaignard@collabora.com>
 <20210610154442.806107-8-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <87a1e585-688e-7c4d-b9a9-24f42772a1a8@xs4all.nl>
Date: Mon, 14 Jun 2021 09:27:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210610154442.806107-8-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfDe2Ij7GluQvLG2QfGzNQyhKNDrRlbl2UUH3ErnB7fmuzSVsHHgozJI325a40B22/ELAxqePFc+7UYHeXwOD8aHQ+hXSeiZrZK0I65CmX3+aYwnhvNEj
 ++n1Ejt18wRP78kREgG39hdNonzCKyj/MLDu3GNWk3QDznBIaVhmZx9eF2WwH2Hv5k1LaJWJfL1YAVMhmZru2YWng3KSmu1aRBxhWU3lOdz2uRbW9uGVLXt+
 AaZlY27U8YuZQ5VRRB7ktXJvQS+5yRKsi7jCBEjWttvSo679sPSjx/LKV+K6bB3LrgySPA9j+vxQxSHWilwv2F9rJwyd6HTcN3J2WuXkfdi69JBBt07DJoee
 GyrQaVFeVw7O7LlDSunzXfmfKRlhvmBILfz4rLayH9evPyLO0SvIrB57UZ2h66b3rVwC1R/WYzCQjD9Ki8BfF7u435M5ODvq0dNKUYocYdje1roLmUkK97S1
 y0+ejr2fWxN2zSXyZ9J5V3iVAFgn0eSLrz0r1snpCDHYSyKACQresRQ5rJVU2fRxGcYLVrs87VwvYsyYgudSfG8gTg5G7i6D1K7b+5RjWGXzRVHe+ZmAXUJ2
 Ys0sjYP/OS6zCqv3fxKQI++87umteMb/wTDV8+M7dBheUz37oZEWr7escZ2j95HLGtg2HfrX/rl1XyXohpckgGGDJP4BUaip0wJbDzffuc5gjg1dxj34/t2H
 kcXz81L0K5Zr8/Os4ZKK5TZioT6gD+btoE+kl1zuiK0QS66ezbs720wZDsO7Y7Y80BlcH94HvBsvcAd/YWOJG4lsPgs4hklYcf61UWUH1nZzAz4tK+SHoQ0+
 hLsny2Bf8ReFUi5QF3gfBeMboUqyebLSF+Fe4pJrMJL2dJVJ5ieSB3l2PDztcJjZozj2CnJzWUXEgz5XFPtAVJthu0rnd5vNDkls+VeJMEyotx6Dy0YHjtq9
 QHIxTw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_002809_145649_AA02379E 
X-CRM114-Status: GOOD (  22.32  )
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

On 10/06/2021 17:44, Benjamin Gaignard wrote:
> HEVC scaling lists are used for the scaling process for transform
> coefficients.
> V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED has to set when they are
> encoded in the bitstream.

Comparing H264 with HEVC I noticed that the corresponding flag for H264 is
called V4L2_H264_PPS_FLAG_SCALING_MATRIX_PRESENT.

Should those names be aligned? Also, it is part of PPS for H264 and SPS in HEVC,
is that difference correct?

Regards,

	Hans

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
>  - Fix structure name in ext-ctrls-codec.rst
> 
>  .../media/v4l/ext-ctrls-codec.rst             | 45 +++++++++++++++++++
>  .../media/v4l/vidioc-queryctrl.rst            |  6 +++
>  drivers/media/v4l2-core/v4l2-ctrls-core.c     |  6 +++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  4 ++
>  include/media/hevc-ctrls.h                    | 11 +++++
>  5 files changed, 72 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index 8c6e2a11ed95..d4f40bb85263 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3068,6 +3068,51 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>  
>      \normalsize
>  
> +``V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX (struct)``
> +    Specifies the HEVC scaling matrix parameters used for the scaling process
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
> +.. flat-table:: struct v4l2_ctrl_hevc_scaling_matrix
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
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
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
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> index c4b5082849b6..70adfc1b9c81 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> @@ -687,6 +687,9 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
>  
>  		break;
>  
> +	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
> +		break;
> +
>  	case V4L2_CTRL_TYPE_AREA:
>  		area = p;
>  		if (!area->width || !area->height)
> @@ -1240,6 +1243,9 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
>  	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
>  		elem_size = sizeof(struct v4l2_ctrl_hevc_slice_params);
>  		break;
> +	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
> +		elem_size = sizeof(struct v4l2_ctrl_hevc_scaling_matrix);
> +		break;
>  	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
>  		elem_size = sizeof(struct v4l2_ctrl_hevc_decode_params);
>  		break;
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> index b6344bbf1e00..cb29c2a7fabe 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> @@ -996,6 +996,7 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:			return "HEVC Sequence Parameter Set";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:			return "HEVC Picture Parameter Set";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:		return "HEVC Slice Parameters";
> +	case V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX:		return "HEVC Scaling Matrix";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:		return "HEVC Decode Parameters";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE:		return "HEVC Decode Mode";
>  	case V4L2_CID_MPEG_VIDEO_HEVC_START_CODE:		return "HEVC Start Code";
> @@ -1488,6 +1489,9 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
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
> index 53c0038c792b..0e5c4a2eecff 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -19,6 +19,7 @@
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_CODEC_BASE + 1008)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_CODEC_BASE + 1009)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_CODEC_BASE + 1010)
> +#define V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX	(V4L2_CID_CODEC_BASE + 1011)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE + 1012)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 1015)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
> @@ -27,6 +28,7 @@
>  #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
>  #define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
>  #define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
> +#define V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX 0x0123
>  #define V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS 0x0124
>  
>  enum v4l2_mpeg_video_hevc_decode_mode {
> @@ -224,6 +226,15 @@ struct v4l2_ctrl_hevc_decode_params {
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
>  /*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
>  #define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
>  /*
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
