Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E04B4CCA47C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 12:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFmAYiSIKoPJ9kyx3oknikmlo26hm19LwjT7T1L0ais=; b=RPe5GUzwUr9Q/k
	DwX9er8sSRIpr7mqiR3npm9EApuiqPO1O6M3vbDpE0PT591pldLJDxqkG02nQxB0sMk3bFeBiV5mX
	Z5qYS6oIXLI6JCjuWnFJwY6+Xz1DQrUza5IbJMElVB5sfC+fQFljjCYJ/t7o/L6XpvrsRJVxmF/CH
	Qqi3OhupGflrVpunKwhxw25cFBxmojoNaJBTrn9sQF+JrKWo3wa9xPRnwr2YQ19kxUiCFuAM04+ap
	7/YaIzMyPKY1FxHAgbP1nfx/NBB1+hjqJM/DPq7GULInoT4jUH0+IZhhZPpjqJJ3BLBPKpyqFFyiX
	W4jmnOxAzgmqzW0+/E2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o15fM-009Wll-Tk; Tue, 14 Jun 2022 12:29:04 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o15eV-009WON-3T; Tue, 14 Jun 2022 12:28:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7632CB81878;
	Tue, 14 Jun 2022 12:28:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62D73C3411B;
	Tue, 14 Jun 2022 12:28:03 +0000 (UTC)
Message-ID: <366fca22-e22d-9963-423b-252274fa9d9e@xs4all.nl>
Date: Tue, 14 Jun 2022 14:28:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v8 04/17] media: uapi: HEVC: Add missing fields in HEVC
 controls
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20220614083614.240641-1-benjamin.gaignard@collabora.com>
 <20220614083614.240641-5-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220614083614.240641-5-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_052811_566389_C429BE01 
X-CRM114-Status: GOOD (  25.34  )
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

On 6/14/22 10:36, Benjamin Gaignard wrote:
> Complete the HEVC controls with missing fields from H.265 specifications.
> Even if these fields aren't used by the current mainlined drivers
> they will be required for (at least) the rkvdec driver.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 6:
> - Add short_term_ref_pic_set_size and long_term_ref_pic_set_size
>   in v4l2_ctrl_hevc_decode_params structure.
> 
>  .../media/v4l/ext-ctrls-codec.rst             | 32 +++++++++++++++++++
>  include/media/hevc-ctrls.h                    |  8 ++++-
>  2 files changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index 6183f43f4d73..aa7556e200c9 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -2683,6 +2683,16 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      :stub-columns: 0
>      :widths:       1 1 2
>  
> +    * - __u8
> +      - ``video_parameter_set_id``
> +      - Specifies the value of the vps_video_parameter_set_id of the active VPS
> +        as descibed in section "7.4.3.2.1 General sequence parameter set RBSP semantics"

descibed -> described

This same typo occurs several times in this patch and in patch 17/17.

Regards,

	Hans

> +        of H.265 specifications.
> +    * - __u8
> +      - ``seq_parameter_set_id``
> +      - Provides an identifier for the SPS for reference by other syntax elements
> +        as descibed in section "7.4.3.2.1 General sequence parameter set RBSP semantics"
> +        of H.265 specifications.
>      * - __u16
>        - ``pic_width_in_luma_samples``
>        -
> @@ -2822,6 +2832,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      :stub-columns: 0
>      :widths:       1 1 2
>  
> +    * - __u8
> +      - ``pic_parameter_set_id``
> +      - Identifies the PPS for reference by other syntax elements.
>      * - __u8
>        - ``num_extra_slice_header_bits``
>        -
> @@ -3048,6 +3061,15 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u8
>        - ``ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>        - The list of L1 reference elements as indices in the DPB.
> +    * - __u16
> +      - ``short_term_ref_pic_set_size``
> +      - Specifies the size, in bits, of the short-term reference picture set, described as st_ref_pic_set()
> +        in the specification, included in the slice header or SPS (section 7.3.6.1).
> +    * - __u16
> +      - ``long_term_ref_pic_set_size``
> +      - Specifies the size, in bits, of the long-term reference picture set include in the slice header
> +        or SPS. It is the number of bits in the conditional block if(long_term_ref_pics_present_flag)
> +        in section 7.3.6.1 of the specification.
>      * - __u8
>        - ``padding``
>        - Applications and drivers must set this to zero.
> @@ -3385,6 +3407,16 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>        - ``pic_order_cnt_val``
>        - PicOrderCntVal as described in section 8.3.1 "Decoding process
>          for picture order count" of the specification.
> +    * - __u16
> +      - ``short_term_ref_pic_set_size``
> +      - Specifies the size, in bits, of the short-term reference picture set, of the first slice
> +        described as st_ref_pic_set() in the specification, included in the slice header
> +        or SPS (section 7.3.6.1).
> +    * - __u16
> +      - ``long_term_ref_pic_set_size``
> +      - Specifies the size, in bits, of the long-term reference picture set, of the first slice
> +        included in the slice header or SPS. It is the number of bits in the conditional block
> +        if(long_term_ref_pics_present_flag) in section 7.3.6.1 of the specification.
>      * - __u8
>        - ``num_active_dpb_entries``
>        - The number of entries in ``dpb``.
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 01ccda48d8c5..752a8d10782c 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -58,6 +58,8 @@ enum v4l2_mpeg_video_hevc_start_code {
>  /* The controls are not stable at the moment and will likely be reworked. */
>  struct v4l2_ctrl_hevc_sps {
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Sequence parameter set */
> +	__u8	video_parameter_set_id;
> +	__u8	seq_parameter_set_id;
>  	__u16	pic_width_in_luma_samples;
>  	__u16	pic_height_in_luma_samples;
>  	__u8	bit_depth_luma_minus8;
> @@ -108,6 +110,7 @@ struct v4l2_ctrl_hevc_sps {
>  
>  struct v4l2_ctrl_hevc_pps {
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture parameter set */
> +	__u8	pic_parameter_set_id;
>  	__u8	num_extra_slice_header_bits;
>  	__u8	num_ref_idx_l0_default_active_minus1;
>  	__u8	num_ref_idx_l1_default_active_minus1;
> @@ -199,7 +202,8 @@ struct v4l2_ctrl_hevc_slice_params {
>  	__u32	slice_segment_addr;
>  	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> -
> +	__u16	short_term_ref_pic_set_size;
> +	__u16	long_term_ref_pic_set_size;
>  	__u8	padding;
>  
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
> @@ -214,6 +218,8 @@ struct v4l2_ctrl_hevc_slice_params {
>  
>  struct v4l2_ctrl_hevc_decode_params {
>  	__s32	pic_order_cnt_val;
> +	__u16	short_term_ref_pic_set_size;
> +	__u16	long_term_ref_pic_set_size;
>  	__u8	num_active_dpb_entries;
>  	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u8	num_poc_st_curr_before;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
