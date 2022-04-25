Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D225FC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 13:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CfwdvXxul30aujplnXULb+LEwOx94SVJf7tZ+jgec1o=; b=MxCO9/FPNd3rqEHSRc2CPOXeQE
	Z1cT0GGwCuHF2nmYESV429EUQi2wI+ScfpflgIuhuQftPvX/Yv9gEuz5nrIQnWzVp1xnSj3pIjTZF
	yv2nv+sQ1OCWx2Bmv3YhCHZOiwgyOB4pwIK/kn3BG5Wq9DG82DhAaJbVgRnJqrfTOoOAQPQ3RGWy7
	lh8ImVvzCoXkjRFYz50zwILSVnPbLO3ZS/wZM1yLM6awqymyheUTgH6naQCwKf3ILXkX/4YWsAjQk
	lC3fsvVSCfD7VzwSAis5nNgUsxqEDw625fV93wq93TVVd+e70etPYCYpMcTn7IOByDju4AwoULgsW
	41G5U6GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nizBK-009nD2-J2; Mon, 25 Apr 2022 13:55:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nizB4-009n6y-G8; Mon, 25 Apr 2022 13:55:00 +0000
Received: from localhost (unknown [IPv6:2a02:3030:e:60d7:2277:ba57:a2c0:3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D98E61F41B44;
 Mon, 25 Apr 2022 14:54:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650894893;
 bh=KOusw7cXs3MDqJINDlnUk/U6BRhfalYdRnA/nyjvGXI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XhVxhs220pUU9U1AKATihNKU0yq5EJ3iWzgQnq0u6iLmGqcIOjPH6rk/dy7hKcunm
 T0KGfYQ7YpWCjjbLRmekISI/RIgw7CR8le0yXDYKeArrOoJs8FH9g+yWx3MAvXJAyM
 yy7PEa9lvNtxmtp5BJqVrEYjSgZ61hZuOvbVkFGGmdCSPVfBAFqykZcZa/ZyvYWVvv
 P2LGPB3gv4dtDdq5fxPZ8n44vKqtMU+nkL3QCmMAmPsYiKF7Lq7So/QbxupEIN+EIB
 CJIhVMQ+FAvfQ7NzdxY7LI7srXIvfHnRmfyqswESFG1f5yYGnWtaVwgcktvrcuCYRs
 WNdnBJ1qWzD2A==
Date: Mon, 25 Apr 2022 15:54:49 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, samuel@sholland.org,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v5 04/17] media: uapi: HEVC: Add missing fields in HEVC
 controls
Message-ID: <20220425135449.oapsrqqyq34s2ii3@basti-XPS-13-9310>
References: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
 <20220407152940.738159-5-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407152940.738159-5-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_065458_956874_66D17CDE 
X-CRM114-Status: GOOD (  17.78  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 07.04.2022 17:29, Benjamin Gaignard wrote:
>Complete the HEVC controls with missing fields from H.265 specifications.
>Even if these fields aren't used by the current mainlined drivers
>they will be need for (at least) rkvdec driver.

s/be need/be required/
or
s/be need/be needed/

s/rkvdec/the rkvdec/

>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> .../media/v4l/ext-ctrls-codec.rst             | 19 +++++++++++++++++++
> include/media/hevc-ctrls.h                    |  6 +++++-
> 2 files changed, 24 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>index 4cd7c541fc30..dbb08603217b 100644
>--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>@@ -2661,6 +2661,16 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>     :stub-columns: 0
>     :widths:       1 1 2
>
>+    * - __u8
>+      - ``video_parameter_set_id``
>+      - Specifies the value of the vps_video_parameter_set_id of the active VPS
>+        as descibed in section "7.4.3.2.1 General sequence parameter set RBSP semantics"
>+        of H.265 specifications.
>+    * - __u8
>+      - ``seq_parameter_set_id``
>+      - Provides an identifier for the SPS for reference by other syntax elements
>+        as descibed in section "7.4.3.2.1 General sequence parameter set RBSP semantics"
>+        of H.265 specifications.
>     * - __u16
>       - ``pic_width_in_luma_samples``
>       -
>@@ -2800,6 +2810,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>     :stub-columns: 0
>     :widths:       1 1 2
>
>+    * - __u8
>+      - ``pic_parameter_set_id``
>+      - Identifies the PPS for reference by other syntax elements.
>     * - __u8
>       - ``num_extra_slice_header_bits``
>       -
>@@ -3026,6 +3039,12 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>     * - __u8
>       - ``ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>       - The list of L1 reference elements as indices in the DPB.
>+    * - __u16
>+      - ``short_term_ref_pic_set_size``
>+      - Specifies the size of short-term reference pictures set included in the SPS.

s/size of/size of the/

Section 7.4.8 depicts that the st_ref_pic_set syntax
structure can be part of the SPS or the slice header.

I think we should mention that we talk about the size of the st_ref_pic_set
syntax structure from section 7.4.8 of the specification. 

>+    * - __u16
>+      - ``long_term_ref_pic_set_size``
>+      - Specifies the size of long-term reference pictures set include in the SPS.

s/size of/size of the/

Can we make this a bit more helpful? The specification doesn't contain
a similar structure to `st_ref_pic_set` for long term pictures. So, as a
programmer this leaves me guessing:
- Which syntax structure's size are we talking about?
- Does this correlate to any of the existing sections of the
specification?
Because in the end, I feel like this documentation should be able to
help a programmer to provide the correct data for the uABI.

Greetings,
Sebastian

>     * - __u8
>       - ``padding``
>       - Applications and drivers must set this to zero.
>diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
>index 01ccda48d8c5..a329e086a89a 100644
>--- a/include/media/hevc-ctrls.h
>+++ b/include/media/hevc-ctrls.h
>@@ -58,6 +58,8 @@ enum v4l2_mpeg_video_hevc_start_code {
> /* The controls are not stable at the moment and will likely be reworked. */
> struct v4l2_ctrl_hevc_sps {
> 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Sequence parameter set */
>+	__u8	video_parameter_set_id;
>+	__u8	seq_parameter_set_id;
> 	__u16	pic_width_in_luma_samples;
> 	__u16	pic_height_in_luma_samples;
> 	__u8	bit_depth_luma_minus8;
>@@ -108,6 +110,7 @@ struct v4l2_ctrl_hevc_sps {
>
> struct v4l2_ctrl_hevc_pps {
> 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture parameter set */
>+	__u8	pic_parameter_set_id;
> 	__u8	num_extra_slice_header_bits;
> 	__u8	num_ref_idx_l0_default_active_minus1;
> 	__u8	num_ref_idx_l1_default_active_minus1;
>@@ -199,7 +202,8 @@ struct v4l2_ctrl_hevc_slice_params {
> 	__u32	slice_segment_addr;
> 	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> 	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>-
>+	__u16	short_term_ref_pic_set_size;
>+	__u16	long_term_ref_pic_set_size;
> 	__u8	padding;
>
> 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
>-- 
>2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
