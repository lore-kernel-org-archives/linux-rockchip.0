Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C2D1C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 19:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp/LhqprL+FfB/8jzhgi8BSUtJnE/M11oGzWduAWWgA=; b=vboeYWQ90PjdsW
	H22zws1SbpaqHKlmmKLZCP5SQuWDSav+XW/a6v2hYaRIYQxIZEZGCImVUFbxopApR80Fm/RBNPLuW
	40baB2d0TJcsiQjJD3KEO3pH/Q/xkFnvcqUyIrcn8nikqNU3SpcEptkAjkPKJxOuWLqhhzhtMgB+b
	GOMoMsiy0yJSu5G/c+BLdcQD3UeqOaAgcBOMzG13faUYUhjjgRuXO3q/R1tqvrr2v+Dr1r/BROEMy
	zXz/6tmQb9j26W6AZoJrnoUYIN05dIwzx78YahmnggwIOAvlHWNhEj69sr4Et8Nm9j4oq4fBXELmo
	hw+dFEp0l7JovM1J3LBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6GWP-007kft-Nz; Tue, 28 Jun 2022 19:05:13 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6GWL-007kdn-R2
	for linux-rockchip@lists.infradead.org; Tue, 28 Jun 2022 19:05:11 +0000
Received: by mail-oi1-x22c.google.com with SMTP id u189so18502676oib.4
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jun 2022 12:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=W1UIqFTlInNMiky+uI28fdGpzcjitquJfb20l0+LlU8=;
        b=NrQGrqnbwzbhIyRzdo4unz7FYRp2nskiLvSmmkb4yarwZzomgFLeSx5Ec5F4/DliEc
         y5TH8OcNawJ+0OQIkYevtpgfojNpE8WkrJgbv4Cr/eV/c6uTfuOZECHBu1+PfMWS1NSY
         WrQU6OYpcG95kbDLkTSEkIbfIz5Gp3vE5Kaqn4x7s9qi8GYr/jWFNQPRWK0B50pLQSwK
         SBvt1hV1JUHjL8Hpv6GgBes8iC+6jV3pH01FA8WGF4g+Ygr/Qb/bvIDdYWXmuFjxaxzH
         LzIKSkspipD8M5Nd1B8YYti3H2P/Tg/u+LkRy5dVoFuSCkpZ7iNnIHVIqQn3US16/JTW
         1o5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=W1UIqFTlInNMiky+uI28fdGpzcjitquJfb20l0+LlU8=;
        b=VyiSW9zCXlq6Yq0+Z9WLFewdIFHb9w8CuKLWzmnwC9abF911CiMJwi0RGoCHtBzsMg
         0tfuOF7ffgOng7/3Duj3Wa8nRmEtcYJPivIf4HlRYwvmWkPPs1eykqaBC8w6kHUFHGrc
         lnX9wCk8JSWGBiLa9Wm8zTLEnBMZo23YpiuJxCGs11zHoB83qJdCWdhDD/+krtDRVf6I
         LtdH9MJkJPFPT7E6pUbwvOjJakoRHDiwv6BQKbXq8XwTtTsSRaUD9Ol2oOH/Ynbu6VZN
         S2HOT4veyBfOuQUw7MTUaYPZNWh7Cp/KJ4eOq7dvaH8wAeCa1gzPj09k9IETPlnjFhld
         dTlA==
X-Gm-Message-State: AJIora+2ZJNjUSSrXtz5X5YK4ld77xRIXu9otAvC4WwS/4zc2oraCF4U
	gsvVsh+0Kjaaz+tL8KrVDFkeng==
X-Google-Smtp-Source: AGRyM1vBnvXXHKQfLBKNriRwVeDZ8JKqFoDXG2qXIcwdge1wnrXP13gptGoFgCR+8DCzLOn6SlPKjA==
X-Received: by 2002:a05:6808:1a13:b0:335:870b:324e with SMTP id bk19-20020a0568081a1300b00335870b324emr697774oib.297.1656443107736;
        Tue, 28 Jun 2022 12:05:07 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id n17-20020a9d7111000000b0060b069325f2sm480492otj.63.2022.06.28.12.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 12:05:06 -0700 (PDT)
Date: Tue, 28 Jun 2022 16:05:01 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com, nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/7] media: Add P010 tiled format
Message-ID: <YrtQ3QPEGfbbllCG@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
 <20220616202513.351039-2-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616202513.351039-2-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_120510_242058_D98A3C7F 
X-CRM114-Status: GOOD (  16.95  )
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

Hi Jernej,

Thanks for the patch.

On Thu, Jun 16, 2022 at 10:25:07PM +0200, Jernej Skrabec wrote:
> From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> 
> Add P010 tiled format
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> [rebased and updated pixel format name]
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> ---
>  drivers/media/v4l2-core/v4l2-common.c | 1 +
>  drivers/media/v4l2-core/v4l2-ioctl.c  | 1 +
>  include/uapi/linux/videodev2.h        | 1 +

We also need to add the documentation in
Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst.

See Benjamin's patch for reference:

commit 5374d8fb75f313294c7d97e85c22bead34d63f2b
Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Date:   Thu May 19 08:11:46 2022 +0100

    media: Add P010 video format

    P010 is a YUV format with 10-bits per component with interleaved UV.

>  3 files changed, 3 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> index 1e38ad8906a2..e0fbe6ba4b6c 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -278,6 +278,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
>  
>  		/* Tiled YUV formats */
>  		{ .format = V4L2_PIX_FMT_NV12_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 2 },
> +		{ .format = V4L2_PIX_FMT_P010_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 2, 4, 0, 0 }, .hdiv = 2, .vdiv = 2 },
>  
>  		/* YUV planar formats, non contiguous variant */
>  		{ .format = V4L2_PIX_FMT_YUV420M, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 3, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv = 2, .vdiv = 2 },
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index e2526701294e..e24d38c0a178 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1310,6 +1310,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
>  	case V4L2_PIX_FMT_NV12_4L4:	descr = "Y/CbCr 4:2:0 (4x4 Linear)"; break;
>  	case V4L2_PIX_FMT_NV12_16L16:	descr = "Y/CbCr 4:2:0 (16x16 Linear)"; break;
>  	case V4L2_PIX_FMT_NV12_32L32:   descr = "Y/CbCr 4:2:0 (32x32 Linear)"; break;
> +	case V4L2_PIX_FMT_P010_4L4:	descr = "P010 tiled"; break;

I would make this "10-bit Y/CbCr 4:2:0 (4x4 Linear)".

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
