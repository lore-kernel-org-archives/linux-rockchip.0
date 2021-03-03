Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 384C4C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 17:01:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B505964E25
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 17:01:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B505964E25
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DCTwuWPn49HNG06Nu0xOQoDTVS7MTnuMlI0a+9cS8Kc=; b=G7qVQLkh8Q5qGsukPODmWKDeW
	DM4mTcW5zMfQokDWPrtR2ZegGJFbA06+Vt6pCW1ZCaCWPMDf9JLpyH3Z42k47A5gRzvhu2hzPtN+o
	lPyrvEDluMRK/mTbh1oF0LqFKpim+a46sokTEYPhdENb0VYbxZmEA6Kjz7X6/veViUbBB8xKbbbzZ
	O1EghVBSYE5uOtwNQEB5uKT0AcByOz+khtQxJeiGL7Cb+Vs98few+owgdXLvu986B9t92/6hoxTo0
	p4UxeidjOA+HtEJv22c+cz5S3rTd0zCmAgso5TQGLtyHAmz9cVx5z+V017sH3zW8s9awOJUteoeB1
	cCYzMkSBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHUsb-005iAL-Je; Wed, 03 Mar 2021 17:01:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSsG-005Ei2-2U; Wed, 03 Mar 2021 14:53:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=0CvSFS/F/cGKpC6RiWLtDNn6z/28c/ED4xuPmqfFEuw=; b=QWiuzA5oGJsP8Jv+nrxrwhH+2B
 cjKGndfJ3BxxyUYA/0KGctXsD2VoKJN4OMUA9wrp5drv0mYrVHFs3QZmDIMWwWS7f4ndd+bOYovzk
 woUDKitfGyIJcEDFltNCEc+SYI4gr8+v4o8kB+p3XpPNXIIbRkARDpobvAzwfn4CNYLhpHv+PSZrX
 psp0ghOxFw9dVFqvWWN5RKqZ4i0G4cyNWVBWA3CnCwqL5Tn54xJZo7nh2wB6zRFZ3GIUhUCBa1CRM
 qRVq5LlDQOCmAct+nxPClVH4wK2gwS/KWHEm8eez5u9DT9O5rtrNcL+wkKCrLXndg0gJxtIr/ZX6w
 U5bwg0cw==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHPrb-002O2p-U8; Wed, 03 Mar 2021 11:40:24 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:2035:1dcd:21c7:b3af])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 85C751F45C2C;
 Wed,  3 Mar 2021 11:40:20 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 04/11] media: hantro: Define HEVC codec profiles and
 supported features
Date: Wed,  3 Mar 2021 12:39:45 +0100
Message-Id: <20210303113952.178519-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_114024_752594_015EBB3C 
X-CRM114-Status: GOOD (  14.32  )
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

Define which HEVC profiles (up to level 5.1) and features
(no scaling, no 10 bits) are supported by the driver.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro.h     |  3 ++
 drivers/staging/media/hantro/hantro_drv.c | 58 +++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 65f9f7ea7dcf..a76a0d79db9f 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -34,6 +34,7 @@ struct hantro_codec_ops;
 #define HANTRO_MPEG2_DECODER	BIT(16)
 #define HANTRO_VP8_DECODER	BIT(17)
 #define HANTRO_H264_DECODER	BIT(18)
+#define HANTRO_HEVC_DECODER	BIT(19)
 #define HANTRO_DECODERS		0xffff0000
 
 /**
@@ -99,6 +100,7 @@ struct hantro_variant {
  * @HANTRO_MODE_H264_DEC: H264 decoder.
  * @HANTRO_MODE_MPEG2_DEC: MPEG-2 decoder.
  * @HANTRO_MODE_VP8_DEC: VP8 decoder.
+ * @HANTRO_MODE_HEVC_DEC: HEVC decoder.
  */
 enum hantro_codec_mode {
 	HANTRO_MODE_NONE = -1,
@@ -106,6 +108,7 @@ enum hantro_codec_mode {
 	HANTRO_MODE_H264_DEC,
 	HANTRO_MODE_MPEG2_DEC,
 	HANTRO_MODE_VP8_DEC,
+	HANTRO_MODE_HEVC_DEC,
 };
 
 /*
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ac1429f00b33..f0b68e16fcc0 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -245,6 +245,18 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != 0)
 			/* Only 8-bit is supported */
 			return -EINVAL;
+	} else if (ctrl->id == V4L2_CID_MPEG_VIDEO_HEVC_SPS) {
+		const struct v4l2_ctrl_hevc_sps *sps = ctrl->p_new.p_hevc_sps;
+
+		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
+			/* Luma and chroma bit depth mismatch */
+			return -EINVAL;
+		if (sps->bit_depth_luma_minus8 != 0)
+			/* Only 8-bit is supported */
+			return -EINVAL;
+		if (sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED)
+			/* No scaling support */
+			return -EINVAL;
 	}
 	return 0;
 }
@@ -351,6 +363,52 @@ static const struct hantro_ctrl controls[] = {
 			.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
 		}
 	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE,
+			.min = V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_FRAME_BASED,
+			.max = V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_FRAME_BASED,
+			.def = V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_FRAME_BASED,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_START_CODE,
+			.min = V4L2_MPEG_VIDEO_HEVC_START_CODE_ANNEX_B,
+			.max = V4L2_MPEG_VIDEO_HEVC_START_CODE_ANNEX_B,
+			.def = V4L2_MPEG_VIDEO_HEVC_START_CODE_ANNEX_B,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
+			.min = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+			.max = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10,
+			.def = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
+			.min = V4L2_MPEG_VIDEO_HEVC_LEVEL_1,
+			.max = V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_SPS,
+			.ops = &hantro_ctrl_ops,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_PPS,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS,
+		},
 	},
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
