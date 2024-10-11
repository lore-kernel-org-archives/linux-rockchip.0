Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D0CD0D791
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 13:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xodvz9zh1rtKx2HfRJ5YwpGYrww0cmZeXU/fLrME/mw=; b=tSp2LC6hv3CSkH
	dADSAW71EFSOcIMd2hLAikz+fzXtcDMVKu+UlWutLd/1Jjf8zvF8JIUBo5GAT7tjTRSSB+i8ocdhZ
	L6tHdjqUoGGu2gQhQYLRVApdjqyHJ8Z81diUR2nsnOwI4VatCxUy/hyeNzIWa7cDYseRKuZGPX7Dx
	jaodsmuVqkGbkOvWINwT3m2DSK803/f4JjE6VBNuezpp57dvAqB9D7S7B5JEu5s9Vl8DRVSnglpQD
	i/Ws55cMqZDkWL9qThoOTfZf3caBkev4PK8+AaSb5wRWVZTnNEiTr/L6+IDb5EHxzi8ksJsKZh3hv
	nfk83iN/0tNImCfUmo2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szFvg-0000000GUZH-1dbu;
	Fri, 11 Oct 2024 13:43:40 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szFiB-0000000GS64-1sFz
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 13:29:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B2233A44407;
	Fri, 11 Oct 2024 13:29:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6F09C4CEC7;
	Fri, 11 Oct 2024 13:29:40 +0000 (UTC)
Message-ID: <250bf825-7e64-4132-9c70-fa25c5976ed3@xs4all.nl>
Date: Fri, 11 Oct 2024 15:29:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/3] media: videodev2: Add flag to unconditionally
 enumerate pixel formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240826172407.140538-1-benjamin.gaignard@collabora.com>
 <010201918fb77141-93148d3e-6899-4b09-bff3-5d4f146f1449-000000@eu-west-1.amazonses.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <010201918fb77141-93148d3e-6899-4b09-bff3-5d4f146f1449-000000@eu-west-1.amazonses.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_062943_624481_0D96277F 
X-CRM114-Status: GOOD (  23.76  )
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

Hi Benjamin,

On 26/08/2024 19:24, Benjamin Gaignard wrote:
> When the index is ORed with V4L2_FMTDESC_FLAG_ENUM_ALL the
> driver clears the flag and enumerate all the possible formats,
> ignoring any limitations from the current configuration.
> Drivers which do not support this flag yet always return an EINVAL.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> change in version 7:
> - Rework documentation about which drivers should use the flag
> 
>  .../media/v4l/vidioc-enum-fmt.rst              | 18 +++++++++++++++++-
>  .../media/videodev2.h.rst.exceptions           |  1 +
>  include/uapi/linux/videodev2.h                 |  3 +++
>  3 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> index 3adb3d205531..e39c87bcbfc3 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> @@ -85,7 +85,17 @@ the ``mbus_code`` field is handled differently:
>      * - __u32
>        - ``index``
>        - Number of the format in the enumeration, set by the application.
> -	This is in no way related to the ``pixelformat`` field.
> +        This is in no way related to the ``pixelformat`` field.
> +        When the index is ORed with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` the
> +        driver clears the flag and enumerates all the possible formats,
> +        ignoring any limitations from the current configuration. Drivers
> +        which do not support this flag always return an ``EINVAL``
> +        error code.

I would like to add: " without clearing this flag."

> +        Formats enumerated when using ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
> +        shouldn't be used when calling :c:func:`VIDIOC_ENUM_FRAMESIZES`
> +        or :c:func:`VIDIOC_ENUM_FRAMEINTERVALS`.
> +        ``V4L2_FMTDESC_FLAG_ENUM_ALL`` should only be used by drivers that
> +        can return different format list depending on this flag.
>      * - __u32
>        - ``type``
>        - Type of the data stream, set by the application. Only these types
> @@ -234,6 +244,12 @@ the ``mbus_code`` field is handled differently:
>  	valid. The buffer consists of ``height`` lines, each having ``width``
>  	Data Units of data and the offset (in bytes) between the beginning of
>  	each two consecutive lines is ``bytesperline``.
> +    * - ``V4L2_FMTDESC_FLAG_ENUM_ALL``
> +      - 0x80000000
> +      - When the applications ORs ``index`` with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
> +        the driver enumerates all the possible pixel formats without taking care
> +        of any already set configuration. Drivers which do not support this flag,
> +        always return ``EINVAL``.

Ditto.

If you agree, then I can make that change myself, no need to post a new version.

Regards,

	Hans

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


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
