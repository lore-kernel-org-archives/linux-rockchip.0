Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83700C636CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 11:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JUZdMPXBjwgcBVlm/TmVstAK56IFPcFEB1usGm65VH4=; b=KquDM5Z7tfcHQqNQzb0HakjqAX
	wAUQQrf5aA1YT3w59xqVX7eUXWKAuSUs9Rrcj434d2v3uu5E3sULJsrv7BZFVnqCKGEfsSlAl1DHA
	MRc75cpth8k8LzWYmrSC7l31kCBty8pDJ79b+q3Gb1hhTjG25D1IsUMXfldgTjlhvNHSY9HKwX5uy
	VL/mmlLdKTRNB9wfUa5pJeZYTVbqdxudFA9nZ1hrGQvPnCZmtdNabb9N1g1dDZ0x999DtVwe1n3op
	3HSBt4YGyLj4o/OWH/YRee3ceN+aBY6R9me7m/UhT+0aFacob/1E6xo7V2Ur8uVf5owpR3AyjRTG6
	M/potdPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMpGC-007nTR-0e; Tue, 31 Jan 2023 11:57:12 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMpG8-007nPW-Bd
	for linux-rockchip@lists.infradead.org; Tue, 31 Jan 2023 11:57:10 +0000
Received: by mail-ot1-x32a.google.com with SMTP id n25-20020a9d7119000000b0068bd8c1e836so1131122otj.3
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Jan 2023 03:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=uD6oK65t6jXXcWfZrvpRpdrNskxqShxAuqpD0uHN5U4=;
        b=CghLv7Tu61rvA4eeDPHt5DbSyC/+9UooxEd8oPKmT43MZHk0rBppfVz2PR+lng68ML
         68YlflrVu1XgHIX5anEo7incbqRpAalDsRvoBUSMnGjWoqG5UEEpeIoDlG7rKr1E4Q/H
         RW/2d+LXEj4Zd8MU6AC8xkl6aKk4VnkNDDHr3aFmMfh2ALh36NywKj8BSdCDOVz/SBkI
         GndKHI61FqxTF9vpMTtoJtNhb7pmSTQpITUHC+LGQVrFGLzQXDPq0hLgPECdqoO5pmCC
         Kyv2Gr9FKnFOaqKdojnPMJGNzLftJ4MwWOyCa6IkIOyGplG/AYZaXzSUwdo6cz1k5Kjm
         3ViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uD6oK65t6jXXcWfZrvpRpdrNskxqShxAuqpD0uHN5U4=;
        b=B51WYguVbZ2L8YAyR6rt02N0+zpadVmUNr36Y3bSsgfpaRYTtVxrBArTV4ZO6KfvPF
         R+0Y5whF002bOngRoF9M5qzIQLlAQGfEO7bzw5JMUMTwwN1k3DDJFhXofHjNHSSUNYuc
         HJYMnqwdz4rOylc8QFDTy1G+s5KBTAfpqi4zUd2V4YVW2h68D4jFIEgfcOx0yH704f/x
         S1BGCXcV/2jowyfNtTPEVgqb537x31++AEJZoMq+57FknUpymTgyd4wx9iB+VeFeE4QB
         bGEsDGG14jei2y1iSqbpeogXki0wz7/snynah5f6TnZOqjjX7mmWG99TDgT4Bcj+h3dF
         CDuQ==
X-Gm-Message-State: AO0yUKVmvxuTjDHfzu0QsTeIPl2qZ/tljJlOc+eNTh42AEwJVMx5ktOn
	wdv0OJlRwUfanHVffWUbE02oYA==
X-Google-Smtp-Source: AK7set/LEWxhDzV+atwOMYN4ZCyMjKMP4Vk1bwGCEL+B62LezD044elD3w/8seDqhRIyNkoIDkR35g==
X-Received: by 2002:a9d:590e:0:b0:68b:c889:b0d9 with SMTP id t14-20020a9d590e000000b0068bc889b0d9mr1659171oth.3.1675166218288;
        Tue, 31 Jan 2023 03:56:58 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.239])
        by smtp.gmail.com with ESMTPSA id bi7-20020a056830378700b0068bb73bd95esm4697777otb.58.2023.01.31.03.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Jan 2023 03:56:57 -0800 (PST)
Date: Tue, 31 Jan 2023 08:56:45 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v6 4/5] media: verisilicon: Do not change context bit
 depth before validating the format
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>
Message-Id: <LIMCPR.RP375QDMFOPN2@vanguardiasur.com.ar>
In-Reply-To: <20230130135802.744743-5-benjamin.gaignard@collabora.com>
References: <20230130135802.744743-1-benjamin.gaignard@collabora.com>
	<20230130135802.744743-5-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_035708_408791_ACC76430 
X-CRM114-Status: GOOD (  25.25  )
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

On Mon, Jan 30 2023 at 02:58:01 PM +0100, Benjamin Gaignard 
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
> +#define  HANTRO_DEFAULT_BIT_DEPTH 0
> +

The default bit_depth should be 8,
since 0 is not a valid value.

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

This should be removed, since now bit_depth will always
be 8 or 10.

> +	if (bit_depth)
> +		depth = bit_depth;
> 

Ditto.

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

Given hantro_reset_raw_fmt sets the state, I suspect it will be better
to store ctx->bit_depth here.

This will also take care of the bit_depth initialization,
at open() time, which is done with hantro_reset_fmts().

In fact, if you want this to be extra robust replace
the integer bit_depth with an enum type, and so we will
guarantee only valid values, 8 or 10 are ever used.

Thanks!
Ezequiel

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
