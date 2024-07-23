Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 256DDC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 09:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uQCHrbJV9BS6RPe3Dm7PZBaKt0ym1bjiBAlpRIQYU4c=; b=xpSSqbExa6ozBPKOBjBRsz6fMS
	UhXjd2LAVgZmsRxPf8YsL6gEJJlNSS5snZ4V4iUTx3BU8cU81Z/jMMZ9QtuiGxpjkL3reK9z2qOMG
	4HbeozuVWRrsS8sU8eVzfjxisSwOpK27gIMVgquH8W6lxpdbXeiJKuxGBOYN6TpBBlYNV543tyURp
	yTkzqFJe52q0CXqFyqP2JlvNdp1mqU/LsuihfB70o1RNVC5aL0StG5C5uJVMK3XY7NVy6NlAMeK8q
	ID+gRda5GF+PP5lBqXKChIWFwQYKSGDZXbQT8aHoJ1JdlwESP3HU6XSdXHj6Y+5ak16WtHSoK4iDT
	wtnSSjOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWBNy-0000000Buqz-26DD;
	Tue, 23 Jul 2024 09:00:42 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWBNu-0000000Buq2-07aV
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jul 2024 09:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721725233;
	bh=jfLE9tpnZChXcVn8NYHzUuHrYd/r/GTpbk7NGi3GtOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rOhQ3otYyKYfJ8hOJSPsZ9L3itr87QK9ScTyIpWs5hSVTiTao5b2E9JzzHSkqMIXk
	 lxd+aQdaZy0IQvOwPq8KEa0X1Vsc33MgjI0GkJCUgomnlXuudyqcyJyd6lk8uYlg+p
	 Ygx99gDG+Bgrw2rzQWn0gZv3OmvR4vR3hC2qJxO12L+aavT4p1Pyrtx0la2iu0uahh
	 FNpjGGBtNNMTDDhOGuFLZeR8oR4wQa0dW/Dogs64djjxSQqF6xrg7j7OxUtq7iZIo5
	 SwlRzYbSeJdUh+clBGd0jSOY6CA65wBGSh5EnbNxaNYxs1tic+HNM8CUkq++aWkc5B
	 q9mW+nReEUYcw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 49EF13780EC6;
	Tue, 23 Jul 2024 09:00:33 +0000 (UTC)
Date: Tue, 23 Jul 2024 11:00:32 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v5 1/3] media: videodev2: Add flag to unconditionnaly
 enumerate pixels formats
Message-ID: <20240723090032.x24ezk5vgihaf6z3@basti-XPS-13-9310>
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
 <20240722150523.149667-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240722150523.149667-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_020038_391192_E9908830 
X-CRM114-Status: GOOD (  15.40  )
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

in the subject line:

s/unconditionnaly enumerate pixels/unconditionally enumerate pixel/

On 22.07.2024 17:05, Benjamin Gaignard wrote:
>When the index field is ORed with V4L2_FMT_FLAG_ENUM_ALL the driver

s/is ORed with/is set with/ (same meaning but a lot less confusing)

>will ignore any configuration and enumerate all the possible formats.
>Drivers which do not support this flag yet always return an EINVAL

s/yet always/yet, always/

>error code.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
>changes in version 5:
>- Reset the proposal to follow Hans's advices
>- Add new flag to be used with index field.
>
> .../userspace-api/media/v4l/vidioc-enum-fmt.rst      | 12 +++++++++++-
> .../userspace-api/media/videodev2.h.rst.exceptions   |  1 +
> include/uapi/linux/videodev2.h                       |  3 +++
> 3 files changed, 15 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>index 3adb3d205531..12e1e65e6a71 100644
>--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>@@ -85,7 +85,11 @@ the ``mbus_code`` field is handled differently:
>     * - __u32
>       - ``index``
>       - Number of the format in the enumeration, set by the application.
>-	This is in no way related to the ``pixelformat`` field.
>+        This is in no way related to the ``pixelformat`` field. When the
>+        index is ORed with V4L2_FMT_FLAG_ENUM_ALL the driver will ignore

s/ORed/set/ (same as above)

>+        any configuration and enumerate all the possible formats. Drivers
>+        which do not support this flag yet always return an ``EINVAL``

s/yet always/yet, always/

>+        error code.
>     * - __u32
>       - ``type``
>       - Type of the data stream, set by the application. Only these types
>@@ -234,6 +238,12 @@ the ``mbus_code`` field is handled differently:
> 	valid. The buffer consists of ``height`` lines, each having ``width``
> 	Data Units of data and the offset (in bytes) between the beginning of
> 	each two consecutive lines is ``bytesperline``.
>+    * - ``V4L2_FMT_FLAG_ENUM_ALL``
>+      - 0x80000000
>+      - When the applications ORs ``index`` with ``V4L2_FMT_FLAG_ENUM_ALL`` flag

s/applications/application/
s/ORs/sets/

>+        the driver enumerates all the possible pixel formats without taking care
>+        of any already set configuration. Drivers which do not support this flag
>+        yet always return ``EINVAL``.

s/yet always/yet, always/

>
> Return Value
> ============
>diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>index bdc628e8c1d6..8dc10a500fc6 100644
>--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>@@ -216,6 +216,7 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
> replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
> replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
> replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
>+replace define V4L2_FMT_FLAG_ENUM_ALL fmtdesc-flags
>
> # V4L2 timecode types
> replace define V4L2_TC_TYPE_24FPS timecode-type
>diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
>index 4e91362da6da..3d11f91273a1 100644
>--- a/include/uapi/linux/videodev2.h
>+++ b/include/uapi/linux/videodev2.h
>@@ -904,6 +904,9 @@ struct v4l2_fmtdesc {
> #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
> #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
>
>+/*  Format description flag, to be ORed with the index */

s/ORed/set/

Regards,
Sebastian

>+#define V4L2_FMT_FLAG_ENUM_ALL			0x80000000
>+
> 	/* Frame Size and frame rate enumeration */
> /*
>  *	F R A M E   S I Z E   E N U M E R A T I O N
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
