Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB50C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:05:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 11F4464E04
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:05:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 11F4464E04
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9yPAmR3SAj/Q1UtMUbbthtosivkhgkiH1cwZtDTC6DM=; b=F9iAllRAGnrofLuFImFvwK4P0
	3sqK6ISNjSCjmldp7IZN2mXwdhIZM4Ob4KqDLQDnyMHYBTYwkvOdkSRz23pjnl52ccni1AviXek6t
	5lP2/blSLx2n82XA6JDrC6lJfgiC5rURntn/G40ONeYrQdoaqaxRF9fsWRnhsWFgRl+RY1Y2x8Na5
	dxHUJMrFXMxQiR8ARaeK2lGGRXAw9m052r0AU1Ycqze9UdnUuvThMJ50NyF+8qARwHa1KFkXDLV6t
	VBQjyZ1/dOurv5wCfwx4Jh1H3rPYC2Eg29Qw6VjmwZQzbO28HQWmfcTIZWZxddi/Ml5PgRkUrcp2e
	P4Z1hLV4g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCHpT-0007L4-24; Wed, 17 Feb 2021 08:04:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCHoH-0006qt-Qm; Wed, 17 Feb 2021 08:03:47 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 80CB21F4503E;
 Wed, 17 Feb 2021 08:03:41 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 05/18] media: controls: Add control for HEVC codec
Date: Wed, 17 Feb 2021 09:02:53 +0100
Message-Id: <20210217080306.157876-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_030346_137858_83114674 
X-CRM114-Status: GOOD (  13.82  )
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

Add HEVC decode params and scaling matrix controls.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 36 ++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 016cf6204cbb..5e45333fd862 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1028,6 +1028,8 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_MPEG_VIDEO_HEVC_SPS:			return "HEVC Sequence Parameter Set";
 	case V4L2_CID_MPEG_VIDEO_HEVC_PPS:			return "HEVC Picture Parameter Set";
 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:		return "HEVC Slice Parameters";
+	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:		return "HEVC Decode Parameters";
+	case V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX:		return "HEVC Scaling Matrix";
 	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE:		return "HEVC Decode Mode";
 	case V4L2_CID_MPEG_VIDEO_HEVC_START_CODE:		return "HEVC Start Code";
 
@@ -1482,6 +1484,12 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS:
 		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
 		break;
+	case V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS:
+		*type = V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS;
+		break;
+	case V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX:
+		*type = V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX;
+		break;
 	case V4L2_CID_UNIT_CELL_SIZE:
 		*type = V4L2_CTRL_TYPE_AREA;
 		*flags |= V4L2_CTRL_FLAG_READ_ONLY;
@@ -1833,6 +1841,7 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 	struct v4l2_ctrl_hevc_sps *p_hevc_sps;
 	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
 	struct v4l2_ctrl_hevc_slice_params *p_hevc_slice_params;
+	struct v4l2_ctrl_hevc_decode_params *p_hevc_decode_params;
 	struct v4l2_area *area;
 	void *p = ptr.p + idx * ctrl->elem_size;
 	unsigned int i;
@@ -2108,26 +2117,33 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		zero_padding(*p_hevc_pps);
 		break;
 
-	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
-		p_hevc_slice_params = p;
+	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
+		p_hevc_decode_params = p;
 
-		if (p_hevc_slice_params->num_active_dpb_entries >
+		if (p_hevc_decode_params->num_active_dpb_entries >
 		    V4L2_HEVC_DPB_ENTRIES_NUM_MAX)
 			return -EINVAL;
 
-		zero_padding(p_hevc_slice_params->pred_weight_table);
-
-		for (i = 0; i < p_hevc_slice_params->num_active_dpb_entries;
+		for (i = 0; i < p_hevc_decode_params->num_active_dpb_entries;
 		     i++) {
 			struct v4l2_hevc_dpb_entry *dpb_entry =
-				&p_hevc_slice_params->dpb[i];
+				&p_hevc_decode_params->dpb[i];
 
 			zero_padding(*dpb_entry);
 		}
 
+		break;
+
+	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
+		p_hevc_slice_params = p;
+
+		zero_padding(p_hevc_slice_params->pred_weight_table);
 		zero_padding(*p_hevc_slice_params);
 		break;
 
+	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
+		break;
+
 	case V4L2_CTRL_TYPE_AREA:
 		area = p;
 		if (!area->width || !area->height)
@@ -2821,6 +2837,12 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
 	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
 		elem_size = sizeof(struct v4l2_ctrl_hevc_slice_params);
 		break;
+	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
+		elem_size = sizeof(struct v4l2_ctrl_hevc_decode_params);
+		break;
+	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
+		elem_size = sizeof(struct v4l2_ctrl_hevc_scaling_matrix);
+		break;
 	case V4L2_CTRL_TYPE_AREA:
 		elem_size = sizeof(struct v4l2_area);
 		break;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
