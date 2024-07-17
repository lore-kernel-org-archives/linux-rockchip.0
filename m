Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FABDC3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 14:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HuQRidF3VCbqh/H7jOlb2ahGRVBdCneOnMw/8dp+V/E=; b=YQHEslSSlCYGAx8L1wHOty7NLc
	8NW+3WmByD1OZHmwjK9U3E9JZhvCc4WMGizpovMHOkzYj6WSBxOjn49qU8yHeW7WpZbDZcdK5wze0
	XCZ1J1WEz1HOuVY/M+jYIeAb7jNSqckEI9Gl826Ptb9azazY8FyxIXj6NVvBXxq47Y2YMif5tx3lF
	sxlgmHdhLHVOw2QImnUR24AzCcvGaVX50v6Y79qI9XPiNzENtpJ0FuBsRqLcysIX/9eQGPNHgBAgC
	YkuabEjIlY70Y9kJr5AdRDye77NV1EnVDeP1ejfAMEBsqkGsVj1CF035Cc0Ohv/7mUSYbQr8MBzZ2
	H52md0Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU5sF-0000000E5ZQ-2jGO;
	Wed, 17 Jul 2024 14:43:19 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU5rv-0000000E5Qm-2U1L
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jul 2024 14:43:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721227375;
	bh=cccVxBTPud8hM9u250atblJDaR2wMmy2oA5nrWm3yk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bMvzMlm0E6roSFNC/u8TkdnnGe108MXRx8KH1W9jVutPrigEPTb7lI0k5qtUZaezq
	 8ntOi2OtewxI/s1PWpBg1Lm/Dn7gA7Lx5/GYke25kG/GbZufjqqxNDO0TSNF4tMMix
	 eUPtIZXrkyy13ya2BWsIC5Sj2VvHGxPBVhfUmGHMI3cNljqJkFZbVy33n5fYiM06wU
	 7/9rvD/A0BKTeOhFDZ6h20wgJhdSOZXgbMb6KcAHLnHgRefpwxtuFhNUzjdkSg0nmi
	 mBB42Xitv3kZMqhxj8AlvUa+7/u7hlHWL7ezQGYAgArBHCt97WA7FUx6Ks0aPDqV+U
	 +39KRr14Dg8iw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C7A183780523;
	Wed, 17 Jul 2024 14:42:54 +0000 (UTC)
Date: Wed, 17 Jul 2024 16:42:53 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v4 1/2] media: videodev2: Add flags to unconditionnaly
 enumerate pixels formats
Message-ID: <20240717144253.rga2gda6mkfclgmz@basti-XPS-13-9310>
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
 <20240717131430.159727-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240717131430.159727-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_074300_013515_6FB26CF4 
X-CRM114-Status: GOOD (  21.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Benjamin,

typos in the subject line:

s/unconditionnaly/unconditionally/
s/pixels/pixel/

On 17.07.2024 15:14, Benjamin Gaignard wrote:
>Add new flags to enumerate all pixels formats when calling VIDIOC_ENUM_FMT ioctl.

s/pixels/pixel/

>When this V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag is set drivers must
>ignore the configuration and return the hardware supported pixel
>formats for the specified queue.
>To distinguish this particular enumeration case V4L2_FMT_FLAG_ALL_FORMATS
>flag must be set by the drivers to highlight support of this feature
>to user space applications.
>This will permit to discover which pixel formats are supported
>without setting codec-specific information so userland can more easily
>know if the driver suits its needs well.
>The main target are stateless decoders so update the documentation
>about how to use this flag.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
>changes in version 4:
>- Explicitly document that the new flags are targeting mem2mem devices.
>
> .../userspace-api/media/v4l/dev-stateless-decoder.rst |  6 ++++++
> .../userspace-api/media/v4l/vidioc-enum-fmt.rst       | 11 +++++++++++
> .../userspace-api/media/videodev2.h.rst.exceptions    |  2 ++
> drivers/media/v4l2-core/v4l2-ioctl.c                  |  3 +++
> include/uapi/linux/videodev2.h                        |  2 ++
> 5 files changed, 24 insertions(+)
>
>diff --git a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
>index 35ed05f2695e..b0b657de910d 100644
>--- a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
>+++ b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
>@@ -58,6 +58,12 @@ Querying capabilities
>      default values for these controls being used, and a returned set of formats
>      that may not be usable for the media the client is trying to decode.
>
>+   * If the ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS`` flag is set the driver must enumerate
>+     all the supported formats without taking care of codec-dependent controls
>+     set on the ``OUTPUT`` queue. To indicate that the driver has take care of this
>+     flag it must set ``V4L2_FMT_FLAG_ALL_FORMATS`` flag for each format while
>+     enumerating.
>+
> 3. The client may use :c:func:`VIDIOC_ENUM_FRAMESIZES` to detect supported
>    resolutions for a given format, passing desired pixel format in
>    :c:type:`v4l2_frmsizeenum`'s ``pixel_format``.
>diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>index 3adb3d205531..15bc2f59c05a 100644
>--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>@@ -234,6 +234,17 @@ the ``mbus_code`` field is handled differently:
> 	valid. The buffer consists of ``height`` lines, each having ``width``
> 	Data Units of data and the offset (in bytes) between the beginning of
> 	each two consecutive lines is ``bytesperline``.
>+    * - ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS``
>+      - 0x0400
>+      - Set by userland applications to enumerate all possible pixel formats
>+        without taking care of any OUTPUT or CAPTURE queue configuration.
>+        This flag is relevant only for mem2mem devices.
>+    * - ``V4L2_FMT_FLAG_ALL_FORMATS``
>+      - 0x0800
>+      - Set by the driver to indicated that format have been enumerated because

s/indicated/indicate/

Also, either: "..that a format has been.." or "..that formats have been.."
but not "..that format have been.."

Regards,
Sebastian

>+        :ref:`V4L2_FMT_FLAG_ENUM_ALL_FORMATS <v4l2-pix-fmt-flag-set-csc>` has
>+        been set by the userland application.
>+        This flag is relevant only for mem2mem devices.
>
> Return Value
> ============
>diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>index bdc628e8c1d6..7a3a1e9dc055 100644
>--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>@@ -216,6 +216,8 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
> replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
> replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
> replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
>+replace define V4L2_FMT_FLAG_ENUM_ALL_FORMATS fmtdesc-flags
>+replace define V4L2_FMT_FLAG_ALL_FORMATS fmtdesc-flags
>
> # V4L2 timecode types
> replace define V4L2_TC_TYPE_24FPS timecode-type
>diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
>index 4c76d17b4629..5785a98b6ba2 100644
>--- a/drivers/media/v4l2-core/v4l2-ioctl.c
>+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
>@@ -1569,6 +1569,7 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
> 	int ret = check_fmt(file, p->type);
> 	u32 mbus_code;
> 	u32 cap_mask;
>+	u32 flags;
>
> 	if (ret)
> 		return ret;
>@@ -1578,8 +1579,10 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
> 		p->mbus_code = 0;
>
> 	mbus_code = p->mbus_code;
>+	flags = p->flags & V4L2_FMT_FLAG_ENUM_ALL_FORMATS;
> 	memset_after(p, 0, type);
> 	p->mbus_code = mbus_code;
>+	p->flags = flags;
>
> 	switch (p->type) {
> 	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
>diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
>index fe6b67e83751..b6a5da79ba21 100644
>--- a/include/uapi/linux/videodev2.h
>+++ b/include/uapi/linux/videodev2.h
>@@ -886,6 +886,8 @@ struct v4l2_fmtdesc {
> #define V4L2_FMT_FLAG_CSC_HSV_ENC		V4L2_FMT_FLAG_CSC_YCBCR_ENC
> #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
> #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
>+#define V4L2_FMT_FLAG_ENUM_ALL_FORMATS		0x0400
>+#define V4L2_FMT_FLAG_ALL_FORMATS		0x0800
>
> 	/* Frame Size and frame rate enumeration */
> /*
>-- 
>2.43.0
>
>_______________________________________________
>Kernel mailing list -- kernel@mailman.collabora.com
>To unsubscribe send an email to kernel-leave@mailman.collabora.com
>This list is managed by https://mailman.collabora.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
