Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67560CCA47B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 08:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjiMIun0dl9b8JrWlK4ZgSx4xdroKSV+23hq1VhzdfY=; b=DUT+StzqvqkLyU
	sI/14zqDdz9acnt0TVgVtM1BdHMbGEMCFb3O4vuqWpqLRfZ8uveyaMVuf2l9kGHZXBuj5ZhXnkvMS
	qQfZlxLAYFbaZB1Vcbu6ubNowZl08bkZcBulqrFqjoGLPvbrJw7AAeR08o1T3936MYX1u7sJ26vO3
	y3OVfG6LaCFq15apFwVPfrYxyWzwsX8+l4ca0IUgcG1KOtQcW58d+zbacuYPgh+2/Yxx/ZiPcfa2k
	xKOlnpYXHwR35NuoonG1e1LRjsBJpJ5AiNK86mrOkL9mAOA52dGU5ovePhlVaxlOIFRkJbfDMrPSr
	qatjAZWFmIX152sVYNmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eO6-00GQ9h-4N; Tue, 05 Jul 2022 08:58:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eKN-00GNpO-Gm; Tue, 05 Jul 2022 08:54:43 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:6610:ee84:2ba:7917])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9A60466019BD;
	Tue,  5 Jul 2022 09:54:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657011275;
	bh=EZw6mHZzsiIezh8qwhtNGu30+ZyPV9CPx5z12lifTP4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oXpPaU7ALV3Oh2NGxI36d5AZ7ueI2OFMN9CE7R1mg9A4HqpZi7QVjjSdHDUlJ4oxq
	 HjELz0QgbgC1QQ50ABVZejhdZXJ9eLIlQcdac/a1CbCjvO26NimKZaGHyx2lxQO1oM
	 4Ddudws6rYrfpg4+QLCF4F5d1v+xc+yi8WN1MDlyaKD2SqHpma5chie3cwpJEPLY7v
	 YFPRWgN4iA8ORoCONavPYJaXqp3XJyoNCmxoQKc/vcN03Smnp6S7l7N7z+f2ziB2oJ
	 nDyyDPooCoY/G290p8Z8OTwVLCpdYbYSaj+wwbibyidtnD6dWoYlhBCsH1w0yW+Pge
	 infB3jF/EyZGg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v10 10/17] media: uapi: Move parsed HEVC pixel format out of staging
Date: Tue,  5 Jul 2022 10:54:13 +0200
Message-Id: <20220705085420.272912-11-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_015439_758852_11DBC8E3 
X-CRM114-Status: GOOD (  10.94  )
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

Move HEVC pixel format since we are ready to stabilize the uAPI

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 Documentation/userspace-api/media/v4l/pixfmt-compressed.rst | 5 -----
 include/media/hevc-ctrls.h                                  | 3 ---
 include/uapi/linux/videodev2.h                              | 1 +
 3 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
index 967fc803ef94..c352d91a73d8 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
@@ -215,11 +215,6 @@ Compressed Formats
 	See the :ref:`associated Codec Control IDs <v4l2-mpeg-hevc>`.
 	Buffers associated with this pixel format must contain the appropriate
 	number of macroblocks to decode a full corresponding frame.
-
-	.. note::
-
-	   This format is not yet part of the public kernel API and it
-	   is expected to change.
     * .. _V4L2-PIX-FMT-FWHT:
 
       - ``V4L2_PIX_FMT_FWHT``
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 341fc795d550..a372c184689e 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -13,9 +13,6 @@
 
 #include <linux/videodev2.h>
 
-/* The pixel format isn't stable at the moment and will likely be renamed. */
-#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC parsed slices */
-
 #define V4L2_CID_STATELESS_HEVC_SPS		(V4L2_CID_CODEC_BASE + 1008)
 #define V4L2_CID_STATELESS_HEVC_PPS		(V4L2_CID_CODEC_BASE + 1009)
 #define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS	(V4L2_CID_CODEC_BASE + 1010)
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 9018aa984db3..37f9f23a67fe 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -712,6 +712,7 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_FWHT     v4l2_fourcc('F', 'W', 'H', 'T') /* Fast Walsh Hadamard Transform (vicodec) */
 #define V4L2_PIX_FMT_FWHT_STATELESS     v4l2_fourcc('S', 'F', 'W', 'H') /* Stateless FWHT (vicodec) */
 #define V4L2_PIX_FMT_H264_SLICE v4l2_fourcc('S', '2', '6', '4') /* H264 parsed slices */
+#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC parsed slices */
 
 /*  Vendor-specific formats   */
 #define V4L2_PIX_FMT_CPIA1    v4l2_fourcc('C', 'P', 'I', 'A') /* cpia1 YUV */
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
