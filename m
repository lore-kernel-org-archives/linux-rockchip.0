Return-Path: <SRS0=9QTE=NA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE48CC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 19:37:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C8BB60EB5
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 19:37:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6C8BB60EB5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxCYZK7YXiFfEbPIp8GY6d15qaj2D+Hmx4mgpZmWSIc=; b=QebxT9n9fLIxFg
	Y3aC3Vo1RkT2UIftZLiXMRVxND8Xou55C4UxnMJdiWlsBzSYGtvZ6w+MRek3xv7dAcZdXXdF5GNSy
	KiMfh+At2WzDn9tnwd3NHjtJXi/8ux1KYTFPIwyfYydOwQ0qMrsABZcKRs24UZMaxlgUEnOYY+okp
	DjF4v8f/GwDdqkw8swlRj4QS3op9MnYpJcr94tS52Tl3D3fR+JH6ekeyD+q5/8KgdPochR4cjaL36
	S6wLNo7hXgvSEbs33Pd0CBXguRWDK6jl8HBvkzNlU/AxVHfmnTb8PEPeLRkELhZ8yskFfr087bMo/
	LQ5urYIYeZ/pc4mQOhRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDB5J-001rkR-Vm; Mon, 09 Aug 2021 19:37:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDB5H-001rjy-Dq
 for linux-rockchip@lists.infradead.org; Mon, 09 Aug 2021 19:37:16 +0000
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5187960C51;
 Mon,  9 Aug 2021 19:37:12 +0000 (UTC)
Date: Mon, 9 Aug 2021 20:40:04 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter
 Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, David Wu
 <david.wu@rock-chips.com>
Subject: Re: [PATCH v3] iio: adc: rockchip_saradc: add voltage notifier so
 get referenced voltage once at probe
Message-ID: <20210809203952.08d9acec@jic23-huawei>
In-Reply-To: <20210809011517.6374-1-xxm@rock-chips.com>
References: <20210809011517.6374-1-xxm@rock-chips.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_123715_553031_B4A407B0 
X-CRM114-Status: GOOD (  25.56  )
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

On Mon,  9 Aug 2021 09:15:17 +0800
Simon Xue <xxm@rock-chips.com> wrote:

> From: David Wu <david.wu@rock-chips.com>
> 
> Add voltage notifier, no need to query regulator voltage for
> every saradc read, just get regulator voltage once at probe.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Was just about to apply this, but noticed one last thing :( 
See inline.

> ---
>  drivers/iio/adc/rockchip_saradc.c | 46 ++++++++++++++++++++++++++-----
>  1 file changed, 39 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index f3eb8d2e50dc..33c7dd635eb9 100644
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

This is not a well named function.  What is 'action'?
Perhaps
rockchip_saradc_reg_unreg_notifier() or something along those lines?

> +{
> +	struct rockchip_saradc *info = data;
> +
> +	regulator_unregister_notifier(info->vref, &info->nb);
> +}
> +
>  static int rockchip_saradc_probe(struct platform_device *pdev)
>  {
>  	struct rockchip_saradc *info = NULL;
> @@ -410,6 +426,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	ret = regulator_get_voltage(info->vref);
> +	if (ret < 0)
> +		return ret;
> +
> +	info->uv_vref = ret;
> +
>  	ret = clk_prepare_enable(info->pclk);
>  	if (ret < 0) {
>  		dev_err(&pdev->dev, "failed to enable pclk\n");
> @@ -450,6 +472,16 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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
