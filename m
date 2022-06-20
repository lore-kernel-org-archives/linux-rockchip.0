Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1333EC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 19:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0OAV7dWgQgNFAqLUbjZnW3ekll9yce9tR3PBTCtrSQ=; b=Lbt5ostgu2wNNR
	o3AAXiFNTd7cdaRZjkejAVeKxHoMn4F4dynqgYO9Uqyb7aVrRo+NHvHBLqLzF67PMEMHIlIgka49F
	Ql8pF+cr5rILInHtuzsNOE1+BbwYu3fnws6Lxn8g/jD2FCtbYCUGgilKPpPV+/ii6/iY4iu49obhJ
	hsLBPOYrlXX87COaEMnJXabkA62fiDlO1DzvTgDPTS37IsvH8VxtTFiDg22GfUEvjoujarItVxT6i
	C+DN5uDGtWzef7mScuJWXG1YwC+pebqpoRqoWs0+xzWz4slL4e6bhViyWz9rKpoGRuIjZBlIHK09r
	G6lLCUqmoTittT9VUtlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3NTa-0025ZQ-9A; Mon, 20 Jun 2022 19:54:22 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3NTX-0025XJ-G2; Mon, 20 Jun 2022 19:54:21 +0000
Received: by mail-wr1-x42f.google.com with SMTP id g4so16022947wrh.11;
        Mon, 20 Jun 2022 12:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=s2WOQUH0wXSdYV78PK0Csxc8qJyHls+YdgLQRT9Q8rg=;
        b=miAYxyNOGr4WuC7CQuRPsnYVVf7RSPCkPV9973meC08nyP9OtGJ6RXFsa8d7m45Fm+
         hoS1clWlitq5K43xX0bZUaWF0Dpwy+BB1yHppd4dmbQRIvz3a0Klzia1wZ3WUt7CPj4I
         tY2KxPiN6tI1/B6WoZNcQZJ+R7B0bxRgq5JfIJC+dlDddOJs58m9zBGaPvscJIir6NZm
         8n17gbnSTCQ0Yy55MYqVbGOx8wz5CZvWaJBPIfmh3ZXSWODq+C6LQlsaLo/P/q8630Y7
         W8u5OaI4n+LMk6/XoJSOT+OGFX/TA1nA1OCG7BQu0wJFM8uTy4Db8TIFDw7fjOBq8aHv
         v8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s2WOQUH0wXSdYV78PK0Csxc8qJyHls+YdgLQRT9Q8rg=;
        b=bxWgFisfPEXyM0hCO6W9VzpUHN4hn6h0HDFSUkd8cyQsvwcYrTbdxKbceCm7q1oN4X
         qvkKfg3vOYjZv6fwoP3fAHmX01WkrkW1ymi1r0fHCHNG4mT3ouGCOyuZWpRq8iKfeQVF
         cGMFq5nwwRv/w2cNBp9Z24YjE54j6cAvy4WXBo0UDD0FzMBv2OJsqncCktpcSv7U4ILg
         RhnPCyqSGsFHdex3bKpFrusOinpN0gryJQdsSedNcl+g5Rx39A4KQgyoQxtnctNamRfC
         0fktSWk91RD0RGbbQcGD2pf838To6F56jwOJAbi152yBZA1TkEdb0qR0NFzkh75Nki6+
         QWrw==
X-Gm-Message-State: AJIora/E6e2LMR3UubdM/J65vuYLitq70BVzknoJ6cMIuJnsIh4b4EJT
	TzQvVclnCNgT+aws8oKUwo8=
X-Google-Smtp-Source: AGRyM1swaMVmkvG35QSSlyaKvF4+h/fJGbr8Dk32vCzFNayDWA3Oms7SncdE5PLQv7zzWK7tV6Sspw==
X-Received: by 2002:a5d:5941:0:b0:21a:342d:510f with SMTP id e1-20020a5d5941000000b0021a342d510fmr22671176wri.700.1655754855039;
        Mon, 20 Jun 2022 12:54:15 -0700 (PDT)
Received: from jernej-laptop.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id t5-20020a05600001c500b0020d106c0386sm5806017wrx.89.2022.06.20.12.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 12:54:14 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v9 14/17] media: hantro: Stop using Hantro dedicated control
Date: Mon, 20 Jun 2022 21:54:12 +0200
Message-ID: <11999002.O9o76ZdvQC@jernej-laptop>
In-Reply-To: <20220617083545.133920-15-benjamin.gaignard@collabora.com>
References: <20220617083545.133920-1-benjamin.gaignard@collabora.com> <20220617083545.133920-15-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_125419_587198_0FFF8150 
X-CRM114-Status: GOOD (  26.76  )
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

Dne petek, 17. junij 2022 ob 10:35:42 CEST je Benjamin Gaignard napisal(a):
> The number of bits to skip in the slice header can be computed
> in the driver by using sps, pps and decode_params information.
> This makes it possible to remove Hantro dedicated control.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 9:
> - Reword commit message
> - Use fls()
> 
>  drivers/staging/media/hantro/hantro_drv.c     | 36 ------------------
>  .../staging/media/hantro/hantro_g2_hevc_dec.c | 37 ++++++++++++++++++-
>  include/media/hevc-ctrls.h                    | 13 -------
>  3 files changed, 36 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c
> b/drivers/staging/media/hantro/hantro_drv.c index
> 536c8c374952..5aac3a090480 100644
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
> @@ -332,10 +312,6 @@ static const struct v4l2_ctrl_ops hantro_jpeg_ctrl_ops
> = { .s_ctrl = hantro_jpeg_s_ctrl,
>  };
> 
> -static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
> -	.s_ctrl = hantro_hevc_s_ctrl,
> -};
> -
>  #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | 
\
>  					 
V4L2_JPEG_ACTIVE_MARKER_COM | \
>  					 
V4L2_JPEG_ACTIVE_MARKER_DQT | \
> @@ -487,18 +463,6 @@ static const struct hantro_ctrl controls[] = {
>  		.cfg = {
>  			.id = 
V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
>  		},
> -	}, {
> -		.codec = HANTRO_HEVC_DECODER,
> -		.cfg = {
> -			.id = 
V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP,
> -			.name = "Hantro HEVC slice header skip 
bytes",
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
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c index
> d28653d04d20..9eac133bda68 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -117,6 +117,41 @@ static void prepare_tile_info_buffer(struct hantro_ctx
> *ctx) vpu_debug(1, "%s: no chroma!\n", __func__);
>  }
> 
> +static int compute_header_skip_lenght(struct hantro_ctx *ctx)

lenght -> length

Best regards,
Jernej

> +{
> +	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
> +	const struct v4l2_ctrl_hevc_decode_params *decode_params =
> ctrls->decode_params; +	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
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
> +	if (!(decode_params->flags & V4L2_HEVC_DECODE_PARAM_FLAG_IDR_PIC)) 
{
> +		/* size of pic_order_cnt_lsb */
> +		skip += sps->log2_max_pic_order_cnt_lsb_minus4 + 4;
> +
> +		/* size of short_term_ref_pic_set_sps_flag */
> +		skip++;
> +
> +		if (decode_params->short_term_ref_pic_set_size)
> +			/* size of st_ref_pic_set( 
num_short_term_ref_pic_sets ) */
> +			skip += decode_params-
>short_term_ref_pic_set_size;
> +		else if (sps->num_short_term_ref_pic_sets > 1)
> +			skip += fls(sps->num_short_term_ref_pic_sets 
- 1);
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
> @@ -134,7 +169,7 @@ static void set_params(struct hantro_ctx *ctx)
> 
>  	hantro_reg_write(vpu, &g2_output_8_bits, 0);
> 
> -	hantro_reg_write(vpu, &g2_hdr_skip_length, ctrls-
>hevc_hdr_skip_length);
> +	hantro_reg_write(vpu, &g2_hdr_skip_length,
> compute_header_skip_lenght(ctx));
> 
>  	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 
3;
>  	max_log2_ctb_size = min_log2_cb_size +
> sps->log2_diff_max_min_luma_coding_block_size; diff --git
> a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h index
> 42d16e8a1050..9239e8b649e0 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -465,17 +465,4 @@ struct v4l2_ctrl_hevc_scaling_matrix {
>  	__u8	scaling_list_dc_coef_32x32[2];
>  };
> 
> -/*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2
> */ -#define V4L2_CID_CODEC_HANTRO_BASE				
(V4L2_CTRL_CLASS_CODEC | 0x1200)
> -/*
> - * V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP -
> - * the number of data (in bits) to skip in the
> - * slice segment header.
> - * If non-IDR, the bits to be skipped go from syntax element
> "pic_output_flag" - * to before syntax element
> "slice_temporal_mvp_enabled_flag".
> - * If IDR, the skipped bits are just "pic_output_flag"
> - * (separate_colour_plane_flag is not supported).
> - */
> -#define V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP	
(V4L2_CID_CODEC_HANTRO_BASE
> + 0) -
>  #endif





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
