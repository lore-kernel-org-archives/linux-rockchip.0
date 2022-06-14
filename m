Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A427C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 14:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufSWwjRiN7BvtW0Z+JuxpN8kW/0p5cCRqtce7DdJD98=; b=MjPvqlZN/CRoRb
	tr01+Q6JN6Gn+tLYiPSwAOYoXfnlUa27x8uJ/UdMvdpT0Xi75fT6djdR/v+lFhnryW/WS/SHR2Kpm
	gjX6w9mVghHBZRt+tMwOZt4ny6/s8XCuRznU2nUzINeWqHqVDs8LkUe9UY8lwytmNMhwZkN3S2dCN
	o8KoL45H8FWL9+verG/QY49YSoKHOr/hI/xhG0fExbUziifbyzW0ByVtgaCeMDWLK8NhIprVp4bQR
	luikbR8CCvAvznW8GRs1PdvHil+TKPI9OQVwvuSmzn7fX1mqZfxhlP9uV208B08+z7J+JKwWKf2LV
	HhH6GzUAKBKdl++2xsSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o17El-009tL5-Ab; Tue, 14 Jun 2022 14:09:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o17Ea-009tHZ-2y; Tue, 14 Jun 2022 14:09:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 078EE61729;
	Tue, 14 Jun 2022 14:09:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A27EC3411B;
	Tue, 14 Jun 2022 14:09:26 +0000 (UTC)
Message-ID: <0c656c92-f029-bc02-6026-23649836d080@xs4all.nl>
Date: Tue, 14 Jun 2022 16:09:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v8 15/17] media: uapi: HEVC: fix padding in v4l2 control
 structures
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
 <20220614083614.240641-16-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220614083614.240641-16-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_070932_278093_36038613 
X-CRM114-Status: GOOD (  26.16  )
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
> Fix padding where needed to remove holes and stay align on cache boundaries

align -> aligned

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../media/v4l/ext-ctrls-codec.rst             |  6 +++---
>  drivers/media/v4l2-core/v4l2-ctrls-core.c     |  9 ---------
>  include/media/hevc-ctrls.h                    | 19 ++++++++++++-------
>  3 files changed, 15 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index 05228e280f66..48a8825a001b 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3509,9 +3509,6 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u8
>        - ``num_active_dpb_entries``
>        - The number of entries in ``dpb``.
> -    * - struct :c:type:`v4l2_hevc_dpb_entry`
> -      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> -      - The decoded picture buffer, for meta-data about reference frames.
>      * - __u8
>        - ``num_poc_st_curr_before``
>        - The number of reference pictures in the short-term set that come before
> @@ -3535,6 +3532,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>        - ``poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
>        - PocLtCurr as described in section 8.3.2 "Decoding process for reference
>          picture set": provides the index of the long term references in DPB array.
> +    * - struct :c:type:`v4l2_hevc_dpb_entry`
> +      - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> +      - The decoded picture buffer, for meta-data about reference frames.
>      * - __u64
>        - ``flags``
>        - See :ref:`Decode Parameters Flags <hevc_decode_params_flags>`
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> index c5c5407584ff..fb68786c498b 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> @@ -824,20 +824,11 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
>  		if (p_hevc_decode_params->num_active_dpb_entries >
>  		    V4L2_HEVC_DPB_ENTRIES_NUM_MAX)
>  			return -EINVAL;
> -
> -		for (i = 0; i < p_hevc_decode_params->num_active_dpb_entries;
> -		     i++) {
> -			struct v4l2_hevc_dpb_entry *dpb_entry =
> -				&p_hevc_decode_params->dpb[i];
> -
> -			zero_padding(*dpb_entry);
> -		}
>  		break;
>  
>  	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
>  		p_hevc_slice_params = p;
>  
> -		zero_padding(p_hevc_slice_params->pred_weight_table);
>  		zero_padding(*p_hevc_slice_params);
>  		break;
>  
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index efc0412ac41e..9abca1a75bd4 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -133,7 +133,9 @@ struct v4l2_ctrl_hevc_sps {
>  	__u8	chroma_format_idc;
>  	__u8	sps_max_sub_layers_minus1;
>  
> +	__u8	reserved[6];
>  	__u64	flags;
> +	__u8	padding[24];

Why are there 24 padding bytes at the end? For future use? If so, what is
the rationale for '24'? Is it likely that new fields will be added in future
HEVC revisions? Or is it in case we forget something?

It's missing kerneldoc comments as well: it should state that the application
must zero this.

Why mix 'reserved' with 'padding'? It's odd to see both names in a single
struct.

In any case, this patch goes beyond 'fixing padding', it is doing more.

If you really want to add space for future use at the end of structs,
then do that in a separate patch together with a rationale for it.

Regards,

	Hans

>  };
>  
>  #define V4L2_HEVC_PPS_FLAG_DEPENDENT_SLICE_SEGMENT_ENABLED	(1ULL << 0)
> @@ -210,9 +212,10 @@ struct v4l2_ctrl_hevc_pps {
>  	__s8	pps_beta_offset_div2;
>  	__s8	pps_tc_offset_div2;
>  	__u8	log2_parallel_merge_level_minus2;
> +	__u8	reserved[9];
>  
> -	__u8	padding[4];
>  	__u64	flags;
> +	__u8	padding[56];
>  };
>  
>  #define V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE	0x01
> @@ -245,8 +248,8 @@ struct v4l2_hevc_dpb_entry {
>  	__u64	timestamp;
>  	__u8	flags;
>  	__u8	field_pic;
> +	__u16	reserved;
>  	__s32	pic_order_cnt_val;
> -	__u8	padding[2];
>  };
>  
>  /**
> @@ -285,8 +288,6 @@ struct v4l2_hevc_pred_weight_table {
>  	__s8	delta_chroma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
>  	__s8	chroma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
>  
> -	__u8	padding[6];
> -
>  	__u8	luma_log2_weight_denom;
>  	__s8	delta_chroma_log2_weight_denom;
>  };
> @@ -381,18 +382,20 @@ struct v4l2_ctrl_hevc_slice_params {
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture timing SEI message */
>  	__u8	pic_struct;
>  
> +	__u8	reserved0[3];
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
>  	__u32	slice_segment_addr;
>  	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u16	short_term_ref_pic_set_size;
>  	__u16	long_term_ref_pic_set_size;
> -	__u8	padding;
>  
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
>  	struct v4l2_hevc_pred_weight_table pred_weight_table;
>  
> +	__u8	reserved1[2];
>  	__u64	flags;
> +	__u8	padding[40];
>  };
>  
>  #define V4L2_HEVC_DECODE_PARAM_FLAG_IRAP_PIC		0x1
> @@ -408,7 +411,6 @@ struct v4l2_ctrl_hevc_slice_params {
>   * @long_term_ref_pic_set_size: specifies the size of long-term reference
>   *				pictures set include in the SPS of the first slice
>   * @num_active_dpb_entries: the number of entries in dpb
> - * @dpb: the decoded picture buffer, for meta-data about reference frames
>   * @num_poc_st_curr_before: the number of reference pictures in the short-term
>   *			    set that come before the current frame
>   * @num_poc_st_curr_after: the number of reference pictures in the short-term
> @@ -419,6 +421,7 @@ struct v4l2_ctrl_hevc_slice_params {
>   * @poc_st_curr_after: provides the index of the short term after references
>   *		       in DPB array
>   * @poc_lt_curr: provides the index of the long term references in DPB array
> + * @dpb: the decoded picture buffer, for meta-data about reference frames
>   * @flags: see V4L2_HEVC_DECODE_PARAM_FLAG_{}
>   */
>  struct v4l2_ctrl_hevc_decode_params {
> @@ -426,14 +429,16 @@ struct v4l2_ctrl_hevc_decode_params {
>  	__u16	short_term_ref_pic_set_size;
>  	__u16	long_term_ref_pic_set_size;
>  	__u8	num_active_dpb_entries;
> -	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u8	num_poc_st_curr_before;
>  	__u8	num_poc_st_curr_after;
>  	__u8	num_poc_lt_curr;
>  	__u8	poc_st_curr_before[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u8	poc_st_curr_after[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u8	poc_lt_curr[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> +	__u8	reserved[4];
> +	struct	v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
>  	__u64	flags;
> +	__u8	padding[56];
>  };
>  
>  /**


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
