Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E74C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 11:50:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96FCA60FE3
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 11:50:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 96FCA60FE3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+zgj1WcblqfTOkEjqVRrfiu20qu9/Zfk/pCNOPMCCE=; b=cVp4efAbU0rct5
	z1bPFw3mMUk3vlJw1/ape3TGUMPNHdEhp8yIzHUV7wwlgYsWJj+G3k4dIdFGZt7nCL0ljbapgUIED
	elv3SAJNxF5wsJWMlOlmlyAc8vGTaHxSMnTNjS4b8Y241+Z39woN5A9qGG3mhc61gZ6o8new5PQQW
	mL8Yxq5Su6r7O9xrvPpKtrOY1uEVVw4jfZ2wacNQ2evwSU53b1FMFz0Nhw2MLay/sNo7DGRn9JcdF
	xXlL9hzXoRg584u4/6A6TX+UHEXO+QZncOba13OW0gagbkshyvWrHcCcXazhpg43krrixNiAci66P
	bnYGyaUj98M0WBpYKsWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc4gO-00CISv-RJ; Sun, 17 Oct 2021 11:50:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc4gB-00CIOt-Nc; Sun, 17 Oct 2021 11:50:17 +0000
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1685C60F70;
 Sun, 17 Oct 2021 11:50:09 +0000 (UTC)
Date: Sun, 17 Oct 2021 12:54:24 +0100
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
Subject: Re: [PATCH v4 1/9] iio: adc: ab8500-gpadc: Make use of the helper
 function dev_err_probe()
Message-ID: <20211017125424.3b9a205a@jic23-huawei>
In-Reply-To: <20211008092858.495-1-caihuoqing@baidu.com>
References: <20211008092858.495-1-caihuoqing@baidu.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_045015_842850_C97A3164 
X-CRM114-Status: GOOD (  23.52  )
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

On Fri, 8 Oct 2021 17:28:49 +0800
Cai Huoqing <caihuoqing@baidu.com> wrote:

> When possible use dev_err_probe help to properly deal with the
> PROBE_DEFER error, the benefit is that DEFER issue will be logged
> in the devices_deferred debugfs file.
> Using dev_err_probe() can reduce code size, and the error value
> gets printed.
> 
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
Hi Cai,

Series applied to the iio-togreg branch of iio.git and pushed out as testing
for 0-day to poke at it and see if it can find any problems we missed.

Thanks,

Jonathan

> ---
> v1->v2: Remove the separate line of PTR_ERR().
> v2: Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> v2->v3: Handle platform_get_irq_byname() that returns -EPROBE_DEFER.
> 
>  drivers/iio/adc/ab8500-gpadc.c | 22 +++++++++-------------
>  1 file changed, 9 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/adc/ab8500-gpadc.c b/drivers/iio/adc/ab8500-gpadc.c
> index 7b5212ba5501..4c46a201d4ef 100644
> --- a/drivers/iio/adc/ab8500-gpadc.c
> +++ b/drivers/iio/adc/ab8500-gpadc.c
> @@ -1103,17 +1103,15 @@ static int ab8500_gpadc_probe(struct platform_device *pdev)
>  		return ret;
>  
>  	gpadc->irq_sw = platform_get_irq_byname(pdev, "SW_CONV_END");
> -	if (gpadc->irq_sw < 0) {
> -		dev_err(dev, "failed to get platform sw_conv_end irq\n");
> -		return gpadc->irq_sw;
> -	}
> +	if (gpadc->irq_sw < 0)
> +		return dev_err_probe(dev, gpadc->irq_sw,
> +				     "failed to get platform sw_conv_end irq\n");
>  
>  	if (is_ab8500(gpadc->ab8500)) {
>  		gpadc->irq_hw = platform_get_irq_byname(pdev, "HW_CONV_END");
> -		if (gpadc->irq_hw < 0) {
> -			dev_err(dev, "failed to get platform hw_conv_end irq\n");
> -			return gpadc->irq_hw;
> -		}
> +		if (gpadc->irq_hw < 0)
> +			return dev_err_probe(dev, gpadc->irq_hw,
> +					     "failed to get platform hw_conv_end irq\n");
>  	} else {
>  		gpadc->irq_hw = 0;
>  	}
> @@ -1146,11 +1144,9 @@ static int ab8500_gpadc_probe(struct platform_device *pdev)
>  
>  	/* The VTVout LDO used to power the AB8500 GPADC */
>  	gpadc->vddadc = devm_regulator_get(dev, "vddadc");
> -	if (IS_ERR(gpadc->vddadc)) {
> -		ret = PTR_ERR(gpadc->vddadc);
> -		dev_err(dev, "failed to get vddadc\n");
> -		return ret;
> -	}
> +	if (IS_ERR(gpadc->vddadc))
> +		return dev_err_probe(dev, PTR_ERR(gpadc->vddadc),
> +				     "failed to get vddadc\n");
>  
>  	ret = regulator_enable(gpadc->vddadc);
>  	if (ret) {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
