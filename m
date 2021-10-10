Return-Path: <SRS0=F4g8=O6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E75CEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Oct 2021 16:01:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A282360231
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Oct 2021 16:01:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A282360231
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNpx6azw8jcVYN3ccVHJYMr/vGOsvrMA6VnsCZOxgBY=; b=VnyV1XFGIcNvVp
	CTkpWD5kM7lXjycPEZDcuWaaI85s2FmOGaJ5y3TjVuFPzLUX4x7WBj8NRJtFP6/wGVxCb8ySJa6He
	yAeCedAXkFa1EK1MEYHrQFoY+2+kjY2V/UlPGAqC0xgQacbqlsnTXEFhkqA0hsv4t8Za/w3iZN2Ih
	p/lpkCx0mMX5DUh8KTkYM0R5Q2id4uXiSQOS91NtVVe2gfypI1PIGhNAH/6ji7Q3/9jd96xpohV3h
	HKLq8b3F8H+lKU0ajFDMtDN91HQHgQ0hjbNIT9tmpdO0NwNrD7nTaeCQLq2LedmSGO0bA+ngPGhwi
	hR7PxgcHDq6CkCGAcItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZbGf-0077yo-K4; Sun, 10 Oct 2021 16:01:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZbGS-0077wn-Gk; Sun, 10 Oct 2021 16:01:29 +0000
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6337460F5B;
 Sun, 10 Oct 2021 16:01:21 +0000 (UTC)
Date: Sun, 10 Oct 2021 17:05:27 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, "Pengutronix Kernel Team"
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, "NXP Linux
 Team" <linux-imx@nxp.com>, Vladimir Zapolskiy <vz@mleia.com>, "Neil
 Armstrong" <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Andy Gross <agross@kernel.org>,
 "Bjorn Andersson" <bjorn.andersson@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v4 6/9] iio: adc: meson_saradc: Make use of the helper
 function dev_err_probe()
Message-ID: <20211010170527.13547811@jic23-huawei>
In-Reply-To: <20211008092858.495-6-caihuoqing@baidu.com>
References: <20211008092858.495-1-caihuoqing@baidu.com>
 <20211008092858.495-6-caihuoqing@baidu.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211010_090128_647399_EA04DE20 
X-CRM114-Status: GOOD (  21.76  )
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

On Fri, 8 Oct 2021 17:28:54 +0800
Cai Huoqing <caihuoqing@baidu.com> wrote:

> When possible use dev_err_probe help to properly deal with the
> PROBE_DEFER error, the benefit is that DEFER issue will be logged
> in the devices_deferred debugfs file.
> Using dev_err_probe() can reduce code size, and the error value
> gets printed.
> 
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
Make sure you don't miss any tags on previous versions.  This had:

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Tested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com> #Meson8b Odroid-C1


> v1->v2: Remove the separate line of PTR_ERR().
> 
>  drivers/iio/adc/meson_saradc.c | 39 +++++++++++++++-------------------
>  1 file changed, 17 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
> index 705d5e11a54b..62cc6fb0ef85 100644
> --- a/drivers/iio/adc/meson_saradc.c
> +++ b/drivers/iio/adc/meson_saradc.c
> @@ -1230,35 +1230,31 @@ static int meson_sar_adc_probe(struct platform_device *pdev)
>  		return ret;
>  
>  	priv->clkin = devm_clk_get(&pdev->dev, "clkin");
> -	if (IS_ERR(priv->clkin)) {
> -		dev_err(&pdev->dev, "failed to get clkin\n");
> -		return PTR_ERR(priv->clkin);
> -	}
> +	if (IS_ERR(priv->clkin))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(priv->clkin),
> +				     "failed to get clkin\n");
>  
>  	priv->core_clk = devm_clk_get(&pdev->dev, "core");
> -	if (IS_ERR(priv->core_clk)) {
> -		dev_err(&pdev->dev, "failed to get core clk\n");
> -		return PTR_ERR(priv->core_clk);
> -	}
> +	if (IS_ERR(priv->core_clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(priv->core_clk),
> +				     "failed to get core clk\n");
>  
>  	priv->adc_clk = devm_clk_get(&pdev->dev, "adc_clk");
>  	if (IS_ERR(priv->adc_clk)) {
> -		if (PTR_ERR(priv->adc_clk) == -ENOENT) {
> +		if (PTR_ERR(priv->adc_clk) == -ENOENT)
>  			priv->adc_clk = NULL;
> -		} else {
> -			dev_err(&pdev->dev, "failed to get adc clk\n");
> -			return PTR_ERR(priv->adc_clk);
> -		}
> +		else
> +			return dev_err_probe(&pdev->dev, PTR_ERR(priv->adc_clk),
> +					     "failed to get adc clk\n");
>  	}
>  
>  	priv->adc_sel_clk = devm_clk_get(&pdev->dev, "adc_sel");
>  	if (IS_ERR(priv->adc_sel_clk)) {
> -		if (PTR_ERR(priv->adc_sel_clk) == -ENOENT) {
> +		if (PTR_ERR(priv->adc_sel_clk) == -ENOENT)
>  			priv->adc_sel_clk = NULL;
> -		} else {
> -			dev_err(&pdev->dev, "failed to get adc_sel clk\n");
> -			return PTR_ERR(priv->adc_sel_clk);
> -		}
> +		else
> +			return dev_err_probe(&pdev->dev, PTR_ERR(priv->adc_sel_clk),
> +					     "failed to get adc_sel clk\n");
>  	}
>  
>  	/* on pre-GXBB SoCs the SAR ADC itself provides the ADC clock: */
> @@ -1269,10 +1265,9 @@ static int meson_sar_adc_probe(struct platform_device *pdev)
>  	}
>  
>  	priv->vref = devm_regulator_get(&pdev->dev, "vref");
> -	if (IS_ERR(priv->vref)) {
> -		dev_err(&pdev->dev, "failed to get vref regulator\n");
> -		return PTR_ERR(priv->vref);
> -	}
> +	if (IS_ERR(priv->vref))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(priv->vref),
> +				     "failed to get vref regulator\n");
>  
>  	priv->calibscale = MILLION;
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
