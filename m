Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BDA7C47096
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 11:50:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DADA9613EE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 11:50:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DADA9613EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yVhzqmjErlNtR2MF4fdCXIfsP62kPLjaPby8dybao4=; b=43IqNmDh90Xm5E
	oF525yUVmMIHV3oPXzAMDGmdq1TS5Dzv/+lwK2ERqVt3sjeGwfQj+oUwTropnHCWqEppZLkSeQyl3
	wpCLGw0CYybMOH+JV7gXXZnibmNJQBTCb6TG0uOZCXPQcb+hww/jp5HAmOT1vzwVGeeDMu4/uYuOB
	36T9lHY3QKna11c+6+OVAiss0E2MJcbk9PPN28/dUG5Zez3bBdVa91wKUc+bDC5sFuKjoovmmpTcf
	xz+x8qyyGXhUySxWK6HdahtZ8nMK6517xyrF5jR4yofLldgVaJhzKTUeU2thitlKOr3mA2KtcVa5+
	ymoapSBwladYlVsJZzFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lols8-008Qjp-O0; Thu, 03 Jun 2021 11:50:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lolrd-008QTX-1r; Thu, 03 Jun 2021 11:50:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id CB4901F42FDD
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v13 1/9] media: hevc: Add fields and flags for hevc PPS
Date: Thu,  3 Jun 2021 13:49:56 +0200
Message-Id: <20210603115004.915294-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210603115004.915294-1-benjamin.gaignard@collabora.com>
References: <20210603115004.915294-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_045017_247394_D973AB04 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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

Add fields and flags as they are defined in
7.4.3.3.1 "General picture parameter set RBSP semantics of the
H.265 ITU specification.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../userspace-api/media/v4l/ext-ctrls-codec.rst    | 14 ++++++++++++++
 include/media/hevc-ctrls.h                         |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index 0b8061666c57..9cfb471fc6be 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -2783,6 +2783,12 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - __u8
       - ``num_extra_slice_header_bits``
       -
+    * - __u8
+      - ``num_ref_idx_l0_default_active_minus1``
+      - Specifies the inferred value of num_ref_idx_l0_active_minus1
+    * - __u8
+      - ``num_ref_idx_l1_default_active_minus1``
+      - Specifies the inferred value of num_ref_idx_l1_active_minus1
     * - __s8
       - ``init_qp_minus26``
       -
@@ -2893,6 +2899,14 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - ``V4L2_HEVC_PPS_FLAG_SLICE_SEGMENT_HEADER_EXTENSION_PRESENT``
       - 0x00040000
       -
+    * - ``V4L2_HEVC_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT``
+      - 0x00080000
+      - Specifies the presence of deblocking filter control syntax elements in
+        the PPS
+    * - ``V4L2_HEVC_PPS_FLAG_UNIFORM_SPACING``
+      - 0x00100000
+      - Specifies that tile column boundaries and likewise tile row boundaries
+        are distributed uniformly across the picture
 
 .. raw:: latex
 
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 226fcfa0e026..245052c15864 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -100,10 +100,14 @@ struct v4l2_ctrl_hevc_sps {
 #define V4L2_HEVC_PPS_FLAG_PPS_DISABLE_DEBLOCKING_FILTER	(1ULL << 16)
 #define V4L2_HEVC_PPS_FLAG_LISTS_MODIFICATION_PRESENT		(1ULL << 17)
 #define V4L2_HEVC_PPS_FLAG_SLICE_SEGMENT_HEADER_EXTENSION_PRESENT (1ULL << 18)
+#define V4L2_HEVC_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT	(1ULL << 19)
+#define V4L2_HEVC_PPS_FLAG_UNIFORM_SPACING			(1ULL << 20)
 
 struct v4l2_ctrl_hevc_pps {
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture parameter set */
 	__u8	num_extra_slice_header_bits;
+	__u8	num_ref_idx_l0_default_active_minus1;
+	__u8	num_ref_idx_l1_default_active_minus1;
 	__s8	init_qp_minus26;
 	__u8	diff_cu_qp_delta_depth;
 	__s8	pps_cb_qp_offset;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
