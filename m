Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7E5C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 13:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBgBg5JTnV0yjvd+R84mKzHPtwx/xjJcJ9YOFjFTe+s=; b=coxdW0rMq4aXKh
	j5oNfWUogtA4jR5S036MET+5cZHKLjjH2PjofxdJ+D1Ql3Fjd57X6BcG5BGB5zQiR72FzWKWy4Esr
	GSZueFGAJDokUL+HmtUkTuWDUxscSQcbWTaGYB4t9BdOF9StIlX6BjB0LgHSbv1mYX8BUTV0Noqxm
	ffCB5hHWk5V6k2vUzDOkzB+9ShoeXOlKLN0xDDxzhIBZs57MXeOdkomARl6EMcaQujLNDasI6PU5h
	sEk3bicRkId2xhph0L81IrYU57/wmt7bBtjLPMXVwQjX4oaG49JGQqp0eBWMPi1nhdbMwzu0oSp3Q
	xKA8Oqo7XnehJmsECdgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o174S-009rW0-U1; Tue, 14 Jun 2022 13:59:04 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o174A-009rNx-QJ; Tue, 14 Jun 2022 13:58:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id F3377CE19C0;
	Tue, 14 Jun 2022 13:58:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 893B8C3411B;
	Tue, 14 Jun 2022 13:58:35 +0000 (UTC)
Message-ID: <b244e86d-06de-7423-d0df-e77485ce4c87@xs4all.nl>
Date: Tue, 14 Jun 2022 15:58:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v8 14/17] media: hantro: Stop using Hantro dedicated
 control
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
 <20220614083614.240641-15-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220614083614.240641-15-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_065847_274354_FC535C1B 
X-CRM114-Status: GOOD (  30.43  )
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
> The number of bits to skip in the slice header can be computed
> in the driver by using sps, pps and decode_params information.
> This allow to remove Hantro dedicated control.

allow -> makes it possible

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_drv.c     | 36 -----------
>  .../staging/media/hantro/hantro_g2_hevc_dec.c | 62 ++++++++++++++++++-
>  include/media/hevc-ctrls.h                    | 13 ----
>  3 files changed, 61 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 536c8c374952..5aac3a090480 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -304,26 +304,6 @@ static int hantro_jpeg_s_ctrl(struct v4l2_ctrl *ctrl)
>  	return 0;
>  }
>  
> -static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
> -{
> -	struct hantro_ctx *ctx;
> -
> -	ctx = container_of(ctrl->handler,
> -			   struct hantro_ctx, ctrl_handler);
> -
> -	vpu_debug(1, "s_ctrl: id = %d, val = %d\n", ctrl->id, ctrl->val);
> -
> -	switch (ctrl->id) {
> -	case V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP:
> -		ctx->hevc_dec.ctrls.hevc_hdr_skip_length = ctrl->val;
> -		break;
> -	default:
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
>  static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
>  	.try_ctrl = hantro_try_ctrl,
>  };
> @@ -332,10 +312,6 @@ static const struct v4l2_ctrl_ops hantro_jpeg_ctrl_ops = {
>  	.s_ctrl = hantro_jpeg_s_ctrl,
>  };
>  
> -static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
> -	.s_ctrl = hantro_hevc_s_ctrl,
> -};
> -
>  #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
>  					 V4L2_JPEG_ACTIVE_MARKER_COM | \
>  					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
> @@ -487,18 +463,6 @@ static const struct hantro_ctrl controls[] = {
>  		.cfg = {
>  			.id = V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
>  		},
> -	}, {
> -		.codec = HANTRO_HEVC_DECODER,
> -		.cfg = {
> -			.id = V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP,
> -			.name = "Hantro HEVC slice header skip bytes",
> -			.type = V4L2_CTRL_TYPE_INTEGER,
> -			.min = 0,
> -			.def = 0,
> -			.max = 0x100,
> -			.step = 1,
> -			.ops = &hantro_hevc_ctrl_ops,
> -		},
>  	}, {
>  		.codec = HANTRO_VP9_DECODER,
>  		.cfg = {
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index d28653d04d20..3be8d6e60bf0 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -117,6 +117,66 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
>  		vpu_debug(1, "%s: no chroma!\n", __func__);
>  }
>  
> +static unsigned int ceil_log2(unsigned int v)
> +{
> +	/* Compute Ceil(Log2(v))
> +	 * Derived from branchless code for integer log2(v) from:
> +	 * <http://graphics.stanford.edu/~seander/bithacks.html#IntegerLog>
> +	 */
> +	unsigned int r, shift;
> +
> +	v--;
> +	r = (v > 0xFFFF) << 4;
> +	v >>= r;
> +	shift = (v > 0xFF) << 3;
> +	v >>= shift;
> +	r |= shift;
> +	shift = (v > 0xF) << 2;
> +	v >>= shift;
> +	r |= shift;
> +	shift = (v > 0x3) << 1;
> +	v >>= shift;
> +	r |= shift;
> +	r |= (v >> 1);
> +
> +	return r + 1;
> +}

Isn't this identical to fls(v - 1)? See also lib/math/reciprocal_div.c
where this is used.

Regards,

	Hans

> +
> +static int compute_header_skip_lenght(struct hantro_ctx *ctx)
> +{
> +	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
> +	const struct v4l2_ctrl_hevc_decode_params *decode_params = ctrls->decode_params;
> +	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
> +	const struct v4l2_ctrl_hevc_pps *pps = ctrls->pps;
> +	int skip = 0;
> +
> +	if (pps->flags & V4L2_HEVC_PPS_FLAG_OUTPUT_FLAG_PRESENT)
> +		/* size of pic_output_flag */
> +		skip++;
> +
> +	if (sps->flags & V4L2_HEVC_SPS_FLAG_SEPARATE_COLOUR_PLANE)
> +		/* size of pic_order_cnt_lsb */
> +		skip += 2;
> +
> +	if (!(decode_params->flags & V4L2_HEVC_DECODE_PARAM_FLAG_IDR_PIC)) {
> +		/* size of pic_order_cnt_lsb */
> +		skip += sps->log2_max_pic_order_cnt_lsb_minus4 + 4;
> +
> +		/* size of short_term_ref_pic_set_sps_flag */
> +		skip++;
> +
> +		if (decode_params->short_term_ref_pic_set_size)
> +			/* size of st_ref_pic_set( num_short_term_ref_pic_sets ) */
> +			skip += decode_params->short_term_ref_pic_set_size;
> +		else if (sps->num_short_term_ref_pic_sets > 1)
> +			skip += ceil_log2(sps->num_short_term_ref_pic_sets);
> +
> +		skip += decode_params->long_term_ref_pic_set_size;
> +	}
> +
> +	return skip;
> +}
> +
>  static void set_params(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
> @@ -134,7 +194,7 @@ static void set_params(struct hantro_ctx *ctx)
>  
>  	hantro_reg_write(vpu, &g2_output_8_bits, 0);
>  
> -	hantro_reg_write(vpu, &g2_hdr_skip_length, ctrls->hevc_hdr_skip_length);
> +	hantro_reg_write(vpu, &g2_hdr_skip_length, compute_header_skip_lenght(ctx));
>  
>  	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 3;
>  	max_log2_ctb_size = min_log2_cb_size + sps->log2_diff_max_min_luma_coding_block_size;
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index d6cb3779d190..efc0412ac41e 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -467,17 +467,4 @@ struct v4l2_ctrl_hevc_scaling_matrix {
>  	__u8	scaling_list_dc_coef_32x32[2];
>  };
>  
> -/*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
> -#define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
> -/*
> - * V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP -
> - * the number of data (in bits) to skip in the
> - * slice segment header.
> - * If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
> - * to before syntax element "slice_temporal_mvp_enabled_flag".
> - * If IDR, the skipped bits are just "pic_output_flag"
> - * (separate_colour_plane_flag is not supported).
> - */
> -#define V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP	(V4L2_CID_CODEC_HANTRO_BASE + 0)
> -
>  #endif


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
