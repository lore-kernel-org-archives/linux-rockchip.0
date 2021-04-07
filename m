Return-Path: <SRS0=HYuE=JE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CB28C43460
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Apr 2021 07:38:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D69D561019
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Apr 2021 07:38:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D69D561019
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+tqwouKzC8uIJd/53ybatzkxauP9hkt55zjh3oQdw2E=; b=o+lKYgp5hB78IfIceWWE2RPEG
	0IR+iNKEaAMBro8KYdTLp1b/i2Seog1g5mkjAMXr8be2PwZXNNrxTMn1D9SMm4algwbltnYcDb+sE
	il+jEO36jO9QrVJ59T6SxohQq4TWfoL1Kxm8srZjvIlU92ijSnjnb54zI8ZBId32Joy1ZGq/X+i+w
	/TsiwaYlYMtsBcMji/nDlGHft5AVBNoW05tHS3K/VlQw5K01a36TVTKUnFHlD+48tfw83rlP68nOo
	MYcwautppVw5vgvu3DZGbQtkJAsUnsm4qmxoQu0OflcNyblmrL7V4qIx0jXJfcieLoi2epP7wm0g4
	1P4iRImnw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lU2lY-004OPW-1f; Wed, 07 Apr 2021 07:38:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lU2jA-004Nj2-0E; Wed, 07 Apr 2021 07:35:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id A9F9E1F44FEC
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v9 04/13] media: hevc: Add fields and flags for hevc PPS
Date: Wed,  7 Apr 2021 09:35:25 +0200
Message-Id: <20210407073534.376722-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_083552_474933_7A6C202C 
X-CRM114-Status: UNSURE (   8.70  )
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
version 8:
 - add Ezequiel review tag

 .../userspace-api/media/v4l/ext-ctrls-codec.rst    | 14 ++++++++++++++
 include/media/hevc-ctrls.h                         |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index b0de4e6e7ebd..aabcb0e63a5e 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3000,6 +3000,12 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
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
@@ -3110,6 +3116,14 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
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
index b4cb2ef02f17..003f819ecb26 100644
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
