Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43CEBC3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Eb8IeK29oJ+xBhlb3jq4WQEgoy6ye/4DMSa/vC/wFU=; b=FhUx1QUdVbfbtl
	PSECutUznG4DG0QTnqVAMz4sgBvJZBF2pTIvL2SNGheur4rK05jbrrs2Ln07A71fuReQhrY3/ssA4
	3PsjeygK7ceNjrqOxqkeOJ3syPNqJwRTmnKNyfJi2LRD1DDe8d5+SBQHQCjWzFpKlqw8XvpWdbCR+
	y52egRHbwsXUlpzy+lVvzlvtWuHDZ6aOg9wko3L0NXSUBofztCgyj8tIdfmXtYWPp7wdSH6WcP+Rt
	4lMgbvrDW7E/1P8KtuGpbMkzwGfdH+fjmVQziUbeGAu22Fm56SQ0SE9cNetY5sdBSPqs/jT3ZyKyj
	dHoTk64vigiuMfQoBSog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYgyB-0000000Dw5C-1E9a;
	Tue, 30 Jul 2024 07:08:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYgy8-0000000Dw4Q-1BJZ
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 07:08:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C870B61B77;
	Tue, 30 Jul 2024 07:08:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41CB5C32782;
	Tue, 30 Jul 2024 07:08:21 +0000 (UTC)
Message-ID: <0b4e2f13-8d79-4931-b868-6100f8b8893f@xs4all.nl>
Date: Tue, 30 Jul 2024 09:08:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] media: videodev2: Add flag to unconditionnaly
 enumerate pixels formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
 <20240722150523.149667-2-benjamin.gaignard@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20240722150523.149667-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_000824_494291_3C18FCAA 
X-CRM114-Status: GOOD (  23.28  )
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

On 22/07/2024 17:05, Benjamin Gaignard wrote:
> When the index field is ORed with V4L2_FMT_FLAG_ENUM_ALL the driver
> will ignore any configuration and enumerate all the possible formats.
> Drivers which do not support this flag yet always return an EINVAL
> error code.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> changes in version 5:
> - Reset the proposal to follow Hans's advices
> - Add new flag to be used with index field.
> 
>  .../userspace-api/media/v4l/vidioc-enum-fmt.rst      | 12 +++++++++++-
>  .../userspace-api/media/videodev2.h.rst.exceptions   |  1 +
>  include/uapi/linux/videodev2.h                       |  3 +++
>  3 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> index 3adb3d205531..12e1e65e6a71 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> @@ -85,7 +85,11 @@ the ``mbus_code`` field is handled differently:
>      * - __u32
>        - ``index``
>        - Number of the format in the enumeration, set by the application.
> -	This is in no way related to the ``pixelformat`` field.
> +        This is in no way related to the ``pixelformat`` field. When the

You need to start a new paragraph before 'When'. Otherwise you might read
that the 'When' sentence is somehow related to the previous sentence.

> +        index is ORed with V4L2_FMT_FLAG_ENUM_ALL the driver will ignore
> +        any configuration and enumerate all the possible formats. Drivers

I'd rephrase this a little bit:

the driver will enumerate all the possible formats, ignoring any limitations
from the current configuration.

And after that I would like to see an example of a use-case.

> +        which do not support this flag yet always return an ``EINVAL``
> +        error code.
>      * - __u32
>        - ``type``
>        - Type of the data stream, set by the application. Only these types
> @@ -234,6 +238,12 @@ the ``mbus_code`` field is handled differently:
>  	valid. The buffer consists of ``height`` lines, each having ``width``
>  	Data Units of data and the offset (in bytes) between the beginning of
>  	each two consecutive lines is ``bytesperline``.
> +    * - ``V4L2_FMT_FLAG_ENUM_ALL``

I am not really happy with this name since the prefix is identical to that
of other V4L2_FMT_FLAG_ defines. How about: V4L2_FMTDESC_FLAG_ENUM_ALL?
Or V4L2_FMT_IDX_ENUM_ALL?

> +      - 0x80000000
> +      - When the applications ORs ``index`` with ``V4L2_FMT_FLAG_ENUM_ALL`` flag
> +        the driver enumerates all the possible pixel formats without taking care
> +        of any already set configuration. Drivers which do not support this flag
> +        yet always return ``EINVAL``.
>  
>  Return Value
>  ============
> diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> index bdc628e8c1d6..8dc10a500fc6 100644
> --- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> +++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> @@ -216,6 +216,7 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
>  replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
>  replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
>  replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
> +replace define V4L2_FMT_FLAG_ENUM_ALL fmtdesc-flags
>  
>  # V4L2 timecode types
>  replace define V4L2_TC_TYPE_24FPS timecode-type
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 4e91362da6da..3d11f91273a1 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -904,6 +904,9 @@ struct v4l2_fmtdesc {
>  #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
>  #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
>  
> +/*  Format description flag, to be ORed with the index */
> +#define V4L2_FMT_FLAG_ENUM_ALL			0x80000000
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
