Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F37F2C27C76
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 12:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPu2+8cCtTc6OZ2fgcxdvU8m/4dPQE+HCGQeUC2XBkI=; b=I4qKNk8wdizh00
	Xj/mhXVj5nXCvDhVLel7ljLqymw8cbq+ADwCx9Iti0QyhKUx6ZNxH4RMrzHRFGXc2DvDxaeNaT2o5
	Xo/2YytASWKkXa2N9gySHYhI41gLsRIcQk0oD0toGcbTnTwwWSofU//Ei2bx2ov+9UFGCD9D+o+X/
	paQJXsOqGGQ7L3RfvqtW39dHU9eJ5WiUENvY9vYxz+bbShC5bYxskE/XYU5prmta9/Yk1ziSwiyA4
	vvGWdM8OrTlL4xl6Ew4zl+frTiWVeRpc+V5gCPa2SNT8O8TcMFtDbIrkAsHP8E0cty4doz3CIAMoK
	fdgdAa8UDDdZz/tRhrTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKf4P-007J1e-T0; Wed, 25 Jan 2023 12:40:05 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKf4E-007IzM-Rl; Wed, 25 Jan 2023 12:39:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 49952CE1E29;
	Wed, 25 Jan 2023 12:39:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62163C433D2;
	Wed, 25 Jan 2023 12:39:46 +0000 (UTC)
Message-ID: <87f60e3e-4d91-5fed-eeaa-406e0a47a684@xs4all.nl>
Date: Wed, 25 Jan 2023 13:39:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 13/13] media: verisilicon: Conditionnaly ignore native
 formats
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230111165931.753763-1-benjamin.gaignard@collabora.com>
 <20230111165931.753763-14-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20230111165931.753763-14-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_043955_250733_79AA7423 
X-CRM114-Status: GOOD (  25.57  )
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

Typo in Subject line: Conditionnaly -> Conditionally

Regards,

	Hans

On 1/11/23 17:59, Benjamin Gaignard wrote:
> AV1 film grain feature requires to use the postprocessor to produce
> valid frames. In such case the driver shouldn't propose native pixels
> format but only post-processed pixels format.
> Additionally if when setting a control a value could change capture
> queue pixels formats it is needed to call hantro_reset_raw_fmt().
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> v3:
> - Reset raw pixel formats list when bit depth or film grain feature
>   values change.
> 
>  drivers/media/platform/verisilicon/hantro.h      |  3 +++
>  drivers/media/platform/verisilicon/hantro_drv.c  | 11 ++++++++++-
>  .../media/platform/verisilicon/hantro_postproc.c |  4 ++++
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 16 +++++++++++++++-
>  drivers/media/platform/verisilicon/hantro_v4l2.h |  1 +
>  5 files changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
> index a98cb40a8d3b..7a5357e810fb 100644
> --- a/drivers/media/platform/verisilicon/hantro.h
> +++ b/drivers/media/platform/verisilicon/hantro.h
> @@ -231,6 +231,8 @@ struct hantro_dev {
>   * @ctrl_handler:	Control handler used to register controls.
>   * @jpeg_quality:	User-specified JPEG compression quality.
>   * @bit_depth:		Bit depth of current frame
> + * @need_postproc:	Set to true if the bitstream features require to
> + *			use the post-processor.
>   *
>   * @codec_ops:		Set of operations related to codec mode.
>   * @postproc:		Post-processing context.
> @@ -258,6 +260,7 @@ struct hantro_ctx {
>  	struct v4l2_ctrl_handler ctrl_handler;
>  	int jpeg_quality;
>  	int bit_depth;
> +	bool need_postproc;
>  
>  	const struct hantro_codec_ops *codec_ops;
>  	struct hantro_postproc_ctx postproc;
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 4fc6dea16ae6..ef99f0f0fc53 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -340,12 +340,21 @@ static int hantro_av1_s_ctrl(struct v4l2_ctrl *ctrl)
>  	switch (ctrl->id) {
>  	case V4L2_CID_STATELESS_AV1_SEQUENCE:
>  		int bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
> +		bool need_postproc = false;
>  
>  		if (vb2_is_streaming(v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)))
>  			if (ctx->bit_depth != bit_depth)
>  				return -EINVAL;
>  
> -		ctx->bit_depth = bit_depth;
> +		if (ctrl->p_new.p_av1_sequence->flags
> +		    & V4L2_AV1_SEQUENCE_FLAG_FILM_GRAIN_PARAMS_PRESENT)
> +			need_postproc = true;
> +
> +		if (ctx->bit_depth != bit_depth || ctx->need_postproc != need_postproc) {
> +			ctx->bit_depth = bit_depth;
> +			ctx->need_postproc = need_postproc;
> +			hantro_reset_raw_fmt(ctx);
> +		}
>  		break;
>  	default:
>  		return -EINVAL;
> diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
> index 7dc39519a2ee..293e5612e2ce 100644
> --- a/drivers/media/platform/verisilicon/hantro_postproc.c
> +++ b/drivers/media/platform/verisilicon/hantro_postproc.c
> @@ -57,6 +57,10 @@ bool hantro_needs_postproc(const struct hantro_ctx *ctx,
>  {
>  	if (ctx->is_encoder)
>  		return false;
> +
> +	if (ctx->need_postproc)
> +		return true;
> +
>  	return fmt->postprocessed;
>  }
>  
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index bbe79dbd2cd9..7566fe86f624 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -38,6 +38,11 @@ hantro_get_formats(const struct hantro_ctx *ctx, unsigned int *num_fmts)
>  {
>  	const struct hantro_fmt *formats;
>  
> +	if (ctx->need_postproc) {
> +		*num_fmts = 0;
> +		return NULL;
> +	}
> +
>  	if (ctx->is_encoder) {
>  		formats = ctx->dev->variant->enc_fmts;
>  		*num_fmts = ctx->dev->variant->num_enc_fmts;
> @@ -132,6 +137,15 @@ hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
>  		    hantro_check_depth_match(ctx, &formats[i]))
>  			return &formats[i];
>  	}
> +
> +	formats = hantro_get_postproc_formats(ctx, &num_fmts);
> +	for (i = 0; i < num_fmts; i++) {
> +		if (bitstream == (formats[i].codec_mode !=
> +				  HANTRO_MODE_NONE) &&
> +		    hantro_check_depth_match(ctx, &formats[i]))
> +			return &formats[i];
> +	}
> +
>  	return NULL;
>  }
>  
> @@ -404,7 +418,7 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>  		hantro_set_fmt_out(ctx, fmt);
>  }
>  
> -static void
> +void
>  hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_fmt *raw_vpu_fmt;
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.h b/drivers/media/platform/verisilicon/hantro_v4l2.h
> index 64f6f57e9d7a..f642560aed93 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.h
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.h
> @@ -21,6 +21,7 @@
>  extern const struct v4l2_ioctl_ops hantro_ioctl_ops;
>  extern const struct vb2_ops hantro_queue_ops;
>  
> +void hantro_reset_raw_fmt(struct hantro_ctx *ctx);
>  void hantro_reset_fmts(struct hantro_ctx *ctx);
>  int hantro_get_format_depth(u32 fourcc);
>  const struct hantro_fmt *


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
