Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDB7CC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Mar 2022 12:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y53gisNtwtQxjYaH1qZcKNm3yeKXMo58ycMK8M/tz1Y=; b=JppxseSS7QF+YF
	wDtZ0SgJAKmfcYxUwkp9sDWndOx/i5nCTcXJ5zt9Oy5rWFxQH54p+19XrWsRyOjhqd22fOHn+uLWn
	Cp8IBDxzuWZ3KtvoSWGRut1rjYuLUdbfLhrTDsnedZDpo9TJcDl2mXSCcVZmm+YjGWzSJkWEWenTw
	KdoV9bpF3wJpoW27HKRArvZ473JzyTNQTIm/0h8FZ0K8SGdmwFEIplFcI4/tmlEB0QoTK0d9bXF42
	Ygd+XhaIAwwvhQW0yNGN+sZrF/T+5nIbtNup/WN5podI+j0+RqwJLHTTdSSPjq74uRxMfNKBo5rk8
	Y6r3TOPODtPQphbCzkDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVumm-005EWF-MR; Sun, 20 Mar 2022 12:35:52 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVumi-005EVR-So
 for Linux-rockchip@lists.infradead.org; Sun, 20 Mar 2022 12:35:50 +0000
Received: by mail-oo1-xc29.google.com with SMTP id
 p34-20020a4a95e5000000b003248d73d460so668395ooi.1
 for <Linux-rockchip@lists.infradead.org>; Sun, 20 Mar 2022 05:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aeLVaTmXabVLUlXFaCtHYrDRRC0l+RSpU6HEllfefeU=;
 b=fzdmK3mbmfE4UdQTR/Md6nKXQc8ndDQ74/4mwpY+AV48s11JAI00kxB1O13ONtcAsB
 /GU+ENIc1bWTiLcx/8S81RU6LhLPLnX5Sd98F4zVX+ga+AzPNyk15vvo1HKq0/3hGrT2
 TNrOet6YGzb+6oSBDqtn+g3zzMaGDTO+jVk5MIqZ/fDiHmcB5FSBMY4EcBTnpcOZ2K7V
 ny4U1rera9js2nDUXarnaYthXDagwY2FhJytH+FzyfMtNK880qVzCDSAHLk1h75LglVh
 A8x0semzFYJsqLRzNWzYnJBaRZ63zUZCvDFZLKqyemFFcQjhquAuadLr3CaAWvusYM8f
 BrOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aeLVaTmXabVLUlXFaCtHYrDRRC0l+RSpU6HEllfefeU=;
 b=ICwnDJiP+ZvAMH0JKlmcwnCv4NQ3CEX5B9v3QHrkBsNVtfoJUBwAC/gRWTObs34JEw
 NlUYJcjoJrPawDyC8ukMa/aCaXi7pBne8RBLOxkO7TVQushE60mtUPKt6YXD3T4718i4
 DRqy4XCCR/pLA5SQphFiWauy/OX0aSmlk6tLf/k934vrRBWf46S0W5YEo+6K9Qdvvyng
 8IxllpoP6e1F0mY9CyHLOo6NUSsOO9IPiQ1fObAec10BoeLyHcTP1k5nYA6Xi0uUFrmM
 Asi5FI67+JvyA30YQSp/X3v2SqewoMfmiO4HbXl5YK1RsWSvrqY1B7aGwgUrpwzMtAKU
 9YfA==
X-Gm-Message-State: AOAM530O4p80tYwST/LjA1kKR/kzLeWXUr28FYh5wJfSduk8E58LGLF+
 D3AdRP5dgwDQXKo8GW/0RB+jgA==
X-Google-Smtp-Source: ABdhPJx7WKxSv8HUicHA5C8Hhfbuij0AJLhYQe0Nc+1uraQwttPVDLjecpRIms/+jGDdWfLNcvJt+A==
X-Received: by 2002:a05:6870:c588:b0:da:3d88:de58 with SMTP id
 ba8-20020a056870c58800b000da3d88de58mr10075670oab.32.1647779747582; 
 Sun, 20 Mar 2022 05:35:47 -0700 (PDT)
Received: from eze-laptop ([186.122.18.6]) by smtp.gmail.com with ESMTPSA id
 m26-20020a05680806da00b002d797266870sm6188356oih.9.2022.03.20.05.35.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Mar 2022 05:35:47 -0700 (PDT)
Date: Sun, 20 Mar 2022 09:35:42 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-media@vger.kernel.org, Linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] media: hantro: Add support for Hantro G1 on RK356x
Message-ID: <YjcfnptyJ2xdkw8H@eze-laptop>
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220320_053548_974391_DE48F1A2 
X-CRM114-Status: GOOD (  17.37  )
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

On Mon, Feb 14, 2022 at 10:29:53PM +0100, Piotr Oniszczuk wrote:
> From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> 
> RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> video formats.
> 
> This patch adds support for RK356x family in existing Hantro
> video decoder kernel driver.
> 
> Tested on [1] with FFmpeg v4l2_request code taken from [2]
> with MPEG2, H.642 and VP8 samples with results [3].
> 
> [1] https://github.com/warpme/minimyth2
> [2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> [3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
> 
> Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/hantro/hantro_drv.c      |  1 +
>  drivers/staging/media/hantro/hantro_hw.h       |  1 +
>  drivers/staging/media/hantro/rockchip_vpu_hw.c | 14 ++++++++++++++
>  3 files changed, 16 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 6a51f39dde56..ac7d58069eb8 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -613,6 +613,7 @@ static const struct of_device_id of_hantro_match[] = {
>  	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
>  	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
>  	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
> +	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
>  	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 4a19ae8940b9..89ec6d500938 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -307,6 +307,7 @@ extern const struct hantro_variant rk3066_vpu_variant;
>  extern const struct hantro_variant rk3288_vpu_variant;
>  extern const struct hantro_variant rk3328_vpu_variant;
>  extern const struct hantro_variant rk3399_vpu_variant;
> +extern const struct hantro_variant rk3568_vpu_variant;
>  extern const struct hantro_variant sama5d4_vdec_variant;
>  extern const struct hantro_variant sunxi_vpu_variant;
>  
> diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
> index c203b606e6e7..5e64cf068ff9 100644
> --- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
> +++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
> @@ -551,6 +551,20 @@ const struct hantro_variant rk3399_vpu_variant = {
>  	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
>  };
>  
> +const struct hantro_variant rk3568_vpu_variant = {
> +	.dec_offset = 0x400,
> +	.dec_fmts = rk3399_vpu_dec_fmts,
> +	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
> +	.codec = HANTRO_MPEG2_DECODER |
> +		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
> +	.codec_ops = rk3399_vpu_codec_ops,
> +	.irqs = rockchip_vdpu2_irqs,
> +	.num_irqs = ARRAY_SIZE(rockchip_vdpu2_irqs),
> +	.init = rockchip_vpu_hw_init,
> +	.clk_names = rockchip_vpu_clk_names,
> +	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
> +};
> +
>  const struct hantro_variant px30_vpu_variant = {
>  	.enc_offset = 0x0,
>  	.enc_fmts = rockchip_vpu_enc_fmts,
> -- 
> 2.29.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
