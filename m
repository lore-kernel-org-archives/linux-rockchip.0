Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B592EC001DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jul 2023 15:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fKMpw4b4BJspfI+61Jpb+cHrkrD931S95jMUAU/Jao=; b=fOTtBWnaJfjGeH
	Sg77ZNyg2v+dDnHDuS/fP/VnineegG9RFr8nfbpN7dis3AM4S2J3nGYodlpsBcMGhVTe5yuac0Wbq
	GuhlJgrpljr/7XHh9Cbz7IEySfLIdM1qz6a1BzqEZ5eW3cwIaB/kFuGJBRKh2/XzJ99vuSUTgeYVi
	EpsGB92zoxYUIow1ViKMjhhowihZ5Q8VtK1xHzROeTYnjNJiO+dpK5W++4ojhTx0Jyhx6CHj1zPPJ
	OwDEgxFey9uztGpNnm0rgZvi9po0RwK8NbHtsNHq7WV6AVLI5Xi0qJ6mJ7I1Xcx51Lk4HrprdrQoj
	zhbx0coNgxxguOitZnGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPlo2-007sLl-2e;
	Sat, 29 Jul 2023 15:24:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPlny-007sKp-36;
	Sat, 29 Jul 2023 15:24:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0AD1460C5A;
	Sat, 29 Jul 2023 15:24:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99A4C433C8;
	Sat, 29 Jul 2023 15:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690644269;
	bh=hKEFqZwbeqN1jWVTICiTdix0xi9S3l3WhmAf3G/bhw8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=DXIuVi0lnqRhkPrO7HEhjVV7w4vUZJUJc2bfqFd/hImxHTjYPoqL6ZhRDsO0FVgI8
	 9iaMs3y/WORFZZxKljp0adeX46AXj5yvUIScZr6pJywg4SOMkCJFozW3LUFZZmeAlw
	 JPxr2UKrs9GsBiOYM3mAB7UcD3zNzMMP9XkW3Vp35NJp5B2A2TcghasOKJI0Pd4aD3
	 mX7OvMPijg+eDcH4VpLEpNvtq+9s6cnhAUDpMXuSHNeH6gFTEZZu0cIek3Ndm8siii
	 GnupThh7jVwcm9/dcW5OonHR2sTsjuQYFClLjf1xWwL+ed1uuSCKHVdsZ1R4zeiPVA
	 14zpMiOH4Vgxg==
Date: Sat, 29 Jul 2023 16:24:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ruan Jinjie <ruanjinjie@huawei.com>
Cc: <lars@metafoo.de>, <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <vz@mleia.com>,
 <avifishman70@gmail.com>, <tmaimon77@gmail.com>, <tali.perry1@gmail.com>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <nuno.sa@analog.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-iio@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <openbmc@lists.ozlabs.org>
Subject: Re: [PATCH -next] iio: adc: fix the return value handle for
 platform_get_irq()
Message-ID: <20230729162430.4f858e08@jic23-huawei>
In-Reply-To: <20230727131607.2897937-1-ruanjinjie@huawei.com>
References: <20230727131607.2897937-1-ruanjinjie@huawei.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230729_082431_107795_3A46A10C 
X-CRM114-Status: GOOD (  19.16  )
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

On Thu, 27 Jul 2023 21:16:07 +0800
Ruan Jinjie <ruanjinjie@huawei.com> wrote:

> There is no possible for platform_get_irq() to return 0
> and the return value of platform_get_irq() is more sensible
> to show the error reason.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
Applied.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/bcm_iproc_adc.c | 4 ++--
>  drivers/iio/adc/lpc32xx_adc.c   | 4 ++--
>  drivers/iio/adc/npcm_adc.c      | 4 ++--
>  drivers/iio/adc/spear_adc.c     | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iio/adc/bcm_iproc_adc.c b/drivers/iio/adc/bcm_iproc_adc.c
> index 44e1e53ada72..0d6885413a7e 100644
> --- a/drivers/iio/adc/bcm_iproc_adc.c
> +++ b/drivers/iio/adc/bcm_iproc_adc.c
> @@ -540,8 +540,8 @@ static int iproc_adc_probe(struct platform_device *pdev)
>  	}
>  
>  	adc_priv->irqno = platform_get_irq(pdev, 0);
> -	if (adc_priv->irqno <= 0)
> -		return -ENODEV;
> +	if (adc_priv->irqno < 0)
> +		return adc_priv->irqno;
>  
>  	ret = regmap_update_bits(adc_priv->regmap, IPROC_REGCTL2,
>  				IPROC_ADC_AUXIN_SCAN_ENA, 0);
> diff --git a/drivers/iio/adc/lpc32xx_adc.c b/drivers/iio/adc/lpc32xx_adc.c
> index 732c924a976d..e34ed7dacd89 100644
> --- a/drivers/iio/adc/lpc32xx_adc.c
> +++ b/drivers/iio/adc/lpc32xx_adc.c
> @@ -176,8 +176,8 @@ static int lpc32xx_adc_probe(struct platform_device *pdev)
>  	}
>  
>  	irq = platform_get_irq(pdev, 0);
> -	if (irq <= 0)
> -		return -ENXIO;
> +	if (irq < 0)
> +		return irq;
>  
>  	retval = devm_request_irq(&pdev->dev, irq, lpc32xx_adc_isr, 0,
>  				  LPC32XXAD_NAME, st);
> diff --git a/drivers/iio/adc/npcm_adc.c b/drivers/iio/adc/npcm_adc.c
> index ba4cd8f49f66..3d9207c160eb 100644
> --- a/drivers/iio/adc/npcm_adc.c
> +++ b/drivers/iio/adc/npcm_adc.c
> @@ -244,8 +244,8 @@ static int npcm_adc_probe(struct platform_device *pdev)
>  	info->adc_sample_hz = clk_get_rate(info->adc_clk) / ((div + 1) * 2);
>  
>  	irq = platform_get_irq(pdev, 0);
> -	if (irq <= 0) {
> -		ret = -EINVAL;
> +	if (irq < 0) {
> +		ret = irq;
>  		goto err_disable_clk;
>  	}
>  
> diff --git a/drivers/iio/adc/spear_adc.c b/drivers/iio/adc/spear_adc.c
> index d93e580b3dc5..ad54ef798109 100644
> --- a/drivers/iio/adc/spear_adc.c
> +++ b/drivers/iio/adc/spear_adc.c
> @@ -310,8 +310,8 @@ static int spear_adc_probe(struct platform_device *pdev)
>  	}
>  
>  	irq = platform_get_irq(pdev, 0);
> -	if (irq <= 0) {
> -		ret = -EINVAL;
> +	if (irq < 0) {
> +		ret = irq;
>  		goto errout2;
>  	}
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
