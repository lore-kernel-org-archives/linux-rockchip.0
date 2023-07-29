Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C01C0015E
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jul 2023 11:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMBdo+P9hY6yBUQSPW7a8dtTYqpxWmQkw9nXtK49i78=; b=PKD9eY/oa3ZwMg
	4vCddjGEC6z5hOXvns/9tmFDnlB8qVTuNvFCpCWEq6lHGwprOJxBeCacSkz8uh2+w1gtTlxZLPvt+
	29QcmsnrnCvMDuwKA66Z3nLHD5jJacCb+DOISA32G4g+CBo8MkPl+VIYI1ziFYndy/w73lKxqCmCJ
	DjFMTFTDp4UP06/eF0nHCdK9PfB44JUIAyGr7cGFz4PUN5jlflBJ9tbjnFzbRosg2B+18EFYCjVMM
	rLV/IZ+pq0ObnABhZ8sec6S7i302fAfsSapDXYVsDTDiprEjiepDZsa7fLm0hl7DkKbMrFZ9BDE+G
	imNBCTdXCTEFVrPOqaXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPhul-007J0w-16;
	Sat, 29 Jul 2023 11:15:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPhui-007J0H-1b;
	Sat, 29 Jul 2023 11:15:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 64AEA608C0;
	Sat, 29 Jul 2023 11:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 519C6C433C8;
	Sat, 29 Jul 2023 11:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690629307;
	bh=ES/p8Qw4OwWizhdoOZA007+fCDINNiSHGjc3tsXSEW8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=iKcAfQg7qQgTMNLYJGtJAJ2148PlH2TBIntuVMsCh/86VGL8BkzrcxiNAUTMXxRzS
	 BsEyhSUORluJ3CrZS0tKwYU50wbhE3emly5IIt1CLyY6uGSnNh6hhiAfoGycgf4LFw
	 MvGTRSvvdTGYr6hbQOWprObak8jSQR8O09qqsI0T7ZpMWPZPpB5gWWNuMyrXwkL9XJ
	 EmYgAXWPQQi5I+3jFQCcPTtQe957yzRw8H1xzkSbmxLycCVw6HlFX5FCAFvTm27gZO
	 Am2mIZQVGwgivsjXA1ROBJgcAbWZ7Mqf5CF1eeyCw1FKcZL2t40hsSLNx4UAHycZb1
	 Odaq6JYpSmuGQ==
Date: Sat, 29 Jul 2023 12:15:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ruan Jinjie <ruanjinjie@huawei.com>
Cc: <linus.walleij@linaro.org>, <lars@metafoo.de>, <haibo.chen@nxp.com>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, <kernel@pengutronix.de>,
 <festevam@gmail.com>, <linux-imx@nxp.com>, <heiko@sntech.de>,
 <ktsai@capellamicro.com>, <risca@dalakolonin.se>,
 <christophe.jaillet@wanadoo.fr>, <dan.carpenter@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH -next] iio: adc: Remove redundant dev_err_probe()
Message-ID: <20230729121509.4cfe6566@jic23-huawei>
In-Reply-To: <20230727073912.4178659-1-ruanjinjie@huawei.com>
References: <20230727073912.4178659-1-ruanjinjie@huawei.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230729_041512_644859_2A8F45D8 
X-CRM114-Status: GOOD (  20.58  )
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

On Thu, 27 Jul 2023 15:39:12 +0800
Ruan Jinjie <ruanjinjie@huawei.com> wrote:

> There is no need to call the dev_err() function directly to print a custom
> message when handling an error from either the platform_get_irq() or
> platform_get_irq_byname() functions as both are going to display an
> appropriate error message in case of a failure.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
Applied to the togreg branch of iio.git.  That is initially pushed out as
testing to let the autobuilders see if they can find any problems.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/ab8500-gpadc.c    | 6 ++----
>  drivers/iio/adc/imx7d_adc.c       | 2 +-
>  drivers/iio/adc/palmas_gpadc.c    | 6 ++----
>  drivers/iio/adc/rockchip_saradc.c | 2 +-
>  drivers/iio/light/cm3605.c        | 2 +-
>  5 files changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iio/adc/ab8500-gpadc.c b/drivers/iio/adc/ab8500-gpadc.c
> index 4fa2126a354b..3b1bdd0b531d 100644
> --- a/drivers/iio/adc/ab8500-gpadc.c
> +++ b/drivers/iio/adc/ab8500-gpadc.c
> @@ -1099,14 +1099,12 @@ static int ab8500_gpadc_probe(struct platform_device *pdev)
>  
>  	gpadc->irq_sw = platform_get_irq_byname(pdev, "SW_CONV_END");
>  	if (gpadc->irq_sw < 0)
> -		return dev_err_probe(dev, gpadc->irq_sw,
> -				     "failed to get platform sw_conv_end irq\n");
> +		return gpadc->irq_sw;
>  
>  	if (is_ab8500(gpadc->ab8500)) {
>  		gpadc->irq_hw = platform_get_irq_byname(pdev, "HW_CONV_END");
>  		if (gpadc->irq_hw < 0)
> -			return dev_err_probe(dev, gpadc->irq_hw,
> -					     "failed to get platform hw_conv_end irq\n");
> +			return gpadc->irq_hw;
>  	} else {
>  		gpadc->irq_hw = 0;
>  	}
> diff --git a/drivers/iio/adc/imx7d_adc.c b/drivers/iio/adc/imx7d_adc.c
> index 22da81bac97f..828d3fea6d43 100644
> --- a/drivers/iio/adc/imx7d_adc.c
> +++ b/drivers/iio/adc/imx7d_adc.c
> @@ -496,7 +496,7 @@ static int imx7d_adc_probe(struct platform_device *pdev)
>  
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0)
> -		return dev_err_probe(dev, irq, "Failed getting irq\n");
> +		return irq;
>  
>  	info->clk = devm_clk_get(dev, "adc");
>  	if (IS_ERR(info->clk))
> diff --git a/drivers/iio/adc/palmas_gpadc.c b/drivers/iio/adc/palmas_gpadc.c
> index 27b2632c1037..a66da674a6ad 100644
> --- a/drivers/iio/adc/palmas_gpadc.c
> +++ b/drivers/iio/adc/palmas_gpadc.c
> @@ -916,8 +916,7 @@ static int palmas_gpadc_probe(struct platform_device *pdev)
>  
>  	adc->irq_auto_0 = platform_get_irq(pdev, 1);
>  	if (adc->irq_auto_0 < 0)
> -		return dev_err_probe(adc->dev, adc->irq_auto_0,
> -				     "get auto0 irq failed\n");
> +		return adc->irq_auto_0;
>  
>  	ret = devm_request_threaded_irq(&pdev->dev, adc->irq_auto_0, NULL,
>  					palmas_gpadc_irq_auto, IRQF_ONESHOT,
> @@ -929,8 +928,7 @@ static int palmas_gpadc_probe(struct platform_device *pdev)
>  
>  	adc->irq_auto_1 = platform_get_irq(pdev, 2);
>  	if (adc->irq_auto_1 < 0)
> -		return dev_err_probe(adc->dev, adc->irq_auto_1,
> -				     "get auto1 irq failed\n");
> +		return adc->irq_auto_1;
>  
>  	ret = devm_request_threaded_irq(&pdev->dev, adc->irq_auto_1, NULL,
>  					palmas_gpadc_irq_auto, IRQF_ONESHOT,
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 4b011f7eddec..8270652244c2 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -467,7 +467,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0)
> -		return dev_err_probe(&pdev->dev, irq, "failed to get irq\n");
> +		return irq;
>  
>  	ret = devm_request_irq(&pdev->dev, irq, rockchip_saradc_isr,
>  			       0, dev_name(&pdev->dev), info);
> diff --git a/drivers/iio/light/cm3605.c b/drivers/iio/light/cm3605.c
> index 0b30db77f78b..e7f0b81b7f5a 100644
> --- a/drivers/iio/light/cm3605.c
> +++ b/drivers/iio/light/cm3605.c
> @@ -227,7 +227,7 @@ static int cm3605_probe(struct platform_device *pdev)
>  
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0) {
> -		ret = dev_err_probe(dev, irq, "failed to get irq\n");
> +		ret = irq;
>  		goto out_disable_aset;
>  	}
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
