Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9400BC43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 15:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cC6zQhzaTQx//mhy1Nchlg8ihDYM/GZzvwXyErrzd7w=; b=Os8dNmsmfJaX4o
	OTgFYTlOfZjyhjwUUUW8Gr9S7vzNdm6vtRn/NIqDcb4JIxdRAL826Lr/ofShbAoLBBApy1T9mjQm3
	Gb6/Ki5mI4knSo0J0hNpHMMW/1JdkTLEOTkRXUNLTQRxjScVh822H4Jw/8C8SgrRA6sdu5PD/pjzE
	AcY/4ZDYK24nRwpQIQb1wm8GtEffKCwOijOd+4gziJZ0FnfYnL3ChYIWLYuPjWKOvsiQng+1WS3yb
	Bma5rd9rRYraO+qbbhC6Mgyxx76E/Wqw6Ig3XCWsRLKvwKfPhrGIJMeKl1Bsg9hDU3rGaVTv7+rpZ
	OS7eEa7IUTTOZW5Gll2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ku3-001Jab-HB; Tue, 05 Jul 2022 15:55:55 +0000
Received: from mail-ua1-x935.google.com ([2607:f8b0:4864:20::935])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ktq-001JWp-Vt
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 15:55:44 +0000
Received: by mail-ua1-x935.google.com with SMTP id n3so2124958uak.13
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 08:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=58VGZFdcpimZozGUTVpY64Huy5XkBaMl9karQosi69Y=;
        b=3vRIc5Yhr4AArAzDArcRyTl6ST1JcE4FtPyQ2ESDJY3v8Jqa9u5nwVI/mthSvKEFou
         rKb3ksOc9/ICKe8GPr/QpamGkD0P/2MG6bypw0lRQY7CTEQuIV1NS8ofKWJlqGtNwUA5
         hK/LKvEznMQxbICwcyTn2ygMwMTIPYOMxhE7mmTnCRLiL2eb1CfX+V1zpkwRCOex4AI2
         RvvttSRp14puJut+Mf7zYGyBKoWDRP14vNT12MgSOlJSTfI72k2rBMv86xVqChqs/1zk
         Oqp+OoKFN2T39TZoZya736iooFaSJrUoWUmn/kjG3fS5Y1PmslvhvKIeUk61FtO/qZi6
         1kSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=58VGZFdcpimZozGUTVpY64Huy5XkBaMl9karQosi69Y=;
        b=LQoSbWv6HMaVFZDzgrinMLITD+jwHUPnUyfqu5O+Un4JO1Nt53Q6L2EL1JAiEiBUOG
         ACRuQnZrk2TUPh3nmw80iqKExDdIl7VyB2tkSdi28RFaR9m6A+FRncy5XcZ3CRLwwqF3
         WGfH7DeOBjueO6mAMPnC6Wd5Wj8RVHRm/VRus2bxGHZWkkXiybq9fDw/+IM/5xUILft1
         QWpVS2zf9eAU+4MBeZoTCqnqOZ1s3iNLok4kl5YJhk0qFnNoCX2poEKtwLbTvN0S43j9
         tuMV4kLrIEpT8F35ljKSMtSA1rmdfb/vw8QlBbRVRS9vnozY8hJHIr44BAsZNEB04pSH
         ZoSQ==
X-Gm-Message-State: AJIora/X6E924KPp35IH8XNwoX1C3R7KR8SHOtIVdwEWyHWvb4FrNAFL
	JeQVVl9K0Ta8o9KY3D+be6L8ww==
X-Google-Smtp-Source: AGRyM1uHvRbeZx4Thd0P6CLnFDBPplYRp3rrmZohmfNLH75f0WaD8G0zJQSRzBnBZjsUX92U4yUpag==
X-Received: by 2002:ab0:5969:0:b0:381:c2ef:79f8 with SMTP id o38-20020ab05969000000b00381c2ef79f8mr16700312uad.46.1657036541713;
        Tue, 05 Jul 2022 08:55:41 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id h21-20020a1f9e15000000b003740bbd4882sm1489137vke.18.2022.07.05.08.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 08:55:41 -0700 (PDT)
Date: Tue, 5 Jul 2022 12:55:35 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, mripard@kernel.org,
	paul.kocialkowski@bootlin.com, wens@csie.org,
	jernej.skrabec@gmail.com, samuel@sholland.org,
	nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH v10 14/17] media: hantro: Stop using Hantro dedicated
 control
Message-ID: <YsRe9xTakSu3EPiV@eze-laptop>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
 <20220705085420.272912-15-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705085420.272912-15-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_085543_110559_76AAD76B 
X-CRM114-Status: GOOD (  29.34  )
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

On Tue, Jul 05, 2022 at 10:54:17AM +0200, Benjamin Gaignard wrote:
> The number of bits to skip in the slice header can be computed
> in the driver by using sps, pps and decode_params information.
> This makes it possible to remove Hantro dedicated control.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

I'm really glad we are getting rid of this control. Good job!

> ---
> version 10:
> - Fix lenght typo
> 
> version 9:
> - Reword commit message
> - Use fls()
> 
>  drivers/staging/media/hantro/hantro_drv.c     | 36 ------------------
>  .../staging/media/hantro/hantro_g2_hevc_dec.c | 37 ++++++++++++++++++-
>  include/media/hevc-ctrls.h                    | 13 -------
>  3 files changed, 36 insertions(+), 50 deletions(-)
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

We'll need to add hantro_hevc_s_ctrl() back for 10-bit,
but I guess we still want to remove until needed.

Thanks,
Ezequiel

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
> index d28653d04d20..233ecd863d5f 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -117,6 +117,41 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
>  		vpu_debug(1, "%s: no chroma!\n", __func__);
>  }
>  
> +static int compute_header_skip_length(struct hantro_ctx *ctx)
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
> +			skip += fls(sps->num_short_term_ref_pic_sets - 1);
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
> -	hantro_reg_write(vpu, &g2_hdr_skip_length, ctrls->hevc_hdr_skip_length);
> +	hantro_reg_write(vpu, &g2_hdr_skip_length, compute_header_skip_length(ctx));
>  
>  	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 3;
>  	max_log2_ctb_size = min_log2_cb_size + sps->log2_diff_max_min_luma_coding_block_size;
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 42d16e8a1050..9239e8b649e0 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -465,17 +465,4 @@ struct v4l2_ctrl_hevc_scaling_matrix {
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
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
