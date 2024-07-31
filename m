Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3115EC3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6OdpY1j/hjI8VpnWliKCcmow8eOKjMwrii+8fB55go=; b=anw/aTAdqvknPU
	x95CP/hp80f+HJcWViz0YZEFYoAOYRbM0yl8JkrdbyUh0kQZtDZcepPiqENW7FoANRdKYdZfucrxG
	nzqPv6wWku/w/ZTzHqQ0MxjXyZS0kbySPqxrtJZt2W3onu+UTGriKvY8104jloQHOmajsRZwgjWuI
	jYe5qoPaGPqnD1IZTJ0iKPkHRixRzhdboCSkCSaYABRZUY+RRzLyz3eFiADjcVzZDRVqrU06w9zWF
	GKpTffQRZYLtMn5EM8tav4Ts3aajsC5M1VI8Y7I+xsxA63ILjjC9D1pkA1yFXJD/8d/V4gBszSrkp
	iTOmUAYMee9pbIPyehdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5jf-00000000WeZ-3Wgh;
	Wed, 31 Jul 2024 09:35:07 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5jd-00000000WdB-1F15
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722418503;
	bh=xpSXgsWUTk8EjfxPhq83yZrNoBSKswzok7wmSDRayZg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=1TkrMVBs3ytTu2BqTnIZhC88+PHh22ue12iu4iM5EWVSEw7deP6TF1nTD4Zomg4EW
	 CfWcggObztHgFamqLkrOp3luhD9mpdtw9UnZhmua5QOKSM5EdbuLEmAxM+MajXm1cF
	 NECPhxGiduzOBjsyAM4tKO+sHYBueYtnwFSnpAfv80tmsrIPknyoLBanvNv64aE62z
	 zwgqI+YnFruyjMSJQ0xnApScgd8sPwkq/8OOZ7G6NfAklz/SdX3bCuk205PR+bNRVT
	 uTVOBNoJMAefZ6JoUsgE5vYCH2YEElsxP/fdg3AXpOdVgMRhRPAIWnwtkMDfb6u5Jv
	 BchN7UTTT8gRw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 792193782039;
	Wed, 31 Jul 2024 09:35:03 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 1/3] media: videodev2: Add flag to unconditionally enumerate pixel formats
Date: Wed, 31 Jul 2024 11:34:55 +0200
Message-ID: <20240731093457.29095-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
References: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_023505_492278_77172998 
X-CRM114-Status: GOOD (  14.38  )
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

When the index is ORed with V4L2_FMTDESC_FLAG_ENUM_ALL the
driver clears the flag and enumerate all the possible formats,
ignoring any limitations from the current configuration.
Drivers which do not support this flag yet always return an EINVAL.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
change in version 6:
- Change flag name.
- Improve documentation.

 .../userspace-api/media/v4l/vidioc-enum-fmt.rst  | 16 +++++++++++++++-
 .../media/videodev2.h.rst.exceptions             |  1 +
 include/uapi/linux/videodev2.h                   |  3 +++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
index 3adb3d205531..1112dc9044b2 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
@@ -85,7 +85,15 @@ the ``mbus_code`` field is handled differently:
     * - __u32
       - ``index``
       - Number of the format in the enumeration, set by the application.
-	This is in no way related to the ``pixelformat`` field.
+        This is in no way related to the ``pixelformat`` field.
+        When the index is ORed with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` the
+        driver clears the flag and enumerate all the possible formats,
+        ignoring any limitations from the current configuration. Drivers
+        which do not support this flag yet always return an ``EINVAL``
+        error code.
+        Formats enumerated when using ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
+        shouldn't be used when calling :c:func:`VIDIOC_ENUM_FRAMESIZES`
+        or :c:func:`VIDIOC_ENUM_FRAMEINTERVALS`.
     * - __u32
       - ``type``
       - Type of the data stream, set by the application. Only these types
@@ -234,6 +242,12 @@ the ``mbus_code`` field is handled differently:
 	valid. The buffer consists of ``height`` lines, each having ``width``
 	Data Units of data and the offset (in bytes) between the beginning of
 	each two consecutive lines is ``bytesperline``.
+    * - ``V4L2_FMTDESC_FLAG_ENUM_ALL``
+      - 0x80000000
+      - When the applications ORs ``index`` with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
+        the driver enumerates all the possible pixel formats without taking care
+        of any already set configuration. Drivers which do not support this flag
+        yet, always return ``EINVAL``.
 
 Return Value
 ============
diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
index bdc628e8c1d6..0a9ea9686c24 100644
--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
@@ -216,6 +216,7 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
 replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
+replace define V4L2_FMTDESC_FLAG_ENUM_ALL fmtdesc-flags
 
 # V4L2 timecode types
 replace define V4L2_TC_TYPE_24FPS timecode-type
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 4e91362da6da..421a30cb0c51 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -904,6 +904,9 @@ struct v4l2_fmtdesc {
 #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
 #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
 
+/*  Format description flag, to be ORed with the index */
+#define V4L2_FMTDESC_FLAG_ENUM_ALL		0x80000000
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
