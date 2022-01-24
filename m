Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05DBEC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 18:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMPq9Ie/2QGRJVX+2mKmAylLMCo+Cc2N+t9CFVkEezA=; b=CB+wyCmINXPCXE
	nIGcpgjjlLAkvsCtuQBMor7J/5ZERHQhB8vC7mUiNMKJw4eapT0hAsAKl6Cwn0iV3P79+y+PoMgHW
	D6rACBvMDWK6PmwM6elo2WL7VEDJy3JNf80JDVjtIv46ySAJ4lquiVRCPyRnp37CW+agJDTSQxsfw
	HEgF29oYr0eJ1RWFcrKEcGO5CfwJ+5PtM5PrWEOfLl9RnXs8s63zowaGfddyPbCrNXumDUT0RAl/I
	lKMoEUQkABUB27KUbcr+y2dncCKE8ahu/v0MZiQLu5fLTe8v9W1LNwW0Wp2jXc+0347T/ZsMBCIcI
	DvifjAq2QKKpgl1uI3RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC3hx-004MZL-ER; Mon, 24 Jan 2022 18:04:49 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC3Sl-004FX1-5K
 for linux-rockchip@lists.infradead.org; Mon, 24 Jan 2022 17:49:11 +0000
Received: by mail-oi1-x22c.google.com with SMTP id v67so8510034oie.9
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jan 2022 09:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+NLX3R1cE70RQfveZRD6FH9WgGQntlpSO5v8UvTcWFc=;
 b=pBM5BTKeJF5ayuNLJyfZOfHiGDI1ZsCzdpCy2ANcmLXxEy30QSBbe8P3oEj7usFApd
 LuwaT+lEJxm1+Cek9HZKcZ2Ax8mx7CgScbcC1pIIe9KX15W/2Le3EDwBgVXSKlQR84EY
 XfzSpvWqVjrIMgMR0q1x+uYCxZlx1s77eSuJSOsd1Hct6cG/5Nvfn61ThsFmAgJDSgHz
 fG7/WDYyzDW4yT72wqgXp8V8aH7mbyi5BM8/B6RkELX7tKp4qk2NrSmVWtFooTYZ4g4+
 chZLJ4j5BYtZofzPDmcsdCOc6D8TrLyMVZdXdD+oSIaqhRAOoDvm9YWTrd2oIyEzUucR
 OgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+NLX3R1cE70RQfveZRD6FH9WgGQntlpSO5v8UvTcWFc=;
 b=X0kHU3hDBmhvg0717n7h3AR099sUjRX47JSowl/w95yIO/srRcQ9iLVDGNrRHxB1SY
 v4uL0RW2gO9qnjZ27WMChmufFU9go3RlE3aLypAmsfxzirLZKQ4hZ2DDB6ISBceSAOTi
 vD4aEvVmKwF9a55Ju6t6dbRhvNf+zo26pjiHOe/Pe4lzIuDz/l66hpGmHgJyNpyzzo1g
 tjforXt6BtjBbgkaYAeTI9FY9+WUe+pko+hIu3Wk30mcdXMsDU20ctalpuTV2FN0tQcw
 JRlfIFLiA0M3nq0nBBRsOzLlStrcIuI4kfBxTp9ExqmEny/JuTEwCDQJHsNFKUrly0zy
 LvzA==
X-Gm-Message-State: AOAM532t8mjygM7r5G2uqws0CS3GboG6y3JkMJiY2CjrPpLs+yPQ/5NS
 fdRm/j2tPSF0n6e/OPJ+4jCnQA==
X-Google-Smtp-Source: ABdhPJzj7F2gOyTNGb+hp2IschcMiHIeJMXg5e0x4my2DCxicYn20Rr+QiuG8pgtjjBJZjNj7uusnA==
X-Received: by 2002:a54:4004:: with SMTP id x4mr2448324oie.18.1643046544089;
 Mon, 24 Jan 2022 09:49:04 -0800 (PST)
Received: from eze-laptop ([190.194.87.200])
 by smtp.gmail.com with ESMTPSA id j19sm3642063oih.3.2022.01.24.09.48.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jan 2022 09:49:02 -0800 (PST)
Date: Mon, 24 Jan 2022 14:48:56 -0300
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
Subject: Re: [PATCH V3 09/10] media: hantro: Add support for i.MX8MM Hantro-G1
Message-ID: <Ye7miOjf0LUruuEk@eze-laptop>
References: <20220124023125.414794-1-aford173@gmail.com>
 <20220124023125.414794-10-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220124023125.414794-10-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_094907_287592_D86B6B97 
X-CRM114-Status: GOOD (  17.72  )
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

On Sun, Jan 23, 2022 at 08:31:23PM -0600, Adam Ford wrote:
> The i.MX8MM has a Hantro G1 video decoder similar to the
> imx8mq but lacks the post-processor present in the imx8mq.
> Add support in the driver for it with the post-processing
> removed.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks a lot,
Ezequiel

> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index a670ddd29c4c..b281ac4fb79c 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -615,6 +615,7 @@ static const struct of_device_id of_hantro_match[] = {
>  	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
> +	{ .compatible = "nxp,imx8mm-vpu-g1", .data = &imx8mm_vpu_g1_variant, },
>  	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
>  	{ .compatible = "nxp,imx8mq-vpu-g1", .data = &imx8mq_vpu_g1_variant },
>  	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index f0bd2ffe290b..c00b46e06055 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -299,6 +299,7 @@ enum hantro_enc_fmt {
>  	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
>  };
>  
> +extern const struct hantro_variant imx8mm_vpu_g1_variant;
>  extern const struct hantro_variant imx8mq_vpu_g1_variant;
>  extern const struct hantro_variant imx8mq_vpu_g2_variant;
>  extern const struct hantro_variant imx8mq_vpu_variant;
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index 849ea7122d47..9802508bade2 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -327,3 +327,15 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
>  	.clk_names = imx8mq_g2_clk_names,
>  	.num_clocks = ARRAY_SIZE(imx8mq_g2_clk_names),
>  };
> +
> +const struct hantro_variant imx8mm_vpu_g1_variant = {
> +	.dec_fmts = imx8m_vpu_dec_fmts,
> +	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
> +	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
> +		 HANTRO_H264_DECODER,
> +	.codec_ops = imx8mq_vpu_g1_codec_ops,
> +	.irqs = imx8mq_irqs,
> +	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
> +	.clk_names = imx8mq_g1_clk_names,
> +	.num_clocks = ARRAY_SIZE(imx8mq_g1_clk_names),
> +};
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
