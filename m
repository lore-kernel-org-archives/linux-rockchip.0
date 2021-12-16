Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5898BC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 12:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DscLK3Smcjtki2MiPQJxptLS0UCVdO5kuQ3N/+8O7Sk=; b=3C7W2SibjPLJtx
	gBxeiPY3O+7amVHjaDGoymh5rtqMxiOmOzoXqqrTmd8h9AIZipFY5I7PXS0b0IdGmULZlvsZyngP4
	oLRsRUXNe0QKgR3Ks4bDx3iIuzEDOp4XylnmM6/tYnW0sKXcSz6BH1wtTgfHwWzYO1fFWKyIkCve5
	swuva8ALQsds9cpt2X50c56n+AzzEPsnAsbH7DiUuxhSD/2FsCeGWxitq88nt0y2EWhJemFfvvphb
	SD5KHhCzsQfWJQzklWLdAWxTtIxwPFlYbOJ22AdK8snBvNG4dtFvTLm2ho5IrIxs3+czypRTipYPL
	kBRIIQMPV/n69zQnbJ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxq1X-005ThT-0w; Thu, 16 Dec 2021 12:38:15 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxpZo-005Lqo-SY
 for linux-rockchip@lists.infradead.org; Thu, 16 Dec 2021 12:09:39 +0000
Received: by mail-qt1-x82d.google.com with SMTP id q14so25151735qtx.10
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Dec 2021 04:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=27iVM0aKdAv+JiQsBY26McdFr1qGDMbXj62yl//SmdI=;
 b=EjgfyGJxxUe0zKPwlPZuWE1t0SOucWDWFeCaHtd9CtTjvYD8KEvoSGADHu9gyNPb0w
 JWQPYcVpFoMLCKxKe917EAK3rQhm9rqbvanX8/9tJipQjxDtiQrgd9Cyi+m8psvEwL07
 PriJRFI5nVCSe2OHRbYWLOhhpLhYbXN1zyMtuHe9ubzsaCm6FuB5gxGs1deiCaaqsuIS
 7SNZge5tLLcsnLVmrsCRRGJLbd0V8yjk0WMx3srgHenZpyaQN39xjSVUVhEL9GRNyEiG
 C/FPjhJYYMzHEq3sI8Gnz+D8pqXEECyYqYbePLztZIJ0168ItbNPW6z/qUz4JZ9EcVMP
 xe9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=27iVM0aKdAv+JiQsBY26McdFr1qGDMbXj62yl//SmdI=;
 b=NrBalXW8D4VMdkRguuKsJTLOo60Qoa6BmIu9gdHaxp1AY+j+j0EaUpxvtp2QfLagN8
 C0SNK+eM7QruzM4iL1WfYiEpxZ1rKinhk+Jkfd5K0ECZqFpEnnnmpDwOa4+1uawFyyv2
 luiVEg+EXfqlUnUE+PmWmYgdRmsleaFtPYoC2ooIJH7qLscJTi1kOZGb75fqkR6R5ZyD
 EatWi39wmNhlvw6z4ArW1Gg2Jee6rttSYR37byB3BZQlvils0zXU5h8TeW+NO2wp2IZ4
 qR6tCZ3CH0xJsjJuBTmko5ZhmOky1GAFT+U0ulLu/2kXzqNS2qqyqmJSpij5Iv6Ve64v
 UBlg==
X-Gm-Message-State: AOAM5319Z4Zfx6sRXvyUYR07vs70wzElKl0QO5hRjeOnJw3rw4zjmxkt
 SHJnqcUeUoSzS9G3Dg85U7/eYA==
X-Google-Smtp-Source: ABdhPJzK5axWJi3teF0QGvKpI/4LKnG7d8mowHvrhT9SMBZNmCvwXv/NOOVc4korY3W6ostQo3hcsw==
X-Received: by 2002:a05:622a:1902:: with SMTP id
 w2mr16510679qtc.93.1639656575105; 
 Thu, 16 Dec 2021 04:09:35 -0800 (PST)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id k9sm4220397qta.48.2021.12.16.04.09.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 04:09:33 -0800 (PST)
Date: Thu, 16 Dec 2021 09:09:26 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, abel.vesa@nxp.com,
 aford@beaconembedded.com, benjamin.gaignard@collabora.com,
 hverkuil-cisco@xs4all.nl, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V2 05/10] media: hantro: Allow i.MX8MQ G1 and G2 to run
 independently
Message-ID: <YbssdkOvCR3UMtKQ@eze-laptop>
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-6-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216111256.2362683-6-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_040937_130575_9FE56BE1 
X-CRM114-Status: GOOD (  19.37  )
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

On Thu, Dec 16, 2021 at 05:12:50AM -0600, Adam Ford wrote:
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
> index ab2467998d29..e7afda388ee5 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -609,6 +609,7 @@ static const struct of_device_id of_hantro_match[] = {
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
>  	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
> +	{ .compatible = "nxp,imx8mq-vpu-g1", .data = &imx8mq_vpu_g1_variant },
>  	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_SAMA5D4
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index cff817ca8d22..96b14b43a4af 100644
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
> index 1a43f6fceef9..4925f2a07d4c 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -223,13 +223,6 @@ static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
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
> @@ -255,17 +248,33 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
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
> @@ -285,6 +294,10 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
>  
>  static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
>  static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
> +static const char * const imx8mq_g1_clk_names[] = { "g1" };
> +static const char * const imx8mq_g1_reg_names[] = { "g1" };
> +static const char * const imx8mq_g2_clk_names[] = { "g2" };
> +static const char * const imx8mq_g2_reg_names[] = { "g2" };
>  

I believe the g1 and g2 _reg_names are now unused?

Thanks,
Ezequiel

>  const struct hantro_variant imx8mq_vpu_variant = {
>  	.dec_fmts = imx8m_vpu_dec_fmts,
> @@ -305,6 +318,21 @@ const struct hantro_variant imx8mq_vpu_variant = {
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
> @@ -314,10 +342,8 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
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
