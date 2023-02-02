Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F06A3C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Feb 2023 19:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VlEukJLduDOVNmcnMsddVNJL6ZH8aH85Cm95c+IIo9c=; b=ePb6QqsrsuR8wicUUdvjyL6lvU
	Gm/UMcpYdDApfLbyDhgAbATmlIOqXmCBzyp1EYl3jZMm5pCPDh+YLbKLnDX75QhvgpEICvkSRQiF8
	oQUKV9nOcsSyVIp2LF5jecSQ+hT8FvVG9VXKftWKeLDfHi97OyGWfB3HH9fMO27NMlWEwuFBSUSy5
	ADE8KSl1o+jZ/+zIMjTKJ2sl2oHwy+TYZfCp2Y1iCj09VbV61oTgKWpnODVTnwv27Hx5fF8t6mkDk
	HLQg5rCT+2W5nxIKDEOrXeJez/KBy8z8enAb9h6Vb8JmIS3ld2DyETAVLtrUhe/8LkpJS/2d1aumo
	9oAWkJhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNfJf-00H4Es-N1; Thu, 02 Feb 2023 19:32:15 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNfJU-00H4D7-ET
	for linux-rockchip@lists.infradead.org; Thu, 02 Feb 2023 19:32:06 +0000
Received: by mail-oi1-x235.google.com with SMTP id s124so2339737oif.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Feb 2023 11:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=czGjRCrCK6e9yW0qm2IQKBxoTDKPxeODrjgrPg7ScQY=;
        b=EUqM8exLUpUSvPdAe4vKYSzAirC6ZM0iGPdSWFXfokx2zAB8qU//a02Jfu3y6D8n23
         HdpSDfh330ytfGvAZjXIQVlv2t89sPlwx6UZ+t0WD5QhBR5sL5wELQJbmjlOdjulMyii
         YlYRE39uI2KICLqniqiCXqN107N4RaSLud+wV+n8R0v8+aSoG/kNmhsb0zECdrB9kn6R
         /BxS0qb8HOPRYuslDdYaVIxRbrx8LiZVTSpm+GCw0U5vm7xd2kMQW5BQiKVYHQ+WaG4W
         f9mnO/WOvYS2VEL4ZE10cgqHOblF8cAUKS8E/hheyS0RUIvuMvZezURaDL/e7m1qXuwd
         97qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=czGjRCrCK6e9yW0qm2IQKBxoTDKPxeODrjgrPg7ScQY=;
        b=ybI3HfX/3ratLZ5LeIbO96OCqsyD6yDNRd3VYq3cJ95uRY/Apqm5kjsFLJ9I1ceFOW
         tKf1oDvu6OTOv3r9DVjniTe9F9aLVzwT8HNzet/ginQMUKH9BZQRetVOxlYL9xInZ4+N
         cIAjylnRRceBwet00RQi9tmojzDSmqZI1hniTPKg5ec162hOEm0C8QasjpIEkdJB0gjt
         kLLMzjBM1MuOv9g+JVwkBQHf6eJ/hTVqQ2golbVgjlD1Az4bQbYapUIO+XZvnXwd2MZK
         4Zz8Wntcf6MDTrH/WpMAAE06WVga23TF+zcdYUB97duBZOtS3T0JCNJES0AozO/AOUJG
         S9nw==
X-Gm-Message-State: AO0yUKXFej4Vs26iR9DkISVrINCBX2Q0uNaep/cqyTlW8vMcV068XK7P
	9tgpx7/Z4AAD0r5ZvvaG3QYnzA==
X-Google-Smtp-Source: AK7set+YTonpPTFI0B8pCVkQDlJ19P7C2BZL1HG/+XZdpZY7fVrI89+0CUE8XflSMgeyb/B93bnl8Q==
X-Received: by 2002:aca:3d0b:0:b0:360:d0db:d3c8 with SMTP id k11-20020aca3d0b000000b00360d0dbd3c8mr2819438oia.2.1675366318978;
        Thu, 02 Feb 2023 11:31:58 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.239])
        by smtp.gmail.com with ESMTPSA id a26-20020a056808099a00b00378ce4197casm43798oic.8.2023.02.02.11.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 11:31:57 -0800 (PST)
Date: Thu, 02 Feb 2023 16:31:45 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v7 4/5] media: verisilicon: Do not change context bit
 depth before validating the format
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>
Message-Id: <XWWGPR.PR59XJGA0QXK3@vanguardiasur.com.ar>
In-Reply-To: <20230131130327.776899-5-benjamin.gaignard@collabora.com>
References: <20230131130327.776899-1-benjamin.gaignard@collabora.com>
	<20230131130327.776899-5-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_113204_750220_D42E13C5 
X-CRM114-Status: GOOD (  26.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin,


On Tue, Jan 31 2023 at 02:03:26 PM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> It is needed to check if the proposed pixels format is valid before
> updating context bit depth and other internal states.
> Stop using ctx->bit_depth to check format depth match and return
> result to the caller.
> 
> Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
> version 7:
> - Change HANTRO_DEFAULT_BIT_DEPTH value to 8.
> - Simplify hantro_check_depth_match logic.
> - Keep ctx->bit_depth as integer value because it is use
>   to compute buffers size for hevc.
> 
>  .../platform/verisilicon/hantro_postproc.c    |  2 +-
>  .../media/platform/verisilicon/hantro_v4l2.c  | 45 
> ++++++++++---------
>  .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
>  3 files changed, 26 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c 
> b/drivers/media/platform/verisilicon/hantro_postproc.c
> index 09d8cf942689..6437423ccf3a 100644
> --- a/drivers/media/platform/verisilicon/hantro_postproc.c
> +++ b/drivers/media/platform/verisilicon/hantro_postproc.c
> @@ -197,7 +197,7 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
>  	unsigned int i, buf_size;
> 
>  	/* this should always pick native format */
> -	fmt = hantro_get_default_fmt(ctx, false);
> +	fmt = hantro_get_default_fmt(ctx, false, ctx->bit_depth);
>  	if (!fmt)
>  		return -EINVAL;
>  	v4l2_fill_pixfmt_mp(&pix_mp, fmt->fourcc, ctx->src_fmt.width,
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c 
> b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index e60151a8a401..6c5f4351b257 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -28,6 +28,8 @@
>  #include "hantro_hw.h"
>  #include "hantro_v4l2.h"
> 
> +#define HANTRO_DEFAULT_BIT_DEPTH 0

^^^
This is still not correct.

The ctx->bit_depth should always be a valid value,
even in the reset state (at open() time).

Also, I think your series takes care of HEVC, but the exact
same changes are needed for VP9, as far as I can see.

Thanks,
Ezequiel


>  static int hantro_set_fmt_out(struct hantro_ctx *ctx,
>  			      struct v4l2_pix_format_mplane *pix_mp);
>  static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
> @@ -76,17 +78,16 @@ int hantro_get_format_depth(u32 fourcc)
>  }
> 
>  static bool
> -hantro_check_depth_match(const struct hantro_ctx *ctx,
> -			 const struct hantro_fmt *fmt)
> +hantro_check_depth_match(const struct hantro_fmt *fmt, int bit_depth)
>  {
> -	int fmt_depth, ctx_depth = 8;
> +	int fmt_depth, depth = 8;
> 
>  	if (!fmt->match_depth && !fmt->postprocessed)
>  		return true;
> 
>  	/* 0 means default depth, which is 8 */
> -	if (ctx->bit_depth)
> -		ctx_depth = ctx->bit_depth;
> +	if (bit_depth)
> +		depth = bit_depth;
> 
>  	fmt_depth = hantro_get_format_depth(fmt->fourcc);
> 
> @@ -95,9 +96,9 @@ hantro_check_depth_match(const struct hantro_ctx 
> *ctx,
>  	 * It may be possible to relax that on some HW.
>  	 */
>  	if (!fmt->match_depth)
> -		return fmt_depth <= ctx_depth;
> +		return fmt_depth <= depth;
> 
> -	return fmt_depth == ctx_depth;
> +	return fmt_depth == depth;
>  }
> 
>  static const struct hantro_fmt *
> @@ -119,7 +120,7 @@ hantro_find_format(const struct hantro_ctx *ctx, 
> u32 fourcc)
>  }
> 
>  const struct hantro_fmt *
> -hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
> +hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream, 
> int bit_depth)
>  {
>  	const struct hantro_fmt *formats;
>  	unsigned int i, num_fmts;
> @@ -128,7 +129,7 @@ hantro_get_default_fmt(const struct hantro_ctx 
> *ctx, bool bitstream)
>  	for (i = 0; i < num_fmts; i++) {
>  		if (bitstream == (formats[i].codec_mode !=
>  				  HANTRO_MODE_NONE) &&
> -		    hantro_check_depth_match(ctx, &formats[i]))
> +		    hantro_check_depth_match(&formats[i], bit_depth))
>  			return &formats[i];
>  	}
>  	return NULL;
> @@ -203,7 +204,7 @@ static int vidioc_enum_fmt(struct file *file, 
> void *priv,
> 
>  		if (skip_mode_none == mode_none)
>  			continue;
> -		if (!hantro_check_depth_match(ctx, fmt))
> +		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
>  			continue;
>  		if (j == f->index) {
>  			f->pixelformat = fmt->fourcc;
> @@ -223,7 +224,7 @@ static int vidioc_enum_fmt(struct file *file, 
> void *priv,
>  	for (i = 0; i < num_fmts; i++) {
>  		fmt = &formats[i];
> 
> -		if (!hantro_check_depth_match(ctx, fmt))
> +		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
>  			continue;
>  		if (j == f->index) {
>  			f->pixelformat = fmt->fourcc;
> @@ -291,7 +292,7 @@ static int hantro_try_fmt(const struct hantro_ctx 
> *ctx,
> 
>  	fmt = hantro_find_format(ctx, pix_mp->pixelformat);
>  	if (!fmt) {
> -		fmt = hantro_get_default_fmt(ctx, coded);
> +		fmt = hantro_get_default_fmt(ctx, coded, HANTRO_DEFAULT_BIT_DEPTH);
>  		pix_mp->pixelformat = fmt->fourcc;
>  	}
> 
> @@ -379,7 +380,7 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>  	const struct hantro_fmt *vpu_fmt;
>  	struct v4l2_pix_format_mplane fmt;
> 
> -	vpu_fmt = hantro_get_default_fmt(ctx, true);
> +	vpu_fmt = hantro_get_default_fmt(ctx, true, 
> HANTRO_DEFAULT_BIT_DEPTH);
>  	if (!vpu_fmt)
>  		return;
> 
> @@ -392,15 +393,15 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>  		hantro_set_fmt_out(ctx, &fmt);
>  }
> 
> -static void
> -hantro_reset_raw_fmt(struct hantro_ctx *ctx)
> +int
> +hantro_reset_raw_fmt(struct hantro_ctx *ctx, int bit_depth)
>  {
>  	const struct hantro_fmt *raw_vpu_fmt;
>  	struct v4l2_pix_format_mplane raw_fmt, *encoded_fmt;
> 
> -	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
> +	raw_vpu_fmt = hantro_get_default_fmt(ctx, false, bit_depth);
>  	if (!raw_vpu_fmt)
> -		return;
> +		return -EINVAL;
> 
>  	if (ctx->is_encoder)
>  		encoded_fmt = &ctx->dst_fmt;
> @@ -411,15 +412,15 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>  	raw_fmt.width = encoded_fmt->width;
>  	raw_fmt.height = encoded_fmt->height;
>  	if (ctx->is_encoder)
> -		hantro_set_fmt_out(ctx, &raw_fmt);
> +		return hantro_set_fmt_out(ctx, &raw_fmt);
>  	else
> -		hantro_set_fmt_cap(ctx, &raw_fmt);
> +		return hantro_set_fmt_cap(ctx, &raw_fmt);
>  }
> 
>  void hantro_reset_fmts(struct hantro_ctx *ctx)
>  {
>  	hantro_reset_encoded_fmt(ctx);
> -	hantro_reset_raw_fmt(ctx);
> +	hantro_reset_raw_fmt(ctx, HANTRO_DEFAULT_BIT_DEPTH);
>  }
> 
>  static void
> @@ -519,7 +520,7 @@ static int hantro_set_fmt_out(struct hantro_ctx 
> *ctx,
>  	 * changes to the raw format.
>  	 */
>  	if (!ctx->is_encoder)
> -		hantro_reset_raw_fmt(ctx);
> +		hantro_reset_raw_fmt(ctx, 
> hantro_get_format_depth(pix_mp->pixelformat));
> 
>  	/* Colorimetry information are always propagated. */
>  	ctx->dst_fmt.colorspace = pix_mp->colorspace;
> @@ -582,7 +583,7 @@ static int hantro_set_fmt_cap(struct hantro_ctx 
> *ctx,
>  	 * changes to the raw format.
>  	 */
>  	if (ctx->is_encoder)
> -		hantro_reset_raw_fmt(ctx);
> +		hantro_reset_raw_fmt(ctx, HANTRO_DEFAULT_BIT_DEPTH);
> 
>  	/* Colorimetry information are always propagated. */
>  	ctx->src_fmt.colorspace = pix_mp->colorspace;
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.h 
> b/drivers/media/platform/verisilicon/hantro_v4l2.h
> index 64f6f57e9d7a..9ea2fef57dcd 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.h
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.h
> @@ -21,9 +21,10 @@
>  extern const struct v4l2_ioctl_ops hantro_ioctl_ops;
>  extern const struct vb2_ops hantro_queue_ops;
> 
> +int hantro_reset_raw_fmt(struct hantro_ctx *ctx, int bit_depth);
>  void hantro_reset_fmts(struct hantro_ctx *ctx);
>  int hantro_get_format_depth(u32 fourcc);
>  const struct hantro_fmt *
> -hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream);
> +hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream, 
> int bit_depth);
> 
>  #endif /* HANTRO_V4L2_H_ */
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
