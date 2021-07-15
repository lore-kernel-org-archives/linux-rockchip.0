Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89160C07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 15:13:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 566816128B
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 15:13:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 566816128B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79smL2PzCVJT8bRivcYOduI9DhfHsB1OFWa45Fc5RZo=; b=P9Xss2oXtUcoMh
	cKt+WfryxewQFzIwnDaG74EKpB6XFUmhgye18J0q1XkSQhPTkf/Y6ggadKPw3eGqJ66A99TOzWKHq
	mfFuOEIalEQfCCKsx9in8rtG6KwFjm/YuS1EiXH59HhxSFFKElP1Te5+eTrHbtetDd6KZgOQvjR1+
	3A2pwXVJ2Lp/H5SFiLjbflxTdc+5HbLbHTUxCyyZyMK7ogk7J7MbYzyS2wVOlldFNeIRDbMaYPscw
	kdwWRaCX1MZd4pwWLFNFQLCB9yOD2DxhyPcNifF30uuUkJzyj6dzroEanmuxr3n7FdSz/HzDlsKmF
	JQl/j68BS7IvLU0YuKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m433L-001AwS-8a; Thu, 15 Jul 2021 15:13:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m432g-001Aga-Gq; Thu, 15 Jul 2021 15:12:53 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:674e:7061:b49f:bcc0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D04FE1F43A01;
 Thu, 15 Jul 2021 16:12:37 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 jernej.skrabec@gmail.com, nicolas@ndufresne.ca, cphealy@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v1 1/2] media: hevc: Add scaling matrix control
Date: Thu, 15 Jul 2021 17:12:22 +0200
Message-Id: <20210715151223.656453-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210715151223.656453-1-benjamin.gaignard@collabora.com>
References: <20210715151223.656453-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_081250_848315_B0C2794A 
X-CRM114-Status: GOOD (  15.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

HEVC scaling lists are used for the scaling process for transform
coefficients.
V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED has to set when they are
encoded in the bitstream.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/v4l/ext-ctrls-codec.rst             | 57 +++++++++++++++++++
 .../media/v4l/vidioc-queryctrl.rst            |  6 ++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  6 ++
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  4 ++
 include/media/hevc-ctrls.h                    | 11 ++++
 5 files changed, 84 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index dc096a5562cd..ab3bda79b440 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3071,6 +3071,63 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
 
     \normalsize
 
+``V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX (struct)``
+    Specifies the HEVC scaling matrix parameters used for the scaling process
+    for transform coefficients.
+    These matrix and parameters are defined according to :ref:`hevc`.
+    They are described in section 7.4.5 "Scaling list data semantics" of
+    the specification.
+
+.. c:type:: v4l2_ctrl_hevc_scaling_matrix
+
+.. raw:: latex
+
+    \scriptsize
+
+.. tabularcolumns:: |p{5.4cm}|p{6.8cm}|p{5.1cm}|
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_hevc_scaling_matrix
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``scaling_list_4x4[6][16]``
+      - Scaling list is used for the scaling process for transform
+        coefficients. The values on each scaling list are expected
+        in raster scan order.
+    * - __u8
+      - ``scaling_list_8x8[6][64]``
+      - Scaling list is used for the scaling process for transform
+        coefficients. The values on each scaling list are expected
+        in raster scan order.
+    * - __u8
+      - ``scaling_list_16x16[6][64]``
+      - Scaling list is used for the scaling process for transform
+        coefficients. The values on each scaling list are expected
+        in raster scan order.
+    * - __u8
+      - ``scaling_list_32x32[2][64]``
+      - Scaling list is used for the scaling process for transform
+        coefficients. The values on each scaling list are expected
+        in raster scan order.
+    * - __u8
+      - ``scaling_list_dc_coef_16x16[6]``
+      - Scaling list is used for the scaling process for transform
+        coefficients. The values on each scaling list are expected
+        in raster scan order.
+    * - __u8
+      - ``scaling_list_dc_coef_32x32[2]``
+      - Scaling list is used for the scaling process for transform
+        coefficients. The values on each scaling list are expected
+        in raster scan order.
+
+.. raw:: latex
+
+    \normalsize
+
 .. c:type:: v4l2_hevc_dpb_entry
 
 .. raw:: latex
diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
index f9ecf6276129..2f491c17dd5d 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
@@ -495,6 +495,12 @@ See also the examples in :ref:`control`.
       - n/a
       - A struct :c:type:`v4l2_ctrl_hevc_slice_params`, containing HEVC
 	slice parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_hevc_scaling_matrix`, containing HEVC
+	scaling matrix for stateless video decoders.
     * - ``V4L2_CTRL_TYPE_VP8_FRAME``
       - n/a
       - n/a
diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index c4b5082849b6..70adfc1b9c81 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -687,6 +687,9 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 
 		break;
 
+	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
+		break;
+
 	case V4L2_CTRL_TYPE_AREA:
 		area = p;
 		if (!area->width || !area->height)
@@ -1240,6 +1243,9 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
 	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
 		elem_size = sizeof(struct v4l2_ctrl_hevc_slice_params);
 		break;
+	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
+		elem_size = sizeof(struct v4l2_ctrl_hevc_scaling_matrix);
+		break;
 	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
 		elem_size = sizeof(struct v4l2_ctrl_hevc_decode_params);
 		break;
diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
index b6344bbf1e00..cb29c2a7fabe 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
@@ -996,6 +996,7 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:			return "HEVC Sequence Parameter Set";
 	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:			return "HEVC Picture Parameter Set";
 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:		return "HEVC Slice Parameters";
+	case V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX:		return "HEVC Scaling Matrix";
 	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:		return "HEVC Decode Parameters";
 	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE:		return "HEVC Decode Mode";
 	case V4L2_CID_MPEG_VIDEO_HEVC_START_CODE:		return "HEVC Start Code";
@@ -1488,6 +1489,9 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:
 		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
 		break;
+	case V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX:
+		*type = V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX;
+		break;
 	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:
 		*type = V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
 		break;
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 781371bff2ad..ef63bc205756 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -19,6 +19,7 @@
 #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_CODEC_BASE + 1008)
 #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_CODEC_BASE + 1009)
 #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_CODEC_BASE + 1010)
+#define V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX	(V4L2_CID_CODEC_BASE + 1011)
 #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS	(V4L2_CID_CODEC_BASE + 1012)
 #define V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE	(V4L2_CID_CODEC_BASE + 1015)
 #define V4L2_CID_MPEG_VIDEO_HEVC_START_CODE	(V4L2_CID_CODEC_BASE + 1016)
@@ -27,6 +28,7 @@
 #define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
 #define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
 #define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
+#define V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX 0x0123
 #define V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS 0x0124
 
 enum v4l2_mpeg_video_hevc_decode_mode {
@@ -225,6 +227,15 @@ struct v4l2_ctrl_hevc_decode_params {
 	__u64	flags;
 };
 
+struct v4l2_ctrl_hevc_scaling_matrix {
+	__u8	scaling_list_4x4[6][16];
+	__u8	scaling_list_8x8[6][64];
+	__u8	scaling_list_16x16[6][64];
+	__u8	scaling_list_32x32[2][64];
+	__u8	scaling_list_dc_coef_16x16[6];
+	__u8	scaling_list_dc_coef_32x32[2];
+};
+
 /*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
 #define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
 /*
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
