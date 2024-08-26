Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F04E9C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 17:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVKnA//KAiFSXGN9dSCJ9tmivif4i/g8YT+N2dynyAg=; b=jAXtIKZDrMb2w+
	KokeHZOv/+uwZpHEObW4CHfO4TpRHTiXdhfvYaOgo+oR+jagq2Co27Dj6dqkQzGkerIt7eRu9Gacx
	1fH4hNLHXKIC+o4hz3+8LeJy/NVgkzy05DNDRsZ5qc82y912qlItNV05KHIhb2ZimzxEdj8RHYLaB
	iO83Cms+Bau67u/XT8WiFFN9xGcfkSgbbGGV3QwgxIXTGyHlxQXlh6NWF9gPpaZV1tOcAizAUcw/5
	/LnQidH66/RLlI9dh6jVY7YkVTvulqXGQLcqDyJTwGvVRc/Tzxpjsjft2zNWndtg1emXA+uxx5VBz
	+niGYPWBnSKv3c7Xk6zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidUg-00000008CtZ-2AMm;
	Mon, 26 Aug 2024 17:27:06 +0000
Received: from a7-33.smtp-out.eu-west-1.amazonses.com ([54.240.7.33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidRt-00000008Bya-1qae
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 17:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724693049;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=OSLHE8tFNYIiN6g4tIzBnhyy90K7b7D8a3ozf67hRBM=;
	b=UYHt5unpeTd1SjzXB4oPnLLw1ua3OR6NXKvGKdI54KdLiIOq27LW4soXUpcdVE4K
	FMNobThYB1LrSIz5z0pv+whyGg/Zq4i6xneWnSlZkCGZEuLWkatgb1v31EdXYRZ+avk
	f8B/kTDQ+bNWdsiFeYB/nbbW/Fea8/aqatOZscghT/VMd62BTJti2iNLGCIhaTEHxvx
	L8iQLYDAJSzTG21dkxLiMXHkS4N1a9HkqIyCSnvCVSRISBZ1fhMC92Nv1Ms4tJQVMr1
	k+oU+YmpQPzN4/7EE5/gN3h9HVGW9p0Djqm/GbFK2ZgfOrlNVWWODkUvFimEzHTNl8S
	2rXtrk0twg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724693049;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=OSLHE8tFNYIiN6g4tIzBnhyy90K7b7D8a3ozf67hRBM=;
	b=NYpYp1Iy4Y5lBH10T+knIOw2cpLAirYjJNJW+MN1BxBtwMPg8D6l5ektfKP+qG/o
	HH1D0xE6b13gIpVDHYPUsn1gGRF+MNXDw0ZnN/XPTinN4HUVb/WGvACrwyaufhfF6nH
	MzT7r5Xbn3u4TrjBttgfYHJr6JkgIWWk+M34SUQg=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar, 
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 1/3] media: videodev2: Add flag to unconditionally enumerate pixel formats
Date: Mon, 26 Aug 2024 17:24:09 +0000
Message-ID: <010201918fb77141-93148d3e-6899-4b09-bff3-5d4f146f1449-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826172407.140538-1-benjamin.gaignard@collabora.com>
References: <20240826172407.140538-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.26-54.240.7.33
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_102413_641745_AC973044 
X-CRM114-Status: GOOD (  14.46  )
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
change in version 7:
- Rework documentation about which drivers should use the flag

 .../media/v4l/vidioc-enum-fmt.rst              | 18 +++++++++++++++++-
 .../media/videodev2.h.rst.exceptions           |  1 +
 include/uapi/linux/videodev2.h                 |  3 +++
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
index 3adb3d205531..e39c87bcbfc3 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
@@ -85,7 +85,17 @@ the ``mbus_code`` field is handled differently:
     * - __u32
       - ``index``
       - Number of the format in the enumeration, set by the application.
-	This is in no way related to the ``pixelformat`` field.
+        This is in no way related to the ``pixelformat`` field.
+        When the index is ORed with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` the
+        driver clears the flag and enumerates all the possible formats,
+        ignoring any limitations from the current configuration. Drivers
+        which do not support this flag always return an ``EINVAL``
+        error code.
+        Formats enumerated when using ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
+        shouldn't be used when calling :c:func:`VIDIOC_ENUM_FRAMESIZES`
+        or :c:func:`VIDIOC_ENUM_FRAMEINTERVALS`.
+        ``V4L2_FMTDESC_FLAG_ENUM_ALL`` should only be used by drivers that
+        can return different format list depending on this flag.
     * - __u32
       - ``type``
       - Type of the data stream, set by the application. Only these types
@@ -234,6 +244,12 @@ the ``mbus_code`` field is handled differently:
 	valid. The buffer consists of ``height`` lines, each having ``width``
 	Data Units of data and the offset (in bytes) between the beginning of
 	each two consecutive lines is ``bytesperline``.
+    * - ``V4L2_FMTDESC_FLAG_ENUM_ALL``
+      - 0x80000000
+      - When the applications ORs ``index`` with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
+        the driver enumerates all the possible pixel formats without taking care
+        of any already set configuration. Drivers which do not support this flag,
+        always return ``EINVAL``.
 
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
