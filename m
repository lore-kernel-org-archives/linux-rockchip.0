Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E6F9C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 16:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bzA6qPm9ZgKJkCE4vTKZCCqw+H59+MuZAA+VKaWZQs=; b=V3BwjcO2P21cMz
	bcZOjD2KnmfGjzLY8TeoOUXm+J3WttcCmBZkHKw9/RAIs0rDHghEaBuRItXT6B7hhzyHGSHWknkol
	FBVLuPEx1FQ3dzUo9Db0Kv8a9IlvaYODVuOq8J2e/OS69u27ZGrPqNGeDcoRQ1Wf2I3Q1FXy2R4zA
	ZPp4JIfjAY45ek+doCSO00riohSlyjQSV5lVNucPeZC9nc6f2doz9SP1Xk259ooh1M+3ASHfgz5LF
	BrKMUDFj4A/fiOQBK6+N6+IpUSmLYuKBzoNeLlFxlx72dQVR2sfao7G2mXkDgBdhIkJGt54321cs8
	ykgGkjmX6Vef0tmVQ4Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBfE8-005dyD-TG; Wed, 13 Jul 2022 16:28:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBfE5-005dwA-Pr
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 16:28:39 +0000
Received: from localhost (dynamic-002-247-252-243.2.247.pool.telefonica.de [2.247.252.243])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9E2F8660191C;
	Wed, 13 Jul 2022 17:28:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657729714;
	bh=dJh6TqCFVIUYIG8O0aBeAq5rq/VBA2Im5Q+ZRYT8lro=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a6WPp2cx+hVRx5U3ybwnmetov9HEN13GabDTk+sbunaDETcMnWuPus04kDprjCFiS
	 ytDeZtW299OoiBns2nUWDx1Zbr4YxLxdNThwuMI1KqvnSUAA89Ld4QZUxUbbCXy5iU
	 JEwc3ASWXqG76O9F9qbBODEJufki6ttpdiV1qR3/JtPB8IEQAqWaCtHHNery1YnwXc
	 OGj+gF7ZWal7pk4V7SOuR/72lJqXWq0syJlc2DvkXjCEqmWjPlwXFyXpNFpUWy2lLV
	 xxUPmpvD5ALeGGzVORXdHd1aJ8s3uD2GlxmFYOsOar64hUpuliq4AlqOWW3XCml6rL
	 hjIeM9kxm6wMA==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: linux-media@vger.kernel.org
Cc: jernej.skrabec@gmail.com,
	knaerzche@gmail.com,
	kernel@collabora.com,
	bob.beckett@collabora.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	nicolas.dufresne@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Yury Norov <yury.norov@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Ming Qian <ming.qian@nxp.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Sergey Senozhatsky <senozhatsky@chromium.org>
Subject: [PATCH 1/6] media: v4l2: Add NV15 pixel format
Date: Wed, 13 Jul 2022 18:24:46 +0200
Message-Id: <20220713162449.133738-2-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713162449.133738-1-sebastian.fricke@collabora.com>
References: <20220713162449.133738-1-sebastian.fricke@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_092838_122921_709D4459 
X-CRM114-Status: GOOD (  12.34  )
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

From: Jonas Karlman <jonas@kwiboo.se>

Add the NV15 pixel format used by the Rockchip Video Decoder for 10-bit
buffers.

NV15 is a packed 10-bit 4:2:0 Y/CbCr format similar to P010 and P210 but
has no padding between components. Instead, luminance and chrominance
samples are grouped into 4s so that each group is packed into an integer
number of bytes:

YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes

The '15' suffix refers to the optimum effective bits per pixel which is
achieved when the total number of luminance samples is a multiple of 8
for NV15.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 .../media/v4l/pixfmt-yuv-planar.rst           | 53 +++++++++++++++++++
 drivers/media/v4l2-core/v4l2-common.c         |  2 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |  1 +
 include/uapi/linux/videodev2.h                |  1 +
 4 files changed, 57 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
index a900ff66911a..42ab3fe4667f 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
@@ -79,6 +79,13 @@ All components are stored with the same number of bits per component.
       - Cr, Cb
       - Yes
       - Linear
+    * - V4L2_PIX_FMT_NV15
+      - 'NV15'
+      - 15
+      - 4:2:0
+      - Cb, Cr
+      - Yes
+      - Linear
     * - V4L2_PIX_FMT_NV12M
       - 'NM12'
       - 8
@@ -176,6 +183,7 @@ horizontally.
 
 .. _V4L2-PIX-FMT-NV12:
 .. _V4L2-PIX-FMT-NV21:
+.. _V4L2-PIX-FMT-NV15:
 .. _V4L2-PIX-FMT-NV12M:
 .. _V4L2-PIX-FMT-NV21M:
 .. _V4L2-PIX-FMT-P010:
@@ -570,6 +578,51 @@ Data in the 10 high bits, zeros in the 6 low bits, arranged in little endian ord
       - Cb\ :sub:`11`
       - Cr\ :sub:`11`
 
+.. _V4L2_PIX_FMT_NV15:
+
+NV15
+----
+
+Like P010 but a packed 10-bit 4:2:0 semi-planar Y/CbCr format without padding between components.
+Instead, luminance and chrominance samples are grouped into 4s so that each group is packed into an integer
+number of bytes:
+YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes
+
+.. flat-table:: Sample 4x4 NV15 Image
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - Y'\ :sub:`00`
+      - Y'\ :sub:`01`
+      - Y'\ :sub:`02`
+      - Y'\ :sub:`03`
+    * - start + 8:
+      - Y'\ :sub:`10`
+      - Y'\ :sub:`11`
+      - Y'\ :sub:`12`
+      - Y'\ :sub:`13`
+    * - start + 16:
+      - Y'\ :sub:`20`
+      - Y'\ :sub:`21`
+      - Y'\ :sub:`22`
+      - Y'\ :sub:`23`
+    * - start + 24:
+      - Y'\ :sub:`30`
+      - Y'\ :sub:`31`
+      - Y'\ :sub:`32`
+      - Y'\ :sub:`33`
+    * - start + 32:
+      - Cb\ :sub:`00`
+      - Cr\ :sub:`00`
+      - Cb\ :sub:`01`
+      - Cr\ :sub:`01`
+    * - start + 40:
+      - Cb\ :sub:`10`
+      - Cr\ :sub:`10`
+      - Cb\ :sub:`11`
+      - Cr\ :sub:`11`
+
 .. raw:: latex
 
     \endgroup
diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 1e38ad8906a2..23a0cb02ea3a 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -262,6 +262,8 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
 		/* YUV planar formats */
 		{ .format = V4L2_PIX_FMT_NV12,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 2 },
 		{ .format = V4L2_PIX_FMT_NV21,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 2 },
+		{ .format = V4L2_PIX_FMT_NV15,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 5, 5, 0, 0 }, .hdiv = 2, .vdiv = 2,
+		  .block_w = { 4, 2, 0, 0 }, .block_h = { 1, 1, 0, 0 } },
 		{ .format = V4L2_PIX_FMT_NV16,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 1 },
 		{ .format = V4L2_PIX_FMT_NV61,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 1 },
 		{ .format = V4L2_PIX_FMT_NV24,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 1, .vdiv = 1 },
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index e2526701294e..9e5510cb255e 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1302,6 +1302,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_PIX_FMT_M420:		descr = "YUV 4:2:0 (M420)"; break;
 	case V4L2_PIX_FMT_NV12:		descr = "Y/CbCr 4:2:0"; break;
 	case V4L2_PIX_FMT_NV21:		descr = "Y/CrCb 4:2:0"; break;
+	case V4L2_PIX_FMT_NV15:		descr = "10-bit Y/CbCr 4:2:0 (Packed)"; break;
 	case V4L2_PIX_FMT_NV16:		descr = "Y/CbCr 4:2:2"; break;
 	case V4L2_PIX_FMT_NV61:		descr = "Y/CrCb 4:2:2"; break;
 	case V4L2_PIX_FMT_NV24:		descr = "Y/CbCr 4:4:4"; break;
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 5a73b92ffe4d..47ff34d6b79f 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -598,6 +598,7 @@ struct v4l2_pix_format {
 /* two planes -- one Y, one Cr + Cb interleaved  */
 #define V4L2_PIX_FMT_NV12    v4l2_fourcc('N', 'V', '1', '2') /* 12  Y/CbCr 4:2:0  */
 #define V4L2_PIX_FMT_NV21    v4l2_fourcc('N', 'V', '2', '1') /* 12  Y/CrCb 4:2:0  */
+#define V4L2_PIX_FMT_NV15    v4l2_fourcc('N', 'V', '1', '5') /* 15  Y/CbCr 4:2:0 10-bit packed */
 #define V4L2_PIX_FMT_NV16    v4l2_fourcc('N', 'V', '1', '6') /* 16  Y/CbCr 4:2:2  */
 #define V4L2_PIX_FMT_NV61    v4l2_fourcc('N', 'V', '6', '1') /* 16  Y/CrCb 4:2:2  */
 #define V4L2_PIX_FMT_NV24    v4l2_fourcc('N', 'V', '2', '4') /* 24  Y/CbCr 4:4:4  */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
