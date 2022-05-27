Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 594CCC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 14:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaFTIXGmLSoB62pooMVcY9SXYDrCBOviRUngqMelVUw=; b=u94hREK/AeWqTL
	HljnrGvKtF3i0sOjUe+8ycU2IhqeGuCw1KDM9wknhTz5UJIFK+mWkEYK3p6+76GN6rmcx7InCme/s
	v4utiJyBavoEJ+M27x30xROTnE2jdwi8l4BnxIfpPjzajkmcroE2Qdcv1E6HYedK2JpdaGANtFoFu
	iajoHSrkeWIh5hMcuekcJ5AeVNCsn50oNZgrvsb0DfhWZII+Ra53RCu4muHW9qvo4+r4EJ4VZGyxd
	xl+F8vvww8bT9+qLDbyLoBRE/EhPuN+qpbW892lq4uW5SioWlwRwHNNLUwClnmGb2S9JqC9it1KaF
	nZf03mQwZJGsr75LKIMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub5m-000Iom-Ax; Fri, 27 May 2022 14:37:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0b-000G5y-Mn; Fri, 27 May 2022 14:32:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3rzxbT1xpGwwsCFrgJn7t2iiJOAwDkXQEd0dhp3YiXw=; b=EbeX9gRQbLXYVJFBASb3n24xk6
	QhbpWiTRdb2dCS8SsR1WBK26oREmdQSE+Ie5fECwpfma3uBOt3S0j/FP8K4TuK332Vg0K/Md5pfTl
	iUOSSIVJftOUiKGM07iAfW2zgWkFpQPC4iWvBK+QtigYBOzXuDgHf8JMH2WmDN0AQgA0cpaxC4MDD
	upqXqWrpxuv5l9mxwG7ebxEbt0Vh1waaNqOVGjbgUN0LgYyNDiQQ1U0efLZdOQmzhEl1oOe3Pix5T
	MpSw7rirNhf0o7d7uIxiuz6Zf1B2TVQVLuC4FnnIplOOUQoDZyzjNWCpeUeCSaQLZjh6Ic5Dc2Bt6
	v8DtspIw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0U-002D0e-Hh; Fri, 27 May 2022 14:32:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id BC1391F462C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653661916;
	bh=FwhT4M0q3zGdY3rD+uqFFz/Zp2aSoJb8cPSYnbFG4fE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TWyDzzcWRwim0u6sOzFlcR1FUgECuXBm0UEEJtJ30uuByeWFsgL6g/A8iNm6W4KjB
	 09LTrVyiSJ86kpoGNlVjD0vX84Gt4jqlXa53yrxSEzOtDhlouC8AoN/9zht1nEHR9b
	 4HWF8V8XTNq6la9eKzpMkZ8TUeB6RpBcbbrtwxcXPCcEydQm6G1j/6wH0HY0FMKTIe
	 WZKIOz6zw4svCb/GGqi387M6k7BESq/ckh05cBU/cw/YVLaJ5FvgY3wcK13Mbgv9q9
	 /LD8KHl7zOYCz04fl1UCqSOyvyVCE4uUAgSv8wv968XBeps8E+9lK5lFoO98cjINgZ
	 xz5SfAT1oxfdw==
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
Subject: [PATCH v6 09/17] media: uapi: HEVC: Define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Date: Fri, 27 May 2022 16:31:26 +0200
Message-Id: <20220527143134.3360174-10-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_153203_517640_4851FB0C 
X-CRM114-Status: GOOD (  10.65  )
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

Make explicit that V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control is
a dynamic array control type.
Some drivers may be able to receive multiple slices in one control
to improve decoding performance.

Define the max size of the dynamic that can driver can set in .dims = {}.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 6:
- Set V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag automatically when using
  V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control.
- Add a define for max slices count

 Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 2 ++
 drivers/media/v4l2-core/v4l2-ctrls-defs.c                 | 1 +
 include/media/hevc-ctrls.h                                | 5 +++++
 3 files changed, 8 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index 06b967de140c..0796b1563daa 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -2986,6 +2986,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     These bitstream parameters are defined according to :ref:`hevc`.
     They are described in section 7.4.7 "General slice segment header
     semantics" of the specification.
+    This control is a dynamically sized 1-dimensional array,
+    V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
 
 .. c:type:: v4l2_ctrl_hevc_slice_params
 
diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
index 9f55503cd3d6..d594efbcbb93 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
@@ -1510,6 +1510,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 		break;
 	case V4L2_CID_STATELESS_HEVC_SLICE_PARAMS:
 		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
 		break;
 	case V4L2_CID_STATELESS_HEVC_SCALING_MATRIX:
 		*type = V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX;
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 0dbd5d681c28..140151609c96 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -311,9 +311,14 @@ struct v4l2_hevc_pred_weight_table {
 #define V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_LOOP_FILTER_ACROSS_SLICES_ENABLED (1ULL << 8)
 #define V4L2_HEVC_SLICE_PARAMS_FLAG_DEPENDENT_SLICE_SEGMENT	(1ULL << 9)
 
+#define V4L2_HEVC_SLICE_MAX_COUNT	600
+
 /**
  * v4l2_ctrl_hevc_slice_params - HEVC slice parameters
  *
+ * This control is a dynamically sized 1-dimensional array,
+ * V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
+ *
  * @bit_size: size (in bits) of the current slice data
  * @data_bit_offset: offset (in bits) to the video data in the current slice data
  * @nal_unit_type: specifies the coding type of the slice (B, P or I)
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
