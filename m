Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F7BDC43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 17:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6dtDw2CkRfzwuCJUH1xJ3fY8UNr4rRJLP1QryLwSRw=; b=JFd+PQXjHe1Hh4
	DsiQ88IOUnpCLE86ieOlHHk6v+5si9yUCNWievnl6N3K6GU7n+wF8m9mjcHDULC+LbhkWvpiOkAZU
	rOMjXfUcA/Xa4AbUZ24HvDlR55BZWiIs4HcUltjZIAj0T7jMcqpKpfQ0d5J+Jq8DE5DUKI+0wAANG
	C/AcpfWxspRtO9RL79kGLIy3CZMIbyNl+PiKPdykjuV0gCL5pc0+yQBbleGXryH0iqUeUyae1uGcE
	kohAYYEjdgjys6R6eprJ9ZD3H6VYph2bnUhu+ziOI6oueA4E9wfMrejfwRDm762bI1O9Sw0Tl7EZd
	1cMjoMaBA9JXs1/mXivw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9rk2-004zAW-1N; Fri, 08 Jul 2022 17:26:10 +0000
Received: from mail-ua1-x934.google.com ([2607:f8b0:4864:20::934])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9rjq-004z7e-Nw
	for linux-rockchip@lists.infradead.org; Fri, 08 Jul 2022 17:26:00 +0000
Received: by mail-ua1-x934.google.com with SMTP id s38so5987386uac.6
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Jul 2022 10:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LOtwgN5wfPmZzYIw0Tlyqvkp9Ve1x2H9JUuVegr7ZSQ=;
        b=yzZgbP7McDtAqwstq36PYiHbvJeGkx2Qiw9pxIaitlI8T1j7i1MGFPYMT9/8FvjI+s
         5Xikx5aO9HebE9iI50qdiSONNEaQ8ppm6USn3FpoGDLgVsiWFdouVs7VXNAwfZrmROWx
         Occg/C4yaQDinMWgWK337atLIytOm5fw0BUf8id6plKjZ8jQv5D0CDeBO89l5GNYzxbc
         yeUrU+Iw5ZSZMTRGHYSXPZ5qetUWnpmJ3Lo9lkgkOt4qa6rKnV482EFGilijZRmsIN7A
         JTkktrQ3WwbXLc1a/wp3ZJ1NqEc4FntJHMt3MWnAbU1i6tgOChOjDLR/Dg0r/Jv+5UWO
         L4Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LOtwgN5wfPmZzYIw0Tlyqvkp9Ve1x2H9JUuVegr7ZSQ=;
        b=AST6TxmCYiWHhfhudOkSmM53pRrzUkgtEUa0C4CovWj+s63hdzkoTGth73UqMLdZhR
         rnHRhGg9XJoZqLLW3nEm9J59beXIYBA87/igNAN91s46I8N7ZMA/zXB/eInbsCk7b2d4
         UxHrK1v1VnA3oK+7NT4U79caKaUAo94e109mGKyJDcT/o7LkHvZjqwSPDaeoRRZ0odSe
         GxRftitRveEmgPr400+xlm2gugkqKKt0sWbgxnHDB53jHZinhVpkeO6VSC8F2NXPyv0C
         XIGtw5EUxWbGTpWbNw1riLn1ZWyt/cxuA9Ixkv9yWWIrEW1o53S/nb9HR6TqGIFayM/x
         ABkg==
X-Gm-Message-State: AJIora+VYQ72ZdUJWCHDbax1C6kd2VAcT0nh4SfhsAYcJys2vnllsjm9
	Q+WuXnHfaRolIO4bK4p2/lo/ng==
X-Google-Smtp-Source: AGRyM1upmaMJbd45XOLfgkaVrGND1BM38x3w4DVtZSkLTkm5yvEt/soB8HFT/X7s4kiOuP6NNF68MQ==
X-Received: by 2002:ab0:28d6:0:b0:382:e35f:eca1 with SMTP id g22-20020ab028d6000000b00382e35feca1mr2079496uaq.22.1657301156509;
        Fri, 08 Jul 2022 10:25:56 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id g80-20020a1f9d53000000b003651e2fb90asm12674801vke.26.2022.07.08.10.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 10:25:56 -0700 (PDT)
Date: Fri, 8 Jul 2022 14:25:50 -0300
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
Subject: Re: [PATCH v13 09/17] media: uapi: HEVC: Define
 V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Message-ID: <Yshonnx0l3OMooV0@eze-laptop>
References: <20220708162156.815772-1-benjamin.gaignard@collabora.com>
 <20220708162156.815772-10-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220708162156.815772-10-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_102558_798064_3E389C6D 
X-CRM114-Status: GOOD (  20.52  )
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

On Fri, Jul 08, 2022 at 06:21:48PM +0200, Benjamin Gaignard wrote:
> Make explicit that V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control is
> a dynamic array control type.
> Some drivers may be able to receive multiple slices in one control
> to improve decoding performance.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 2 ++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c                 | 1 +
>  drivers/staging/media/sunxi/cedrus/cedrus.c               | 2 ++
>  include/media/hevc-ctrls.h                                | 3 +++
>  4 files changed, 8 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index e88b5e6944a6..c2e0adece613 100644
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
