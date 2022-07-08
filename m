Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7750C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 12:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycV3KE/zN/t/OhvIjkwRvrjARGnC+cqi9ABGsF/9Ofo=; b=3I1yaFZH9qKwP8
	it3Jw702spzSY17t1WN74emI66SNmHa4pfW/8YUpK9MYrSXQxrgYoHNTIKU40XXmhDdsyweqGa4SL
	KHnLPHQfv//7cECkqaSvuTO+XCp9sSAgDW3GcAPyPEQvq/kKbQXUqydRxNyzilpKgKDwBu52THiCp
	gpTmsfIwjbUp7G3Y9DiAnAY1Z6Sun4Ls/K5HG4dBInaRozVh97SecMJRU/VMuja52qnOis8qUv9nt
	aq3TFIETZ0MLPrZqDDtfuDbxybDOudHcKhGt3QLkK37/P+v6s+ERFIOgKdqAV4OtVqhiX2mf5P4sL
	hY4tgMPPCB+NkRUZLypg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9moo-003au5-3A; Fri, 08 Jul 2022 12:10:46 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9mkP-003Yd8-Rj; Fri, 08 Jul 2022 12:06:19 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3cab:61a1:2b1f:896b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F374866019DC;
	Fri,  8 Jul 2022 13:06:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657281972;
	bh=7IIRIM3d7YXcrWDTuXBowrAKYZLNj97yVq/Pp1CrMaA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YFs0QTnVjN1O85do67MKZWb8wfE4TFhqgdUuhg2pRmMBcovvuGqGa6jih3ZgT9jxy
	 jmc1oYskXWQhMVI7pFi3KgIAGETKhKFQ/isu4lQDPymprhIBXvHPG866JAAgfj55k3
	 598N0tZOqFmD+gL1vq5J/qiHKLqnev4ot19eF6L/IaTXaZzvyCnnZ6yQZJb2vKWn1c
	 W35Gj+oy8XHNBccm8pca4sP/INlUiBJX3vryi287q+Te7gmcVL8ceAIP3poQU3UG7S
	 KTeghVEoH7DhewnXDJI7GkZzcDYoYz5Dg4bIPMxAExoAtPvSAgV24BZuwPDYTqLNeI
	 r215dIfu55Dgw==
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
Subject: [PATCH v12 10/17] media: uapi: Move parsed HEVC pixel format out of staging
Date: Fri,  8 Jul 2022 14:05:47 +0200
Message-Id: <20220708120554.495495-11-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220708120554.495495-1-benjamin.gaignard@collabora.com>
References: <20220708120554.495495-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_050614_072182_B8265C70 
X-CRM114-Status: GOOD (  11.26  )
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
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
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
