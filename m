Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89BCC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:05:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B17064DE9
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:05:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B17064DE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CqVijgma9L2s+mPtJkSj/ZKq6E3o+7E73Ez8zHSiJTk=; b=AOGtjYpStkAxVg0sGH0DUEMwy
	mESG8AADAiKlK1wVlkc3g29Wm69Dyu/I5iJ5sd2/SpY3v/FEpH4xs3lu6S1H+mDv2fWnnPYq5qq51
	XS/rR3wCnLGbJFxaRX9A1ptspIYPa7Yn26FtM2UJlU5VjdPI8arvQ236LRIZG+7AyarFgjjSsVhK7
	z/mDSXZFWPsZtYpwtJFoOl7TCl6AQNvxIsgIlr41Y2Xwjgj5NE43Bs2uZAO4AsnNBpCzf2iSWYr76
	TdvLfrl4eYT2BCzafs8kEPZmzu+MsMyXs1mgB4vLj267NQ7ca6FmgcBcVyhtz7TAwP21H8jCxGD8A
	tE3C46esQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCHqC-0007dW-55; Wed, 17 Feb 2021 08:05:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCHoW-0006vl-1G; Wed, 17 Feb 2021 08:04:01 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B56251F4507A;
 Wed, 17 Feb 2021 08:03:55 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 08/18] media: hantro: Add HEVC structures
Date: Wed, 17 Feb 2021 09:02:56 +0100
Message-Id: <20210217080306.157876-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_030400_214645_28E4602D 
X-CRM114-Status: GOOD (  11.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add structures and context for HEVC support

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h    |  3 ++
 drivers/staging/media/hantro/hantro_hw.h | 35 ++++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 2a566dfc2fe3..8459643657ab 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -34,6 +34,7 @@ struct hantro_codec_ops;
 #define HANTRO_MPEG2_DECODER	BIT(16)
 #define HANTRO_VP8_DECODER	BIT(17)
 #define HANTRO_H264_DECODER	BIT(18)
+#define HANTRO_HEVC_DECODER	BIT(19)
 #define HANTRO_DECODERS		0xffff0000
 
 #define HANTRO_G1_REV		0x6731
@@ -224,6 +225,7 @@ struct hantro_dev {
  * @jpeg_enc:		JPEG-encoding context.
  * @mpeg2_dec:		MPEG-2-decoding context.
  * @vp8_dec:		VP8-decoding context.
+ * @hevc_dec:		HEVC-decoding context.
  */
 struct hantro_ctx {
 	struct hantro_dev *dev;
@@ -250,6 +252,7 @@ struct hantro_ctx {
 		struct hantro_jpeg_enc_hw_ctx jpeg_enc;
 		struct hantro_mpeg2_dec_hw_ctx mpeg2_dec;
 		struct hantro_vp8_dec_hw_ctx vp8_dec;
+		struct hantro_hevc_dec_hw_ctx hevc_dec;
 	};
 };
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34c9e4649a25..191c5ba4a599 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -90,6 +90,41 @@ struct hantro_h264_dec_hw_ctx {
 	struct hantro_h264_dec_ctrls ctrls;
 };
 
+/**
+ * struct hantro_hevc_dec_ctrls
+ * @scaling:	Scaling info
+ * @decode_params: Decode params
+ * @sps:	SPS info
+ * @pps:	PPS info
+ */
+struct hantro_hevc_dec_ctrls {
+	const struct v4l2_ctrl_hevc_scaling_matrix *scaling;
+	const struct v4l2_ctrl_hevc_decode_params *decode_params;
+	const struct v4l2_ctrl_hevc_sps *sps;
+	const struct v4l2_ctrl_hevc_pps *pps;
+};
+
+/**
+ * struct hantro_hevc_dec_hw_ctx
+ * @scaling_lists:	Scaling lists buffer
+ * @tile_sizes:		Tile sizes buffer
+ * @tile_filter:	Tile vertical filter buffer
+ * @tile_sao:		Tile SAO buffer
+ * @tile_bsd:		Tile BSD control buffer
+ * @dpb:	DPB
+ * @reflists:	P/B0/B1 reflists
+ * @ctrls:	V4L2 controls attached to a run
+ */
+struct hantro_hevc_dec_hw_ctx {
+	struct hantro_aux_buf scaling_lists;
+	struct hantro_aux_buf tile_sizes;
+	struct hantro_aux_buf tile_filter;
+	struct hantro_aux_buf tile_sao;
+	struct hantro_aux_buf tile_bsd;
+	struct hantro_hevc_dec_ctrls ctrls;
+	unsigned int num_tile_cols_allocated;
+};
+
 /**
  * struct hantro_mpeg2_dec_hw_ctx
  * @qtable:		Quantization table
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
