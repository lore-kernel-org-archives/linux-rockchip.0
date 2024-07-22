Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C91EC3DA59
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jul 2024 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAMpH4kizaqwEmz89azKxbaSNt46Hso/XR7xcRi9BIE=; b=QT6X4XECcoHzj7
	HGP0te2PO+7VdrkKejTy1ByoqSWXeA1d3Pt4bNS/G0KpsnNYTKlAtrQG7QNYOReLqdTwqGN/krgND
	3W+aGwpqnx6KDTsaQc9qCIoDDj/oRL7PZpzOx5AOEJNqWL/KS86dfd2WkUJvzcnwG16p5vz03XQL0
	Fmk/GrhKRCJYWEdqg7Cza/mPDLrJNvf7hVLwe/hHsIl11IL4ZfVyToMTcRSCHVw40q1m7Ms+YEjks
	N+XkG8bjBHGTzSELC67+rVR/2E60OReL3PcFWZDP32dEjCu/UPngX9E0arUW3XKlG5/VW2IbZEBhp
	Tvjqzk2/Js7pdZ0K2ESg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVubY-00000009sRx-0Imd;
	Mon, 22 Jul 2024 15:05:36 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVubU-00000009sQP-2KkO
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jul 2024 15:05:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721660729;
	bh=k9hBZGP+6hvd2eafv7kOgNAmp1jDm0056Wz82dkm78Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ud/TN7AVdbK44CHnQAD1LdW1uOGh7orDvOQBmZlcndyj/eKxWvBR1mw+O4pL8f2Kq
	 QKKgGEMaD8vfqWfrNlDRamJBGqYTXxQx6bDGNhbNsmxMNh5XKL0lzSECuPoye1WSoU
	 xrtiFzJLtntpnGsmJg3Z2Ua+POC3onsJjRfL7Yg7afDr8ze4W6VWDPBSQFfAD6NaNO
	 G1XNz4+XXNt08sATHncuVQdiuHHUICj78euJKvoSUC+J3hsKRdvtfzrB5RvHfGQ6jR
	 9ChJiv3C4LVBR/nQfHorxTjF+F/TKq1hBR/tiyBm/Gf3dciHkTxOQ5jUmEL2coqsuj
	 Rs4MOVqUuCciw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6E7BC3780523;
	Mon, 22 Jul 2024 15:05:29 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 1/3] media: videodev2: Add flag to unconditionnaly enumerate pixels formats
Date: Mon, 22 Jul 2024 17:05:21 +0200
Message-ID: <20240722150523.149667-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_080532_751048_76F4ACDD 
X-CRM114-Status: GOOD (  14.57  )
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

When the index field is ORed with V4L2_FMT_FLAG_ENUM_ALL the driver
will ignore any configuration and enumerate all the possible formats.
Drivers which do not support this flag yet always return an EINVAL
error code.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
changes in version 5:
- Reset the proposal to follow Hans's advices
- Add new flag to be used with index field.

 .../userspace-api/media/v4l/vidioc-enum-fmt.rst      | 12 +++++++++++-
 .../userspace-api/media/videodev2.h.rst.exceptions   |  1 +
 include/uapi/linux/videodev2.h                       |  3 +++
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
index 3adb3d205531..12e1e65e6a71 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
@@ -85,7 +85,11 @@ the ``mbus_code`` field is handled differently:
     * - __u32
       - ``index``
       - Number of the format in the enumeration, set by the application.
-	This is in no way related to the ``pixelformat`` field.
+        This is in no way related to the ``pixelformat`` field. When the
+        index is ORed with V4L2_FMT_FLAG_ENUM_ALL the driver will ignore
+        any configuration and enumerate all the possible formats. Drivers
+        which do not support this flag yet always return an ``EINVAL``
+        error code.
     * - __u32
       - ``type``
       - Type of the data stream, set by the application. Only these types
@@ -234,6 +238,12 @@ the ``mbus_code`` field is handled differently:
 	valid. The buffer consists of ``height`` lines, each having ``width``
 	Data Units of data and the offset (in bytes) between the beginning of
 	each two consecutive lines is ``bytesperline``.
+    * - ``V4L2_FMT_FLAG_ENUM_ALL``
+      - 0x80000000
+      - When the applications ORs ``index`` with ``V4L2_FMT_FLAG_ENUM_ALL`` flag
+        the driver enumerates all the possible pixel formats without taking care
+        of any already set configuration. Drivers which do not support this flag
+        yet always return ``EINVAL``.
 
 Return Value
 ============
diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
index bdc628e8c1d6..8dc10a500fc6 100644
--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
@@ -216,6 +216,7 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
 replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
+replace define V4L2_FMT_FLAG_ENUM_ALL fmtdesc-flags
 
 # V4L2 timecode types
 replace define V4L2_TC_TYPE_24FPS timecode-type
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 4e91362da6da..3d11f91273a1 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -904,6 +904,9 @@ struct v4l2_fmtdesc {
 #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
 #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
 
+/*  Format description flag, to be ORed with the index */
+#define V4L2_FMT_FLAG_ENUM_ALL			0x80000000
+
 	/* Frame Size and frame rate enumeration */
 /*
  *	F R A M E   S I Z E   E N U M E R A T I O N
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
