Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B1B6CCA47B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 15:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDMwHKeTINgv2PFo9m0l1nX8OcSl+nuOs0Sh3nx+UWI=; b=Sexnb94uf6OvKj
	94iI4TvbeXmPOsfN1zWn1/9mRvCg3ACJethegSd265QZoE0U3U2NvumhH6OAq7R0Q7/Ctpunyn27m
	1tQVelIMRq/vzb4NpLYAiR3Vgb7zXFct0L+N5k21UrTf9qDoTK2tnNGey/lL14WUHwhZTzJeeuZSM
	wDfxSIXxuztynLXh3ny/YhZDcQUJh/Q8VFbWPVxc5VItA8BSlwuh2rzHit5rLShPg8q1x3Ofyeuty
	TgXn5h11f4oxctIUefxTIKGfVuFbz27XB2KVSajC0Bll1ruEck6ykr/zPkHfZp98Fb8JQriD/heI5
	nhlLC+CW/FbwNCFzYpiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8koo-001HNI-Vm; Tue, 05 Jul 2022 15:50:31 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kob-001HH0-PX
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 15:50:19 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id q28so12317523vsp.7
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 08:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eIhA1Nh+RFUrFiI+l6dcBbGOrotFP8+PL+qIjiq0x74=;
        b=qph1cumdKBVmk2By8T7hyFVajgmo4j/4ZSIhi2mAE3f5WR/XRmFiTWNTjQsfMMjJK5
         RL0Kl2b0jD/aCROL7Lt8PEBtztGdwpFsnBUjKTNApj+pjgAAFGJUAeAkl95hQ2/VjqUx
         rRAhKScrtiG/DUz7J9Xt+LB5VLW2sYWTLIUK8IDWYY+lCgidoXQyEk7MRZmtUte1M888
         a/GmWSuOMdC86w98wk2mzQzl52YfjBzrf9QZWFTon7b3tx/r6Loar4ZRrasv4LeF0nyl
         TkOYjym0fXrNNpylQrhMQ6JTgP1jt7SvOBhX7dj43fbW1pLa8eI+bAmKx4j26tUCuwSj
         /WcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eIhA1Nh+RFUrFiI+l6dcBbGOrotFP8+PL+qIjiq0x74=;
        b=p9g2opx6toavPc+mYuMtZPCmCzqTvhsZERhf3KJUF1MRnlP6k+Kc2Q0Nu61FYDUmN4
         /QxFk8PYMRcBqujAE8EzDG42JqJ3u/nBsSabWTGQaxhzC66+oUTvufKn/hCKL8VzZ/FG
         BQlH9cuWRYB9PrvSeUWD53FkyNW6Odr0bsiruXNVUt6KcAHNi1KdhT8B+1mdkCuY8GCq
         S1qr8uPCz/F2tQnk8sxOLhUo72VVQiz9lQukwCttIbUb9KZ4O+Y/V+0XBZarlpqxKoI5
         Q3VmZqEvoxttWfxZkbatkSuoTGKZnKPRLW1tdfbRvHn+fi2CHSB2zTJghdQvEvzrj9N/
         Mkvw==
X-Gm-Message-State: AJIora+unvj4KbEI/q/wFpIMCeec9ldRCB/3F3JursxBPEq4znKEMHWL
	IdDyY6KtAViK3gSdIQYLjpymhA==
X-Google-Smtp-Source: AGRyM1sB37L5oohorORLEAouB/lxXaUVW4l4maoyXnSOvHHsbQaKVmlQfoP+MNRQ/UzKtnERxmNniA==
X-Received: by 2002:a05:6102:366f:b0:356:352f:9de2 with SMTP id bg15-20020a056102366f00b00356352f9de2mr20401110vsb.2.1657036216670;
        Tue, 05 Jul 2022 08:50:16 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id u72-20020a1fab4b000000b0036c82d22fbesm6924035vke.5.2022.07.05.08.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 08:50:16 -0700 (PDT)
Date: Tue, 5 Jul 2022 12:50:10 -0300
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
Subject: Re: [PATCH v10 12/17] media: uapi: Move the HEVC stateless control
 type out of staging
Message-ID: <YsRdso3isQwAMuy3@eze-laptop>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
 <20220705085420.272912-13-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705085420.272912-13-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_085017_853125_0CCE9285 
X-CRM114-Status: GOOD (  14.77  )
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

On Tue, Jul 05, 2022 at 10:54:15AM +0200, Benjamin Gaignard wrote:
> Move the HEVC stateless controls types out of staging,
> and re-number them.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  .../userspace-api/media/videodev2.h.rst.exceptions         | 5 +++++
>  include/media/hevc-ctrls.h                                 | 7 -------
>  include/uapi/linux/videodev2.h                             | 6 ++++++
>  3 files changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> index 0b91200776f8..2feea4a5a008 100644
> --- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> +++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> @@ -153,6 +153,11 @@ replace symbol V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR :c:type:`v4l2_ctrl_type`
>  replace symbol V4L2_CTRL_TYPE_VP9_FRAME :c:type:`v4l2_ctrl_type`
>  replace symbol V4L2_CTRL_TYPE_HDR10_CLL_INFO :c:type:`v4l2_ctrl_type`
>  replace symbol V4L2_CTRL_TYPE_HDR10_MASTERING_DISPLAY :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_SPS :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_PPS :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX :c:type:`v4l2_ctrl_type`
> +replace symbol V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS :c:type:`v4l2_ctrl_type`
>  
>  # V4L2 capability defines
>  replace define V4L2_CAP_VIDEO_CAPTURE device-capabilities
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 3a6601a46ced..42d16e8a1050 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -22,13 +22,6 @@
>  #define V4L2_CID_STATELESS_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
>  #define V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (V4L2_CID_CODEC_BASE + 1017)
>  
> -/* enum v4l2_ctrl_type type values */
> -#define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
> -#define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
> -#define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
> -#define V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX 0x0123
> -#define V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS 0x0124
> -
>  enum v4l2_stateless_hevc_decode_mode {
>  	V4L2_STATELESS_HEVC_DECODE_MODE_SLICE_BASED,
>  	V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 37f9f23a67fe..e0d19a6b5bc7 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -1836,6 +1836,12 @@ enum v4l2_ctrl_type {
>  
>  	V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR	= 0x0260,
>  	V4L2_CTRL_TYPE_VP9_FRAME		= 0x0261,
> +
> +	V4L2_CTRL_TYPE_HEVC_SPS			= 0x0270,
> +	V4L2_CTRL_TYPE_HEVC_PPS			= 0x0271,
> +	V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS	= 0x0272,
> +	V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX	= 0x0273,
> +	V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS	= 0x0274,
>  };
>  
>  /*  Used in the VIDIOC_QUERYCTRL ioctl for querying controls */
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
