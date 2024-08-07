Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF8BEC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 08:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0ng82ef9k7mttGiVLRAMj/5GeRj1kemRKZNWA7YQik=; b=X5HMSoeIBDcKTA
	VK41juUEg0UAIX46Hi0O0l+aoVQ83/1J929VFDxEDRgwslFJavgIZEYlEEmiCZ4l58YdZJ6b2ekmJ
	C+NO3a6/ECNtty6E0kwjWXldRPs6GI6JZt88EFt7dp3k/COyfGdIZbDA1VXuHA9R06SPjd2VxQj9M
	/QceeZwg5MgT61+gah3QzCk7YLArkRlq7XuFvCFzoJxOykJxF55No8kpxu6IObWPTjG1Zia0ksDD2
	KHS09cjan3lMi2hwhY0LRO7xErXWMFk2GwbblBqAqVMWmcbCQ9qaNGhGy3jHeFuO8HhVpZodqZhaP
	RTTRA6OZ1bIGQCBH494g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbcDC-00000004PD4-2BIw;
	Wed, 07 Aug 2024 08:40:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbcD9-00000004PBh-07yY
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 08:40:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 28C1B60FC8;
	Wed,  7 Aug 2024 08:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 997C3C32782;
	Wed,  7 Aug 2024 08:39:56 +0000 (UTC)
Message-ID: <c9e6ed97-bb42-465a-9bce-797adb44906f@xs4all.nl>
Date: Wed, 7 Aug 2024 10:39:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] media: videodev2: Add flag to unconditionally
 enumerate pixel formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
 <20240731093457.29095-2-benjamin.gaignard@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20240731093457.29095-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_013959_238408_AE96D5DF 
X-CRM114-Status: GOOD (  23.36  )
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

On 31/07/2024 11:34, Benjamin Gaignard wrote:
> When the index is ORed with V4L2_FMTDESC_FLAG_ENUM_ALL the
> driver clears the flag and enumerate all the possible formats,
> ignoring any limitations from the current configuration.
> Drivers which do not support this flag yet always return an EINVAL.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> change in version 6:
> - Change flag name.
> - Improve documentation.
> 
>  .../userspace-api/media/v4l/vidioc-enum-fmt.rst  | 16 +++++++++++++++-
>  .../media/videodev2.h.rst.exceptions             |  1 +
>  include/uapi/linux/videodev2.h                   |  3 +++
>  3 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> index 3adb3d205531..1112dc9044b2 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> @@ -85,7 +85,15 @@ the ``mbus_code`` field is handled differently:
>      * - __u32
>        - ``index``
>        - Number of the format in the enumeration, set by the application.
> -	This is in no way related to the ``pixelformat`` field.
> +        This is in no way related to the ``pixelformat`` field.
> +        When the index is ORed with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` the
> +        driver clears the flag and enumerate all the possible formats,

enumerate -> enumerates

> +        ignoring any limitations from the current configuration. Drivers
> +        which do not support this flag yet always return an ``EINVAL``

Drop the 'yet'.

But this raises a question: should this flag only be supported by drivers
that can actually return different format lists depending on this flag?

Or can it be supported as well by a driver where this makes no difference?

I'm inclined to limit it to drivers that actually can return different
results. If nothing else, that will indicate to the application that this
is actually possible.

If we agree on that, then that should be documented as well.

> +        error code.
> +        Formats enumerated when using ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
> +        shouldn't be used when calling :c:func:`VIDIOC_ENUM_FRAMESIZES`
> +        or :c:func:`VIDIOC_ENUM_FRAMEINTERVALS`.
>      * - __u32
>        - ``type``
>        - Type of the data stream, set by the application. Only these types
> @@ -234,6 +242,12 @@ the ``mbus_code`` field is handled differently:
>  	valid. The buffer consists of ``height`` lines, each having ``width``
>  	Data Units of data and the offset (in bytes) between the beginning of
>  	each two consecutive lines is ``bytesperline``.
> +    * - ``V4L2_FMTDESC_FLAG_ENUM_ALL``
> +      - 0x80000000
> +      - When the applications ORs ``index`` with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
> +        the driver enumerates all the possible pixel formats without taking care
> +        of any already set configuration. Drivers which do not support this flag
> +        yet, always return ``EINVAL``.

Drop 'yet'

>  
>  Return Value
>  ============
> diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> index bdc628e8c1d6..0a9ea9686c24 100644
> --- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> +++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> @@ -216,6 +216,7 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
>  replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
>  replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
>  replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
> +replace define V4L2_FMTDESC_FLAG_ENUM_ALL fmtdesc-flags
>  
>  # V4L2 timecode types
>  replace define V4L2_TC_TYPE_24FPS timecode-type
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 4e91362da6da..421a30cb0c51 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -904,6 +904,9 @@ struct v4l2_fmtdesc {
>  #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
>  #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
>  
> +/*  Format description flag, to be ORed with the index */
> +#define V4L2_FMTDESC_FLAG_ENUM_ALL		0x80000000
> +
>  	/* Frame Size and frame rate enumeration */
>  /*
>   *	F R A M E   S I Z E   E N U M E R A T I O N

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
