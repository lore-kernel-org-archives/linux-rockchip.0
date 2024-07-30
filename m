Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 722BEC3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 07:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4QheTFG9DNNumWS5PJkvsUxEL6gO6Jodb9gjRyFWqI=; b=ko6nSXMZCiU2Cq
	FaMtlIrFI1gbEJiuShJhB526w9t+U6PImGAp3BVDBrelKggpEubRd7itOl4sgyTIlsi+lr7pc6/Sb
	W1PvLU4BBbMpb9qz3KFk77OVwh0Xem6wPF6rj1mTS2/QkI5xXkG56H5SfAotCE7s5FiH7RfBY6jVa
	EXC0uDqyrzxILKZAvUf30q2GhZ+J3tiCZavMhUI01iQN/WyxKELwdcTknflOWlUZEkM/yEqYqpnbh
	YvtNX8l+hvkTlCOCOAbckxQJdYg1/TBxuGLXCC3nj4vN3YpB5gS2OXsz/CoRT5J/ocIRJQ6R3o7f6
	AsycExLSFR419NHlH9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh4P-0000000DxbH-1bJl;
	Tue, 30 Jul 2024 07:14:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh2j-0000000Dwrw-0wfe
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 07:13:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3C83A61DD3;
	Tue, 30 Jul 2024 07:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B2DC32782;
	Tue, 30 Jul 2024 07:13:06 +0000 (UTC)
Message-ID: <92c88d0f-219e-43b4-9dce-5ae99585b767@xs4all.nl>
Date: Tue, 30 Jul 2024 09:13:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] media: test-drivers: Use V4L2_FMT_FLAG_ENUM_ALL
 flag
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
 <20240722150523.149667-3-benjamin.gaignard@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20240722150523.149667-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_001309_450807_8E20A613 
X-CRM114-Status: GOOD (  16.50  )
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

On 22/07/2024 17:05, Benjamin Gaignard wrote:
> Since V4L2_FMT_FLAG_ENUM_ALL flag mostly targeting stateless
> decoder pixel formats enumeration, update vicodec visl test
> drivers to use it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/test-drivers/vicodec/vicodec-core.c |  7 ++++---
>  drivers/media/test-drivers/visl/visl-video.c      | 11 +++++++----
>  2 files changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
> index 3e011fe62ae1..1b4cd8ddd7c2 100644
> --- a/drivers/media/test-drivers/vicodec/vicodec-core.c
> +++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
> @@ -706,6 +706,7 @@ static int enum_fmt(struct v4l2_fmtdesc *f, struct vicodec_ctx *ctx,
>  		    bool is_out)
>  {
>  	bool is_uncomp = (ctx->is_enc && is_out) || (!ctx->is_enc && !is_out);
> +	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;

This is not what I am looking for: to properly test this in v4l2-compliance this
flag actually has to make a difference in the result. I.e. you actually have to
add some limitation. This might be easier to do in visl than vicodec. As long as
at least one test-driver support this, then that's good enough for me.

Regards,

	Hans

>  
>  	if (V4L2_TYPE_IS_MULTIPLANAR(f->type) && !multiplanar)
>  		return -EINVAL;
> @@ -718,18 +719,18 @@ static int enum_fmt(struct v4l2_fmtdesc *f, struct vicodec_ctx *ctx,
>  
>  		if (ctx->is_enc ||
>  		    !vb2_is_streaming(&ctx->fh.m2m_ctx->cap_q_ctx.q))
> -			info = v4l2_fwht_get_pixfmt(f->index);
> +			info = v4l2_fwht_get_pixfmt(index);
>  		else
>  			info = v4l2_fwht_find_nth_fmt(info->width_div,
>  						     info->height_div,
>  						     info->components_num,
>  						     info->pixenc,
> -						     f->index);
> +						     index);
>  		if (!info)
>  			return -EINVAL;
>  		f->pixelformat = info->id;
>  	} else {
> -		if (f->index)
> +		if (index)
>  			return -EINVAL;
>  		f->pixelformat = ctx->is_stateless ?
>  			V4L2_PIX_FMT_FWHT_STATELESS : V4L2_PIX_FMT_FWHT;
> diff --git a/drivers/media/test-drivers/visl/visl-video.c b/drivers/media/test-drivers/visl/visl-video.c
> index f8d970319764..c5f3e13b4198 100644
> --- a/drivers/media/test-drivers/visl/visl-video.c
> +++ b/drivers/media/test-drivers/visl/visl-video.c
> @@ -341,21 +341,24 @@ static int visl_enum_fmt_vid_cap(struct file *file, void *priv,
>  				 struct v4l2_fmtdesc *f)
>  {
>  	struct visl_ctx *ctx = visl_file_to_ctx(file);
> +	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
>  
> -	if (f->index >= ctx->coded_format_desc->num_decoded_fmts)
> +	if (index >= ctx->coded_format_desc->num_decoded_fmts)
>  		return -EINVAL;
>  
> -	f->pixelformat = ctx->coded_format_desc->decoded_fmts[f->index];
> +	f->pixelformat = ctx->coded_format_desc->decoded_fmts[index];
>  	return 0;
>  }
>  
>  static int visl_enum_fmt_vid_out(struct file *file, void *priv,
>  				 struct v4l2_fmtdesc *f)
>  {
> -	if (f->index >= ARRAY_SIZE(visl_coded_fmts))
> +	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
> +
> +	if (index >= ARRAY_SIZE(visl_coded_fmts))
>  		return -EINVAL;
>  
> -	f->pixelformat = visl_coded_fmts[f->index].pixelformat;
> +	f->pixelformat = visl_coded_fmts[index].pixelformat;
>  	return 0;
>  }
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
