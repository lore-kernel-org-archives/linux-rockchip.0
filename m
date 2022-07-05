Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 558DEC43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 15:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2F036/9H1z7h7yTd6XcLOiLRObIgeXNlGN3Dufg+E84=; b=ieBH9T7FMeYtlq
	gE6UgBzEmU+kiJm5Dtc+eMlgV2NgqbnkcpQXvk+Ooah0zFrXujkhw/c4RWsQCgGzhJ+LVe9fFvYil
	BbJe4/wK+22vyfVPZlSjid2ZNU9+gsBgSgaJ7aEFHtVEJrSCaLmtF+x8+UFfFUYX8M+BJv4OSZ2vQ
	JOcNpZKoK3u83UEg1uNmnE7rqP2qVNs+Dr1CHVC6oi/aHSgh7Z3pimnlfmartpyVumQUs88izArQY
	ghMFM2/lsuTHXdzEdlt0paK1nTQEeQYTWF3d+cZW/WZzOE5S8XzI2xnatkIEY4YBO66j/nkAwBedJ
	y6OJWOYWyD9Z7fPnWOPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kaz-001Bqa-Pu; Tue, 05 Jul 2022 15:36:13 +0000
Received: from mail-vs1-xe32.google.com ([2607:f8b0:4864:20::e32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kan-001BlK-02
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 15:36:02 +0000
Received: by mail-vs1-xe32.google.com with SMTP id 126so12251987vsq.13
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 08:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=aBsQ/FqzMQX8oz4i9xIq1hsZFN6R3v8LL4whKtQ9DcQ=;
        b=2LO57y5cBoufIsVy5DZC97R15Htw3dkqeBBo3/uAEHulLpQVqo+gaAgm3X+SYfCJ1A
         i70TNmBzdyaUlahCfEsUjfAnm0Xfa6dOO4K173zAlPzzXRxhdBjPYdTwjr4GR229eA9z
         ZqU48AncYBjYbyMvAW+bT5PHkXrpcmf6ju3dKy84IaSpP/RfQD2JXqqfKlHkyP4gTbLZ
         X6D0Sk0XHTmf/Ht4detKKDypL9zcdnTuK7WAXkoHEfI82BxoobIyxaBDVKlxEPEVjHOY
         vxWS4XAP8xHjAI1ESXsq2rhl8i5UwbC62p25jTYdrfwueV0SbpHHPQscuw/HC2KO/vrl
         wuhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aBsQ/FqzMQX8oz4i9xIq1hsZFN6R3v8LL4whKtQ9DcQ=;
        b=bjjEd0rLmy4x0fEAjfkvTlnIGbb66Mshw5nxGJhLnRImQNcJ+KX75HqRhuHipomyaB
         R2yzVrTM4U8nJ//wjbQ2m9tJfdN9re2Ep/1xQo2ydVhRA1lrK7MGzq472V6rXR+m3Myv
         UiiqsvKJV4UCOLOdl+RHgzi50u5Mh5faKTZjiFzsyR+HcTr/02NO2J0/Q0io6e9BgrPI
         xx8wg1sM2bgoQCSs2hdGp7x7p6XVJq7MNi5yRjDKDx7/xqh51r13XRRIDBKioE+7ivyh
         omEFGsZeqLjCZgv7sGz7YgiXOasYUejAvCbNN1UL0edfbdpSZtdNrkeWnDPQa9GUkDpE
         kjYQ==
X-Gm-Message-State: AJIora92+GlyUVjIdpSiUO105JWfGLwsST1RmLnCKvePztqAecVsWGDM
	m3iseopwhgXh/4r484+tsC+lAA==
X-Google-Smtp-Source: AGRyM1uuuaI3iiwiSQTbd5nuoRILw2C4fjLapUvr6uaXVbv9wRjXrC654OtbXCEwWI/1nI9vnkpqWw==
X-Received: by 2002:a05:6102:3548:b0:354:34a1:e8f1 with SMTP id e8-20020a056102354800b0035434a1e8f1mr19773426vss.53.1657035359158;
        Tue, 05 Jul 2022 08:35:59 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id g39-20020a05610215a700b003544e1b52cbsm3956388vsv.10.2022.07.05.08.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 08:35:58 -0700 (PDT)
Date: Tue, 5 Jul 2022 12:35:53 -0300
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
Subject: Re: [PATCH v10 09/17] media: uapi: HEVC: Define
 V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Message-ID: <YsRaWY2lM2270w9g@eze-laptop>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
 <20220705085420.272912-10-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705085420.272912-10-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_083601_134162_24DE731F 
X-CRM114-Status: GOOD (  21.77  )
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

On Tue, Jul 05, 2022 at 10:54:12AM +0200, Benjamin Gaignard wrote:
> Make explicit that V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control is
> a dynamic array control type.
> Some drivers may be able to receive multiple slices in one control
> to improve decoding performance.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
> version 9:
> - Add comment about current driver dynamic limitation to 1
> - Remove unused define
> 
>  Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 2 ++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c                 | 1 +
>  drivers/staging/media/sunxi/cedrus/cedrus.c               | 2 ++
>  include/media/hevc-ctrls.h                                | 3 +++
>  4 files changed, 8 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index eeb60c9a1af4..db0df7d9f27c 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -2986,6 +2986,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      These bitstream parameters are defined according to :ref:`hevc`.
>      They are described in section 7.4.7 "General slice segment header
>      semantics" of the specification.
> +    This control is a dynamically sized 1-dimensional array,
> +    V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
>  
>  .. c:type:: v4l2_ctrl_hevc_slice_params
>  
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> index 9f55503cd3d6..d594efbcbb93 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> @@ -1510,6 +1510,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
>  		break;
>  	case V4L2_CID_STATELESS_HEVC_SLICE_PARAMS:
>  		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
> +		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
>  		break;
>  	case V4L2_CID_STATELESS_HEVC_SCALING_MATRIX:
>  		*type = V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
> index 87be975a72b6..b12219123a6b 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> @@ -178,6 +178,8 @@ static const struct cedrus_control cedrus_controls[] = {
>  	{
>  		.cfg = {
>  			.id	= V4L2_CID_STATELESS_HEVC_SLICE_PARAMS,
> +			/* The driver can only handle 1 entry per slice for now */
> +			.dims   = { 1 },
>  		},
>  		.codec		= CEDRUS_CODEC_H265,
>  	},
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 57053cfa099b..341fc795d550 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -314,6 +314,9 @@ struct v4l2_hevc_pred_weight_table {
>  /**
>   * struct v4l2_ctrl_hevc_slice_params - HEVC slice parameters
>   *
> + * This control is a dynamically sized 1-dimensional array,
> + * V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
> + *
>   * @bit_size: size (in bits) of the current slice data
>   * @data_bit_offset: offset (in bits) to the video data in the current slice data
>   * @nal_unit_type: specifies the coding type of the slice (B, P or I)
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
