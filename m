Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA7BC61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Feb 2023 12:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HcDM/n4pZCkxxQ7v4RjLmWGyfDgjz/4Ppb5sQrcx/ng=; b=e0VdYVaVCZTAHv8aCsQLkE7CMi
	ObSHQlwP5LpZx6cEL310vGbKlYFj4OZeHdzSulS4VHSA2uwzxuQfLOzhd0zekYZT4usxbN0K/nbcZ
	ikjINlRTIgj/KvKTOVs83inRT8YZrCH9bprJ/dA3CHNrXdTlRXMNgE5FQKePmlq8CjcvEd0g2fzld
	+g7ylCsI9jnSqLNu5wczbGZyWeRMLelpgv9Xsx2/kb1tSd2KqSfwuDPZKwH2f2RmfndXE0Urm5/l1
	cDPpRFwYI7SnC/nWveoYz4oL5CggMPBaSuexj7OU/9k5b+wP2uYHrwuhrqdRglEDPfQ0591YtH1bU
	zqv+vnyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTMlW-00H16c-Ni; Sat, 18 Feb 2023 12:56:34 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTMlM-00H13l-I2
	for linux-rockchip@lists.infradead.org; Sat, 18 Feb 2023 12:56:26 +0000
Received: by mail-oi1-x236.google.com with SMTP id bk33so71468oib.10
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Feb 2023 04:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112; t=1676724983;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=B4T/3VjZ2wUE2kiltfp+IEnD9NbcnF/4jn4QQsLwaKQ=;
        b=WFUutkwQzJllOyCFl9Tyt7c/8C1QB8tGsITnK6uGdRDVGT89Qb2gvLDjJTqHdqbERm
         O1tgIm2GRydG5xAtQIq7fzmGRdLlHSkhVmwHNWVGsn3cTaaH10X1aLWx1g9Ca0TJpQ5s
         13bE9b8pvo6mNhvEa0GpyawCPzWE6gyQCMZbZdK6CjoEGktQB5WBwOJCBLRYGS3niNpH
         ita6/hfL7rvhIpfu0UIMp8fadhGLrW03XniCzlrB5FUqAWMIzf8Y3OdOEPxvoUqHVbY/
         lcIYIGjOReCACIMFdDY524OJziMs3E40n4Xs4FhPM73MTbDWVLdEgOJrBsnpHDMugxht
         0jug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676724983;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B4T/3VjZ2wUE2kiltfp+IEnD9NbcnF/4jn4QQsLwaKQ=;
        b=XzouzWL91+HQYwQX1Tv29iRvPAE+JivYTYA0Pgu6kgPYJPzKf4tWLdLA8sHi6d1tNB
         vLeSSJTyYaK4aMURWgFEEtlZeRozgerUUlbs6e6KCkDXX8rRBtws+wU+Yxev0DAQ4VUu
         ueob76Rgi+B6t9q7C9exM7SfskZFSz6FYHnV8gJWHNvVp3mve+1A3unB1phb+7TNCbeC
         faGlxHKokOtX2r8qu9rpCV3KdAEGFTal39VUAQQ20dl9l4kDv0i/oFCEqhr5nXOVLih3
         l48ouE+3iRRnLezvWrH75q6rSBREBWqIQrOomTkVzn5POcY9vOwjnMFUKq5ynGAKhLEc
         mjuw==
X-Gm-Message-State: AO0yUKWbcdv3W/ipMnzVA09gExGNvDO2iuaWdkQgeIE2uFZlA4e3D18r
	O9SsVOoe84ILP5PK3fRvfTB5AQ==
X-Google-Smtp-Source: AK7set+eMXV7537L5Whj6keT9oGEqRHiBF5BCK2/XFF63eFpDJ+bIyReLkdZb0jCLH19KzS79utdZA==
X-Received: by 2002:a05:6808:21a1:b0:37f:acb8:cd8f with SMTP id be33-20020a05680821a100b0037facb8cd8fmr3108272oib.0.1676724983375;
        Sat, 18 Feb 2023 04:56:23 -0800 (PST)
Received: from [192.168.10.175] ([190.11.59.127])
        by smtp.gmail.com with ESMTPSA id w13-20020a9d538d000000b00690e6d56670sm2150969otg.25.2023.02.18.04.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 04:56:22 -0800 (PST)
Date: Sat, 18 Feb 2023 09:56:11 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v8 2/6] media: verisilicon: Do not use ctx fields as
 format storage when resetting
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Message-Id: <N91AQR.BQFKAM8JI9HC2@vanguardiasur.com.ar>
In-Reply-To: <20230203091622.127279-3-benjamin.gaignard@collabora.com>
References: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
	<20230203091622.127279-3-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230218_045624_620270_012F4DC5 
X-CRM114-Status: GOOD (  16.33  )
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

On Fri, Feb 3 2023 at 10:16:18 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> Source and destination pixel formats fields of context structure 
> should
> not be used as storage when resetting the format.
> Use local variables instead and let hantro_set_fmt_out() and
> hantro_set_fmt_cap() set them correctly later.
> 
> Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")
> 

The above Fixes tag looks incorrect. I am unsure what would be the
right Fixes, perhaps we can avoid putting any?

Same for all the other patches, the Fixes tag look wrong.

Thanks,
Ezequiel

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../media/platform/verisilicon/hantro_v4l2.c  | 40 
> +++++++++----------
>  1 file changed, 18 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c 
> b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 33cb865238de..e60151a8a401 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -377,47 +377,43 @@ static void
>  hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_fmt *vpu_fmt;
> -	struct v4l2_pix_format_mplane *fmt;
> +	struct v4l2_pix_format_mplane fmt;
> 
>  	vpu_fmt = hantro_get_default_fmt(ctx, true);
> +	if (!vpu_fmt)
> +		return;
> 
> +	hantro_reset_fmt(&fmt, vpu_fmt);
> +	fmt.width = vpu_fmt->frmsize.min_width;
> +	fmt.height = vpu_fmt->frmsize.min_height;
>  	if (ctx->is_encoder)
> -		fmt = &ctx->dst_fmt;
> -	else
> -		fmt = &ctx->src_fmt;
> -
> -	hantro_reset_fmt(fmt, vpu_fmt);
> -	fmt->width = vpu_fmt->frmsize.min_width;
> -	fmt->height = vpu_fmt->frmsize.min_height;
> -	if (ctx->is_encoder)
> -		hantro_set_fmt_cap(ctx, fmt);
> +		hantro_set_fmt_cap(ctx, &fmt);
>  	else
> -		hantro_set_fmt_out(ctx, fmt);
> +		hantro_set_fmt_out(ctx, &fmt);
>  }
> 
>  static void
>  hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_fmt *raw_vpu_fmt;
> -	struct v4l2_pix_format_mplane *raw_fmt, *encoded_fmt;
> +	struct v4l2_pix_format_mplane raw_fmt, *encoded_fmt;
> 
>  	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
> +	if (!raw_vpu_fmt)
> +		return;
> 
> -	if (ctx->is_encoder) {
> -		raw_fmt = &ctx->src_fmt;
> +	if (ctx->is_encoder)
>  		encoded_fmt = &ctx->dst_fmt;
> -	} else {
> -		raw_fmt = &ctx->dst_fmt;
> +	else
>  		encoded_fmt = &ctx->src_fmt;
> -	}
> 
> -	hantro_reset_fmt(raw_fmt, raw_vpu_fmt);
> -	raw_fmt->width = encoded_fmt->width;
> -	raw_fmt->height = encoded_fmt->height;
> +	hantro_reset_fmt(&raw_fmt, raw_vpu_fmt);
> +	raw_fmt.width = encoded_fmt->width;
> +	raw_fmt.height = encoded_fmt->height;
>  	if (ctx->is_encoder)
> -		hantro_set_fmt_out(ctx, raw_fmt);
> +		hantro_set_fmt_out(ctx, &raw_fmt);
>  	else
> -		hantro_set_fmt_cap(ctx, raw_fmt);
> +		hantro_set_fmt_cap(ctx, &raw_fmt);
>  }
> 
>  void hantro_reset_fmts(struct hantro_ctx *ctx)
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
