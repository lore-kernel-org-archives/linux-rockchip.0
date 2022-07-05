Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D64D5C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 15:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoKMYLpCF3wBGAPIeYSwhKWmUqcw8+5zqj7QuhUDLe4=; b=nTAY89kWXmoOqQ
	leKu/cg39n/oLNzylN8u4o6FTfGPSgYmb5Z/13AdH3HFj7kiKIgASWW8UEQU/rNsygFJQpQmia5xi
	+KmganewDKWLWf4P5tQzUqYj5Wt0FmqkXwJJ02m00bgR1Op2DvT9lxeI9QgO3EsLF5GHIiqjDPnlP
	J0BHnZbJcydvkpjrpoaM1epk+G6/dAoVt6MfXn+pp1polmA6YhpEKM42vzdDROiB0giM5zEPp6Ebb
	mM8j7z93w/daTzbk9VvqrYHaasuK5c+quduKGcVa4DPJLB8v1hTZDBORBrgz8+mSgwrU/3qf42/5d
	mA6fdRMOn3P1pZBS2XgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kgf-001E9J-9e; Tue, 05 Jul 2022 15:42:05 +0000
Received: from mail-vs1-xe2f.google.com ([2607:f8b0:4864:20::e2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kgZ-001E5k-JU
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 15:42:03 +0000
Received: by mail-vs1-xe2f.google.com with SMTP id o13so12295059vsn.4
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 08:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=aOSlQwGHqHMk9jCb7FPi1YVKKmzo7IkyF9AxYI+HMwc=;
        b=lEWYc0FJmy7xsUlF/XqFFqDpLao+GFseZKedmcnA0vAJuySut4DrLfOe39xKBsH1ri
         cK/6c74WRGCa3t8DbnHiI6xGbwa1T7IpbQxrR1hwxOeWrVxeGu+CB2uMFg9dEGmkPUHX
         Zpwm384wCGRHWdyWYJKrwfDI3MZbjFrMQfroX4F2tGKFRSCquCWo5/i4s9GisyD7zcnM
         FVmZPZDlDOJqvuWlo1CSqfb+c5XpXSCMWnCeiQvSfs/LtubdJ40SLsSn5KiUB9vIdOet
         IMMVfLLV/3InoUMEisC63P1q55YiKizx0nlc+GPDEBtLHxB2YMrasGSgGJVCVZZOO+mA
         7xHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aOSlQwGHqHMk9jCb7FPi1YVKKmzo7IkyF9AxYI+HMwc=;
        b=O4e5+jOwpZfjvmI56eO/pxrHWwSJlD2cvdNgW0xBk/myfCUucsdqTqIJ3gOmL4057d
         RLsqnPNQho+AtdNQ+4Nev9t0mXPzrtKyY3feXyENKP2OFbanFN65Ugzn7/xl5SOE9A3+
         Y2AGI50IC7K0WKjpl7jldIKqjOjTbdX4ZHOjbfrB03knAHZQyBD6zVdgQZs3RbbgErSi
         tYziZHqNrRBe1mf5/HL/BHDmxsT2Y39FR5hJ+Th+Iv0g/hv+eLI4zdsHIVwbFGEAcgRW
         gU9hbgc6KjPPste3jlNV1vKkSq0LnIsWUXUMag3M6sHwrPLmSWnraAlI1Y3ts8RHHCg7
         gyCQ==
X-Gm-Message-State: AJIora9UfLNf/VcxzKw1PzBasUPip1HlCds/+MghPAo06SC9T8Iaaoqd
	hPSLqyuCkazOzgI6BQmplVRGng==
X-Google-Smtp-Source: AGRyM1um77GB4FnVI9AhmpdjQZMc0MTu0qqLKDXNb5ztuNGuTH/WhZIyDFVsPgWlx34rbCdsVJ0Dpw==
X-Received: by 2002:a05:6102:3ec7:b0:356:cbdf:122d with SMTP id n7-20020a0561023ec700b00356cbdf122dmr5234167vsv.9.1657035718331;
        Tue, 05 Jul 2022 08:41:58 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id m11-20020a1fa30b000000b0036fbf614bb3sm6234190vke.19.2022.07.05.08.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 08:41:57 -0700 (PDT)
Date: Tue, 5 Jul 2022 12:41:51 -0300
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
Subject: Re: [PATCH v10 10/17] media: uapi: Move parsed HEVC pixel format out
 of staging
Message-ID: <YsRbv7VLqYFSNIJA@eze-laptop>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
 <20220705085420.272912-11-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705085420.272912-11-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_084159_706986_EDF94A35 
X-CRM114-Status: GOOD (  17.15  )
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

On Tue, Jul 05, 2022 at 10:54:13AM +0200, Benjamin Gaignard wrote:
> Move HEVC pixel format since we are ready to stabilize the uAPI
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  Documentation/userspace-api/media/v4l/pixfmt-compressed.rst | 5 -----
>  include/media/hevc-ctrls.h                                  | 3 ---
>  include/uapi/linux/videodev2.h                              | 1 +
>  3 files changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
> index 967fc803ef94..c352d91a73d8 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
> @@ -215,11 +215,6 @@ Compressed Formats
>  	See the :ref:`associated Codec Control IDs <v4l2-mpeg-hevc>`.
>  	Buffers associated with this pixel format must contain the appropriate
>  	number of macroblocks to decode a full corresponding frame.
> -
> -	.. note::
> -
> -	   This format is not yet part of the public kernel API and it
> -	   is expected to change.
>      * .. _V4L2-PIX-FMT-FWHT:
>  
>        - ``V4L2_PIX_FMT_FWHT``
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 341fc795d550..a372c184689e 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -13,9 +13,6 @@
>  
>  #include <linux/videodev2.h>
>  
> -/* The pixel format isn't stable at the moment and will likely be renamed. */
> -#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC parsed slices */
> -
>  #define V4L2_CID_STATELESS_HEVC_SPS		(V4L2_CID_CODEC_BASE + 1008)
>  #define V4L2_CID_STATELESS_HEVC_PPS		(V4L2_CID_CODEC_BASE + 1009)
>  #define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS	(V4L2_CID_CODEC_BASE + 1010)
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 9018aa984db3..37f9f23a67fe 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -712,6 +712,7 @@ struct v4l2_pix_format {
>  #define V4L2_PIX_FMT_FWHT     v4l2_fourcc('F', 'W', 'H', 'T') /* Fast Walsh Hadamard Transform (vicodec) */
>  #define V4L2_PIX_FMT_FWHT_STATELESS     v4l2_fourcc('S', 'F', 'W', 'H') /* Stateless FWHT (vicodec) */
>  #define V4L2_PIX_FMT_H264_SLICE v4l2_fourcc('S', '2', '6', '4') /* H264 parsed slices */
> +#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC parsed slices */
>  
>  /*  Vendor-specific formats   */
>  #define V4L2_PIX_FMT_CPIA1    v4l2_fourcc('C', 'P', 'I', 'A') /* cpia1 YUV */
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
