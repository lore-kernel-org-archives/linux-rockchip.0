Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FB5DC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Apr 2022 15:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6n31TVJ6nVGH1kDjFDLc5DIG91MOhT+9ipsNIfOFgIc=; b=gFo4CW3WEaw41Y
	z3N/Lmvir1+lxN2l7YFGuFp7/ifAB3/R88U2OgnaXld3yfegZLjvi9KLV8ZPOIF3eT+Jsjpwht9na
	uoj9iqLbmFbTivqqtgSOUJPh2zvc1Ibic9wE4ccBU8g2jQbsH2fWG/szqd1JprD110F9SzC33i+ac
	FYshXeM9pF3kMjB7FmOIcdgFzO2eyCnwy1IdgyY63hrSpBzxkLxB8gxt+XVA2irRor1DI3mbE1qhK
	mnoxiwvWI0OJt65dpYwKjTUy7CHSXCBYfwlCJtnAjXJ+9oHC3az1+tptUAqhojTtoR3wVRURAzpgB
	f+V2KnhLvVcQiP2Ny6yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncUXh-00Ct7N-OQ; Thu, 07 Apr 2022 15:59:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncU5K-00Chl8-Mn; Thu, 07 Apr 2022 15:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=RACQqRXudN9DFWnj1LDZonsKUAaF5YhJT+sRZ6BbU7I=; b=ooh6r+EswmcGITIJtjuwHL8cBP
 28JF7VkFv5eIVHC5Uv+sB86v7NdFKT48zsDAZap/DypIhcdfLDOSfK4lw6hubuvxR1+f0LBOSeeCA
 N41Mct0va0vOv9rh00/7ypqYWodEYcixaF1z0/tNrIa18d9XaoKXe+07JnSqy9sOpPHgj9uT9FgL+
 Np34Wr7Ip0ldRfRZniqROcHRMju3P3ySN1uGMOZ/LWsm752/uR8WdLZQ0XFr7h/C8IgaTg5k+8bVN
 gxI3+o71ElqPa7LFoZDCoFtC67RJsMvgV+cN9Hr/lqz4HwAcpGIZl229veZzjBmeAV4viOSfEqbix
 K0gUD/HQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncU5F-002XLz-GG; Thu, 07 Apr 2022 15:30:08 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:120:3210:4da4:8da5:b6b4:93c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DF1091F467BE;
 Thu,  7 Apr 2022 16:29:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649345398;
 bh=2H0AecT5VkWqKaQDkT33QndJcjd2dbxusZfkP2t8gCc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FwYyL1wmLS1ymhW1eAnnuceBLYFdc7SRo8JD0wsnPI15qVy6MKgQ2Crd9TG0t2iJ1
 qQ8HaeJNg/gyZvt4DdgTasw+axBx26Qf2U3/0XCVgsS6nAZO+VWjKH5E2+5OkBxZmL
 2oEAI9/SGanS+eXrLRqUin218hW1JGGKjlcAI2++nFaOCF6mY0ZzjYTvpzXM11+Ucy
 Eds92w8iCWMt6GT02XErHJQ5CJPNa2vZ8LUNEO3499l8C3NQELiuritP0T/2C0gGzU
 f6CaYaNKR2nVO03wrmVqKE0OaCNQl6XqoqY76SW4m3tQAR1zPawXKZQjoZ//APXrUC
 elHnA3zcFu+jA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 sebastian.fricke@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 15/17] media: uapi: HEVC: fix padding in v4l2 control
 structures
Date: Thu,  7 Apr 2022 17:29:38 +0200
Message-Id: <20220407152940.738159-16-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
References: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_163006_040111_ACB9D78A 
X-CRM114-Status: GOOD (  12.56  )
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

Fix padding where needed to remove holes and stay align on cache boundaries

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../userspace-api/media/v4l/ext-ctrls-codec.rst   |  6 +++---
 drivers/media/v4l2-core/v4l2-ctrls-core.c         |  1 -
 include/media/hevc-ctrls.h                        | 15 +++++++++------
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index a604dedce17c..a3b1a063deba 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3474,9 +3474,6 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - __u8
       - ``num_active_dpb_entries``
       - The number of entries in ``dpb``.
-    * - struct :c:type:`v4l2_hevc_dpb_entry`
-      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
-      - The decoded picture buffer, for meta-data about reference frames.
     * - __u8
       - ``num_poc_st_curr_before``
       - The number of reference pictures in the short-term set that come before
@@ -3500,6 +3497,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
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
index 6a48c9022b74..b8529ab6fda9 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -837,7 +837,6 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
 		p_hevc_slice_params = p;
 
-		zero_padding(p_hevc_slice_params->pred_weight_table);
 		zero_padding(*p_hevc_slice_params);
 		break;
 
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 63be1a174516..e6cdd122726c 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -133,7 +133,9 @@ struct v4l2_ctrl_hevc_sps {
 	__u8	chroma_format_idc;
 	__u8	sps_max_sub_layers_minus1;
 
+	__u8	padding[6];
 	__u64	flags;
+	__u8	reserved[24];
 };
 
 #define V4L2_HEVC_PPS_FLAG_DEPENDENT_SLICE_SEGMENT_ENABLED	(1ULL << 0)
@@ -210,9 +212,10 @@ struct v4l2_ctrl_hevc_pps {
 	__s8	pps_beta_offset_div2;
 	__s8	pps_tc_offset_div2;
 	__u8	log2_parallel_merge_level_minus2;
+	__u8	padding[9];
 
-	__u8	padding[4];
 	__u64	flags;
+	__u8	reserved[56];
 };
 
 #define V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE	0x01
@@ -285,8 +288,6 @@ struct v4l2_hevc_pred_weight_table {
 	__s8	delta_chroma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
 	__s8	chroma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
 
-	__u8	padding[6];
-
 	__u8	luma_log2_weight_denom;
 	__s8	delta_chroma_log2_weight_denom;
 };
@@ -379,18 +380,20 @@ struct v4l2_ctrl_hevc_slice_params {
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture timing SEI message */
 	__u8	pic_struct;
 
+	__u8	reserved;
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
 	__u32	slice_segment_addr;
 	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u16	short_term_ref_pic_set_size;
 	__u16	long_term_ref_pic_set_size;
-	__u8	padding;
 
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
 	struct v4l2_hevc_pred_weight_table pred_weight_table;
 
+	__u8	reserved1[6];
 	__u64	flags;
+	__u8	padding[40];
 };
 
 #define V4L2_HEVC_DECODE_PARAM_FLAG_IRAP_PIC		0x1
@@ -402,7 +405,6 @@ struct v4l2_ctrl_hevc_slice_params {
  *
  * @pic_order_cnt_val: picture order count
  * @num_active_dpb_entries: the number of entries in dpb
- * @dpb: the decoded picture buffer, for meta-data about reference frames
  * @num_poc_st_curr_before: the number of reference pictures in the short-term
  *			    set that come before the current frame
  * @num_poc_st_curr_after: the number of reference pictures in the short-term
@@ -413,18 +415,19 @@ struct v4l2_ctrl_hevc_slice_params {
  * @poc_st_curr_after: provides the index of the short term after references
  *		       in DPB array
  * @poc_lt_curr: provides the index of the long term references in DPB array
+ * @dpb: the decoded picture buffer, for meta-data about reference frames
  * @flags: see V4L2_HEVC_DECODE_PARAM_FLAG_{}
  */
 struct v4l2_ctrl_hevc_decode_params {
 	__s32	pic_order_cnt_val;
 	__u8	num_active_dpb_entries;
-	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	num_poc_st_curr_before;
 	__u8	num_poc_st_curr_after;
 	__u8	num_poc_lt_curr;
 	__u8	poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u8	poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
+	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
 	__u64	flags;
 };
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
