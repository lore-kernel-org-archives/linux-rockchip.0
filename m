Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFC8C77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 May 2023 15:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FhtXHGLwx1h45+E6OzdnQpCzLTC7Ffa+2oII0rmV3U=; b=2vmoEZGg1XmwDB
	4sAOoCISNvq+t0cvX7WA3R4gd86e9wQVjkWobGLXwTVCGKczqEr/nH0Jo1CjOL19QC+K5pHlBiLN6
	0jBPmaUWpSSWUTL90AmhfB/OR0+YnnIL/+6mjl243nRBVpIA8puD6dLFnG73MJ+zRzARNJRS3eMqC
	eyLa1JW8LUUKkPG+MQMeFTs6LFtzhTDVlCAsFsDNnB8O5h3uAmSMwAxryvVWZDvpAoILVwRBBS0ZR
	3TjjNWduEBFAL5IE2+OM79iks5iVA2FW1F8P0+eCvhjdKY13EzxBO0s66iCrUxyCJhCwB6a2fSZuw
	QjhQhquWjXw50g7mc2cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0Ojc-001ngM-2w;
	Sat, 20 May 2023 15:43:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0OjZ-001nf8-00;
	Sat, 20 May 2023 15:43:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 556BE60AC9;
	Sat, 20 May 2023 15:43:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51CC6C433D2;
	Sat, 20 May 2023 15:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684597383;
	bh=GeAKXnIDBsXzPVPz3tfWUSNstZz8hpDizUa4H2Jqd2k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tuzRLTITYkbs6ZCiLmxvuUJ2Yyc1FESTeNP7Tzh2BSd9ZNQR2YeNJa/r7uHfL87F0
	 c7F0teZ/EqL+GZPviPb3WbJoo5KqNrFAE06jKrRTD+0XCWgHk/CM7zXIzYekfLyXE4
	 PyJ9vOgkIB9nt9nuCQXxq91odixUMkZsQCPT0dzV/A5IWvpK3IWsDBX1GdXgXZbVsW
	 o76IshvY1JpMZBYr4THgML2dZiZyh4hzcl0FG8gwixGAOvm9t+Yxxc5vwQqozi6XBS
	 p9YWG4DdpvQO8YzpF8N861/2hK0bRZJLQCd8LyNzbgF/vXHQGDPps7H9jINgfQSjhY
	 Qljpw5wGE9nWA==
Date: Sat, 20 May 2023 16:59:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
Subject: Re: [PATCH 2/7] iio: adc: rockchip_saradc: Make use of
 devm_clk_get_enabled
Message-ID: <20230520165912.420c7cf3@jic23-huawei>
In-Reply-To: <20230516230051.14846-3-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
	<20230516230051.14846-3-shreeya.patel@collabora.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230520_084305_128748_E9C5951A 
X-CRM114-Status: GOOD (  22.36  )
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

On Wed, 17 May 2023 04:30:46 +0530
Shreeya Patel <shreeya.patel@collabora.com> wrote:

> Use devm_clk_get_enabled() to avoid manually disabling the
> clock.

Please comment on why the enable is now done earlier than before.

> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
>  drivers/iio/adc/rockchip_saradc.c | 77 +++++--------------------------
>  1 file changed, 11 insertions(+), 66 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index ac6fdf8e673b..05b66eff9a44 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -339,20 +339,6 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
>  	reset_control_deassert(reset);
>  }
>  
> -static void rockchip_saradc_clk_disable(void *data)
> -{
> -	struct rockchip_saradc *info = data;
> -
> -	clk_disable_unprepare(info->clk);
> -}
> -
> -static void rockchip_saradc_pclk_disable(void *data)
> -{
> -	struct rockchip_saradc *info = data;
> -
> -	clk_disable_unprepare(info->pclk);
> -}
> -
>  static void rockchip_saradc_regulator_disable(void *data)
>  {
>  	struct rockchip_saradc *info = data;
> @@ -486,16 +472,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	info->pclk = devm_clk_get(&pdev->dev, "apb_pclk");
> -	if (IS_ERR(info->pclk))
> -		return dev_err_probe(&pdev->dev, PTR_ERR(info->pclk),
> -				     "failed to get pclk\n");
> -
> -	info->clk = devm_clk_get(&pdev->dev, "saradc");
> -	if (IS_ERR(info->clk))
> -		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
> -				     "failed to get adc clock\n");
> -
>  	info->vref = devm_regulator_get(&pdev->dev, "vref");
>  	if (IS_ERR(info->vref))
>  		return dev_err_probe(&pdev->dev, PTR_ERR(info->vref),
> @@ -504,6 +480,16 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	if (info->reset)
>  		rockchip_saradc_reset_controller(info->reset);
>  
> +	info->pclk = devm_clk_get_enabled(&pdev->dev, "apb_pclk");
> +	if (IS_ERR(info->pclk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(info->pclk),
> +				     "failed to get pclk\n");
> +
> +	info->clk = devm_clk_get_enabled(&pdev->dev, "saradc");
> +	if (IS_ERR(info->clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
> +				     "failed to get adc clock\n");
> +
>  	/*
>  	 * Use a default value for the converter clock.
>  	 * This may become user-configurable in the future.
> @@ -533,32 +519,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  
>  	info->uv_vref = ret;
>  
> -	ret = clk_prepare_enable(info->pclk);
> -	if (ret < 0) {
> -		dev_err(&pdev->dev, "failed to enable pclk\n");
> -		return ret;
> -	}
> -	ret = devm_add_action_or_reset(&pdev->dev,
> -				       rockchip_saradc_pclk_disable, info);
> -	if (ret) {
> -		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> -			ret);
> -		return ret;
> -	}
> -
> -	ret = clk_prepare_enable(info->clk);
> -	if (ret < 0) {
> -		dev_err(&pdev->dev, "failed to enable converter clock\n");
> -		return ret;
> -	}
> -	ret = devm_add_action_or_reset(&pdev->dev,
> -				       rockchip_saradc_clk_disable, info);
> -	if (ret) {
> -		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> -			ret);
> -		return ret;
> -	}
> -
>  	platform_set_drvdata(pdev, indio_dev);
>  
>  	indio_dev->name = dev_name(&pdev->dev);
> @@ -594,8 +554,6 @@ static int rockchip_saradc_suspend(struct device *dev)
>  	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	struct rockchip_saradc *info = iio_priv(indio_dev);
>  
> -	clk_disable_unprepare(info->clk);
> -	clk_disable_unprepare(info->pclk);
>  	regulator_disable(info->vref);
>  
>  	return 0;
> @@ -605,21 +563,8 @@ static int rockchip_saradc_resume(struct device *dev)
>  {
>  	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	struct rockchip_saradc *info = iio_priv(indio_dev);
> -	int ret;
> -
> -	ret = regulator_enable(info->vref);
> -	if (ret)
> -		return ret;
> -
> -	ret = clk_prepare_enable(info->pclk);
> -	if (ret)
> -		return ret;
> -
> -	ret = clk_prepare_enable(info->clk);
> -	if (ret)
> -		clk_disable_unprepare(info->pclk);
>  
> -	return ret;
> +	return regulator_enable(info->vref);
>  }
>  
>  static DEFINE_SIMPLE_DEV_PM_OPS(rockchip_saradc_pm_ops,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
