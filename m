Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065F4C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcnlnjuhTuW9as5WGw2F+E/+5ESKCTwCwg0xbj1ZN9M=; b=yZwMXtv1HCSzoR
	ESMY3pip7G/bCnHdcBfz/pRxtCCNqoFziryrbwPkVHgHH1r1Wrdybc43ZFBaBghbjRB9UaA+r3LE5
	iKwKlbSbxZdRvMFou/OW/Ap99W2E1G+xVShYxFwUYkzOr7Itco1+L7w3jlXW2mftKI6ApoyQtty6C
	XxzydlII4B6QZLcqIAuFXeTi+1ZDJTdXK8YjLk32+CLt3SyTBzLgZqJZvqxDaFDCW28OosKgWvyyS
	tjvbMUquQy4skjuPeL3+2xHv99WPSm06Nwn2GOCtSU5ARGN9EkmvcDxrqT54w/V9MgLvk2MMF3Kf9
	zLCzzKDzsFKQrLDqI+0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8l8v-001Osx-PT; Tue, 05 Jul 2022 16:11:17 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8l8t-001OqP-7w; Tue, 05 Jul 2022 16:11:16 +0000
Received: by mail-ed1-x52e.google.com with SMTP id n8so15971650eda.0;
        Tue, 05 Jul 2022 09:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=36G4J+5wwUVJqJb4TMjdk+1pXu3QLUF2IGGsdXoPz5Y=;
        b=jFB3fKMVUSBi3Nj3BC8f/AsBM2Q8ZFPoAuR+kt1v5Msyzqbznxry+DDRk8+h8ysY2W
         ZQuRbYn7jqcLBYxKRJPhNGdG6numN6uXJQzieATwObgNChgnmu1wUs0Senkm3aqYFbTf
         6mhVO2bgqj/VY4Ol+d3g5NTh2AOdHdAb1Gzc9FHQ2N43ifIe7h9kFZJ4aZB7iUrb5hmd
         vFkFgOvhFDuJONsMQHZAqC1h4hDUSHg8z0/DNA/IVEbPgfF34NwG2WZya+1TLr5LAbQx
         bGQbZazHpE3CgdSy68dUcP9ragLYWSvZcfezgraEkRlwE/VS34YH+Fkn30gRmAvHdEZ5
         UCKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=36G4J+5wwUVJqJb4TMjdk+1pXu3QLUF2IGGsdXoPz5Y=;
        b=U60KchDdtdn+KLt5ZYYCsgURo3ONx20MdzLNy0unQWAUk5+olG4gpK2o4qizh5c1j6
         wxeK3NS+tnUnS2TNVxphqqQMgXiRRK+ArkGVOttuIn1LGVYj1DC/ijoX8i6UtXyXUaxN
         snqgpTSAo39Tt88mTWXoyAtbOO18RvgzJeiVGLJOj1IWZmnpCOUv6Dr/OBJxFWMNZ4/T
         orWoqy6SajXAqxtsyyYNbNs+ZFumXVgGtyk1oq1wGBwt/ntfa/Axs2AvvUrf9piv/GaK
         KUzo5Hfu9IDjETY767uJ9biQ/Bp9aVE10jpbJ4lBwNl6nZyvg2rPISkpqhRGIm2I4GQe
         SJnQ==
X-Gm-Message-State: AJIora8EH/4EZGeipn1MvSRMwtRA0Cm1ZXSWg8h+eRB1ayHqYUQwf0q1
	JLJEW5F0a7cCCchjyybegtA=
X-Google-Smtp-Source: AGRyM1sTbO8bbpUNNRESUXpCdjFmwrTJ5Z6Zb/ampipDhlK1iLjC6b7jH+hT350cAwrnvADHcvid+A==
X-Received: by 2002:a05:6402:3807:b0:435:20fb:318d with SMTP id es7-20020a056402380700b0043520fb318dmr46972596edb.272.1657037471184;
        Tue, 05 Jul 2022 09:11:11 -0700 (PDT)
Received: from kista.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id d8-20020a056402000800b0043a71c376a2sm3108941edu.33.2022.07.05.09.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 09:11:10 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com
Subject: Re: Re: [PATCH v10 11/17] media: uapi: Add V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
Date: Tue, 05 Jul 2022 18:11:09 +0200
Message-ID: <4408380.LvFx2qVVIh@kista>
In-Reply-To: <6ae43dcd-9b1d-ce30-8c3e-a8c313ef5b0a@collabora.com>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com> <YsRclobW7gL/Dtlr@eze-laptop> <6ae43dcd-9b1d-ce30-8c3e-a8c313ef5b0a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_091115_329025_8B3E7BEB 
X-CRM114-Status: GOOD (  31.05  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dne torek, 05. julij 2022 ob 18:03:28 CEST je Benjamin Gaignard napisal(a):
> Le 05/07/2022 =E0 17:45, Ezequiel Garcia a =E9crit :
> > Hi guys,
> > =

> > On Tue, Jul 05, 2022 at 10:54:14AM +0200, Benjamin Gaignard wrote:
> >> The number of 'entry point offset' can be very variable.
> >> Instead of using a large static array define a v4l2 dynamic array
> >> of U32 (V4L2_CTRL_TYPE_U32).
> >> The number of entry point offsets is reported by the elems field
> >> and in struct v4l2_ctrl_hevc_slice_params.num_entry_point_offsets
> >> field.
> >> =

> >> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> >> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> >> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> >> ---
> >> =

> >>   .../userspace-api/media/v4l/ext-ctrls-codec.rst       | 11 +++++++++=
++
> >>   drivers/media/v4l2-core/v4l2-ctrls-defs.c             |  5 +++++
> >>   include/media/hevc-ctrls.h                            |  5 ++++-
> >>   3 files changed, 20 insertions(+), 1 deletion(-)
> >> =

> >> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> >> b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst index
> >> db0df7d9f27c..8df8d7fdfe70 100644
> >> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> >> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> >> @@ -3010,6 +3010,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
> >> =

> >>       * - __u32
> >>       =

> >>         - ``data_bit_offset``
> >>         - Offset (in bits) to the video data in the current slice data.
> >> =

> >> +    * - __u32
> >> +      - ``num_entry_point_offsets``
> >> +      - Specifies the number of entry point offset syntax elements in
> >> the slice header.> =

> > This looks underdocumented. Somewhere in the docs it should be mentioned
> > that the field 'num_entry_point_offsets' is linked to the control
> > V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS.
> =

> This field is here because some drivers would like know the number of
> entry point offsets without getting the entry point offsets data itself.

Yeah, this field must be set even when entry points offset control isn't us=
ed. =

Additionally, if entry point offsets control is needed and if submitting =

multiple slices at once, length of entry point offsets array must be sum of =

num_entry_point_offsets of all slices in that job. Not sure where to put th=
is =

explanation.

Best regards,
Jernej

> =

> Benjamin
> =

> > Thanks,
> > Ezequiel
> > =

> >>       * - __u8
> >>       =

> >>         - ``nal_unit_type``
> >>         - Specifies the coding type of the slice (B, P or I).
> >> =

> >> @@ -3150,6 +3153,14 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
> >> =

> >>       \normalsize
> >> =

> >> +``V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (integer)``
> >> +    Specifies entry point offsets in bytes.
> >> +    This control is a dynamically sized array. The number of entry po=
int
> >> +    offsets is reported by the ``elems`` field.
> >> +    This bitstream parameter is defined according to :ref:`hevc`.
> >> +    They are described in section 7.4.7.1 "General slice segment head=
er
> >> +    semantics" of the specification.
> >> +
> >> =

> >>   ``V4L2_CID_STATELESS_HEVC_SCALING_MATRIX (struct)``
> >>   =

> >>       Specifies the HEVC scaling matrix parameters used for the scaling
> >>       process
> >>       for transform coefficients.
> >> =

> >> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> >> b/drivers/media/v4l2-core/v4l2-ctrls-defs.c index
> >> d594efbcbb93..e22921e7ea61 100644
> >> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> >> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> >> @@ -1188,6 +1188,7 @@ const char *v4l2_ctrl_get_name(u32 id)
> >> =

> >>   	case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:		return =

"HEVC Decode
> >>   	Parameters"; case V4L2_CID_STATELESS_HEVC_DECODE_MODE:		=

return "HEVC
> >>   	Decode Mode"; case V4L2_CID_STATELESS_HEVC_START_CODE:		=

return "HEVC
> >>   	Start Code";>> =

> >> +	case V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS:	return =

"HEVC Entry
> >> Point Offsets";>> =

> >>   	/* Colorimetry controls */
> >>   	/* Keep the order of the 'case's the same as in v4l2-controls.h! =

*/
> >> =

> >> @@ -1518,6 +1519,10 @@ void v4l2_ctrl_fill(u32 id, const char **name,
> >> enum v4l2_ctrl_type *type,>> =

> >>   	case V4L2_CID_STATELESS_HEVC_DECODE_PARAMS:
> >>   		*type =3D V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
> >>   		break;
> >> =

> >> +	case V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS:
> >> +		*type =3D V4L2_CTRL_TYPE_U32;
> >> +		*flags |=3D V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
> >> +		break;
> >> =

> >>   	case V4L2_CID_STATELESS_VP9_COMPRESSED_HDR:
> >>   		*type =3D V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR;
> >>   		break;
> >> =

> >> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> >> index a372c184689e..3a6601a46ced 100644
> >> --- a/include/media/hevc-ctrls.h
> >> +++ b/include/media/hevc-ctrls.h
> >> @@ -20,6 +20,7 @@
> >> =

> >>   #define V4L2_CID_STATELESS_HEVC_DECODE_PARAMS	=

(V4L2_CID_CODEC_BASE +
> >>   1012)
> >>   #define V4L2_CID_STATELESS_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE =

+
> >>   1015)
> >>   #define V4L2_CID_STATELESS_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 10=
16)
> >> =

> >> +#define V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (V4L2_CID_CODEC_B=
ASE
> >> + 1017)>> =

> >>   /* enum v4l2_ctrl_type type values */
> >>   #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
> >> =

> >> @@ -316,6 +317,8 @@ struct v4l2_hevc_pred_weight_table {
> >> =

> >>    *
> >>    * @bit_size: size (in bits) of the current slice data
> >>    * @data_bit_offset: offset (in bits) to the video data in the curre=
nt
> >>    slice data>> =

> >> + * @num_entry_point_offsets: specifies the number of entry point offs=
et
> >> syntax + *			     elements in the slice =

header.
> >> =

> >>    * @nal_unit_type: specifies the coding type of the slice (B, P or I)
> >>    * @nuh_temporal_id_plus1: minus 1 specifies a temporal identifier f=
or
> >>    the NAL unit * @slice_type: see V4L2_HEVC_SLICE_TYPE_{}
> >> =

> >> @@ -358,7 +361,7 @@ struct v4l2_hevc_pred_weight_table {
> >> =

> >>   struct v4l2_ctrl_hevc_slice_params {
> >>   =

> >>   	__u32	bit_size;
> >>   	__u32	data_bit_offset;
> >> =

> >> -
> >> +	__u32	num_entry_point_offsets;
> >> =

> >>   	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
> >>   	__u8	nal_unit_type;
> >>   	__u8	nuh_temporal_id_plus1;
> >> =

> >> --
> >> 2.32.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
