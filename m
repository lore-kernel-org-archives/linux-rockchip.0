Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63A84C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 01:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvmtHULNXDoglOdsI3Yx1whN4L+r68A4gsiQnPN7XUs=; b=Xe9uOnRlwDqTZD
	jidLNeCTV4YBqSzVseN1SNd7XGaiCqSEeMiWHN/HacZsERhAqWbIN6YHBMTjBr01743QD9uyvf3sq
	iTPjWr5VO79vWLHYJBZ3PD69XSqKFMYK+YBPjScpyu02wvoF/YPRWwXjMIcVFL3wDr16C4emvaftL
	9UUSg9NgJ3Flp1Q/BYqLCkeMIEI6lO/XT7tTgxIrZCiBLNUBBXRmJtx/yqyQNM2lxiV3zLE0mTkFo
	I4DtW8jfT7Zvh89odl+68pHBOiLs1Pvz369MG7lNIX69AtngoaocFkrgWDEyWDRlQeXGIhyjafIbM
	DSeqIhaV/mvAsvMZg5Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8sFV-00CKuf-1z;
	Fri, 01 Dec 2023 01:23:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8sFR-00CKs0-00;
	Fri, 01 Dec 2023 01:23:19 +0000
Received: from localhost (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dbrouwer)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DAC95660737B;
	Fri,  1 Dec 2023 01:23:07 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701393788;
	bh=1i2HnnQfTypOiRtiRcffrhQrlquEpEU4UmvedzEbSdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MwKnWsLg32TfCrl6Fo2v9eJfCNALX6BBP3YhHRumF2m9ZXNNJ0RL1HX8hu6OR7quK
	 W/B/j1faiMh9tKK4YTkB8HbYwoQW5L54B4J3RcA8/inUaHbefzMtyU4uRq6eGYCu6M
	 PvuaZoNj5rEs51Ap6y2NclaSMA4rNUwAPU89wQGHObZwyJAl+iBy3phT0nYvcGqdmA
	 2T6NxYXrVzMJl2zCENJ6ESN0a8lr5YbwBmabTl3jBYAJkdLz3h8MSaX5Dr8WAUIa7G
	 fB6bqOQEYZT8qxRnY6QWI5v4zzBNAuzhhOrVB2MMdUFp1a+1Bw1qdJWzv5usSJI7CR
	 b2diYpd5VqbnA==
Date: Thu, 30 Nov 2023 17:23:04 -0800
From: Deborah Brouwer <deborah.brouwer@collabora.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Marco Felsch <m.felsch@pengutronix.de>,
	Adam Ford <aford173@gmail.com>
Subject: Re: [RFC 1/6] media: uapi: Add VP8 stateless encoder controls
Message-ID: <ZWk1eBN3Ri0P9EHS@mz550>
References: <20231004103720.3540436-1-hugues.fruchet@foss.st.com>
 <20231004103720.3540436-2-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231004103720.3540436-2-hugues.fruchet@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_172317_334271_138645AF 
X-CRM114-Status: GOOD (  29.86  )
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

On Wed, Oct 04, 2023 at 12:37:15PM +0200, Hugues Fruchet wrote:
> From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> 
> Add uAPI for stateless VP8 encoders.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/media/v4l2-core/v4l2-ctrls-core.c | 13 ++++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c |  5 ++
>  include/media/v4l2-ctrls.h                |  2 +
>  include/uapi/linux/v4l2-controls.h        | 91 +++++++++++++++++++++++
>  include/uapi/linux/videodev2.h            |  3 +
>  5 files changed, 114 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> index a662fb60f73f..c7799ceb3d6d 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> @@ -811,6 +811,7 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
>  	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
>  	struct v4l2_ctrl_hdr10_mastering_display *p_hdr10_mastering;
>  	struct v4l2_ctrl_hevc_decode_params *p_hevc_decode_params;
> +	struct v4l2_ctrl_vp8_encode_params *p_vp8_encode_params;
>  	struct v4l2_area *area;
>  	void *p = ptr.p + idx * ctrl->elem_size;
>  	unsigned int i;
> @@ -1047,6 +1048,15 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
>  		zero_padding(p_vp8_frame->coder_state);
>  		break;
>  
> +	case V4L2_CTRL_TYPE_VP8_ENCODE_PARAMS:
> +		p_vp8_encode_params = p;
> +		if (p_vp8_encode_params->loop_filter_level > 63)
> +			return -EINVAL;
> +
> +		if (p_vp8_encode_params->sharpness_level > 7)
> +			return -EINVAL;
> +		break;
> +
>  	case V4L2_CTRL_TYPE_HEVC_SPS:
>  		p_hevc_sps = p;
>  
> @@ -1868,6 +1878,9 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
>  	case V4L2_CTRL_TYPE_AREA:
>  		elem_size = sizeof(struct v4l2_area);
>  		break;
> +	case V4L2_CTRL_TYPE_VP8_ENCODE_PARAMS:
> +		elem_size = sizeof(struct v4l2_ctrl_vp8_encode_params);
> +		break;
>  	default:
>  		if (type < V4L2_CTRL_COMPOUND_TYPES)
>  			elem_size = sizeof(s32);
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> index 8696eb1cdd61..bd26f1d89bd5 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> @@ -1236,6 +1236,8 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_STATELESS_AV1_TILE_GROUP_ENTRY:		return "AV1 Tile Group Entry";
>  	case V4L2_CID_STATELESS_AV1_FRAME:			return "AV1 Frame Parameters";
>  	case V4L2_CID_STATELESS_AV1_FILM_GRAIN:			return "AV1 Film Grain";
> +	case V4L2_CID_STATELESS_VP8_ENCODE_PARAMS:		return "VP8 Encode Parameters";
> +	case V4L2_CID_STATELESS_VP8_ENCODE_QP:			return "VP8 Encode QP";
>  
>  	/* Colorimetry controls */
>  	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
> @@ -1592,6 +1594,9 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
>  	case V4L2_CID_STATELESS_AV1_FILM_GRAIN:
>  		*type = V4L2_CTRL_TYPE_AV1_FILM_GRAIN;
>  		break;
> +	case V4L2_CID_STATELESS_VP8_ENCODE_PARAMS:
> +		*type = V4L2_CTRL_TYPE_VP8_ENCODE_PARAMS;
> +		break;
>  	case V4L2_CID_UNIT_CELL_SIZE:
>  		*type = V4L2_CTRL_TYPE_AREA;
>  		*flags |= V4L2_CTRL_FLAG_READ_ONLY;
> diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
> index 59679a42b3e7..a165719e1139 100644
> --- a/include/media/v4l2-ctrls.h
> +++ b/include/media/v4l2-ctrls.h
> @@ -56,6 +56,7 @@ struct video_device;
>   * @p_av1_tile_group_entry:	Pointer to an AV1 tile group entry structure.
>   * @p_av1_frame:		Pointer to an AV1 frame structure.
>   * @p_av1_film_grain:		Pointer to an AV1 film grain structure.
> + * @p_vp8_encode_params:	Pointer to a VP8 encode parameter structure.
>   * @p:				Pointer to a compound value.
>   * @p_const:			Pointer to a constant compound value.
>   */
> @@ -89,6 +90,7 @@ union v4l2_ctrl_ptr {
>  	struct v4l2_ctrl_av1_tile_group_entry *p_av1_tile_group_entry;
>  	struct v4l2_ctrl_av1_frame *p_av1_frame;
>  	struct v4l2_ctrl_av1_film_grain *p_av1_film_grain;
> +	struct v4l2_ctrl_vp8_encode_params *p_vp8_encode_params;
>  	void *p;
>  	const void *p_const;
>  };
> diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
> index c3604a0a3e30..fdec5764e09c 100644
> --- a/include/uapi/linux/v4l2-controls.h
> +++ b/include/uapi/linux/v4l2-controls.h
> @@ -3479,6 +3479,97 @@ struct v4l2_ctrl_av1_film_grain {
>  	__u8 reserved[4];
>  };
>  
> +#define V4L2_CID_STATELESS_VP8_ENCODE_PARAMS	(V4L2_CID_CODEC_STATELESS_BASE + 601)
> +
> +#define V4L2_VP8_FRAME_FLAG_SHOWFRAME			0x1
> +#define V4L2_VP8_FRAME_FLAG_GOLDEN_REFRESH		0x2
> +#define V4L2_VP8_FRAME_FLAG_ALTREF_REFRESH		0x4
> +#define V4L2_VP8_FRAME_FLAG_SEGMENT_ENABLED		0x8
> +#define V4L2_VP8_FRAME_FLAG_LOOP_FILTER_ADJ_ENABLED	0x10
> +#define V4L2_VP8_FRAME_FLAG_REFRESH_ENTROPY_PROBS	0x20

Hi Andrzej,

Would you be able to add "ENCODE" to these FLAG names e.g. 
something like this:

V4L2_VP8_FRAME_ENCODE_FLAG_SHOWFRAME

Just to disguish these flag names from the ones that are used in
the stateless vp8 decoder struct v4l2_ctrl_vp8_frame.

If it makes no difference otherwise, it would be helpful for someone
who might be trying to parse this future uAPI with a perl script :)

thanks,
Deborah

> +
> +#define V4L2_VP8_FRAME_TYPE_KEYFRAME	0
> +#define V4L2_VP8_FRAME_TYPE_INTER	1
> +
> +#define V4L2_VP8_FRAME_COLOR_SPACE_YUV		0
> +#define V4L2_VP8_FRAME_COLOR_SPACE_RESERVED	1
> +
> +#define V4L2_VP8_FRAME_CLAMPING_REQUIRED	0
> +#define V4L2_VP8_FRAME_CLAMPING_NO		1
> +
> +#define V4L2_VP8_FRAME_FILTER_TYPE_NORMAL	0
> +#define V4L2_VP8_FRAME_FILTER_TYPE_SIMPLE	1
> +
> +#define V4L2_VP8_FRAME_NBR_DCT_PARTITIONS_1	0
> +#define V4L2_VP8_FRAME_NBR_DCT_PARTITIONS_2	1
> +#define V4L2_VP8_FRAME_NBR_DCT_PARTITIONS_4	2
> +#define V4L2_VP8_FRAME_NBR_DCT_PARTITIONS_8	3
> +
> +#define V4L2_VP8_FRAME_GOLDEN_KEEP		0
> +#define V4L2_VP8_FRAME_GOLDEN_LASTFRAME		1
> +#define V4L2_VP8_FRAME_GOLDEN_ALTREF		2
> +
> +#define V4L2_VP8_FRAME_ALTREF_KEEP		0
> +#define V4L2_VP8_FRAME_ALTREF_LASTFRAME		1
> +#define V4L2_VP8_FRAME_ALTREF_GOLDEN		2
> +
> +#define V4L2_VP8_FRAME_REF_LAST		0
> +#define V4L2_VP8_FRAME_REF_GOLDEN	1
> +#define V4L2_VP8_FRAME_REF_ALT		2
> +
> +/**
> + * struct v4l2_ctrl_vp8_encode_params - VP8 encode parameters
> + * @flags: combination of V4L2_VP8_FRAME_FLAG_{} flags.
> + * @frame_type: specifies the frame type (key or inter).
> + *		Set to one of V4L2_VP8_FRAME_TYPE_{}.
> + * @color_space: defines the YUV color space of the sequence.
> + *		 V4L2_VP8_FRAME_TYPE_INTER frames shall set this field to zero.
> + *		 Set to one of V4L2_VP8_FRAME_COLOR_SPACE_{}.
> + * @clamping_type: defines pixel value clamping type.
> + *		   V4L2_VP8_FRAME_TYPE_INTER frames shall set this field to zero.
> + *		   Set to one of V4L2_VP8_FRAME_CLAMPING_{}.
> + * @loop_filter_type: selects the type of loop filter applied.
> + *		      Set to one of V4L2_VP8_FRAME_FILTER_TYPE_{}.
> + * @loop_filter_level: sets the strength of the applied loop filter.
> + *		       Set to a value from the rage 0..63.
> + * @sharpness_level: sets the sharpness of the applied loop filter.
> + *		     Set to a value from the range 0..7.
> + * @log2_nbr_of_dct_partitions: determines the number of separate partitions
> + *				containing the DCT coefficients of macroblocks.
> + *				Set to one of V4L2_VP8_FRAME_NBR_DCT_PARTITIONS_{}.
> + * @prob_intra: indicates the probability of an intra macroblock.
> + *		Set to a value from the range 0..255.
> + * @prob_last: indicates the probability that the last reference frame is used for inter-prediction.
> + *	       Set to a value from the range 0..255.
> + * @prob_gf: indicates the probability that the golden reference frame is used for inter-prediction.
> + *	     Set to a value from the range 0..255.
> + * @copy_buffer_to_golden: specifies the golden frame refresh strategy.
> + *			   Set to one of V4L2_VP8_FRAME_FLAG_GOLDEN_{}.
> + * @copy_buffer_to_alternate: specifies the atlref frame refresh strategy.
> + *			      Set to one of V4L2_VP8_FRAME_FLAG_ALTREF_{}.
> + * @reference_type: specifies what kind of reference to use for current inter frame.
> + *		    V4L2_VP8_FRAME_TYPE_KEYFRAME shall set this field to zero.
> + *		    Set to one of V4L2_VP8_FRAME_REF_{}.
> + */
> +struct v4l2_ctrl_vp8_encode_params {
> +	__u32 flags;
> +	__u8 frame_type;
> +	__u8 color_space;
> +	__u8 clamping_type;
> +	__u8 loop_filter_type;
> +	__u8 loop_filter_level;
> +	__u8 sharpness_level;
> +	__u8 log2_nbr_of_dct_partitions;
> +	__u8 prob_intra;
> +	__u8 prob_last;
> +	__u8 prob_gf;
> +	__u8 copy_buffer_to_golden;
> +	__u8 copy_buffer_to_alternate;
> +	__u8 reference_type;
> +};
> +
> +#define V4L2_CID_STATELESS_VP8_ENCODE_QP	(V4L2_CID_CODEC_STATELESS_BASE + 602)
> +
>  /* MPEG-compression definitions kept for backwards compatibility */
>  #ifndef __KERNEL__
>  #define V4L2_CTRL_CLASS_MPEG            V4L2_CTRL_CLASS_CODEC
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 78260e5d9985..b3cbdc60b82c 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -1836,6 +1836,7 @@ struct v4l2_ext_control {
>  		struct v4l2_ctrl_av1_tile_group_entry __user *p_av1_tile_group_entry;
>  		struct v4l2_ctrl_av1_frame __user *p_av1_frame;
>  		struct v4l2_ctrl_av1_film_grain __user *p_av1_film_grain;
> +		struct v4l2_ctrl_vp8_encode_params __user *p_vp8_encode_params;
>  		void __user *ptr;
>  	};
>  } __attribute__ ((packed));
> @@ -1914,6 +1915,8 @@ enum v4l2_ctrl_type {
>  	V4L2_CTRL_TYPE_AV1_TILE_GROUP_ENTRY = 0x281,
>  	V4L2_CTRL_TYPE_AV1_FRAME	    = 0x282,
>  	V4L2_CTRL_TYPE_AV1_FILM_GRAIN	    = 0x283,
> +
> +	V4L2_CTRL_TYPE_VP8_ENCODE_PARAMS	= 0x0290,
>  };
>  
>  /*  Used in the VIDIOC_QUERYCTRL ioctl for querying controls */
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
