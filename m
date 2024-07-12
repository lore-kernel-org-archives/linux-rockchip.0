Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9D10C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 10:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMzJoVRVh8yqO4ab+TEWgN61M5urDdABMQFh4LCHXvU=; b=Te5jchqVstT5X5
	ZSltiaj+FZFkgVaVFndbbPW4L8Tw4pxRSC+Lt6fzJ1Zvb1swdrfoDwauS5+sWaC1stylH479lt/4d
	6rZ8g4Y8jJgh8+DOlNxWx6rOOKMayQsN5sQoP5UxqKvvU2fJUcqDaCBOQj3L/bcZLrONjcV/o27p5
	ESy+mR4kxShf8qzGVhjaAHzBrtX1SzYEbYx1xszseKUXKcKhKM3tmHqOnJidqZ1xJNIG5aKuJUs2T
	WZYJ9oNcFqLgnBdUP5LoyONQO9+HOl0s8osFx9f23tqbSHA/xdlMlnpRCKD8f7Cl2KfJz345mqBVd
	DL2SPXZL+xQBTdhEJQRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDXZ-0000000HJrG-2O12;
	Fri, 12 Jul 2024 10:30:13 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDXV-0000000HJov-3Gy9
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jul 2024 10:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720780207;
	bh=qVypXOch48oh8pz0dXv8NywdGu9lmimthFqFd/CNk6I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=at8WdOdscqWMF57UbteWJnCFhUQ4DIlo18lmHLQ6YB1V/jChoChtOqrBbHEZl+Irf
	 MEmK5DIlQWuz7NBsbTioM13GvCtprcU+iN4DgAG3QjK6leFHt2GpWqcsbVDeelsKUc
	 ozcLPyj2kE4SAJ7qzhgIsKmmbdJHe8+iXNOrAIZDgi+5cm1gaco6jpWUB9WGUIRCM1
	 c4wMQYlNafF0vIKuFO/9J/DNfk9SC8ty8wTkD8qO8gssKHC/UcfCNkEMiuzqlvQFCj
	 KlN7jG9Ruc0dmzUfDXFJMY3NRCXu8O99KLhvwZUk0NmkGiRcwuftEUHdsAFNZvISTG
	 LoJ2vqKxZTUVA==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 90E7C3782211;
	Fri, 12 Jul 2024 10:30:06 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 1/2] media: videodev2: Add flags to unconditionnaly enumerate pixels formats
Date: Fri, 12 Jul 2024 12:29:59 +0200
Message-ID: <20240712103000.16655-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240712103000.16655-1-benjamin.gaignard@collabora.com>
References: <20240712103000.16655-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_033009_974179_8C86FC14 
X-CRM114-Status: GOOD (  18.62  )
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

Add new flags to enumerate all pixels formats when calling VIDIOC_ENUM_FMT ioctl.
When this V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag is set drivers must
ignore the configuration and return the hardware supported pixel
formats for the specified queue.
To distinguish this particular enumeration case V4L2_FMT_FLAG_ALL_FORMATS
flag must be set by the drivers to highlight support of this feature
to user space applications.
This will permit to discover which pixel formats are supported
without setting codec-specific information so userland can more easily
know if the driver suits its needs well.
The main target are stateless decoders so update the documentation
about how to use this flag.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
changes in version 3:
- Add a flag to inform userspace application that driver
  as take care of the flag.

 .../userspace-api/media/v4l/dev-stateless-decoder.rst    | 6 ++++++
 .../userspace-api/media/v4l/vidioc-enum-fmt.rst          | 9 +++++++++
 .../userspace-api/media/videodev2.h.rst.exceptions       | 2 ++
 drivers/media/v4l2-core/v4l2-ioctl.c                     | 3 +++
 include/uapi/linux/videodev2.h                           | 2 ++
 5 files changed, 22 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
index 35ed05f2695e..b0b657de910d 100644
--- a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
+++ b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
@@ -58,6 +58,12 @@ Querying capabilities
      default values for these controls being used, and a returned set of formats
      that may not be usable for the media the client is trying to decode.
 
+   * If the ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS`` flag is set the driver must enumerate
+     all the supported formats without taking care of codec-dependent controls
+     set on the ``OUTPUT`` queue. To indicate that the driver has take care of this
+     flag it must set ``V4L2_FMT_FLAG_ALL_FORMATS`` flag for each format while
+     enumerating.
+
 3. The client may use :c:func:`VIDIOC_ENUM_FRAMESIZES` to detect supported
    resolutions for a given format, passing desired pixel format in
    :c:type:`v4l2_frmsizeenum`'s ``pixel_format``.
diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
index 3adb3d205531..0399e0fc09b3 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
@@ -234,6 +234,15 @@ the ``mbus_code`` field is handled differently:
 	valid. The buffer consists of ``height`` lines, each having ``width``
 	Data Units of data and the offset (in bytes) between the beginning of
 	each two consecutive lines is ``bytesperline``.
+    * - ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS``
+      - 0x0400
+      - Set by userland applications to enumerate all possible pixel formats
+        without taking care of any OUTPUT or CAPTURE queue configuration.
+    * - ``V4L2_FMT_FLAG_ALL_FORMATS``
+      - 0x0800
+      - Set by the driver to indicated that format have been enumerated because
+        :ref:`V4L2_FMT_FLAG_ENUM_ALL_FORMATS <v4l2-pix-fmt-flag-set-csc>` has
+        been set by the userland application.
 
 Return Value
 ============
diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
index bdc628e8c1d6..7a3a1e9dc055 100644
--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
@@ -216,6 +216,8 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
 replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
+replace define V4L2_FMT_FLAG_ENUM_ALL_FORMATS fmtdesc-flags
+replace define V4L2_FMT_FLAG_ALL_FORMATS fmtdesc-flags
 
 # V4L2 timecode types
 replace define V4L2_TC_TYPE_24FPS timecode-type
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 4c76d17b4629..5785a98b6ba2 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1569,6 +1569,7 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
 	int ret = check_fmt(file, p->type);
 	u32 mbus_code;
 	u32 cap_mask;
+	u32 flags;
 
 	if (ret)
 		return ret;
@@ -1578,8 +1579,10 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
 		p->mbus_code = 0;
 
 	mbus_code = p->mbus_code;
+	flags = p->flags & V4L2_FMT_FLAG_ENUM_ALL_FORMATS;
 	memset_after(p, 0, type);
 	p->mbus_code = mbus_code;
+	p->flags = flags;
 
 	switch (p->type) {
 	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index fe6b67e83751..b6a5da79ba21 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -886,6 +886,8 @@ struct v4l2_fmtdesc {
 #define V4L2_FMT_FLAG_CSC_HSV_ENC		V4L2_FMT_FLAG_CSC_YCBCR_ENC
 #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
 #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
+#define V4L2_FMT_FLAG_ENUM_ALL_FORMATS		0x0400
+#define V4L2_FMT_FLAG_ALL_FORMATS		0x0800
 
 	/* Frame Size and frame rate enumeration */
 /*
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
