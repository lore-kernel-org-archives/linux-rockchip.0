Return-Path: <SRS0=4of/=MZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_2 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70DF4C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 10:43:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3982360FA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 10:43:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3982360FA0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=Huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSDHwwj2a4/H9XtOozwVEskYBAVOpHVvKkC6Sa45IS4=; b=uJ4OmtJHXynvgr
	iZuaeVZn+inpxLOqSQ+zF5KpeDxY9vIeXDXnRNNPasNzhF3I0wRDr+c+fwmv0NnpOYy6xMLbA/8oA
	1DuXOPw2Tux1DPUex2d1wr7JPX1WTwttXGrUz2aB548EXiiJnf+o2vqSB1qLoJr2+WKGybPzkX1iM
	ZcRHnqAmoi3RdAx2KQo5B1GZR8LhpjFRmCZKqZ8dXUkfc/t246QwW9oANYnLGX0reyGaOBM+X+8sI
	KPmtbemy2sl50miP4qwhyNYe1kj3xzmKl+MyRUxFlI/V7LGUkIK7DX/1JmzfcMHmdaqwfYgy7b2Yx
	rYq7BTmYcwEodokATNrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAVQ4-00FoY1-7F; Mon, 02 Aug 2021 10:43:40 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAVPM-00FoHN-1z
 for linux-rockchip@lists.infradead.org; Mon, 02 Aug 2021 10:43:00 +0000
Received: from fraeml705-chm.china.huawei.com (unknown [172.18.147.206])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4GdZMl5dgYz6F87n;
 Mon,  2 Aug 2021 18:42:43 +0800 (CST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 fraeml705-chm.china.huawei.com (10.206.15.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Mon, 2 Aug 2021 12:42:51 +0200
Received: from localhost (10.47.9.82) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Mon, 2 Aug 2021
 11:42:50 +0100
Date: Mon, 2 Aug 2021 11:42:22 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Simon Xue <xxm@rock-chips.com>
CC: Jonathan Cameron <jic23@kernel.org>, <linux-rockchip@lists.infradead.org>, 
 <devicetree@vger.kernel.org>, <robh+dt@kernel.org>, Johan Jonker
 <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Lars-Peter Clausen
 <lars@metafoo.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 <linux-iio@vger.kernel.org>, David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: just get referenced voltage
 once at probe
Message-ID: <20210802114222.00004f3d@Huawei.com>
In-Reply-To: <20210802090929.37970-1-xxm@rock-chips.com>
References: <20210802090929.37970-1-xxm@rock-chips.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.47.9.82]
X-ClientProxiedBy: lhreml743-chm.china.huawei.com (10.201.108.193) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_034256_331905_9691CB75 
X-CRM114-Status: GOOD (  20.14  )
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

On Mon, 2 Aug 2021 17:09:29 +0800
Simon Xue <xxm@rock-chips.com> wrote:

> From: David Wu <david.wu@rock-chips.com>
> 
> The referenced voltage is not changed after initiation, so just only
> get referenced voltage once.
Hi David,

Isn't this an external reference voltage?  If so how do you know
it is not changed at runtime?  It might be unlikely and not happen
on particular platforms, but that's not he same as saying it can never
happen.  Clearly it's racey anyway if that does happen, but we definitely
don't expect frequent voltage changes.

Jonathan

> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> ---
>  drivers/iio/adc/rockchip_saradc.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index f3eb8d2e50dc..cd33c0b9d3eb 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -49,6 +49,7 @@ struct rockchip_saradc {
>  	struct clk		*clk;
>  	struct completion	completion;
>  	struct regulator	*vref;
> +	int			uv_vref;
>  	struct reset_control	*reset;
>  	const struct rockchip_saradc_data *data;
>  	u16			last_val;
> @@ -105,13 +106,7 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
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
> @@ -410,6 +405,13 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
