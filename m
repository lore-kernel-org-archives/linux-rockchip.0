Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB7BEC7EE2C
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 08:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjituyjNBePyMjepQxRJrHADDvmXvJsqjhsnyfP2taY=; b=Chzy9gXqyUDSZw
	/Z3QBV0CUYnjHG3RR3P+2nag+dE4QOG3Ma4pnXIfTCLX/r7JUOVft+XH3LzkuTjtFxzkRu0ZQc9V2
	RXrbs4QdgN+kJqErRbd5FAISt4vUVOKYtHU1Jndya469GoJHiTKuVuFzssTB+x/LqcJNxeiCeghHV
	UNpNTuf7jxyllT5eu5TpqV6FnttQLh+cMoqYy2zninfKuGWSWzV3pNLT1dF22/MJmHSf4lBOie+DX
	qwo/2v/cE6MFtrFb9nQItOiG7jynrDsrvM0Eq8La48WQPJ2Clk2RgQMzH5gDWkuaAEaF3qHufKyLj
	4CzrbMKHIdUUwpHSJ+GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu7x2-003rJi-0Z;
	Wed, 03 May 2023 08:35:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu7wo-003r5z-1O;
	Wed, 03 May 2023 08:34:52 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:8234:977e:ebbe:d70b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9700066056D2;
	Wed,  3 May 2023 09:34:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683102887;
	bh=HvCUV5rosPThl8cD3jr79LtJ3uKFRE7IxvD56lg3Oxg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MkvFnOwIeHLZ+xlRCdYwuuaAsSIsP4O0CGhgA8FqlW44dpNJguwQj1r3pK71X/NHp
	 yHDsgNuxs4hT+3zjWwrrDnpRm3y/XNCcRC2BliJw0T/E1O7PlnlbPv5F5w1obW/rHq
	 ah6Yw1cKDeE+AWDK3McSlHFj0I8PB0dKXWyM/pUIuQGE+/OoXSIY5E3dUVMS121z0K
	 v57zb2eWFUGVdmsGpp8GLkZL3tTuVWU3dOcQLNiy6bJ+i4zUM2FWvgTdFyb7WyEVtl
	 rz0UBnaEjHhRh675urCZVkwMSNh1tFon3cEmARQC/bqZFQSXNbWhqn5cGnYmkIFopM
	 RlgqYPeDHtCww==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 04/13] media: Add NV15_4L4 pixel format
Date: Wed,  3 May 2023 10:34:29 +0200
Message-Id: <20230503083438.85139-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230503083438.85139-1-benjamin.gaignard@collabora.com>
References: <20230503083438.85139-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_013450_740054_1BE6F610 
X-CRM114-Status: GOOD (  11.70  )
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

NV15_4L4 is the 10-bits per component 4x4 tiled format.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 .../media/v4l/pixfmt-yuv-planar.rst              | 16 ++++++++++++++++
 drivers/media/v4l2-core/v4l2-common.c            |  2 ++
 drivers/media/v4l2-core/v4l2-ioctl.c             |  1 +
 include/uapi/linux/videodev2.h                   |  1 +
 4 files changed, 20 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
index 72324274f20c..989b94c46288 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
@@ -137,6 +137,13 @@ All components are stored with the same number of bits per component.
       - Cb, Cr
       - No
       - Linear
+    * - V4L2_PIX_FMT_NV15_4L4
+      - 'VT15'
+      - 15
+      - 4:2:0
+      - Cb, Cr
+      - Yes
+      - 4x4 tiles
     * - V4L2_PIX_FMT_NV16
       - 'NV16'
       - 8
@@ -378,6 +385,15 @@ two non-contiguous planes.
 
     Example V4L2_PIX_FMT_NV12MT memory layout of tiles
 
+.. _V4L2-PIX-FMT-NV15-4L4:
+
+Tiled NV15
+----------
+
+Semi-planar 10-bit YUV 4:2:0 formats, using 4x4 tiling.
+All components are packed without any padding between each other.
+As a side-effect, each group of 4 components are stored over 5 bytes 
+(YYYY or UVUV = 4 * 10 bits = 40 bits = 5 bytes).
 
 .. _V4L2-PIX-FMT-NV16:
 .. _V4L2-PIX-FMT-NV61:
diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 4b3faec14f69..145db7ab7397 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -283,6 +283,8 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
 
 		/* Tiled YUV formats */
 		{ .format = V4L2_PIX_FMT_NV12_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .bpp_div = { 1, 1, 1, 1 }, .hdiv = 2, .vdiv = 2 },
+		{ .format = V4L2_PIX_FMT_NV15_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 5, 10, 0, 0 }, .bpp_div = { 4, 4, 1, 1 }, .hdiv = 2, .vdiv = 2, 
+		  .block_w = { 4, 2, 0, 0 }, .block_h = { 1, 1, 0, 0 }},
 		{ .format = V4L2_PIX_FMT_P010_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 2, 4, 0, 0 }, .bpp_div = { 1, 1, 1, 1 }, .hdiv = 2, .vdiv = 2 },
 
 		/* YUV planar formats, non contiguous variant */
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 41d7a8e3712a..01ba27f2ef87 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1356,6 +1356,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_PIX_FMT_NV12_4L4:	descr = "Y/UV 4:2:0 (4x4 Linear)"; break;
 	case V4L2_PIX_FMT_NV12_16L16:	descr = "Y/UV 4:2:0 (16x16 Linear)"; break;
 	case V4L2_PIX_FMT_NV12_32L32:   descr = "Y/UV 4:2:0 (32x32 Linear)"; break;
+	case V4L2_PIX_FMT_NV15_4L4:	descr = "10-bit Y/UV 4:2:0 (4x4 Linear)"; break;
 	case V4L2_PIX_FMT_P010_4L4:	descr = "10-bit Y/UV 4:2:0 (4x4 Linear)"; break;
 	case V4L2_PIX_FMT_NV12M:	descr = "Y/UV 4:2:0 (N-C)"; break;
 	case V4L2_PIX_FMT_NV21M:	descr = "Y/VU 4:2:0 (N-C)"; break;
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index e3d83b59b25f..2b04cf20345f 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -672,6 +672,7 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_NV12_4L4 v4l2_fourcc('V', 'T', '1', '2')   /* 12  Y/CbCr 4:2:0  4x4 tiles */
 #define V4L2_PIX_FMT_NV12_16L16 v4l2_fourcc('H', 'M', '1', '2') /* 12  Y/CbCr 4:2:0 16x16 tiles */
 #define V4L2_PIX_FMT_NV12_32L32 v4l2_fourcc('S', 'T', '1', '2') /* 12  Y/CbCr 4:2:0 32x32 tiles */
+#define V4L2_PIX_FMT_NV15_4L4 v4l2_fourcc('V', 'T', '1', '5') /* 15 Y/CbCr 4:2:0 10-bit 4x4 tiles */
 #define V4L2_PIX_FMT_P010_4L4 v4l2_fourcc('T', '0', '1', '0') /* 12  Y/CbCr 4:2:0 10-bit 4x4 macroblocks */
 #define V4L2_PIX_FMT_NV12_8L128       v4l2_fourcc('A', 'T', '1', '2') /* Y/CbCr 4:2:0 8x128 tiles */
 #define V4L2_PIX_FMT_NV12_10BE_8L128  v4l2_fourcc_be('A', 'X', '1', '2') /* Y/CbCr 4:2:0 10-bit 8x128 tiles */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
