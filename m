Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15EACC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 14:28:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB8C660E96
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 14:28:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DB8C660E96
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjN27quM4mWHFdbVLHQBZgc/jDwmrhoXtMkyOeFOINA=; b=HB1CBg995LmDwY
	bSpKfTR/LUMtWa1f6gzD4hrHkkrzzpO5j/5iHRFFlqiNML2EgdQOoXGEpYeqWIzNmOdC5hoQ3NY7E
	/qbqLtE7emCBmjnlxnUtILruYE7AMIdkuT76ouPNwE0DLFDcaaPqte1kqCFwfF8MZzZNeuUbPJ9gT
	hDBFSjVMM4uyZKmAc+PpxmGZzsrdkjIDSYgx7ZF3o9J5kIDnim1luc8eTBdbKW6KMJdsEaRn7OXfc
	grP6N2aemfM4N79swV007P1Wcyogjj6lQu4xA7VWgRwJ7qH0G0K1geocYPQck1u8+sNZnnoWDQnAl
	xkdaLgEg8Qr2NRq7SYMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mafEa-00H9aJ-Sp; Wed, 13 Oct 2021 14:27:56 +0000
Received: from mail-ua1-x935.google.com ([2607:f8b0:4864:20::935])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mafEW-00H9X7-BD
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 14:27:54 +0000
Received: by mail-ua1-x935.google.com with SMTP id i22so4823726ual.10
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Oct 2021 07:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Bj1qNEG+5FP9GKXBmM4kufW+uVF44PKuB8CVz9DjaKc=;
 b=gRlcFYjDdxION0Qyby/akwGm75WSXINStyTQHZZuBBF2RIGoipgwpbONDCZzUuhSr+
 1CtJI5NfddIfHkuRkTJ3QSLnJFns92TUxaOOXLQRCrS8PCV/mAopiiz1ktRZN4hiMhHL
 ONOGYv4jqBzR9hcQiavr5d1cIRmjA/7PfIKjm84KYRf8FgXSwuuGS/J/UNfs9bbDoeI1
 9c5cEUkU+uYHFms0MChAkU9AMdC8bbSkYsLM30Empx/KBSV9vdpQSDGxK9mI8n0YeSfB
 gqi7v/FIqH0F3J7NkhSw2VpGE2QAAVTPg41ty5iHRUfQbYMqFzQeM6LXfO3d/zjG7mK8
 getA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bj1qNEG+5FP9GKXBmM4kufW+uVF44PKuB8CVz9DjaKc=;
 b=QwjUcSH7OQmy+RyGqm1tjiaNIlNu90PG31cLA/VkdIwv8xNteMFUgL1fj8UYef7c/A
 HFaTfkrvXFTvJz4/jZc6sPraOpRL3rFi/bGmI56vGShwDQ4udeBy5b4731NHpBilWSWm
 HS0ul+cPpJ1C3YU9FOVaXAQvKEhPGAmEU05nNgt4BZQnyZrg9S0h2rqufhuOB92DCbqT
 vUvSAyietEJAiRqb8HKCmWMD8xPMUlQm27rJRYcMlXNnH839eRtGkhydJhwijFZKTQgg
 FTm4azSXNbCLz8SpbF3b/m4dEN7ozFP4dGabBNR6gq+nz4GNnmopEr9Vjt6wwpkPt8Mt
 2RFg==
X-Gm-Message-State: AOAM530FTIWNyLCdmLM+8yQIBYFeJxgN0lIgDqsphSXOfLazqeJbxPiI
 MKlODc2fQxNpzKw4Uhi73n9ImA==
X-Google-Smtp-Source: ABdhPJyeFIGcjygyszMEknoRPsLumSj93t/Zso1VLa1Hm6InMKEqO7C3740GLJxdppAFCA5swk/HJg==
X-Received: by 2002:ab0:7a50:: with SMTP id a16mr29932206uat.92.1634135270072; 
 Wed, 13 Oct 2021 07:27:50 -0700 (PDT)
Received: from fedora ([196.32.91.248])
 by smtp.gmail.com with ESMTPSA id j11sm5825138uaa.6.2021.10.13.07.27.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:27:49 -0700 (PDT)
Date: Wed, 13 Oct 2021 11:27:44 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, stable@vger.kernel.org
Subject: Re: [PATCH 2/2] media: rkvdec: Support dynamic resolution changes
Message-ID: <YWbs4Ng/mDQpIoiK@fedora>
References: <20211008100423.739462-1-wenst@chromium.org>
 <20211008100423.739462-3-wenst@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211008100423.739462-3-wenst@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_072752_414611_25F58619 
X-CRM114-Status: GOOD (  25.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chen-Yu,

On Fri, Oct 08, 2021 at 06:04:23PM +0800, Chen-Yu Tsai wrote:
> The mem-to-mem stateless decoder API specifies support for dynamic
> resolution changes. In particular, the decoder should accept format
> changes on the OUTPUT queue even when buffers have been allocated,
> as long as it is not streaming.
> 
> Relax restrictions for S_FMT as described in the previous paragraph,
> and as long as the codec format remains the same. This aligns it with
> the Hantro and Cedrus decoders. This change was mostly based on commit
> ae02d49493b5 ("media: hantro: Fix s_fmt for dynamic resolution changes").
> 
> Since rkvdec_s_fmt() is now just a wrapper around the output/capture
> variants without any additional shared functionality, drop the wrapper
> and call the respective functions directly.
> 
> Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Seems we forgot to port Hantro changes over here, so thanks a lot
for picking this up.

Ezequiel

> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 40 +++++++++++++--------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 7131156c1f2c..3f3f96488d74 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -280,31 +280,20 @@ static int rkvdec_try_output_fmt(struct file *file, void *priv,
>  	return 0;
>  }
>  
> -static int rkvdec_s_fmt(struct file *file, void *priv,
> -			struct v4l2_format *f,
> -			int (*try_fmt)(struct file *, void *,
> -				       struct v4l2_format *))
> +static int rkvdec_s_capture_fmt(struct file *file, void *priv,
> +				struct v4l2_format *f)
>  {
>  	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
>  	struct vb2_queue *vq;
> +	int ret;
>  
> -	if (!try_fmt)
> -		return -EINVAL;
> -
> -	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> +	/* Change not allowed if queue is busy */
> +	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
> +			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
>  	if (vb2_is_busy(vq))
>  		return -EBUSY;
>  
> -	return try_fmt(file, priv, f);
> -}
> -
> -static int rkvdec_s_capture_fmt(struct file *file, void *priv,
> -				struct v4l2_format *f)
> -{
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> -	int ret;
> -
> -	ret = rkvdec_s_fmt(file, priv, f, rkvdec_try_capture_fmt);
> +	ret = rkvdec_try_capture_fmt(file, priv, f);
>  	if (ret)
>  		return ret;
>  
> @@ -319,9 +308,20 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
>  	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>  	const struct rkvdec_coded_fmt_desc *desc;
>  	struct v4l2_format *cap_fmt;
> -	struct vb2_queue *peer_vq;
> +	struct vb2_queue *peer_vq, *vq;
>  	int ret;
>  
> +	/*
> +	 * In order to support dynamic resolution change, the decoder admits
> +	 * a resolution change, as long as the pixelformat remains. Can't be
> +	 * done if streaming.
> +	 */
> +	vq = v4l2_m2m_get_vq(m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
> +	if (vb2_is_streaming(vq) ||
> +	    (vb2_is_busy(vq) &&
> +	     f->fmt.pix_mp.pixelformat != ctx->coded_fmt.fmt.pix_mp.pixelformat))
> +		return -EBUSY;
> +
>  	/*
>  	 * Since format change on the OUTPUT queue will reset the CAPTURE
>  	 * queue, we can't allow doing so when the CAPTURE queue has buffers
> @@ -331,7 +331,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
>  	if (vb2_is_busy(peer_vq))
>  		return -EBUSY;
>  
> -	ret = rkvdec_s_fmt(file, priv, f, rkvdec_try_output_fmt);
> +	ret = rkvdec_try_output_fmt(file, priv, f);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.33.0.882.g93a45727a2-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
