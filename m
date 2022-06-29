Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3534C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 20:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkjBQFXhlFggrfHVkWmBJxnHIPTaAAF3oXM/MdFSJ9A=; b=A9gLDRcAk4C+wQ
	hYcYSdxDOi5LiiPue9hgw3E7ObrgtGJcJiW6vTWNM1IH8f3bhJCiTD1iyKu8GN7v8N/gK3ZzkZwfR
	KkcvaA3L2qYUMkL2fSPXF5/5H77JsqUfTmq8UB/sEL8Kk6DZeRw/IN7nd4HjE/Mk8O6QTzj5RF7j+
	IRZ3PLRas0YNDhLwTzjWXmnCts+1RqoIGnoW9B32PpGb+zVyKFIbi0xcZrhaOoPnjX4/ZL20vn5FO
	apMT26PNqfpc9/LPJTkLAExV9rjfEQoFlOdqMWNgNDSEBh4DBkmOpnW0A6DfcN/K3IYyaICKQnWDr
	mzP3BZRAe5hsTaHk3dTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6eKh-00DyNe-8x; Wed, 29 Jun 2022 20:30:43 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6dEK-00DkmS-U3
	for linux-rockchip@lists.infradead.org; Wed, 29 Jun 2022 19:20:06 +0000
Received: by mail-oo1-xc35.google.com with SMTP id n11-20020a4ad12b000000b00425b01c3326so1484802oor.8
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jun 2022 12:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4IY1+lAO4Posxki4A8hl3XkQpihB9YLZGIPFUTvwakM=;
        b=HYC4tZgofx/ozc5CMWDl+alXct7+6S+dQxMbkS7lfomOQqvqi3SXQLiewlzmyuDFi5
         ahx6zd6QAWXzcAEyFdYv66RwYSGLUvergaae5ybUbKeDqvz2CTX/Ndc2OtlXbRWc4j5d
         eeThbp/RaKvtBFN77MLPcUoSKe1H+Y6dnOd2QkkNDEZ2Rp8amwyvNtOkWJeCLdR0vYB0
         dEHtmnqS4gFz4Atb5iAdYKjUblRRjPvf9dIO4R9l/6lcxRptDU3VE5h2HomzueMyU4fO
         JIsE0TZOIHbQhl1l90yKlRQBW0qFzpa9rHVJqX2ghHY5pdpLQNdx9Ir79BVx0iBXdc7H
         zBLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4IY1+lAO4Posxki4A8hl3XkQpihB9YLZGIPFUTvwakM=;
        b=aBC3SYzIK3Q03y0IG9NySDR2YCxwkvEtAAxh2d9vjq3NbMSVjBd0bDNyiJ0nK9OQk0
         cPF/tE/DmTjbnsZVW5qIBkcmhCerMHFgVMoCrvn88to2j2t+YAsGvUqvZq47PVC54MJw
         kLDxs1LJuwmkyb7W87jpI+YjJQIUTq55FgTnClShbBHWAz2moV3zOqHlRhZlfc1FzcCh
         xTCvxm0I3qtF4JsPvwCp7JJEpf/lJxxDlVUgNa999l0ZSL95qTnJjju1PktASXmL1nsc
         sxKUSkzXeSs7ZPBFImkuhEZGprzBLB8/WUFcAErT34sfEWDXDhibTjSQgbUMzyltsHMy
         hzog==
X-Gm-Message-State: AJIora8fe0eVObwn00m4ssECsY6LfcSjMZPDQYA8ozLdIWHIhfS8dul7
	FoMMEGb9ojZZcdfALKb3p0ZBkg==
X-Google-Smtp-Source: AGRyM1szB2I5u75eF35Z9NNIRvSjg69yLzAkkdRofmHhMutfeUDBCRnOFjwrl8GRyQF4pR5pXgXnRg==
X-Received: by 2002:a4a:2cc1:0:b0:425:8f67:36f5 with SMTP id o184-20020a4a2cc1000000b004258f6736f5mr2137665ooo.16.1656530402190;
        Wed, 29 Jun 2022 12:20:02 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id y19-20020a9d7153000000b00612e4267634sm10092952otj.18.2022.06.29.12.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 12:20:01 -0700 (PDT)
Date: Wed, 29 Jun 2022 16:19:55 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com, nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 7/7] media: hantro: sunxi: Enable 10-bit decoding
Message-ID: <Yryl24uu0CMKpFgQ@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
 <20220616202513.351039-8-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616202513.351039-8-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_122005_070712_249B4440 
X-CRM114-Status: GOOD (  16.83  )
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

Hi Jernej,

On Thu, Jun 16, 2022 at 10:25:13PM +0200, Jernej Skrabec wrote:
> Now that infrastructure for 10-bit decoding exists, enable it for
> Allwinner H6.
> 

I don't have this hardware, but the patch seems OK.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> ---
>  drivers/staging/media/hantro/sunxi_vpu_hw.c | 27 +++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/sunxi_vpu_hw.c b/drivers/staging/media/hantro/sunxi_vpu_hw.c
> index fbeac81e59e1..02ce8b064a8f 100644
> --- a/drivers/staging/media/hantro/sunxi_vpu_hw.c
> +++ b/drivers/staging/media/hantro/sunxi_vpu_hw.c
> @@ -23,12 +23,39 @@ static const struct hantro_fmt sunxi_vpu_postproc_fmts[] = {
>  			.step_height = 32,
>  		},
>  	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_P010,
> +		.codec_mode = HANTRO_MODE_NONE,
> +		.postprocessed = true,
> +		.frmsize = {
> +			.min_width = FMT_MIN_WIDTH,
> +			.max_width = FMT_UHD_WIDTH,
> +			.step_width = 32,
> +			.min_height = FMT_MIN_HEIGHT,
> +			.max_height = FMT_UHD_HEIGHT,
> +			.step_height = 32,
> +		},
> +	},
>  };
>  
>  static const struct hantro_fmt sunxi_vpu_dec_fmts[] = {
>  	{
>  		.fourcc = V4L2_PIX_FMT_NV12_4L4,
>  		.codec_mode = HANTRO_MODE_NONE,
> +		.match_depth = true,
> +		.frmsize = {
> +			.min_width = FMT_MIN_WIDTH,
> +			.max_width = FMT_UHD_WIDTH,
> +			.step_width = 32,
> +			.min_height = FMT_MIN_HEIGHT,
> +			.max_height = FMT_UHD_HEIGHT,
> +			.step_height = 32,
> +		},
> +	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_P010_4L4,
> +		.codec_mode = HANTRO_MODE_NONE,
> +		.match_depth = true,
>  		.frmsize = {
>  			.min_width = FMT_MIN_WIDTH,
>  			.max_width = FMT_UHD_WIDTH,
> -- 
> 2.36.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
