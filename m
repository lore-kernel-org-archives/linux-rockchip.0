Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B681C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 08:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qj+b+//fa6SxMAhra9gK5c+GkSUpnXYOUkZj1xb8dFg=; b=zTXRjrjbR6gX13
	eXcF4viPBlmwPDkp9neTFzTZJcmrywdbHegeoAPRXmuLEzI9eVW3viMrPQfkCzwFerdTuPEBvmeyj
	oo4XEyJktOpAZp+AfBskMOQJeOINJi9uF5Q+xV+j5nUcW/QP/QrcLXF4jFi4Q38JLnvFECz+gQCDY
	seYAuNyGqM7VjiJ/HATujUOm33bSRSZi5Hhc2QHb1QmWXYIpACQkhCeWee7Xl13CmcRMRSHmJPfLM
	ILWUGN3xahcJDP6H+odysW2YGKqCbd8SITargOqj7K/7gPwIZEVh7o7pL7QpTq5XP9kgqlKM5PN4A
	flj9xS24iuU6AtVj+klg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12DD-008Nv6-DG; Tue, 14 Jun 2022 08:47:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o122m-008ICF-Pn; Tue, 14 Jun 2022 08:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=69p0iSGfkP3xMoh3Am8Mlgw20KB98124PxuF6i55mMs=; b=jmYLB6HwwLbte7Sn4yjRwNq5N+
	EX67PM7fm5N1x1b+d0fu9tFeiDjBy71C00fHXwGtqQI0MRAQCxo6OP10pcpfh9yg08sgo7LcS/piZ
	MZChUPtDAuyl+dosb6VyXWs0cqyanSNFlAcOuB7+ceknRjrZJdpjgOi5qkDDinvoVAUICmDdEPHFb
	X7cP4gTlidd2DYDdHYUkrhLAQErJ+v9Mfa99IEYYOxtmJJwRg9hxuT+e44HUwCWeVWfCY2CbqpGcK
	R6UtMKB1NbKk++eW1uxghByOdp2tr7b8wAYD3kikD+9ytkc8WrRzwqpnQmDTrtcZpNIhUN5IHc0RO
	gS2F7A1Q==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11JX-007nWl-2Z; Tue, 14 Jun 2022 07:50:18 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4a7b:8d3a:acaa:ec46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7DD4666016F8;
	Tue, 14 Jun 2022 08:50:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655193006;
	bh=u1oYFY91lKCaG1IS2p75wfBvd3Ndu0vMqfec7fE7nLk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Qbtmge5h+PHV1Ma+D2YXzzC9f1Z6lCI4LqHtnkHbdOrjpKTN2I3/m3xQkO1KsT2Oh
	 qyNt4FcLGxIIN1AlA4PI4dbgaTyFDMHMBfTpoZqo1gIhHODLSsRdkQ9Kze3XHQQ+uZ
	 QlFbQpsOQR+dICLmS4cqDOnC8Fw+yRoQ3JAOtfp4gauCMNTOwWIXi9f3WWMXfo928c
	 kZNhYCs1uLSEqGYrwEx3uvbaP55cUcrlF7MOzh/NAo35ATbcKXNjlESaS0SKsNE5+V
	 QYzFktBZpOmBCc7R62+Y1M7xj763vm8Jueg0fGjfBDDfrgShhbvH1nNrnQFbrBadMi
	 qbMpB33mxelKw==
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
Subject: [PATCH v7 15/17] media: uapi: HEVC: fix padding in v4l2 control structures
Date: Tue, 14 Jun 2022 09:49:45 +0200
Message-Id: <20220614074947.160316-16-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
References: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_085015_641273_10555972 
X-CRM114-Status: GOOD (  12.85  )
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

Fix padding where needed to remove holes and stay align on cache boundaries

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/v4l/ext-ctrls-codec.rst             |  6 +++---
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  9 ---------
 include/media/hevc-ctrls.h                    | 19 ++++++++++++-------
 3 files changed, 15 insertions(+), 19 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index 05228e280f66..48a8825a001b 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3509,9 +3509,6 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - __u8
       - ``num_active_dpb_entries``
       - The number of entries in ``dpb``.
-    * - struct :c:type:`v4l2_hevc_dpb_entry`
-      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
-      - The decoded picture buffer, for meta-data about reference frames.
     * - __u8
       - ``num_poc_st_curr_before``
       - The number of reference pictures in the short-term set that come before
@@ -3535,6 +3532,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
       - ``poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
       - PocLtCurr as described in section 8.3.2 "Decoding process for reference
         picture set": provides the index of the long term references in DPB array.
+    * - struct :c:type:`v4l2_hevc_dpb_entry`
+      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
+      - The decoded picture buffer, for meta-data about reference frames.
     * - __u64
       - ``flags``
       - See :ref:`Decode Parameters Flags <hevc_decode_params_flags>`
diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index c5c5407584ff..fb68786c498b 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -824,20 +824,11 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		if (p_hevc_decode_params->num_active_dpb_entries >
 		    V4L2_HEVC_DPB_ENTRIES_NUM_MAX)
 			return -EINVAL;
-
-		for (i = 0; i < p_hevc_decode_params->num_active_dpb_entries;
-		     i++) {
-			struct v4l2_hevc_dpb_entry *dpb_entry =
-				&p_hevc_decode_params->dpb[i];
-
-			zero_padding(*dpb_entry);
-		}
 		break;
 
 	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
 		p_hevc_slice_params = p;
 
-		zero_padding(p_hevc_slice_params->pred_weight_table);
 		zero_padding(*p_hevc_slice_params);
 		break;
 
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index efc0412ac41e..9abca1a75bd4 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -133,7 +133,9 @@ struct v4l2_ctrl_hevc_sps {
 	__u8	chroma_format_idc;
 	__u8	sps_max_sub_layers_minus1;
 
+	__u8	reserved[6];
 	__u64	flags;
+	__u8	padding[24];
 };
 
 #define V4L2_HEVC_PPS_FLAG_DEPENDENT_SLICE_SEGMENT_ENABLED	(1ULL << 0)
@@ -210,9 +212,10 @@ struct v4l2_ctrl_hevc_pps {
 	__s8	pps_beta_offset_div2;
 	__s8	pps_tc_offset_div2;
 	__u8	log2_parallel_merge_level_minus2;
+	__u8	reserved[9];
 
-	__u8	padding[4];
 	__u64	flags;
+	__u8	padding[56];
 };
 
 #define V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE	0x01
@@ -245,8 +248,8 @@ struct v4l2_hevc_dpb_entry {
 	__u64	timestamp;
 	__u8	flags;
 	__u8	field_pic;
+	__u16	reserved;
 	__s32	pic_order_cnt_val;
-	__u8	padding[2];
 };
 
 /**
@@ -285,8 +288,6 @@ struct v4l2_hevc_pred_weight_table {
 	__s8	delta_chroma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
 	__s8	chroma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
 
-	__u8	padding[6];
-
 	__u8	luma_log2_weight_denom;
 	__s8	delta_chroma_log2_weight_denom;
 };
@@ -381,18 +382,20 @@ struct v4l2_ctrl_hevc_slice_params {
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture timing SEI message */
 	__u8	pic_struct;
 
+	__u8	reserved0[3];
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
 	__u32	slice_segment_addr;
 	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u16	short_term_ref_pic_set_size;
 	__u16	long_term_ref_pic_set_size;
-	__u8	padding;
 
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
 	struct v4l2_hevc_pred_weight_table pred_weight_table;
 
+	__u8	reserved1[2];
 	__u64	flags;
+	__u8	padding[40];
 };
 
 #define V4L2_HEVC_DECODE_PARAM_FLAG_IRAP_PIC		0x1
@@ -408,7 +411,6 @@ struct v4l2_ctrl_hevc_slice_params {
  * @long_term_ref_pic_set_size: specifies the size of long-term reference
  *				pictures set include in the SPS of the first slice
  * @num_active_dpb_entries: the number of entries in dpb
- * @dpb: the decoded picture buffer, for meta-data about reference frames
  * @num_poc_st_curr_before: the number of reference pictures in the short-term
  *			    set that come before the current frame
  * @num_poc_st_curr_after: the number of reference pictures in the short-term
@@ -419,6 +421,7 @@ struct v4l2_ctrl_hevc_slice_params {
  * @poc_st_curr_after: provides the index of the short term after references
  *		       in DPB array
  * @poc_lt_curr: provides the index of the long term references in DPB array
+ * @dpb: the decoded picture buffer, for meta-data about reference frames
  * @flags: see V4L2_HEVC_DECODE_PARAM_FLAG_{}
  */
 struct v4l2_ctrl_hevc_decode_params {
@@ -426,14 +429,16 @@ struct v4l2_ctrl_hevc_decode_params {
 	__u16	short_term_ref_pic_set_size;
 	__u16	long_term_ref_pic_set_size;
 	__u8	num_active_dpb_entries;
-	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	num_poc_st_curr_before;
 	__u8	num_poc_st_curr_after;
 	__u8	num_poc_lt_curr;
 	__u8	poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	__u8	reserved[4];
+	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u64	flags;
+	__u8	padding[56];
 };
 
 /**
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
