Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 119CEC3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 13:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJfaSwqttGzcez/+aIupKPQfZZ/9yiViAfMvKuoTUaY=; b=VpMKn567FkcO3F
	ddE6XWzKFdHar8SRJJdarz5zpx0QD/RRiPoSQH8edQ2NEY2n18ebI0ROy7/p6+kX9HqUIWlEJFdUM
	Do41zEr2bTsOX0Brj3S4aX+o8W6V686grxsFtLPIUyu0EpDblusVuY/ReMt8M+xHG+FiJ/wKTBPLh
	KX0Su7bQg0MB5CZiU7lzD25V0KJ2at/pH6f1bvRf1OFGsq4Z2CKJgK5ayfhXBu0cN9n0JW89Bn8//
	AiTXwrKGwoPsSaPmSASMPBXXZeriedHHUu5m9hMmIHaqSx4rbiAW2zIxkAoGmbe4h2f61vgcfEP3p
	trX0P7Ny9GFDSI3i95Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU4a4-0000000DsJa-0Al6;
	Wed, 17 Jul 2024 13:20:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU4a1-0000000DsJ3-1CQy
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jul 2024 13:20:26 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C0EA566F;
	Wed, 17 Jul 2024 15:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1721222382;
	bh=xJhLkxr8GnDgQcnn+eHP223Mwxx9xMB3r5nYZ1GfO+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DTfVQg2pJfN2MChipp5o9W1r+nGIszMo7TFQ1cno6bVQFczxr6jewddQKUrNLmty2
	 /A29AmhHq6zkes5zDtl+4xaiMVvGGls3MZscA2PdvxShxLy0HtpMjrfqsVYylk+MDQ
	 +v04F/g2H99vRU+LaqVGG+kN8qt5o4k4k23OI4lc=
Date: Wed, 17 Jul 2024 15:20:17 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar, 
	hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 1/2] media: videodev2: Add flags to unconditionnaly
 enumerate pixels formats
Message-ID: <2kbxr3hkjbcnaqescxmlcerziixg72icqpug6wa25eeggy2pnj@vqmxe4ojcwml>
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
 <20240717131430.159727-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240717131430.159727-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_062025_501677_7125C6CB 
X-CRM114-Status: GOOD (  31.44  )
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

Hi Benjamin

On Wed, Jul 17, 2024 at 03:14:29PM GMT, Benjamin Gaignard wrote:
> Add new flags to enumerate all pixels formats when calling VIDIOC_ENUM_FMT ioctl.
> When this V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag is set drivers must
> ignore the configuration and return the hardware supported pixel
> formats for the specified queue.
> To distinguish this particular enumeration case V4L2_FMT_FLAG_ALL_FORMATS
> flag must be set by the drivers to highlight support of this feature
> to user space applications.
> This will permit to discover which pixel formats are supported
> without setting codec-specific information so userland can more easily
> know if the driver suits its needs well.
> The main target are stateless decoders so update the documentation
> about how to use this flag.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> changes in version 4:
> - Explicitly document that the new flags are targeting mem2mem devices.
>
>  .../userspace-api/media/v4l/dev-stateless-decoder.rst |  6 ++++++
>  .../userspace-api/media/v4l/vidioc-enum-fmt.rst       | 11 +++++++++++
>  .../userspace-api/media/videodev2.h.rst.exceptions    |  2 ++
>  drivers/media/v4l2-core/v4l2-ioctl.c                  |  3 +++
>  include/uapi/linux/videodev2.h                        |  2 ++
>  5 files changed, 24 insertions(+)
>
> diff --git a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
> index 35ed05f2695e..b0b657de910d 100644
> --- a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
> +++ b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
> @@ -58,6 +58,12 @@ Querying capabilities
>       default values for these controls being used, and a returned set of formats
>       that may not be usable for the media the client is trying to decode.
>
> +   * If the ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS`` flag is set the driver must enumerate
> +     all the supported formats without taking care of codec-dependent controls
> +     set on the ``OUTPUT`` queue. To indicate that the driver has take care of this
> +     flag it must set ``V4L2_FMT_FLAG_ALL_FORMATS`` flag for each format while
> +     enumerating.
> +
>  3. The client may use :c:func:`VIDIOC_ENUM_FRAMESIZES` to detect supported
>     resolutions for a given format, passing desired pixel format in
>     :c:type:`v4l2_frmsizeenum`'s ``pixel_format``.
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> index 3adb3d205531..15bc2f59c05a 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> @@ -234,6 +234,17 @@ the ``mbus_code`` field is handled differently:
>  	valid. The buffer consists of ``height`` lines, each having ``width``
>  	Data Units of data and the offset (in bytes) between the beginning of
>  	each two consecutive lines is ``bytesperline``.
> +    * - ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS``
> +      - 0x0400
> +      - Set by userland applications to enumerate all possible pixel formats
> +        without taking care of any OUTPUT or CAPTURE queue configuration.
> +        This flag is relevant only for mem2mem devices.
> +    * - ``V4L2_FMT_FLAG_ALL_FORMATS``
> +      - 0x0800
> +      - Set by the driver to indicated that format have been enumerated because
> +        :ref:`V4L2_FMT_FLAG_ENUM_ALL_FORMATS <v4l2-pix-fmt-flag-set-csc>` has
> +        been set by the userland application.
> +        This flag is relevant only for mem2mem devices.

Thanks, however I think this can be wrapper on the previous line

>
>  Return Value
>  ============
> diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> index bdc628e8c1d6..7a3a1e9dc055 100644
> --- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> +++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> @@ -216,6 +216,8 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
>  replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
>  replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
>  replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
> +replace define V4L2_FMT_FLAG_ENUM_ALL_FORMATS fmtdesc-flags
> +replace define V4L2_FMT_FLAG_ALL_FORMATS fmtdesc-flags
>
>  # V4L2 timecode types
>  replace define V4L2_TC_TYPE_24FPS timecode-type
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index 4c76d17b4629..5785a98b6ba2 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1569,6 +1569,7 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
>  	int ret = check_fmt(file, p->type);
>  	u32 mbus_code;
>  	u32 cap_mask;
> +	u32 flags;
>
>  	if (ret)
>  		return ret;
> @@ -1578,8 +1579,10 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
>  		p->mbus_code = 0;
>
>  	mbus_code = p->mbus_code;
> +	flags = p->flags & V4L2_FMT_FLAG_ENUM_ALL_FORMATS;
>  	memset_after(p, 0, type);
>  	p->mbus_code = mbus_code;
> +	p->flags = flags;

Won't this set V4L2_FMT_FLAG_ENUM_ALL_FORMATS (if present) in the
flags returned to userspace ? Shouldn't be drivers to set
V4L2_FMT_FLAG_ALL_FORMATS instead ?

>
>  	switch (p->type) {
>  	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index fe6b67e83751..b6a5da79ba21 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -886,6 +886,8 @@ struct v4l2_fmtdesc {
>  #define V4L2_FMT_FLAG_CSC_HSV_ENC		V4L2_FMT_FLAG_CSC_YCBCR_ENC
>  #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
>  #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
> +#define V4L2_FMT_FLAG_ENUM_ALL_FORMATS		0x0400
> +#define V4L2_FMT_FLAG_ALL_FORMATS		0x0800
>
>  	/* Frame Size and frame rate enumeration */
>  /*
> --
> 2.43.0
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
