Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBB10C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 14:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovNzxLtGKP5uDsUhLhYbyNGwrHQBiZcf+KfuDD6sv14=; b=jiY6qMLifn6ncq
	lznx2G3a3DMTnh1cDI03TeCb3eMcG6fuAw/mk9LNkYbZeK4BgwvV7blx8YYkxKnxeuZq+zWHIHQWU
	2WUwwqbHPFCEXRXeyuP4E9O8CVnojZcCe11XergC+VBz71dkP3MuMwXQjurr3uEuLsDoWf2LxnjU/
	ZMsW8lqNL+efl+lVrx0Reyls8ENBxh+UTpLIqedidLQnOaA4EL1neMMhyf3ISbfQWohKZsVR4GLvX
	MWAfHM/4BghkwQw0jYhTVBck9bUrBiaRW5vMqtNogWpR+SKLBVEpPAz1+YRDVFEzI58gAHaB3NwH9
	2r8MYmBZ/Ov23TQcA37Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub4C-000Hxv-UZ; Fri, 27 May 2022 14:35:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0S-000FyS-IN; Fri, 27 May 2022 14:32:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id F04EB1F462C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653661918;
	bh=AX9t7NDroKjw8N8uzsZcYRkuwGc+9D6j4YO379jQqLM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZoQJ4LfRmmBk9r3ZqZnthO6H4b880KivFCp8eOEgivdrgT015VMmw+zSsiFii+Ig7
	 qnds0ppL2cJnxPVg/5TaShZKT8WL/Y7aJpjRJfCRNAEvyDQhpw45ngvFmzgGwMxmRH
	 nH2WXiG/nnNb0x5WbKRb3eGgF++uaVVLfY2we18TY654mAAI6EgGmq0aI4IzsP273d
	 ZfjpriZGfHTxsv2xOtFIcS4DHYX1coLGUdGCdj8DcLm7ZOepAlR0EaZivmVCevZz84
	 H652huSlIErLGp1vCOJzkHObggGVZ4aR+Uv//tJ88icHL+KgVr2fOrun96iC4BPt2F
	 yclBrqYEVwoWw==
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
Subject: [PATCH v6 12/17] media: uapi: Move the HEVC stateless control type out of staging
Date: Fri, 27 May 2022 16:31:29 +0200
Message-Id: <20220527143134.3360174-13-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_073200_796981_926F2272 
X-CRM114-Status: UNSURE (   9.07  )
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
