Return-Path: <SRS0=z8Nv=M7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D33C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Aug 2021 16:45:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B96260E97
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Aug 2021 16:45:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6B96260E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xsx2qBEKyHvF0pjZqXX2ZaNJoBoUJs2cFg54rodbQHg=; b=sg3or6IJ0YzY7u
	V7j9ETSxihEhIwOgrQv2O8CeZLN+jKS/Dg8hxZnC38ZchVaM8cmJKLg/53QuTZATdlXlvyPZAJwKf
	pZSp/UkC3lFuZ52dQhz/i7GRwp4CZKcKIseHKo6Dbb2CLZ7x6G7rzSrCh5HSOWIsYoD3ymteP7+Kh
	70RUUvkErh1d/4YTzimo6VN0uqoZjwFLGj1QEYg0DiKB5K0eCoUUc0n4682eF301QdFD1gg0a1smE
	miJNXYRPGzFVCMhN6jXriNkvv3ifETltqfS8NhF0+fYSalM9Usbj8E0hhM7LYa2fodPXiepDMdMKQ
	K1SByew1EPZyNeDwairw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mClvm-00G6bQ-6s; Sun, 08 Aug 2021 16:45:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mClvi-00G6at-SF
 for linux-rockchip@lists.infradead.org; Sun, 08 Aug 2021 16:45:44 +0000
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B89860EB9;
 Sun,  8 Aug 2021 16:45:36 +0000 (UTC)
Date: Sun, 8 Aug 2021 17:48:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter
 Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, David Wu
 <david.wu@rock-chips.com>
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: add voltage notifier so
 get referenced voltage once at probe
Message-ID: <20210808174826.7b82b7bf@jic23-huawei>
In-Reply-To: <20210806105524.231838-1-xxm@rock-chips.com>
References: <20210806105524.231838-1-xxm@rock-chips.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210808_094543_005791_01F7431D 
X-CRM114-Status: GOOD (  26.29  )
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

On Fri,  6 Aug 2021 18:55:24 +0800
Simon Xue <xxm@rock-chips.com> wrote:

> From: David Wu <david.wu@rock-chips.com>
> 
> Add voltage notifier, no need to query regulator voltage for
> every saradc read, just get regulator voltage once at probe.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Looks like Andy's v1 reviews crossed with your v2.
Given you are going to be doing a v3 because of signed-off-by ordering as per Andy's
comments please tidy up the other thing he mentioned (repeated below).

Otherwise looks good to me.

Thanks,

Jonathan


> ---
>  drivers/iio/adc/rockchip_saradc.c | 47 ++++++++++++++++++++++++++-----
>  1 file changed, 40 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index f3eb8d2e50dc..295da1ad6edb 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -49,10 +49,12 @@ struct rockchip_saradc {
>  	struct clk		*clk;
>  	struct completion	completion;
>  	struct regulator	*vref;
> +	int			uv_vref;
>  	struct reset_control	*reset;
>  	const struct rockchip_saradc_data *data;
>  	u16			last_val;
>  	const struct iio_chan_spec *last_chan;
> +	struct notifier_block nb;
>  };
>  
>  static void rockchip_saradc_power_down(struct rockchip_saradc *info)
> @@ -105,13 +107,7 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
>  		mutex_unlock(&indio_dev->mlock);
>  		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_SCALE:
> -		ret = regulator_get_voltage(info->vref);
> -		if (ret < 0) {
> -			dev_err(&indio_dev->dev, "failed to get voltage\n");
> -			return ret;
> -		}
> -
> -		*val = ret / 1000;
> +		*val = info->uv_vref / 1000;
>  		*val2 = chan->scan_type.realbits;
>  		return IIO_VAL_FRACTIONAL_LOG2;
>  	default:
> @@ -298,6 +294,26 @@ static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
>  	return IRQ_HANDLED;
>  }
>  
> +static int rockchip_saradc_volt_notify(struct notifier_block *nb,
> +						   unsigned long event,
> +						   void *data)
> +{
> +	struct rockchip_saradc *info =
> +			container_of(nb, struct rockchip_saradc, nb);
> +
> +	if (event & REGULATOR_EVENT_VOLTAGE_CHANGE)
> +		info->uv_vref = (unsigned long)data;
> +
> +	return NOTIFY_OK;
> +}
> +
> +static void rockchip_saradc_regulator_action(void *data)
> +{
> +	struct rockchip_saradc *info = data;
> +
> +	regulator_unregister_notifier(info->vref, &info->nb);
> +}
> +
>  static int rockchip_saradc_probe(struct platform_device *pdev)
>  {
>  	struct rockchip_saradc *info = NULL;
> @@ -410,6 +426,13 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	info->uv_vref = regulator_get_voltage(info->vref);
> +	if (info->uv_vref < 0) {
> +		dev_err(&pdev->dev, "failed to get voltage\n");
> +		ret = info->uv_vref;
> +		return ret;
> +	}

Andy suggested a cleaner form of this (which I also prefer) is

	ret = regulator_get_voltage(info->vref);
	if (ret < 0)
		return ret;

	info->uv_vref = ret;

> +
>  	ret = clk_prepare_enable(info->pclk);
>  	if (ret < 0) {
>  		dev_err(&pdev->dev, "failed to enable pclk\n");
> @@ -450,6 +473,16 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> +	info->nb.notifier_call = rockchip_saradc_volt_notify;
> +	ret = regulator_register_notifier(info->vref, &info->nb);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_add_action_or_reset(&pdev->dev,
> +				       rockchip_saradc_regulator_action, info);
> +	if (ret)
> +		return ret;
> +
>  	return devm_iio_device_register(&pdev->dev, indio_dev);
>  }
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
