Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C886DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 16:17:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9851861353
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 16:17:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9851861353
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlv3VTPQ++YD8Ig/8TWMCp0SzcwsiN3cXKcB85ahMTg=; b=wb+wvxbGNLsT3d
	uulr3bbsKHxIBCkwegQhszVrjDfzrurQxvxxgqznOD4Az90j4Zrrjlws5xL9Vtne5gwBCXWZlSlyW
	stJN0LmDnJxAOEiP4963sJF8Wumj6YZsePK3xuIh03oLGq9CGyixsfeis+lYOLkVh4UUAWaOdQC5s
	YA3Z5SFSn4NZc38/8NTi0Vg01SqsAHkxAbBYveHrSqUXmqiZUlINVsgj0Sc8qKBrHIUgyHlJsHwd8
	VDaydlFyk1RzAFTBebXXXj6/wPMWWa/whOMXRa4AveTyUnmnWtR+R95PRN7lCq5/fQCE69y9cCumi
	RpzNtd6koIvx7uhyg5eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVcGS-00BlTU-KD; Wed, 29 Sep 2021 16:17:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVcG2-00BlJv-Qb; Wed, 29 Sep 2021 16:16:36 +0000
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DDEB6159A;
 Wed, 29 Sep 2021 16:16:27 +0000 (UTC)
Date: Wed, 29 Sep 2021 17:20:21 +0100
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
 <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-amlogic@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3 1/9] iio: adc: ab8500-gpadc: Make use of the helper
 function dev_err_probe()
Message-ID: <20210929172021.4b797990@jic23-huawei>
In-Reply-To: <20210928141956.2148-1-caihuoqing@baidu.com>
References: <20210928141956.2148-1-caihuoqing@baidu.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_091634_944581_85973A39 
X-CRM114-Status: GOOD (  23.88  )
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

On Tue, 28 Sep 2021 22:19:47 +0800
Cai Huoqing <caihuoqing@baidu.com> wrote:

> When possible use dev_err_probe help to properly deal with the
> PROBE_DEFER error, the benefit is that DEFER issue will be logged
> in the devices_deferred debugfs file.
> Using dev_err_probe() can reduce code size, and the error value
> gets printed.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>

I believe we could in theory get an -EPROBE_DEFER from
platform_get_irq_by_name() so we should handle that one similarly.

I have no idea if can actually happen on this platform, but seems to me
that we should be thorough given how easy it is to do here.

Thanks,

Jonathan

> ---
> v1->v2: Remove the separate line of PTR_ERR().
> 
>  drivers/iio/adc/ab8500-gpadc.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iio/adc/ab8500-gpadc.c b/drivers/iio/adc/ab8500-gpadc.c
> index 7b5212ba5501..c58d0e2ae538 100644
> --- a/drivers/iio/adc/ab8500-gpadc.c
> +++ b/drivers/iio/adc/ab8500-gpadc.c
> @@ -1146,11 +1146,9 @@ static int ab8500_gpadc_probe(struct platform_device *pdev)
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
