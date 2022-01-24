Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5968AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 19:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qludz2hpPTydd2IbaSxth4fW8H4trmaplm6QS/LrCQo=; b=vLO45fBt+bYJYB
	hdSSYCmih+KzCCJp9Aj0/Zk8eD4H96/CRf/s+ak1sbx7QCeWLb6htekebMp5njyEBpo78vRVydolH
	fF4kGXSXUQ4se6ZJ2uC1fJkWuiIxYVMi6qTplqi+8CtSIN1cwIxYXaPe99ufte4QAITyaQ3a+cud1
	Ibtqb+QkvCBJqzV6tZvNeAUFO5NycmB5jKLQYiZulXMMdturXJgpbBXEzoFoF+zdyxtI6oJzt+/VE
	rtI2nsMP0iLexyE959fD9DvBxwI4Y814eieAz02/BIx/sTHlLX/jUiS59BbbZ9EXL3vxFIt1sK3dw
	ZMeFIKTSARS15OqYnU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC4hJ-004lZT-H4; Mon, 24 Jan 2022 19:08:13 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC3mv-004Oef-Ao
 for linux-rockchip@lists.infradead.org; Mon, 24 Jan 2022 18:10:02 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id
 s5-20020a4adb85000000b002e7955c286cso1803318oou.10
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jan 2022 10:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=w8jEaMLPRMyJjaBqD5TxMdjhSUQ8JiEnfyk34bIQgP0=;
 b=MrjpOMe3g8JRIYbcToQd2Qu0I/b5vrX/3XGjf2EZ40WzlqwVFZSR95GOwQ9Gfumk0I
 ArgdPOpGK3Awj4Zw99kwMljilayLReiw+HH3afCWGRMsNfXAK8ZpL3elx0qx3ileBGON
 2ziL9O/d6luadbzWZFnmxRkYJohVyZxiqFsq3BSwSSHsKRhc5jHbszi0RaXvMfwnhL56
 wFIr1QoKW2yzpuzN5DJnrNsTViFEDYj/UQ1W0bw/zSzG1UPIe9m2oVxlgjAlcfbsUSdt
 hntaUGXfZwJKnwcoDtrBOa3ZE9XNGWIpXGYSKCdiTEaBycSmDy/v4s0r8aESzt24uWT4
 TAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w8jEaMLPRMyJjaBqD5TxMdjhSUQ8JiEnfyk34bIQgP0=;
 b=X4ynWweB2D1JMVRTGP8CKNTu2scIVEH7s+rSkMA0EjcHMOqCVSX6uft9BbeOBxxYyA
 d1sVO11xPSoa2OCi4XyrjJbL+xl6VM6weg39uxF3I+zXhhtulntku/nGrG0sUTw32j4Y
 t3EhjwC8YmVIl365XBn0CsE9h+XpT/x/5kEft7l22v2FB595fRQ506vCZDm5HjGaYztX
 aFDGsx5b3azsZR9xK2+BTksQ713Mh5UaKucfQHX197lVIhev49OgnsHci2xXrfs5Sb9R
 o1o85PzDXaT/wnEpVf7IYuUHfBp2iijnLNRHQip2eSisHZdQrlSyt3M0N8C64+mt6+5S
 n8+Q==
X-Gm-Message-State: AOAM5312Q1WwtsfVCRikjB+15XzfE1xYUeLaOArA8jZxi97J7xGS1Cj2
 NRkUodjcq/VrVBu0zEXdFF3vvg==
X-Google-Smtp-Source: ABdhPJz4x/txLXzb74n94I/1helpFS6e1Nqmg4vkIylbZ56TsLFfUK7qbzKJzg6iX/R8pA5+uMINOA==
X-Received: by 2002:a4a:8c2d:: with SMTP id u42mr11072142ooj.7.1643047795762; 
 Mon, 24 Jan 2022 10:09:55 -0800 (PST)
Received: from eze-laptop ([190.194.87.200])
 by smtp.gmail.com with ESMTPSA id z20sm5456490otm.25.2022.01.24.10.09.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jan 2022 10:09:54 -0800 (PST)
Date: Mon, 24 Jan 2022 15:09:48 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shawnguo@kernel.org, aford@beaconembedded.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH V3 05/10] media: hantro: Allow i.MX8MQ G1 and G2 to run
 independently
Message-ID: <Ye7rbLhM7OkjeiTz@eze-laptop>
References: <20220124023125.414794-1-aford173@gmail.com>
 <20220124023125.414794-6-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220124023125.414794-6-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_100957_412287_99B5A0AF 
X-CRM114-Status: GOOD (  23.14  )
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

Hi Adam,

On Sun, Jan 23, 2022 at 08:31:19PM -0600, Adam Ford wrote:
> The VPU in the i.MX8MQ is really the combination of Hantro G1 and
> Hantro G2. With the updated vpu-blk-ctrl, the power domains system
> can enable and disable them separately as well as pull them out of
> reset. This simplifies the code and lets them run independently
> while still retaining backwards compatibility with older device
> trees for those using G1.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 6a51f39dde56..a670ddd29c4c 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -616,6 +616,7 @@ static const struct of_device_id of_hantro_match[] = {
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
>  	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },

Since you might need to resend the series anyway due to the
issue with arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi,
could you add a small warning for the deprecated compatible string?

This will be a useful hint for kernel developers and system integrators
about the devicetree changes.

Something along these lines, maybe?

        match = of_match_node(of_hantro_match, pdev->dev.of_node);
        vpu->variant = match->data;

        /*
         * Support for nxp,imx8mq-vpu is kept for backwards compatibility
         * but it's deprecated. Please update your DTS file to use
         * nxp,imx8mq-vpu-g1 or nxp,imx8mq-vpu-g2 instead.
         */
        if (of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu"))
                dev_warn(&pdev->dev, "%s compatible is deprecated\n",
                         match->compatible);

In any case, the patch looks good:

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel


> +	{ .compatible = "nxp,imx8mq-vpu-g1", .data = &imx8mq_vpu_g1_variant },
>  	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_SAMA5D4
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 4a19ae8940b9..f0bd2ffe290b 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -299,6 +299,7 @@ enum hantro_enc_fmt {
>  	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
>  };
>  
> +extern const struct hantro_variant imx8mq_vpu_g1_variant;
>  extern const struct hantro_variant imx8mq_vpu_g2_variant;
>  extern const struct hantro_variant imx8mq_vpu_variant;
>  extern const struct hantro_variant px30_vpu_variant;
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index f5991b8e553a..849ea7122d47 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -205,13 +205,6 @@ static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
>  	imx8m_soft_reset(vpu, RESET_G1);
>  }
>  
> -static void imx8m_vpu_g2_reset(struct hantro_ctx *ctx)
> -{
> -	struct hantro_dev *vpu = ctx->dev;
> -
> -	imx8m_soft_reset(vpu, RESET_G2);
> -}
> -
>  /*
>   * Supported codec ops.
>   */
> @@ -237,17 +230,33 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
>  	},
>  };
>  
> +static const struct hantro_codec_ops imx8mq_vpu_g1_codec_ops[] = {
> +	[HANTRO_MODE_MPEG2_DEC] = {
> +		.run = hantro_g1_mpeg2_dec_run,
> +		.init = hantro_mpeg2_dec_init,
> +		.exit = hantro_mpeg2_dec_exit,
> +	},
> +	[HANTRO_MODE_VP8_DEC] = {
> +		.run = hantro_g1_vp8_dec_run,
> +		.init = hantro_vp8_dec_init,
> +		.exit = hantro_vp8_dec_exit,
> +	},
> +	[HANTRO_MODE_H264_DEC] = {
> +		.run = hantro_g1_h264_dec_run,
> +		.init = hantro_h264_dec_init,
> +		.exit = hantro_h264_dec_exit,
> +	},
> +};
> +
>  static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
>  	[HANTRO_MODE_HEVC_DEC] = {
>  		.run = hantro_g2_hevc_dec_run,
> -		.reset = imx8m_vpu_g2_reset,
>  		.init = hantro_hevc_dec_init,
>  		.exit = hantro_hevc_dec_exit,
>  	},
>  	[HANTRO_MODE_VP9_DEC] = {
>  		.run = hantro_g2_vp9_dec_run,
>  		.done = hantro_g2_vp9_dec_done,
> -		.reset = imx8m_vpu_g2_reset,
>  		.init = hantro_vp9_dec_init,
>  		.exit = hantro_vp9_dec_exit,
>  	},
> @@ -267,6 +276,8 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
>  
>  static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
>  static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
> +static const char * const imx8mq_g1_clk_names[] = { "g1" };
> +static const char * const imx8mq_g2_clk_names[] = { "g2" };
>  
>  const struct hantro_variant imx8mq_vpu_variant = {
>  	.dec_fmts = imx8m_vpu_dec_fmts,
> @@ -287,6 +298,21 @@ const struct hantro_variant imx8mq_vpu_variant = {
>  	.num_regs = ARRAY_SIZE(imx8mq_reg_names)
>  };
>  
> +const struct hantro_variant imx8mq_vpu_g1_variant = {
> +	.dec_fmts = imx8m_vpu_dec_fmts,
> +	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
> +	.postproc_fmts = imx8m_vpu_postproc_fmts,
> +	.num_postproc_fmts = ARRAY_SIZE(imx8m_vpu_postproc_fmts),
> +	.postproc_ops = &hantro_g1_postproc_ops,
> +	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
> +		 HANTRO_H264_DECODER,
> +	.codec_ops = imx8mq_vpu_g1_codec_ops,
> +	.irqs = imx8mq_irqs,
> +	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
> +	.clk_names = imx8mq_g1_clk_names,
> +	.num_clocks = ARRAY_SIZE(imx8mq_g1_clk_names),
> +};
> +
>  const struct hantro_variant imx8mq_vpu_g2_variant = {
>  	.dec_offset = 0x0,
>  	.dec_fmts = imx8m_vpu_g2_dec_fmts,
> @@ -296,10 +322,8 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
>  	.postproc_ops = &hantro_g2_postproc_ops,
>  	.codec = HANTRO_HEVC_DECODER | HANTRO_VP9_DECODER,
>  	.codec_ops = imx8mq_vpu_g2_codec_ops,
> -	.init = imx8mq_vpu_hw_init,
> -	.runtime_resume = imx8mq_runtime_resume,
>  	.irqs = imx8mq_g2_irqs,
>  	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
> -	.clk_names = imx8mq_clk_names,
> -	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
> +	.clk_names = imx8mq_g2_clk_names,
> +	.num_clocks = ARRAY_SIZE(imx8mq_g2_clk_names),
>  };
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
