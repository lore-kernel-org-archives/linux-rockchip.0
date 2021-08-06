Return-Path: <SRS0=27lq=M5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C3F1C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 11:06:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24EFF6105A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 11:06:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 24EFF6105A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoTDbiVHhvJWHqpnN4I2UbChqVJL7iEY/NStIyr0a8Q=; b=NPa5yowJcpn8Nk
	D0ljBI13Y9Mdv177D5d9uf+3eE/450mp3BmcFADHD/zVLAmVUbmrPHsSrNjCf8ppFPlyeeJqsuMrY
	NNEWK4CgDi/V6g5ZRZ8GVvKOBQuwnnUsEldmoXKX3DnGtlgd6X1UsP2kcA4BQL4Kur7yuZEXu7UTF
	HjHA8VnjR1hydbsGNEkPvqlvlwvAX5k/1ymE8qjqjNF6inngLOF1nMU3zGAmBQ2I0tOCPjS0YJWw6
	w8MVAhVRFkXAAfk8smnZJpaatoASxP90zpuLUhU3pZfVhuUjYobzvzwZS1rrkdYv6Ek3jdpHt9AeD
	KOD3i6SrUPyC3JcXishA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBxgL-00CDRM-TQ; Fri, 06 Aug 2021 11:06:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBxgI-00CDQD-Fb
 for linux-rockchip@lists.infradead.org; Fri, 06 Aug 2021 11:06:27 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mBxgG-0003m7-EB; Fri, 06 Aug 2021 13:06:24 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonathan Cameron <jic23@kernel.org>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 David Wu <david.wu@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: add voltage notifier so get
 referenced voltage once at probe
Date: Fri, 06 Aug 2021 13:06:23 +0200
Message-ID: <5442190.6fTUFtlzNn@diego>
In-Reply-To: <20210806105524.231838-1-xxm@rock-chips.com>
References: <20210806105524.231838-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_040626_591676_2BDB3DFA 
X-CRM114-Status: GOOD (  24.40  )
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

Am Freitag, 6. August 2021, 12:55:24 CEST schrieb Simon Xue:
> From: David Wu <david.wu@rock-chips.com>
> 
> Add voltage notifier, no need to query regulator voltage for
> every saradc read, just get regulator voltage once at probe.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

patch looks great to me now :-)


Thanks
Heiko

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
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
