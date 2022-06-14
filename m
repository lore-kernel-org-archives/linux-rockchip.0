Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D8D1CCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 08:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrTHDbCyJ8ZwA5up9ERS0UEp0ueZu1Q2yLmjkDDN7N8=; b=KCTKhoO6Dvw2/X
	GKbuOwJ02SmFLgG75qXyzdOG8jfBldeXRIySkWYXTkAWgdUa1aWbxmqCN4XIdL+oOfqPnxRy6o7qH
	FboICxqZnkLfet1wk7LQaUA9SCzZzmwrwOkProhdoxfcZkovL+dPGvF/vEriXToMtT+VqfPf2OWBD
	hT+UHFO57aGVFlLFSV4qtYq0rXTST8dm06WkE065Bd/Kczi6nV4beuqaz7V1oS9L2xf7k4kAF4IoW
	LcQQ2jz2pPcWr+czuya/sy5du6APfptWjM3bwFw9GlZOVre7TPdFycfuXL62rz5nIn3Y95CjRMPP4
	INmsvdE8oGHbaKQUWl8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1246-008J07-1A; Tue, 14 Jun 2022 08:38:22 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o122N-008I1I-3D; Tue, 14 Jun 2022 08:36:37 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4a7b:8d3a:acaa:ec46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5C40F66016B4;
	Tue, 14 Jun 2022 09:36:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655195793;
	bh=pjNKQqJt+fujWp4j47KE/erfcCEMJ6ylcH5fLNYA0qE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l1WE8PnReWEERzHE0tBzu/S6jzAEGOZ0Xqiyve4ZYkmxcpBXwrHkYRkUE98iZh/7V
	 /5OFC1Dj9tleCbKRdqAtTS3Tw/l9B/M2tveDD5QcUZaLIlxAVh9DP0pZ/5KwTGkr6+
	 4n93PaBy+0i0FqlNfaI3zTCjkZUt5YUu3wh+BlgkOPlK50TqaORwdCGMJANVoENWZD
	 nNV/XIQY3CpjCxoQh7cwZU+osuxMjreRWWrY0g9GwXcTrBHxDGiw2bw1xxabiiWMGl
	 heGa/vhmqsEZnjgei4JXhwbWt3aXXXay9v3yX+gnKc7sz09BTM/6IKcq7DU05/79Fm
	 39/t0+Il0NLww==
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
Subject: [PATCH v8 04/17] media: uapi: HEVC: Add missing fields in HEVC controls
Date: Tue, 14 Jun 2022 10:36:01 +0200
Message-Id: <20220614083614.240641-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220614083614.240641-1-benjamin.gaignard@collabora.com>
References: <20220614083614.240641-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_013635_441151_D46BE9FC 
X-CRM114-Status: GOOD (  14.36  )
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

Complete the HEVC controls with missing fields from H.265 specifications.
Even if these fields aren't used by the current mainlined drivers
they will be required for (at least) the rkvdec driver.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 6:
- Add short_term_ref_pic_set_size and long_term_ref_pic_set_size
  in v4l2_ctrl_hevc_decode_params structure.

 .../media/v4l/ext-ctrls-codec.rst             | 32 +++++++++++++++++++
 include/media/hevc-ctrls.h                    |  8 ++++-
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index 6183f43f4d73..aa7556e200c9 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -2683,6 +2683,16 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     :stub-columns: 0
     :widths:       1 1 2
 
+    * - __u8
+      - ``video_parameter_set_id``
+      - Specifies the value of the vps_video_parameter_set_id of the active VPS
+        as descibed in section "7.4.3.2.1 General sequence parameter set RBSP semantics"
+        of H.265 specifications.
+    * - __u8
+      - ``seq_parameter_set_id``
+      - Provides an identifier for the SPS for reference by other syntax elements
+        as descibed in section "7.4.3.2.1 General sequence parameter set RBSP semantics"
+        of H.265 specifications.
     * - __u16
       - ``pic_width_in_luma_samples``
       -
@@ -2822,6 +2832,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     :stub-columns: 0
     :widths:       1 1 2
 
+    * - __u8
+      - ``pic_parameter_set_id``
+      - Identifies the PPS for reference by other syntax elements.
     * - __u8
       - ``num_extra_slice_header_bits``
       -
@@ -3048,6 +3061,15 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - __u8
       - ``ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
       - The list of L1 reference elements as indices in the DPB.
+    * - __u16
+      - ``short_term_ref_pic_set_size``
+      - Specifies the size, in bits, of the short-term reference picture set, described as st_ref_pic_set()
+        in the specification, included in the slice header or SPS (section 7.3.6.1).
+    * - __u16
+      - ``long_term_ref_pic_set_size``
+      - Specifies the size, in bits, of the long-term reference picture set include in the slice header
+        or SPS. It is the number of bits in the conditional block if(long_term_ref_pics_present_flag)
+        in section 7.3.6.1 of the specification.
     * - __u8
       - ``padding``
       - Applications and drivers must set this to zero.
@@ -3385,6 +3407,16 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
       - ``pic_order_cnt_val``
       - PicOrderCntVal as described in section 8.3.1 "Decoding process
         for picture order count" of the specification.
+    * - __u16
+      - ``short_term_ref_pic_set_size``
+      - Specifies the size, in bits, of the short-term reference picture set, of the first slice
+        described as st_ref_pic_set() in the specification, included in the slice header
+        or SPS (section 7.3.6.1).
+    * - __u16
+      - ``long_term_ref_pic_set_size``
+      - Specifies the size, in bits, of the long-term reference picture set, of the first slice
+        included in the slice header or SPS. It is the number of bits in the conditional block
+        if(long_term_ref_pics_present_flag) in section 7.3.6.1 of the specification.
     * - __u8
       - ``num_active_dpb_entries``
       - The number of entries in ``dpb``.
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 01ccda48d8c5..752a8d10782c 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -58,6 +58,8 @@ enum v4l2_mpeg_video_hevc_start_code {
 /* The controls are not stable at the moment and will likely be reworked. */
 struct v4l2_ctrl_hevc_sps {
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Sequence parameter set */
+	__u8	video_parameter_set_id;
+	__u8	seq_parameter_set_id;
 	__u16	pic_width_in_luma_samples;
 	__u16	pic_height_in_luma_samples;
 	__u8	bit_depth_luma_minus8;
@@ -108,6 +110,7 @@ struct v4l2_ctrl_hevc_sps {
 
 struct v4l2_ctrl_hevc_pps {
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture parameter set */
+	__u8	pic_parameter_set_id;
 	__u8	num_extra_slice_header_bits;
 	__u8	num_ref_idx_l0_default_active_minus1;
 	__u8	num_ref_idx_l1_default_active_minus1;
@@ -199,7 +202,8 @@ struct v4l2_ctrl_hevc_slice_params {
 	__u32	slice_segment_addr;
 	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
-
+	__u16	short_term_ref_pic_set_size;
+	__u16	long_term_ref_pic_set_size;
 	__u8	padding;
 
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
@@ -214,6 +218,8 @@ struct v4l2_ctrl_hevc_slice_params {
 
 struct v4l2_ctrl_hevc_decode_params {
 	__s32	pic_order_cnt_val;
+	__u16	short_term_ref_pic_set_size;
+	__u16	long_term_ref_pic_set_size;
 	__u8	num_active_dpb_entries;
 	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	num_poc_st_curr_before;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
