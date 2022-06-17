Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09021C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 08:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ7JTVg/U0uM2kbspPVgvwbWOT3BbQ0uk/T+/MBSy8g=; b=zxnDKf4rs0329T
	Mj0gLoX/fIwgWK/gazpouXSmoWcR3CMe8em3ZXgl+BYwWQBtP1M78OnzA46YgJp2PTmymJ8qfFHVh
	OUFd06cGdIInoZFcGcbO4HmLEXzRR7uOraV1HPHw1pceyHNoE0hbG1pnZSJnS1NH6gb1RSt5ZwBFQ
	007miZ0rttZ3m66T1O8f91gXnc+a68fN4116tGkHTIW+pdZopRZdJPbth7yUId91MS2MFQ6zul2mt
	oGe869MQuR1Twrcct3pk71Q+8lXPGWcx6//hmh07MrV39kZB/PkPLwz+NSTGqal0nJUgEppBuRoQA
	LUnC1R1cZ03rDcfhlL+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27ac-006QJ6-Dg; Fri, 17 Jun 2022 08:44:26 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27Sh-006MTK-F4; Fri, 17 Jun 2022 08:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Mbim9ONzHly2oMyAKLB7eDRv5iUplE4QLHxp2ew+G2o=; b=NaX2vGQeeGH+Yd5vhuHHlZ8EZj
	9ibNolmuGykeh5KbPCZKRu6vkaGZxPjlZ0FUhR9kFBlrnfM4oHgX9XiCxWbwlip+em5PE2SnkFqEf
	ULT/0qbniSmLxPovqR+pJ+bhJvUFHqAi31jzz9lZO6MdIAyIoa9+nxf5kAmvU2di/c8B5t9gHAbqe
	MKgVk1x/ZA1hk21EGFc9nHnx/SLNq6fj4dmxqro9g3bOz0pq0s/AOHn7NBowqsob5twRMGzoIc0HU
	+e3GHi3kXGN4n2O3M/inDHkOJvVlVIVsuDJUY31Wz7zQIsaYO9nev/1l3y33TG+SzoRLwdCtAS4bc
	78AonxMA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27Sa-008dWq-NV; Fri, 17 Jun 2022 08:36:10 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8275C66017FD;
	Fri, 17 Jun 2022 09:35:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655454960;
	bh=O5jF27KTjM3t7xgJqAmyOnOlZO0X1MFpuiMe4YkuDMM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Qn9fyPTSACUNXzD3zmJSHVh0oXrXnel/wh81B8kw4NfAyUWqdV2fG/93XOkevPfMc
	 6Ad+/JxN1Qgd+QKy7qoLz5L2rBOUTdhMBs8Zj4p4AE6pGZYOOMFP8SR+2J+IcXaZCO
	 DzACgXJftysV4rdXpjcBt5L6ffSyv6db5is6dds7BPjjpS1dZll2OdpMeMKXRdwNt0
	 /diz4JvgiQ9cpfqPG3lh5tmzVr9EANV6zIH7uc7Wo/HSlDCdObD8Sm+NQquKWL4N/s
	 4FHGkFuVGH45g3Si4GGFIp63yVLmdhTzR1H/ABUSi9c67GbwCakRf1yJ29+/T9gC/B
	 UoVpC+itDZvJQ==
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
Subject: [PATCH v9 09/17] media: uapi: HEVC: Define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Date: Fri, 17 Jun 2022 10:35:37 +0200
Message-Id: <20220617083545.133920-10-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
References: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_093609_153884_D870F5C9 
X-CRM114-Status: GOOD (  13.00  )
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

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 9:
- Add comment about current driver dynamic limitation to 1
- Remove unused define

 Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 2 ++
 drivers/media/v4l2-core/v4l2-ctrls-defs.c                 | 1 +
 drivers/staging/media/sunxi/cedrus/cedrus.c               | 2 ++
 include/media/hevc-ctrls.h                                | 3 +++
 4 files changed, 8 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index eeb60c9a1af4..db0df7d9f27c 100644
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
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 87be975a72b6..b12219123a6b 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -178,6 +178,8 @@ static const struct cedrus_control cedrus_controls[] = {
 	{
 		.cfg = {
 			.id	= V4L2_CID_STATELESS_HEVC_SLICE_PARAMS,
+			/* The driver can only handle 1 entry per slice for now */
+			.dims   = { 1 },
 		},
 		.codec		= CEDRUS_CODEC_H265,
 	},
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 57053cfa099b..341fc795d550 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -314,6 +314,9 @@ struct v4l2_hevc_pred_weight_table {
 /**
  * struct v4l2_ctrl_hevc_slice_params - HEVC slice parameters
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
