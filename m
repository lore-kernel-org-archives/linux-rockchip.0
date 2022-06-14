Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B218C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 07:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovNzxLtGKP5uDsUhLhYbyNGwrHQBiZcf+KfuDD6sv14=; b=cMT0IyypeybJi5
	F+wyBpqdjpGqCTD/7YYpMH7NUncxyez4FAQGVWKQkNXt4R491KU2qq1RmDejllHwBFgaphG2nCpxs
	Y49MvBxDJccPFozio6Y2PpAS8PYhdkZouMji7V4QjqXwO8MEZrgKWWzrYgHzvI7NSO+ZkyXflx/ii
	13eZcPvKsqYaJnI5Nq3ifAtnqhD6xdc0WQFhYaQjS1sxLqQrGXkhbrqtuCM0o3twNB0jZjQ95GQLp
	RkRKBRVttFTkGX2KoNIXMYNDHEmlAjkMBKHUIuCXhWhzWu/vo4EQY1my0cA8Jd+8hkRaMRGrf0tyT
	UN4FP0Pl/dGa98rI2M9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11N1-0085PX-87; Tue, 14 Jun 2022 07:53:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11JS-0083S8-1F; Tue, 14 Jun 2022 07:50:20 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4a7b:8d3a:acaa:ec46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 70C7766016B4;
	Tue, 14 Jun 2022 08:50:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655193004;
	bh=AX9t7NDroKjw8N8uzsZcYRkuwGc+9D6j4YO379jQqLM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g4H0QCn8y6VM33n9mCskqkzLGc22GaGGILukwLUwSd/eETw2WF2DJ4x4GelC23Hvb
	 IcfWA8IdNjNnfKqjtexFYpKDY98otNKtXl9BEQ9wetkVyGGED/7/2YMH+Xds/9WYyA
	 KHaCtm+5ZazULnEEQO2bhC5DUH9nC5Jf4qxnYynpoSRyCTrBBIp2QZ/G8W1E+kO4+7
	 sjvR1E5+WIsQZooaI+timuyM7g/EKo+/AOFv3vTYF0J3njb3XfWdL1JsJ1smynfp2t
	 vDfFV+TUOKOqt7H4VuiBN1/wUA5KvlQo5Z+EklGapKHfrnWkU3vhxYSMrbmIh42Mdj
	 27yxVVOklAnNg==
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
Subject: [PATCH v7 12/17] media: uapi: Move the HEVC stateless control type out of staging
Date: Tue, 14 Jun 2022 09:49:42 +0200
Message-Id: <20220614074947.160316-13-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
References: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_005010_280940_72D00C50 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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

Move the HEVC stateless controls types out of staging,
and re-number them.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../userspace-api/media/videodev2.h.rst.exceptions         | 5 +++++
 include/media/hevc-ctrls.h                                 | 7 -------
 include/uapi/linux/videodev2.h                             | 6 ++++++
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
index 9cbb7a0c354a..ee34f13e8142 100644
--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
@@ -153,6 +153,11 @@ replace symbol V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_VP9_FRAME :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_HDR10_CLL_INFO :c:type:`v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_HDR10_MASTERING_DISPLAY :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_HEVC_SPS :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_HEVC_PPS :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX :c:type:`v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS :c:type:`v4l2_ctrl_type`
 
 # V4L2 capability defines
 replace define V4L2_CAP_VIDEO_CAPTURE device-capabilities
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 1319cb99ae3f..d6cb3779d190 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -22,13 +22,6 @@
 #define V4L2_CID_STATELESS_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
 #define V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS (V4L2_CID_CODEC_BASE + 1017)
 
-/* enum v4l2_ctrl_type type values */
-#define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
-#define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
-#define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
-#define V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX 0x0123
-#define V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS 0x0124
-
 enum v4l2_stateless_hevc_decode_mode {
 	V4L2_STATELESS_HEVC_DECODE_MODE_SLICE_BASED,
 	V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 37f9f23a67fe..e0d19a6b5bc7 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -1836,6 +1836,12 @@ enum v4l2_ctrl_type {
 
 	V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR	= 0x0260,
 	V4L2_CTRL_TYPE_VP9_FRAME		= 0x0261,
+
+	V4L2_CTRL_TYPE_HEVC_SPS			= 0x0270,
+	V4L2_CTRL_TYPE_HEVC_PPS			= 0x0271,
+	V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS	= 0x0272,
+	V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX	= 0x0273,
+	V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS	= 0x0274,
 };
 
 /*  Used in the VIDIOC_QUERYCTRL ioctl for querying controls */
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
